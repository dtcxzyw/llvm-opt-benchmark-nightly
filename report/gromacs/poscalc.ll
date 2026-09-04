Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/poscalc?download=true
inline.NumInlined: 318
inline.NumDeleted: 198
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_Z22gmx_ana_poscalc_updateP17gmx_ana_poscalc_tP13gmx_ana_pos_tP15gmx_ana_index_tP10t_trxframePK5t_pbc:bb.a
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !161 ; 5 uses
  %xtraiter418 = and i64 %wide.trip.count307, 3   ; 3 uses
  %i.oy = icmp ult i32 %i.ak, 4
  br i1 %i.oy, label %.epil.preheader417, label %.lr.ph273.new

.lr.ph273.new:                                    ; preds = %.lr.ph273
  %unroll_iter422 = and i64 %wide.trip.count307, 2147483644
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph273.new
  %indvars.iv314 = phi i64 [ 0, %.lr.ph273.new ], [ %indvars.iv.next315.3, %bb.v ] ; 6 uses
  %niter423 = phi i64 [ 0, %.lr.ph273.new ], [ %niter423.next.3, %bb.v ]
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv314
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !12
  %i.pb = sext i32 %i.pa to i64
  %i.pc = getelementptr inbounds [12 x i8], ptr %i.ox, i64 %i.pb ; 3 uses
  %i.pd = getelementptr inbounds nuw [12 x i8], ptr %i.or, i64 %indvars.iv314 ; 3 uses
  %i.pe = load float, ptr %i.pc, align 4, !tbaa !159
  store float %i.pe, ptr %i.pd, align 4, !tbaa !159
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 4
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !159
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pd, i64 4
  store float %i.pg, ptr %i.ph, align 4, !tbaa !159
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !159
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  store float %i.pj, ptr %i.pk, align 4, !tbaa !159
  %indvars.iv.next315 = or disjoint i64 %indvars.iv314, 1 ; 2 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv.next315
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !12
  %i.pn = sext i32 %i.pm to i64
  %i.po = getelementptr inbounds [12 x i8], ptr %i.ox, i64 %i.pn ; 3 uses
  %i.pp = getelementptr inbounds nuw [12 x i8], ptr %i.or, i64 %indvars.iv.next315 ; 3 uses
  %i.pq = load float, ptr %i.po, align 4, !tbaa !159
  store float %i.pq, ptr %i.pp, align 4, !tbaa !159
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 4
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !159
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pp, i64 4
  store float %i.ps, ptr %i.pt, align 4, !tbaa !159
  %i.pu = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !159
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  store float %i.pv, ptr %i.pw, align 4, !tbaa !159
  %indvars.iv.next315.1 = or disjoint i64 %indvars.iv314, 2 ; 2 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv.next315.1
  %i.py = load i32, ptr %i.px, align 4, !tbaa !12
  %i.pz = sext i32 %i.py to i64
  %i.qa = getelementptr inbounds [12 x i8], ptr %i.ox, i64 %i.pz ; 3 uses
  %i.qb = getelementptr inbounds nuw [12 x i8], ptr %i.or, i64 %indvars.iv.next315.1 ; 3 uses
  %i.qc = load float, ptr %i.qa, align 4, !tbaa !159
  store float %i.qc, ptr %i.qb, align 4, !tbaa !159
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 4
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !159
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qb, i64 4
  store float %i.qe, ptr %i.qf, align 4, !tbaa !159
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !159
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  store float %i.qh, ptr %i.qi, align 4, !tbaa !159
  %indvars.iv.next315.2 = or disjoint i64 %indvars.iv314, 3 ; 2 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv.next315.2
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !12
  %i.ql = sext i32 %i.qk to i64
  %i.qm = getelementptr inbounds [12 x i8], ptr %i.ox, i64 %i.ql ; 3 uses
  %i.qn = getelementptr inbounds nuw [12 x i8], ptr %i.or, i64 %indvars.iv.next315.2 ; 3 uses
  %i.qo = load float, ptr %i.qm, align 4, !tbaa !159
  store float %i.qo, ptr %i.qn, align 4, !tbaa !159
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 4
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !159
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qn, i64 4
  store float %i.qq, ptr %i.qr, align 4, !tbaa !159
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !159
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  store float %i.qt, ptr %i.qu, align 4, !tbaa !159
  %indvars.iv.next315.3 = add nuw nsw i64 %indvars.iv314, 4 ; 2 uses
  %niter423.next.3 = add i64 %niter423, 4         ; 2 uses
  %niter423.ncmp.3 = icmp eq i64 %niter423.next.3, %unroll_iter422
  br i1 %niter423.ncmp.3, label %.loopexit.loopexit386.unr-lcssa, label %bb.v, !llvm.loop !146

.thread241:                                       ; preds = %.thread
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.y, ptr %i.qv, align 8, !tbaa !62
  %i.qw = getelementptr inbounds nuw i8, ptr %.0192, i64 56
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !162
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.qx, ptr %i.qy, align 8, !tbaa !50
  %i.qz = load i32, ptr %spec.select, align 8, !tbaa !80
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.qz, ptr %i.ra, align 8, !tbaa !63
  %i.rb = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !81
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.rc, ptr %i.rd, align 8, !tbaa !52
  br label %bb.w

bb.w:                                             ; preds = %bb.l, %.thread241
  %i.re = getelementptr inbounds nuw i8, ptr %.0192, i64 8 ; 5 uses
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !160 ; 2 uses
  %.not205 = icmp eq ptr %i.rf, null
  br i1 %.not205, label %.loopexit248, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.rg = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.rh = load i8, ptr %i.rg, align 8, !tbaa !163, !range !66, !noundef !67
  %i.ri = trunc nuw i8 %i.rh to i1
  br i1 %i.ri, label %.loopexit248, label %.preheader247

.preheader247:                                    ; preds = %bb.x
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.rk = load i32, ptr %i.rj, align 8, !tbaa !63 ; 2 uses
  %i.rl = icmp sgt i32 %i.rk, 0
  br i1 %i.rl, label %.lr.ph275.preheader, label %.loopexit248

.lr.ph275.preheader:                              ; preds = %.preheader247
  %i.rm = zext nneg i32 %i.rk to i64
  %i.rn = mul nuw nsw i64 %i.rm, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.rf, i8 0, i64 %i.rn, i1 false), !tbaa !159
  br label %.loopexit248

.loopexit248:                                     ; preds = %.lr.ph275.preheader, %.preheader247, %bb.x, %bb.w
  %i.ro = getelementptr inbounds nuw i8, ptr %.0192, i64 16 ; 5 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !161 ; 2 uses
  %.not206 = icmp eq ptr %i.rp, null
  br i1 %.not206, label %.loopexit246, label %bb.y

bb.y:                                             ; preds = %.loopexit248
  %i.rq = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.rr = load i8, ptr %i.rq, align 8, !tbaa !164, !range !66, !noundef !67
  %i.rs = trunc nuw i8 %i.rr to i1
  br i1 %i.rs, label %.loopexit246, label %.preheader245

.preheader245:                                    ; preds = %bb.y
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ru = load i32, ptr %i.rt, align 8, !tbaa !63 ; 2 uses
  %i.rv = icmp sgt i32 %i.ru, 0
  br i1 %i.rv, label %.lr.ph277.preheader, label %.loopexit246

.lr.ph277.preheader:                              ; preds = %.preheader245
  %i.rw = zext nneg i32 %i.ru to i64
  %i.rx = mul nuw nsw i64 %i.rw, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.rp, i8 0, i64 %i.rx, i1 false), !tbaa !159
  br label %.loopexit246

.loopexit246:                                     ; preds = %.lr.ph277.preheader, %.preheader245, %bb.y, %.loopexit248
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !45 ; 5 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.sc = load i32, ptr %i.sb, align 8, !tbaa !63 ; 5 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !52 ; 12 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rz, i64 32 ; 2 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !68
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rz, i64 40
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !68
  %i.sj = icmp eq ptr %i.sg, %i.si
  br i1 %i.sj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.loopexit246
  %i.sk = sext i32 %i.sc to i64
  %.not.i.i = icmp eq ptr %i.se, null
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.sk
  %spec.select.i.i = select i1 %.not.i.i, ptr null, ptr %i.sl
  br label %_ZN3gmx29PositionCalculationCollection4Impl15getFrameIndicesEiPi.exit

bb.aa:                                            ; preds = %.loopexit246
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rz, i64 56 ; 3 uses
  %i.sn = sext i32 %i.sc to i64                   ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.rz, i64 64 ; 3 uses
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !79 ; 2 uses
  %i.sq = load ptr, ptr %i.sm, align 8, !tbaa !43 ; 5 uses
  %i.sr = ptrtoint ptr %i.sp to i64
  %i.ss = ptrtoint ptr %i.sq to i64
  %i.st = sub i64 %i.sr, %i.ss
  %i.su = ashr exact i64 %i.st, 2                 ; 3 uses
  %i.sv = icmp ult i64 %i.su, %i.sn
  br i1 %i.sv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.sw = sub nuw nsw i64 %i.sn, %i.su
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.sm, i64 noundef %i.sw)
  %.pre.pre.i = load ptr, ptr %i.sm, align 8, !tbaa !43
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.sx = icmp ugt i64 %i.su, %i.sn
  br i1 %i.sx, label %bb.ad, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %i.sn ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.sp, %i.sy
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.ad
  store ptr %i.sy, ptr %i.so, align 8, !tbaa !79
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i, %bb.ad, %bb.ac, %bb.ab
  %.pre.i = phi ptr [ %.pre.pre.i, %bb.ab ], [ %i.sq, %bb.ac ], [ %i.sq, %bb.ad ], [ %i.sq, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ] ; 12 uses
  %i.sz = icmp sgt i32 %i.sc, 0
  br i1 %i.sz, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.ta = load ptr, ptr %i.sf, align 8, !tbaa !43 ; 9 uses
  %wide.trip.count.i = zext nneg i32 %i.sc to i64 ; 2 uses
  %xtraiter425 = and i64 %wide.trip.count.i, 7    ; 3 uses
  %i.tb = icmp ult i32 %i.sc, 8
  br i1 %i.tb, label %.epil.preheader424, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter429 = and i64 %wide.trip.count.i, 2147483640
  br label %bb.af

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.af
  %lcmp.mod427.not = icmp eq i64 %xtraiter425, 0
  br i1 %lcmp.mod427.not, label %._crit_edge.i, label %.epil.preheader424

.epil.preheader424:                               ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod428 = icmp ne i64 %xtraiter425, 0
  tail call void @llvm.assume(i1 %lcmp.mod428)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader424
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader424 ], [ %indvars.iv.next.i.epil, %bb.ae ] ; 3 uses
  %epil.iter426 = phi i64 [ 0, %.epil.preheader424 ], [ %epil.iter426.next, %bb.ae ]
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %indvars.iv.i.epil
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !12
  %i.te = sext i32 %i.td to i64
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %i.te
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !12
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.i.epil
  store i32 %i.tg, ptr %i.th, align 4, !tbaa !12
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter426.next = add i64 %epil.iter426, 1   ; 2 uses
  %epil.iter426.cmp.not = icmp eq i64 %epil.iter426.next, %xtraiter425
  br i1 %epil.iter426.cmp.not, label %._crit_edge.i, label %bb.ae, !llvm.loop !147

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.ae, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.ti = load ptr, ptr %i.so, align 8, !tbaa !79
  %5 = ptrtoint ptr %i.ti to i64
  %6 = ptrtoint ptr %.pre.i to i64
  %7 = sub i64 %5, %6
  %8 = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %7
  %.pre = load ptr, ptr %i.ry, align 8, !tbaa !45
  %.pre340 = load i32, ptr %i.l, align 4, !tbaa !53
  br label %_ZN3gmx29PositionCalculationCollection4Impl15getFrameIndicesEiPi.exit

bb.af:                                            ; preds = %bb.af, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %bb.af ] ; 10 uses
  %niter430 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter430.next.7, %bb.af ]
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %indvars.iv.i
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !12
  %i.tl = sext i32 %i.tk to i64
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %i.tl
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !12
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.i
  store i32 %i.tn, ptr %i.to, align 4, !tbaa !12
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %indvars.iv.next.i
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !12
  %i.tr = sext i32 %i.tq to i64
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %i.tr
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !12
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next.i
  store i32 %i.tt, ptr %i.tu, align 4, !tbaa !12
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %indvars.iv.next.i.1
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !12
  %i.tx = sext i32 %i.tw to i64
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %i.tx
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !12
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next.i.1
  store i32 %i.tz, ptr %i.ua, align 4, !tbaa !12
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %indvars.iv.next.i.2
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !12
  %i.ud = sext i32 %i.uc to i64
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %i.ud
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !12
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next.i.2
  store i32 %i.uf, ptr %i.ug, align 4, !tbaa !12
  %indvars.iv.next.i.3 = or disjoint i64 %indvars.iv.i, 4 ; 2 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %indvars.iv.next.i.3
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !12
  %i.uj = sext i32 %i.ui to i64
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %i.uj
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !12
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next.i.3
  store i32 %i.ul, ptr %i.um, align 4, !tbaa !12
  %indvars.iv.next.i.4 = or disjoint i64 %indvars.iv.i, 5 ; 2 uses
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %indvars.iv.next.i.4
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !12
  %i.up = sext i32 %i.uo to i64
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %i.up
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !12
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next.i.4
  store i32 %i.ur, ptr %i.us, align 4, !tbaa !12
  %indvars.iv.next.i.5 = or disjoint i64 %indvars.iv.i, 6 ; 2 uses
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %indvars.iv.next.i.5
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !12
  %i.uv = sext i32 %i.uu to i64
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %i.uv
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !12
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next.i.5
  store i32 %i.ux, ptr %i.uy, align 4, !tbaa !12
  %indvars.iv.next.i.6 = or disjoint i64 %indvars.iv.i, 7 ; 2 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %indvars.iv.next.i.6
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !12
  %i.vb = sext i32 %i.va to i64
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %i.vb
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !12
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next.i.6
  store i32 %i.vd, ptr %i.ve, align 4, !tbaa !12
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter430.next.7 = add i64 %niter430, 8         ; 2 uses
  %niter430.ncmp.7 = icmp eq i64 %niter430.next.7, %unroll_iter429
  br i1 %niter430.ncmp.7, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.af, !llvm.loop !148

_ZN3gmx29PositionCalculationCollection4Impl15getFrameIndicesEiPi.exit: ; preds = %bb.z, %._crit_edge.i
  %i.vf = phi i32 [ %i.t, %bb.z ], [ %.pre340, %._crit_edge.i ]
  %i.vg = phi ptr [ %i.rz, %bb.z ], [ %.pre, %._crit_edge.i ]
  %.sroa.3.0.i.in = phi ptr [ %spec.select.i.i, %bb.z ], [ %8, %._crit_edge.i ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.se, %bb.z ], [ %.pre.i, %._crit_edge.i ] ; 26 uses
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !60 ; 9 uses
  %i.vi = trunc i32 %i.vf to i1                   ; 9 uses
  %i.vj = load i32, ptr %0, align 8, !tbaa !57
  switch i32 %i.vj, label %bb.az [
    i32 0, label %.preheader244
    i32 3, label %bb.an
    i32 4, label %bb.at
  ]

.preheader244:                                    ; preds = %_ZN3gmx29PositionCalculationCollection4Impl15getFrameIndicesEiPi.exit
  %i.vk = load i32, ptr %i.sb, align 8, !tbaa !63 ; 7 uses
  %i.vl = icmp sgt i32 %i.vk, 0                   ; 3 uses
  br i1 %i.vl, label %.lr.ph279, label %._crit_edge280

.lr.ph279:                                        ; preds = %.preheader244
  %i.vm = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !165 ; 5 uses
  %i.vo = load ptr, ptr %.0192, align 8, !tbaa !158 ; 5 uses
  %wide.trip.count328 = zext nneg i32 %i.vk to i64 ; 2 uses
  %xtraiter432 = and i64 %wide.trip.count328, 3   ; 3 uses
  %i.vp = icmp ult i32 %i.vk, 4
  br i1 %i.vp, label %.epil.preheader431, label %.lr.ph279.new

.lr.ph279.new:                                    ; preds = %.lr.ph279
  %unroll_iter436 = and i64 %wide.trip.count328, 2147483644
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph279.new
  %indvars.iv325 = phi i64 [ 0, %.lr.ph279.new ], [ %indvars.iv.next326.3, %bb.ag ] ; 6 uses
  %niter437 = phi i64 [ 0, %.lr.ph279.new ], [ %niter437.next.3, %bb.ag ]
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv325
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !12
  %i.vs = sext i32 %i.vr to i64
  %i.vt = getelementptr inbounds [12 x i8], ptr %i.vn, i64 %i.vs ; 3 uses
  %i.vu = getelementptr inbounds nuw [12 x i8], ptr %i.vo, i64 %indvars.iv325 ; 3 uses
  %i.vv = load float, ptr %i.vt, align 4, !tbaa !159
  store float %i.vv, ptr %i.vu, align 4, !tbaa !159
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vt, i64 4
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !159
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vu, i64 4
  store float %i.vx, ptr %i.vy, align 4, !tbaa !159
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !159
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  store float %i.wa, ptr %i.wb, align 4, !tbaa !159
  %indvars.iv.next326 = or disjoint i64 %indvars.iv325, 1 ; 2 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.next326
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !12
  %i.we = sext i32 %i.wd to i64
  %i.wf = getelementptr inbounds [12 x i8], ptr %i.vn, i64 %i.we ; 3 uses
  %i.wg = getelementptr inbounds nuw [12 x i8], ptr %i.vo, i64 %indvars.iv.next326 ; 3 uses
  %i.wh = load float, ptr %i.wf, align 4, !tbaa !159
  store float %i.wh, ptr %i.wg, align 4, !tbaa !159
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wf, i64 4
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !159
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wg, i64 4
  store float %i.wj, ptr %i.wk, align 4, !tbaa !159
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !159
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wg, i64 8
  store float %i.wm, ptr %i.wn, align 4, !tbaa !159
  %indvars.iv.next326.1 = or disjoint i64 %indvars.iv325, 2 ; 2 uses
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.next326.1
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !12
  %i.wq = sext i32 %i.wp to i64
  %i.wr = getelementptr inbounds [12 x i8], ptr %i.vn, i64 %i.wq ; 3 uses
  %i.ws = getelementptr inbounds nuw [12 x i8], ptr %i.vo, i64 %indvars.iv.next326.1 ; 3 uses
  %i.wt = load float, ptr %i.wr, align 4, !tbaa !159
  store float %i.wt, ptr %i.ws, align 4, !tbaa !159
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wr, i64 4
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !159
  %i.ww = getelementptr inbounds nuw i8, ptr %i.ws, i64 4
  store float %i.wv, ptr %i.ww, align 4, !tbaa !159
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.wy = load float, ptr %i.wx, align 4, !tbaa !159
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  store float %i.wy, ptr %i.wz, align 4, !tbaa !159
  %indvars.iv.next326.2 = or disjoint i64 %indvars.iv325, 3 ; 2 uses
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.next326.2
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !12
  %i.xc = sext i32 %i.xb to i64
  %i.xd = getelementptr inbounds [12 x i8], ptr %i.vn, i64 %i.xc ; 3 uses
  %i.xe = getelementptr inbounds nuw [12 x i8], ptr %i.vo, i64 %indvars.iv.next326.2 ; 3 uses
  %i.xf = load float, ptr %i.xd, align 4, !tbaa !159
  store float %i.xf, ptr %i.xe, align 4, !tbaa !159
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xd, i64 4
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !159
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xe, i64 4
  store float %i.xh, ptr %i.xi, align 4, !tbaa !159
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %i.xk = load float, ptr %i.xj, align 4, !tbaa !159
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  store float %i.xk, ptr %i.xl, align 4, !tbaa !159
  %indvars.iv.next326.3 = add nuw nsw i64 %indvars.iv325, 4 ; 2 uses
  %niter437.next.3 = add i64 %niter437, 4         ; 2 uses
  %niter437.ncmp.3 = icmp eq i64 %niter437.next.3, %unroll_iter436
  br i1 %niter437.ncmp.3, label %._crit_edge280.loopexit.unr-lcssa, label %bb.ag, !llvm.loop !149

._crit_edge280.loopexit.unr-lcssa:                ; preds = %bb.ag
  %lcmp.mod434.not = icmp eq i64 %xtraiter432, 0
  br i1 %lcmp.mod434.not, label %._crit_edge280, label %.epil.preheader431

.epil.preheader431:                               ; preds = %._crit_edge280.loopexit.unr-lcssa, %.lr.ph279
  %indvars.iv325.epil.init = phi i64 [ 0, %.lr.ph279 ], [ %indvars.iv.next326.3, %._crit_edge280.loopexit.unr-lcssa ]
  %lcmp.mod435 = icmp ne i64 %xtraiter432, 0
  tail call void @llvm.assume(i1 %lcmp.mod435)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.epil.preheader431
  %indvars.iv325.epil = phi i64 [ %indvars.iv325.epil.init, %.epil.preheader431 ], [ %indvars.iv.next326.epil, %bb.ah ] ; 3 uses
  %epil.iter433 = phi i64 [ 0, %.epil.preheader431 ], [ %epil.iter433.next, %bb.ah ]
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv325.epil
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !12
  %i.xo = sext i32 %i.xn to i64
  %i.xp = getelementptr inbounds [12 x i8], ptr %i.vn, i64 %i.xo ; 3 uses
  %i.xq = getelementptr inbounds nuw [12 x i8], ptr %i.vo, i64 %indvars.iv325.epil ; 3 uses
  %i.xr = load float, ptr %i.xp, align 4, !tbaa !159
  store float %i.xr, ptr %i.xq, align 4, !tbaa !159
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xp, i64 4
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !159
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xq, i64 4
  store float %i.xt, ptr %i.xu, align 4, !tbaa !159
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !159
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xq, i64 8
  store float %i.xw, ptr %i.xx, align 4, !tbaa !159
  %indvars.iv.next326.epil = add nuw nsw i64 %indvars.iv325.epil, 1
  %epil.iter433.next = add i64 %epil.iter433, 1   ; 2 uses
  %epil.iter433.cmp.not = icmp eq i64 %epil.iter433.next, %xtraiter432
  br i1 %epil.iter433.cmp.not, label %._crit_edge280, label %bb.ah, !llvm.loop !150

._crit_edge280:                                   ; preds = %._crit_edge280.loopexit.unr-lcssa, %bb.ah, %.preheader244
  %i.xy = load ptr, ptr %i.re, align 8, !tbaa !160 ; 6 uses
  %.not211 = icmp eq ptr %i.xy, null
  br i1 %.not211, label %.loopexit243, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge280
  %i.xz = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ya = load i8, ptr %i.xz, align 8, !tbaa !163, !range !66, !noundef !67
  %i.yb = trunc nuw i8 %i.ya to i1
  %or.cond289 = and i1 %i.vl, %i.yb
  br i1 %or.cond289, label %.lr.ph283, label %.loopexit243

.lr.ph283:                                        ; preds = %bb.ai
  %i.yc = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !166 ; 5 uses
  %wide.trip.count333 = zext nneg i32 %i.vk to i64 ; 2 uses
  %xtraiter439 = and i64 %wide.trip.count333, 3   ; 3 uses
  %i.ye = icmp ult i32 %i.vk, 4
  br i1 %i.ye, label %.epil.preheader438, label %.lr.ph283.new

.lr.ph283.new:                                    ; preds = %.lr.ph283
  %unroll_iter443 = and i64 %wide.trip.count333, 2147483644
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph283.new
  %indvars.iv330 = phi i64 [ 0, %.lr.ph283.new ], [ %indvars.iv.next331.3, %bb.aj ] ; 6 uses
  %niter444 = phi i64 [ 0, %.lr.ph283.new ], [ %niter444.next.3, %bb.aj ]
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv330
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !12
  %i.yh = sext i32 %i.yg to i64
  %i.yi = getelementptr inbounds [12 x i8], ptr %i.yd, i64 %i.yh ; 3 uses
  %i.yj = getelementptr inbounds nuw [12 x i8], ptr %i.xy, i64 %indvars.iv330 ; 3 uses
  %i.yk = load float, ptr %i.yi, align 4, !tbaa !159
  store float %i.yk, ptr %i.yj, align 4, !tbaa !159
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yi, i64 4
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !159
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yj, i64 4
  store float %i.ym, ptr %i.yn, align 4, !tbaa !159
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !159
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  store float %i.yp, ptr %i.yq, align 4, !tbaa !159
  %indvars.iv.next331 = or disjoint i64 %indvars.iv330, 1 ; 2 uses
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.next331
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !12
  %i.yt = sext i32 %i.ys to i64
  %i.yu = getelementptr inbounds [12 x i8], ptr %i.yd, i64 %i.yt ; 3 uses
  %i.yv = getelementptr inbounds nuw [12 x i8], ptr %i.xy, i64 %indvars.iv.next331 ; 3 uses
  %i.yw = load float, ptr %i.yu, align 4, !tbaa !159
  store float %i.yw, ptr %i.yv, align 4, !tbaa !159
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yu, i64 4
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !159
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yv, i64 4
  store float %i.yy, ptr %i.yz, align 4, !tbaa !159
  %i.za = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  %i.zb = load float, ptr %i.za, align 4, !tbaa !159
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  store float %i.zb, ptr %i.zc, align 4, !tbaa !159
  %indvars.iv.next331.1 = or disjoint i64 %indvars.iv330, 2 ; 2 uses
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.next331.1
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !12
  %i.zf = sext i32 %i.ze to i64
  %i.zg = getelementptr inbounds [12 x i8], ptr %i.yd, i64 %i.zf ; 3 uses
  %i.zh = getelementptr inbounds nuw [12 x i8], ptr %i.xy, i64 %indvars.iv.next331.1 ; 3 uses
  %i.zi = load float, ptr %i.zg, align 4, !tbaa !159
  store float %i.zi, ptr %i.zh, align 4, !tbaa !159
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zg, i64 4
  %i.zk = load float, ptr %i.zj, align 4, !tbaa !159
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zh, i64 4
  store float %i.zk, ptr %i.zl, align 4, !tbaa !159
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  %i.zn = load float, ptr %i.zm, align 4, !tbaa !159
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zh, i64 8
  store float %i.zn, ptr %i.zo, align 4, !tbaa !159
  %indvars.iv.next331.2 = or disjoint i64 %indvars.iv330, 3 ; 2 uses
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.next331.2
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !12
  %i.zr = sext i32 %i.zq to i64
  %i.zs = getelementptr inbounds [12 x i8], ptr %i.yd, i64 %i.zr ; 3 uses
  %i.zt = getelementptr inbounds nuw [12 x i8], ptr %i.xy, i64 %indvars.iv.next331.2 ; 3 uses
  %i.zu = load float, ptr %i.zs, align 4, !tbaa !159
  store float %i.zu, ptr %i.zt, align 4, !tbaa !159
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zs, i64 4
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !159
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zt, i64 4
  store float %i.zw, ptr %i.zx, align 4, !tbaa !159
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zs, i64 8
  %i.zz = load float, ptr %i.zy, align 4, !tbaa !159
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  store float %i.zz, ptr %i.aaa, align 4, !tbaa !159
  %indvars.iv.next331.3 = add nuw nsw i64 %indvars.iv330, 4 ; 2 uses
  %niter444.next.3 = add i64 %niter444, 4         ; 2 uses
  %niter444.ncmp.3 = icmp eq i64 %niter444.next.3, %unroll_iter443
  br i1 %niter444.ncmp.3, label %.loopexit243.loopexit.unr-lcssa, label %bb.aj, !llvm.loop !151

.loopexit243.loopexit.unr-lcssa:                  ; preds = %bb.aj
  %lcmp.mod441.not = icmp eq i64 %xtraiter439, 0
  br i1 %lcmp.mod441.not, label %.loopexit243, label %.epil.preheader438

.epil.preheader438:                               ; preds = %.loopexit243.loopexit.unr-lcssa, %.lr.ph283
  %indvars.iv330.epil.init = phi i64 [ 0, %.lr.ph283 ], [ %indvars.iv.next331.3, %.loopexit243.loopexit.unr-lcssa ]
  %lcmp.mod442 = icmp ne i64 %xtraiter439, 0
  tail call void @llvm.assume(i1 %lcmp.mod442)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.epil.preheader438
  %indvars.iv330.epil = phi i64 [ %indvars.iv330.epil.init, %.epil.preheader438 ], [ %indvars.iv.next331.epil, %bb.ak ] ; 3 uses
  %epil.iter440 = phi i64 [ 0, %.epil.preheader438 ], [ %epil.iter440.next, %bb.ak ]
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv330.epil
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !12
  %i.aad = sext i32 %i.aac to i64
  %i.aae = getelementptr inbounds [12 x i8], ptr %i.yd, i64 %i.aad ; 3 uses
  %i.aaf = getelementptr inbounds nuw [12 x i8], ptr %i.xy, i64 %indvars.iv330.epil ; 3 uses
  %i.aag = load float, ptr %i.aae, align 4, !tbaa !159
  store float %i.aag, ptr %i.aaf, align 4, !tbaa !159
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aae, i64 4
  %i.aai = load float, ptr %i.aah, align 4, !tbaa !159
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aaf, i64 4
  store float %i.aai, ptr %i.aaj, align 4, !tbaa !159
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  %i.aal = load float, ptr %i.aak, align 4, !tbaa !159
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  store float %i.aal, ptr %i.aam, align 4, !tbaa !159
  %indvars.iv.next331.epil = add nuw nsw i64 %indvars.iv330.epil, 1
  %epil.iter440.next = add i64 %epil.iter440, 1   ; 2 uses
  %epil.iter440.cmp.not = icmp eq i64 %epil.iter440.next, %xtraiter439
  br i1 %epil.iter440.cmp.not, label %.loopexit243, label %bb.ak, !llvm.loop !152

.loopexit243:                                     ; preds = %.loopexit243.loopexit.unr-lcssa, %bb.ak, %bb.ai, %._crit_edge280
  %i.aan = load ptr, ptr %i.ro, align 8, !tbaa !161 ; 6 uses
  %.not212 = icmp eq ptr %i.aan, null
  br i1 %.not212, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %.loopexit243
  %i.aao = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.aap = load i8, ptr %i.aao, align 8, !tbaa !164, !range !66, !noundef !67
  %i.aaq = trunc nuw i8 %i.aap to i1
  %or.cond290 = and i1 %i.vl, %i.aaq
  br i1 %or.cond290, label %.lr.ph285, label %.loopexit

.lr.ph285:                                        ; preds = %bb.al
  %i.aar = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !167 ; 5 uses
  %wide.trip.count338 = zext nneg i32 %i.vk to i64 ; 2 uses
  %xtraiter446 = and i64 %wide.trip.count338, 3   ; 3 uses
  %i.aat = icmp ult i32 %i.vk, 4
  br i1 %i.aat, label %.epil.preheader445, label %.lr.ph285.new

.lr.ph285.new:                                    ; preds = %.lr.ph285
  %unroll_iter450 = and i64 %wide.trip.count338, 2147483644
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph285.new
  %indvars.iv335 = phi i64 [ 0, %.lr.ph285.new ], [ %indvars.iv.next336.3, %bb.am ] ; 6 uses
  %niter451 = phi i64 [ 0, %.lr.ph285.new ], [ %niter451.next.3, %bb.am ]
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv335
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !12
  %i.aaw = sext i32 %i.aav to i64
  %i.aax = getelementptr inbounds [12 x i8], ptr %i.aas, i64 %i.aaw ; 3 uses
  %i.aay = getelementptr inbounds nuw [12 x i8], ptr %i.aan, i64 %indvars.iv335 ; 3 uses
  %i.aaz = load float, ptr %i.aax, align 4, !tbaa !159
  store float %i.aaz, ptr %i.aay, align 4, !tbaa !159
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aax, i64 4
  %i.abb = load float, ptr %i.aba, align 4, !tbaa !159
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aay, i64 4
  store float %i.abb, ptr %i.abc, align 4, !tbaa !159
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aax, i64 8
  %i.abe = load float, ptr %i.abd, align 4, !tbaa !159
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aay, i64 8
  store float %i.abe, ptr %i.abf, align 4, !tbaa !159
  %indvars.iv.next336 = or disjoint i64 %indvars.iv335, 1 ; 2 uses
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.next336
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !12
  %i.abi = sext i32 %i.abh to i64
  %i.abj = getelementptr inbounds [12 x i8], ptr %i.aas, i64 %i.abi ; 3 uses
  %i.abk = getelementptr inbounds nuw [12 x i8], ptr %i.aan, i64 %indvars.iv.next336 ; 3 uses
  %i.abl = load float, ptr %i.abj, align 4, !tbaa !159
  store float %i.abl, ptr %i.abk, align 4, !tbaa !159
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abj, i64 4
  %i.abn = load float, ptr %i.abm, align 4, !tbaa !159
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abk, i64 4
  store float %i.abn, ptr %i.abo, align 4, !tbaa !159
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abj, i64 8
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !159
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abk, i64 8
  store float %i.abq, ptr %i.abr, align 4, !tbaa !159
  %indvars.iv.next336.1 = or disjoint i64 %indvars.iv335, 2 ; 2 uses
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.next336.1
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !12
  %i.abu = sext i32 %i.abt to i64
  %i.abv = getelementptr inbounds [12 x i8], ptr %i.aas, i64 %i.abu ; 3 uses
  %i.abw = getelementptr inbounds nuw [12 x i8], ptr %i.aan, i64 %indvars.iv.next336.1 ; 3 uses
  %i.abx = load float, ptr %i.abv, align 4, !tbaa !159
  store float %i.abx, ptr %i.abw, align 4, !tbaa !159
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abv, i64 4
  %i.abz = load float, ptr %i.aby, align 4, !tbaa !159
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abw, i64 4
  store float %i.abz, ptr %i.aca, align 4, !tbaa !159
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abv, i64 8
  %i.acc = load float, ptr %i.acb, align 4, !tbaa !159
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abw, i64 8
  store float %i.acc, ptr %i.acd, align 4, !tbaa !159
  %indvars.iv.next336.2 = or disjoint i64 %indvars.iv335, 3 ; 2 uses
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv.next336.2
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !12
  %i.acg = sext i32 %i.acf to i64
  %i.ach = getelementptr inbounds [12 x i8], ptr %i.aas, i64 %i.acg ; 3 uses
  %i.aci = getelementptr inbounds nuw [12 x i8], ptr %i.aan, i64 %indvars.iv.next336.2 ; 3 uses
  %i.acj = load float, ptr %i.ach, align 4, !tbaa !159
  store float %i.acj, ptr %i.aci, align 4, !tbaa !159
  %i.ack = getelementptr inbounds nuw i8, ptr %i.ach, i64 4
  %i.acl = load float, ptr %i.ack, align 4, !tbaa !159
  %i.acm = getelementptr inbounds nuw i8, ptr %i.aci, i64 4
  store float %i.acl, ptr %i.acm, align 4, !tbaa !159
  %i.acn = getelementptr inbounds nuw i8, ptr %i.ach, i64 8
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !159
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aci, i64 8
  store float %i.aco, ptr %i.acp, align 4, !tbaa !159
  %indvars.iv.next336.3 = add nuw nsw i64 %indvars.iv335, 4 ; 2 uses
  %niter451.next.3 = add i64 %niter451, 4         ; 2 uses
  %niter451.ncmp.3 = icmp eq i64 %niter451.next.3, %unroll_iter450
  br i1 %niter451.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.am, !llvm.loop !153

bb.an:                                            ; preds = %_ZN3gmx29PositionCalculationCollection4Impl15getFrameIndicesEiPi.exit
  %i.acq = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !165
  %9 = ptrtoint ptr %.sroa.3.0.i.in to i64
  %i.acs = ptrtoint ptr %.sroa.0.0.i to i64
  %i.act = sub i64 %9, %i.acs
  %i.acu = lshr exact i64 %i.act, 2
  %i.acv = trunc i64 %i.acu to i32                ; 3 uses
  %i.acw = load ptr, ptr %.0192, align 8, !tbaa !158
  tail call void @_Z13gmx_calc_comgPK10gmx_mtop_tPA3_fiPKibPf(ptr noundef %i.vh, ptr noundef %i.acr, i32 noundef %i.acv, ptr noundef %.sroa.0.0.i, i1 noundef zeroext %i.vi, ptr noundef %i.acw)
  %i.acx = load ptr, ptr %i.re, align 8, !tbaa !160 ; 2 uses
  %.not209 = icmp eq ptr %i.acx, null
  br i1 %.not209, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.acy = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.acz = load i8, ptr %i.acy, align 8, !tbaa !163, !range !66, !noundef !67
  %i.ada = trunc nuw i8 %i.acz to i1
  br i1 %i.ada, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.adb = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !166
  tail call void @_Z13gmx_calc_comgPK10gmx_mtop_tPA3_fiPKibPf(ptr noundef %i.vh, ptr noundef %i.adc, i32 noundef %i.acv, ptr noundef %.sroa.0.0.i, i1 noundef zeroext %i.vi, ptr noundef nonnull %i.acx)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.add = load ptr, ptr %i.ro, align 8, !tbaa !161 ; 2 uses
  %.not210 = icmp eq ptr %i.add, null
  br i1 %.not210, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ade = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.adf = load i8, ptr %i.ade, align 8, !tbaa !164, !range !66, !noundef !67
  %i.adg = trunc nuw i8 %i.adf to i1
  br i1 %i.adg, label %bb.as, label %.loopexit

bb.as:                                            ; preds = %bb.ar
  %i.adh = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !167
  tail call void @_Z15gmx_calc_comg_fPK10gmx_mtop_tPA3_fiPKibPf(ptr noundef %i.vh, ptr noundef %i.adi, i32 noundef %i.acv, ptr noundef %.sroa.0.0.i, i1 noundef zeroext %i.vi, ptr noundef nonnull %i.add)
  br label %.loopexit

bb.at:                                            ; preds = %_ZN3gmx29PositionCalculationCollection4Impl15getFrameIndicesEiPi.exit
  %i.adj = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !165
  %10 = ptrtoint ptr %.sroa.3.0.i.in to i64
  %i.adl = ptrtoint ptr %.sroa.0.0.i to i64
  %i.adm = sub i64 %10, %i.adl
  %i.adn = lshr exact i64 %i.adm, 2
  %i.ado = trunc i64 %i.adn to i32                ; 3 uses
  %i.adp = load ptr, ptr %.0192, align 8, !tbaa !158
  tail call void @_Z17gmx_calc_comg_pbcPK10gmx_mtop_tPA3_fPK5t_pbciPKibPf(ptr noundef %i.vh, ptr noundef %i.adk, ptr noundef %4, i32 noundef %i.ado, ptr noundef %.sroa.0.0.i, i1 noundef zeroext %i.vi, ptr noundef %i.adp)
  %i.adq = load ptr, ptr %i.re, align 8, !tbaa !160 ; 2 uses
  %.not207 = icmp eq ptr %i.adq, null
  br i1 %.not207, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.adr = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ads = load i8, ptr %i.adr, align 8, !tbaa !163, !range !66, !noundef !67
  %i.adt = trunc nuw i8 %i.ads to i1
  br i1 %i.adt, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.adu = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !166
  tail call void @_Z13gmx_calc_comgPK10gmx_mtop_tPA3_fiPKibPf(ptr noundef %i.vh, ptr noundef %i.adv, i32 noundef %i.ado, ptr noundef %.sroa.0.0.i, i1 noundef zeroext %i.vi, ptr noundef nonnull %i.adq)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %i.adw = load ptr, ptr %i.ro, align 8, !tbaa !161 ; 2 uses
  %.not208 = icmp eq ptr %i.adw, null
  br i1 %.not208, label %.loopexit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.adx = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ady = load i8, ptr %i.adx, align 8, !tbaa !164, !range !66, !noundef !67
  %i.adz = trunc nuw i8 %i.ady to i1
  br i1 %i.adz, label %bb.ay, label %.loopexit

bb.ay:                                            ; preds = %bb.ax
  %i.aea = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.aeb = load ptr, ptr %i.aea, align 8, !tbaa !167
  tail call void @_Z15gmx_calc_comg_fPK10gmx_mtop_tPA3_fiPKibPf(ptr noundef %i.vh, ptr noundef %i.aeb, i32 noundef %i.ado, ptr noundef %.sroa.0.0.i, i1 noundef zeroext %i.vi, ptr noundef nonnull %i.adw)
  br label %.loopexit

bb.az:                                            ; preds = %_ZN3gmx29PositionCalculationCollection4Impl15getFrameIndicesEiPi.exit
  %i.aec = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !165
  %i.aee = load ptr, ptr %.0192, align 8, !tbaa !158
  tail call void @_Z19gmx_calc_comg_blockPK10gmx_mtop_tPA3_fPK7t_blockPKibS3_(ptr noundef %i.vh, ptr noundef %i.aed, ptr noundef nonnull %i.sa, ptr noundef %.sroa.0.0.i, i1 noundef zeroext %i.vi, ptr noundef %i.aee)
  %i.aef = load ptr, ptr %i.re, align 8, !tbaa !160 ; 2 uses
  %.not213 = icmp eq ptr %i.aef, null
  br i1 %.not213, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.aeg = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.aeh = load i8, ptr %i.aeg, align 8, !tbaa !163, !range !66, !noundef !67
  %i.aei = trunc nuw i8 %i.aeh to i1
  br i1 %i.aei, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.aej = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !166
  tail call void @_Z19gmx_calc_comg_blockPK10gmx_mtop_tPA3_fPK7t_blockPKibS3_(ptr noundef %i.vh, ptr noundef %i.aek, ptr noundef nonnull %i.sa, ptr noundef %.sroa.0.0.i, i1 noundef zeroext %i.vi, ptr noundef nonnull %i.aef)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %i.ael = load ptr, ptr %i.ro, align 8, !tbaa !161 ; 2 uses
  %.not214 = icmp eq ptr %i.ael, null
  br i1 %.not214, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.aem = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.aen = load i8, ptr %i.aem, align 8, !tbaa !164, !range !66, !noundef !67
  %i.aeo = trunc nuw i8 %i.aen to i1
  br i1 %i.aeo, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %bb.bd
  %i.aep = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !167
  tail call void @_Z21gmx_calc_comg_f_blockPK10gmx_mtop_tPA3_fPK7t_blockPKibS3_(ptr noundef %i.vh, ptr noundef %i.aeq, ptr noundef nonnull %i.sa, ptr noundef %.sroa.0.0.i, i1 noundef zeroext %i.vi, ptr noundef nonnull %i.ael)
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.am
  %lcmp.mod448.not = icmp eq i64 %xtraiter446, 0
  br i1 %lcmp.mod448.not, label %.loopexit, label %.epil.preheader445

.epil.preheader445:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph285
  %indvars.iv335.epil.init = phi i64 [ 0, %.lr.ph285 ], [ %indvars.iv.next336.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod449 = icmp ne i64 %xtraiter446, 0
  tail call void @llvm.assume(i1 %lcmp.mod449)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.epil.preheader445
  %indvars.iv335.epil = phi i64 [ %indvars.iv335.epil.init, %.epil.preheader445 ], [ %indvars.iv.next336.epil, %bb.bf ] ; 3 uses
  %epil.iter447 = phi i64 [ 0, %.epil.preheader445 ], [ %epil.iter447.next, %bb.bf ]
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv335.epil
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !12
  %i.aet = sext i32 %i.aes to i64
  %i.aeu = getelementptr inbounds [12 x i8], ptr %i.aas, i64 %i.aet ; 3 uses
  %i.aev = getelementptr inbounds nuw [12 x i8], ptr %i.aan, i64 %indvars.iv335.epil ; 3 uses
  %i.aew = load float, ptr %i.aeu, align 4, !tbaa !159
  store float %i.aew, ptr %i.aev, align 4, !tbaa !159
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aeu, i64 4
  %i.aey = load float, ptr %i.aex, align 4, !tbaa !159
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aev, i64 4
  store float %i.aey, ptr %i.aez, align 4, !tbaa !159
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aeu, i64 8
  %i.afb = load float, ptr %i.afa, align 4, !tbaa !159
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aev, i64 8
  store float %i.afb, ptr %i.afc, align 4, !tbaa !159
  %indvars.iv.next336.epil = add nuw nsw i64 %indvars.iv335.epil, 1
  %epil.iter447.next = add i64 %epil.iter447, 1   ; 2 uses
  %epil.iter447.cmp.not = icmp eq i64 %epil.iter447.next, %xtraiter446
  br i1 %epil.iter447.cmp.not, label %.loopexit, label %bb.bf, !llvm.loop !154

.loopexit.loopexit386.unr-lcssa:                  ; preds = %bb.v
  %lcmp.mod420.not = icmp eq i64 %xtraiter418, 0
  br i1 %lcmp.mod420.not, label %.loopexit, label %.epil.preheader417

.epil.preheader417:                               ; preds = %.loopexit.loopexit386.unr-lcssa, %.lr.ph273
  %indvars.iv314.epil.init = phi i64 [ 0, %.lr.ph273 ], [ %indvars.iv.next315.3, %.loopexit.loopexit386.unr-lcssa ]
  %lcmp.mod421 = icmp ne i64 %xtraiter418, 0
  tail call void @llvm.assume(i1 %lcmp.mod421)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.epil.preheader417
  %indvars.iv314.epil = phi i64 [ %indvars.iv314.epil.init, %.epil.preheader417 ], [ %indvars.iv.next315.epil, %bb.bg ] ; 3 uses
  %epil.iter419 = phi i64 [ 0, %.epil.preheader417 ], [ %epil.iter419.next, %bb.bg ]
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv314.epil
  %i.afe = load i32, ptr %i.afd, align 4, !tbaa !12
  %i.aff = sext i32 %i.afe to i64
  %i.afg = getelementptr inbounds [12 x i8], ptr %i.ox, i64 %i.aff ; 3 uses
  %i.afh = getelementptr inbounds nuw [12 x i8], ptr %i.or, i64 %indvars.iv314.epil ; 3 uses
  %i.afi = load float, ptr %i.afg, align 4, !tbaa !159
  store float %i.afi, ptr %i.afh, align 4, !tbaa !159
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afg, i64 4
  %i.afk = load float, ptr %i.afj, align 4, !tbaa !159
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afh, i64 4
  store float %i.afk, ptr %i.afl, align 4, !tbaa !159
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afg, i64 8
  %i.afn = load float, ptr %i.afm, align 4, !tbaa !159
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afh, i64 8
  store float %i.afn, ptr %i.afo, align 4, !tbaa !159
  %indvars.iv.next315.epil = add nuw nsw i64 %indvars.iv314.epil, 1
  %epil.iter419.next = add i64 %epil.iter419, 1   ; 2 uses
  %epil.iter419.cmp.not = icmp eq i64 %epil.iter419.next, %xtraiter418
  br i1 %epil.iter419.cmp.not, label %.loopexit, label %bb.bg, !llvm.loop !155

.loopexit.loopexit387.unr-lcssa:                  ; preds = %bb.q
  %lcmp.mod399.not = icmp eq i64 %xtraiter397, 0
  br i1 %lcmp.mod399.not, label %.loopexit, label %.epil.preheader396

.epil.preheader396:                               ; preds = %.loopexit.loopexit387.unr-lcssa, %.lr.ph265
  %indvars.iv299.epil.init = phi i64 [ 0, %.lr.ph265 ], [ %indvars.iv.next300.3, %.loopexit.loopexit387.unr-lcssa ]
  %lcmp.mod400 = icmp ne i64 %xtraiter397, 0
  tail call void @llvm.assume(i1 %lcmp.mod400)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.epil.preheader396
  %indvars.iv299.epil = phi i64 [ %indvars.iv299.epil.init, %.epil.preheader396 ], [ %indvars.iv.next300.epil, %bb.bh ] ; 3 uses
  %epil.iter398 = phi i64 [ 0, %.epil.preheader396 ], [ %epil.iter398.next, %bb.bh ]
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv299.epil
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !12
  %i.afr = sext i32 %i.afq to i64
  %i.afs = getelementptr inbounds [4 x i8], ptr %i.hb, i64 %i.afr
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !12
  %i.afu = sext i32 %i.aft to i64
  %i.afv = getelementptr inbounds [12 x i8], ptr %i.hh, i64 %i.afu ; 3 uses
  %i.afw = getelementptr inbounds nuw [12 x i8], ptr %i.gz, i64 %indvars.iv299.epil ; 3 uses
  %i.afx = load float, ptr %i.afv, align 4, !tbaa !159
  store float %i.afx, ptr %i.afw, align 4, !tbaa !159
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afv, i64 4
  %i.afz = load float, ptr %i.afy, align 4, !tbaa !159
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afw, i64 4
  store float %i.afz, ptr %i.aga, align 4, !tbaa !159
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  %i.agc = load float, ptr %i.agb, align 4, !tbaa !159
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afw, i64 8
  store float %i.agc, ptr %i.agd, align 4, !tbaa !159
  %indvars.iv.next300.epil = add nuw nsw i64 %indvars.iv299.epil, 1
  %epil.iter398.next = add i64 %epil.iter398, 1   ; 2 uses
  %epil.iter398.cmp.not = icmp eq i64 %epil.iter398.next, %xtraiter397
  br i1 %epil.iter398.cmp.not, label %.loopexit, label %bb.bh, !llvm.loop !156

.loopexit:                                        ; preds = %.loopexit.loopexit387.unr-lcssa, %bb.bh, %.loopexit.loopexit386.unr-lcssa, %bb.bg, %.loopexit.loopexit.unr-lcssa, %bb.bf, %.preheader253, %.preheader258, %bb.al, %.loopexit243, %bb.as, %bb.ar, %bb.aq, %bb.ay, %bb.ax, %bb.aw, %bb.be, %bb.bd, %bb.bc, %.loopexit252, %.loopexit257, %bb.j, %bb.b
  ret void
}

declare void @_Z23gmx_ana_indexmap_updateP18gmx_ana_indexmap_tP15gmx_ana_index_tb(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #9

declare void @_Z13gmx_calc_comgPK10gmx_mtop_tPA3_fiPKibPf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #9

declare void @_Z15gmx_calc_comg_fPK10gmx_mtop_tPA3_fiPKibPf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #9

declare void @_Z17gmx_calc_comg_pbcPK10gmx_mtop_tPA3_fPK5t_pbciPKibPf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #9

declare void @_Z19gmx_calc_comg_blockPK10gmx_mtop_tPA3_fPK7t_blockPKibS3_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #9

declare void @_Z21gmx_calc_comg_f_blockPK10gmx_mtop_tPA3_fPK7t_blockPKibS3_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nofree nounwind
end_hunk_0
