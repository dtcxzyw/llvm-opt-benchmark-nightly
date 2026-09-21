Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/magicyuv?download=true
inline.NumInlined: 40
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@magy_decode_slice10:bb.a
  %i.nk = trunc i32 %i.nj to i16
  store i16 %i.nk, ptr %i.nd, align 2, !tbaa !63
  %indvars.iv.next550 = add nuw nsw i64 %indvars.iv549, 1 ; 3 uses
  %i.nl = sub nsw i64 %indvars.iv.next550, %i.az
  %i.nm = getelementptr inbounds [2 x i8], ptr %.5513.us, i64 %i.nl
  %i.nn = load i16, ptr %i.nm, align 2, !tbaa !63
  %i.no = zext i16 %i.nn to i32
  %i.np = getelementptr [2 x i8], ptr %i.mv, i64 %indvars.iv.next550
  %i.nq = load i16, ptr %i.np, align 2, !tbaa !63
  %i.nr = zext i16 %i.nq to i32
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %.5513.us, i64 %indvars.iv.next550 ; 2 uses
  %i.nt = load i16, ptr %i.ns, align 2, !tbaa !63
  %i.nu = zext i16 %i.nt to i32
  %i.nv = add i32 %i.ni, %i.no
  %i.nw = sub i32 %i.nv, %i.nr
  %i.nx = add i32 %i.nw, %i.nu                    ; 3 uses
  %i.ny = and i32 %i.nx, %i.g
  %i.nz = trunc i32 %i.ny to i16
  store i16 %i.nz, ptr %i.ns, align 2, !tbaa !63
  %indvars.iv.next550.1 = add nuw nsw i64 %indvars.iv549, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge511.us.unr-lcssa, label %.lr.ph510.us.new, !llvm.loop !110

._crit_edge511.us.unr-lcssa:                      ; preds = %.lr.ph510.us.new
  br i1 %lcmp.mod641.not, label %._crit_edge511.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge511.us.unr-lcssa, %.lr.ph510.us
  %indvars.iv549.epil.init = phi i64 [ 1, %.lr.ph510.us ], [ %indvars.iv.next550.1, %._crit_edge511.us.unr-lcssa ] ; 3 uses
  %.0394507.us.epil.init = phi i32 [ %i.ms, %.lr.ph510.us ], [ %i.nx, %._crit_edge511.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod642)
  %i.oa = sub nsw i64 %indvars.iv549.epil.init, %i.az
  %i.ob = getelementptr inbounds [2 x i8], ptr %.5513.us, i64 %i.oa
  %i.oc = load i16, ptr %i.ob, align 2, !tbaa !63
  %i.od = zext i16 %i.oc to i32
  %i.oe = getelementptr [2 x i8], ptr %i.mv, i64 %indvars.iv549.epil.init
  %i.of = load i16, ptr %i.oe, align 2, !tbaa !63
  %i.og = zext i16 %i.of to i32
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %.5513.us, i64 %indvars.iv549.epil.init ; 2 uses
  %i.oi = load i16, ptr %i.oh, align 2, !tbaa !63
  %i.oj = zext i16 %i.oi to i32
  %i.ok = add i32 %.0394507.us.epil.init, %i.od
  %i.ol = sub i32 %i.ok, %i.og
  %i.om = add i32 %i.ol, %i.oj
  %i.on = and i32 %i.om, %i.g
  %i.oo = trunc i32 %i.on to i16
  store i16 %i.oo, ptr %i.oh, align 2, !tbaa !63
  br label %._crit_edge511.us

._crit_edge511.us:                                ; preds = %._crit_edge511.us.unr-lcssa, %.epil.preheader
  %i.op = getelementptr inbounds [2 x i8], ptr %.5513.us, i64 %i.ba
  %i.oq = add nsw i32 %.3295512.us, 1             ; 2 uses
  %exitcond554.not = icmp eq i32 %i.oq, %i.am
  br i1 %exitcond554.not, label %.loopexit, label %.lr.ph510.us, !llvm.loop !111

.lr.ph515.split:                                  ; preds = %.lr.ph515.split.prol.loopexit, %.lr.ph515.split
  %.5513 = phi ptr [ %i.qa, %.lr.ph515.split ], [ %.5513.unr, %.lr.ph515.split.prol.loopexit ] ; 4 uses
  %.3295512 = phi i32 [ %i.qb, %.lr.ph515.split ], [ %.3295512.unr, %.lr.ph515.split.prol.loopexit ]
  %i.or = getelementptr inbounds [2 x i8], ptr %.5513, i64 %i.lx
  %i.os = load i16, ptr %i.or, align 2, !tbaa !63
  %i.ot = zext i16 %i.os to i32
  %i.ou = load i16, ptr %.5513, align 2, !tbaa !63
  %i.ov = zext i16 %i.ou to i32
  %i.ow = add nuw nsw i32 %i.ov, %i.ot
  %i.ox = and i32 %i.ow, %i.g
  %i.oy = trunc i32 %i.ox to i16
  store i16 %i.oy, ptr %.5513, align 2, !tbaa !63
  %i.oz = getelementptr inbounds [2 x i8], ptr %.5513, i64 %i.ba ; 4 uses
  %i.pa = getelementptr inbounds [2 x i8], ptr %i.oz, i64 %i.lx
  %i.pb = load i16, ptr %i.pa, align 2, !tbaa !63
  %i.pc = zext i16 %i.pb to i32
  %i.pd = load i16, ptr %i.oz, align 2, !tbaa !63
  %i.pe = zext i16 %i.pd to i32
  %i.pf = add nuw nsw i32 %i.pe, %i.pc
  %i.pg = and i32 %i.pf, %i.g
  %i.ph = trunc i32 %i.pg to i16
  store i16 %i.ph, ptr %i.oz, align 2, !tbaa !63
  %i.pi = getelementptr inbounds [2 x i8], ptr %i.oz, i64 %i.ba ; 4 uses
  %i.pj = getelementptr inbounds [2 x i8], ptr %i.pi, i64 %i.lx
  %i.pk = load i16, ptr %i.pj, align 2, !tbaa !63
  %i.pl = zext i16 %i.pk to i32
  %i.pm = load i16, ptr %i.pi, align 2, !tbaa !63
  %i.pn = zext i16 %i.pm to i32
  %i.po = add nuw nsw i32 %i.pn, %i.pl
  %i.pp = and i32 %i.po, %i.g
  %i.pq = trunc i32 %i.pp to i16
  store i16 %i.pq, ptr %i.pi, align 2, !tbaa !63
  %i.pr = getelementptr inbounds [2 x i8], ptr %i.pi, i64 %i.ba ; 4 uses
  %i.ps = getelementptr inbounds [2 x i8], ptr %i.pr, i64 %i.lx
  %i.pt = load i16, ptr %i.ps, align 2, !tbaa !63
  %i.pu = zext i16 %i.pt to i32
  %i.pv = load i16, ptr %i.pr, align 2, !tbaa !63
  %i.pw = zext i16 %i.pv to i32
  %i.px = add nuw nsw i32 %i.pw, %i.pu
  %i.py = and i32 %i.px, %i.g
  %i.pz = trunc i32 %i.py to i16
  store i16 %i.pz, ptr %i.pr, align 2, !tbaa !63
  %i.qa = getelementptr inbounds [2 x i8], ptr %i.pr, i64 %i.ba
  %i.qb = add nsw i32 %.3295512, 4                ; 2 uses
  %exitcond548.not.3 = icmp eq i32 %i.qb, %i.am
  br i1 %exitcond548.not.3, label %.loopexit, label %.lr.ph515.split, !llvm.loop !111

bb.af:                                            ; preds = %.loopexit453
  %i.qc = load ptr, ptr %i.ce, align 8, !tbaa !50
  %i.qd = getelementptr inbounds [2 x i8], ptr %i.qc, i64 %i.cj ; 3 uses
  %i.qe = load ptr, ptr %i.ac, align 8, !tbaa !122
  %i.qf = sext i32 %i.as to i64                   ; 3 uses
  %i.qg = tail call i32 %i.qe(ptr noundef %i.qd, ptr noundef %i.qd, i32 noundef %i.g, i64 noundef %i.qf, i32 noundef 0) #8 ; 0 uses
  %i.qh = getelementptr inbounds [2 x i8], ptr %i.qd, i64 %i.ba ; 4 uses
  br i1 %.not312, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.qi = load ptr, ptr %i.ac, align 8, !tbaa !122
  %i.qj = tail call i32 %i.qi(ptr noundef %i.qh, ptr noundef %i.qh, i32 noundef %i.g, i64 noundef %i.qf, i32 noundef 0) #8 ; 0 uses
  %i.qk = getelementptr inbounds [2 x i8], ptr %i.qh, i64 %i.ba
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.6 = phi ptr [ %i.qk, %bb.ag ], [ %i.qh, %bb.af ] ; 2 uses
  %i.ql = icmp slt i32 %i.t, %i.am
  br i1 %i.ql, label %.lr.ph506, label %.loopexit

.lr.ph506:                                        ; preds = %bb.ah
  %i.qm = sub nsw i64 0, %i.az
  %i.qn = icmp slt i32 %i.ar, 0
  br i1 %i.qn, label %.lr.ph.preheader.i, label %.loopexit

.lr.ph.preheader.i:                               ; preds = %.lr.ph506, %magicyuv_median_pred16.exit.loopexit
  %.7504 = phi ptr [ %i.re, %magicyuv_median_pred16.exit.loopexit ], [ %.6, %.lr.ph506 ] ; 4 uses
  %.4296503 = phi i32 [ %i.rf, %magicyuv_median_pred16.exit.loopexit ], [ %i.t, %.lr.ph506 ]
  %.2396502.in.in = phi ptr [ %.7504, %magicyuv_median_pred16.exit.loopexit ], [ %.6, %.lr.ph506 ]
  %.2396502.in = load i16, ptr %.2396502.in.in, align 2, !tbaa !63 ; 2 uses
  %.2396502 = zext i16 %.2396502.in to i32
  %i.qo = getelementptr inbounds [2 x i8], ptr %.7504, i64 %i.qm
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %.029.i = phi i16 [ %.2396502.in, %.lr.ph.preheader.i ], [ %i.qq, %.lr.ph.i ]
  %.02428.i = phi i32 [ %.2396502, %.lr.ph.preheader.i ], [ %i.rc, %.lr.ph.i ] ; 3 uses
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %i.qo, i64 %indvars.iv.i
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !63 ; 2 uses
  %i.qr = zext i16 %i.qq to i32                   ; 3 uses
  %i.qs = zext i16 %.029.i to i32
  %i.qt = sub nsw i32 %.02428.i, %i.qs
  %i.qu = add nsw i32 %i.qt, %i.qr
  %..i.i = tail call i32 @llvm.umax.i32(i32 range(i32 0, 65536) %.02428.i, i32 range(i32 0, 65536) %i.qr)
  %.20.i.i = tail call i32 @llvm.umin.i32(i32 range(i32 0, 65536) %.02428.i, i32 range(i32 0, 65536) %i.qr)
  %i.qv = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.qu, i32 %..i.i)
  %i.qw = tail call range(i32 0, 65536) i32 @llvm.smax.i32(i32 %i.qv, i32 %.20.i.i)
  %i.qx = getelementptr inbounds nuw [2 x i8], ptr %.7504, i64 %indvars.iv.i ; 2 uses
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !63
  %i.qz = trunc nuw i32 %i.qw to i16
  %i.ra = add i16 %i.qy, %i.qz
  %i.rb = zext i16 %i.ra to i32
  %i.rc = and i32 %i.g, %i.rb                     ; 2 uses
  %i.rd = trunc nuw i32 %i.rc to i16
  store i16 %i.rd, ptr %i.qx, align 2, !tbaa !63
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.qf
  br i1 %exitcond.not.i, label %magicyuv_median_pred16.exit.loopexit, label %.lr.ph.i, !llvm.loop !112

magicyuv_median_pred16.exit.loopexit:             ; preds = %.lr.ph.i
  %i.re = getelementptr inbounds [2 x i8], ptr %.7504, i64 %i.ba
  %i.rf = add nsw i32 %.4296503, 1                ; 2 uses
  %exitcond547.not = icmp eq i32 %i.rf, %i.am
  br i1 %exitcond547.not, label %.loopexit, label %.lr.ph.preheader.i, !llvm.loop !113

bb.ai:                                            ; preds = %.loopexit453
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.cd) #8
  br label %.loopexit

.loopexit:                                        ; preds = %magicyuv_median_pred16.exit.loopexit, %.lr.ph515.split.prol.loopexit, %.lr.ph515.split, %._crit_edge511.us, %bb.ab, %bb.ah, %.lr.ph506, %bb.ae, %bb.aa, %bb.ai
  %indvars.iv.next557 = add nuw nsw i64 %indvars.iv556, 1 ; 2 uses
  %i.rg = load i32, ptr %i.i, align 8, !tbaa !37
  %i.rh = sext i32 %i.rg to i64
  %i.ri = icmp slt i64 %indvars.iv.next557, %i.rh
  br i1 %i.ri, label %bb.b, label %._crit_edge523, !llvm.loop !114

._crit_edge523:                                   ; preds = %.loopexit, %bb.a
  %i.rj = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !33
  %.not = icmp eq i32 %i.rk, 0
  br i1 %.not, label %bits_init8_be.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge523
  %i.rl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !40 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !41
  %i.rp = mul nsw i32 %i.rm, %2                   ; 4 uses
  %i.rq = sub nsw i32 %i.ro, %i.rp
  %.316 = tail call i32 @llvm.smin.i32(i32 %i.rm, i32 %i.rq) ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.rs = load i32, ptr %i.rr, align 8, !tbaa !39 ; 3 uses
  %i.rt = icmp sgt i32 %.316, 0
  br i1 %i.rt, label %.preheader.lr.ph, label %bits_init8_be.exit.thread

.preheader.lr.ph:                                 ; preds = %bb.aj
  %i.ru = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %i.rv = load <3 x i32>, ptr %i.ru, align 8, !tbaa !34 ; 4 uses
  %i.rw = shufflevector <3 x i32> %i.rv, <3 x i32> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 1>
  %i.rx = load i32, ptr %i.ru, align 8, !tbaa !34 ; 2 uses
  %i.ry = icmp sgt i32 %i.rs, 0
  %i.rz = sdiv i32 %i.rx, 2
  %i.sa = sext i32 %i.rz to i64                   ; 2 uses
  %4 = shufflevector <3 x i32> %i.rv, <3 x i32> poison, <2 x i32> <i32 1, i32 2>
  %5 = sdiv <2 x i32> %4, splat (i32 2)           ; 2 uses
  %6 = extractelement <2 x i32> %5, i64 0
  %7 = sext i32 %6 to i64                         ; 2 uses
  %8 = extractelement <2 x i32> %5, i64 1
  %i.sb = sext i32 %8 to i64                      ; 2 uses
  br i1 %i.ry, label %.preheader.preheader, label %bits_init8_be.exit.thread

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.sc = load ptr, ptr %i.h, align 8, !tbaa !50  ; 2 uses
  %i.sd = mul nsw i32 %i.rx, %i.rp
  %i.se = sdiv i32 %i.sd, 2
  %i.sf = sext i32 %i.se to i64                   ; 2 uses
  %i.sg = getelementptr [2 x i8], ptr %i.sc, i64 %i.sf ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !50 ; 2 uses
  %9 = extractelement <3 x i32> %i.rv, i64 1
  %i.sj = mul nsw i32 %9, %i.rp
  %i.sk = sdiv i32 %i.sj, 2
  %i.sl = sext i32 %i.sk to i64                   ; 2 uses
  %i.sm = getelementptr [2 x i8], ptr %i.si, i64 %i.sl ; 3 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !50 ; 2 uses
  %10 = extractelement <3 x i32> %i.rv, i64 2
  %i.sp = mul nsw i32 %10, %i.rp
  %i.sq = sdiv i32 %i.sp, 2
  %i.sr = sext i32 %i.sq to i64                   ; 2 uses
  %i.ss = getelementptr [2 x i8], ptr %i.so, i64 %i.sr ; 3 uses
  %wide.trip.count562 = zext nneg i32 %i.rs to i64 ; 8 uses
  %i.st = add nsw i32 %.316, -1
  %i.su = zext i32 %i.st to i64                   ; 3 uses
  %i.sv = mul nsw i64 %i.sa, %i.su
  %i.sw = add i64 %i.sv, %i.sr
  %i.sx = add i64 %i.sw, %wide.trip.count562
  %i.sy = shl i64 %i.sx, 1
  %scevgep = getelementptr i8, ptr %i.so, i64 %i.sy ; 2 uses
  %i.sz = mul nsw i64 %i.sb, %i.su
  %i.ta = add i64 %i.sz, %i.sf
  %i.tb = add i64 %i.ta, %wide.trip.count562
  %i.tc = shl i64 %i.tb, 1
  %scevgep613 = getelementptr i8, ptr %i.sc, i64 %i.tc ; 2 uses
  %i.td = mul nsw i64 %7, %i.su
  %i.te = add i64 %i.td, %i.sl
  %i.tf = add i64 %i.te, %wide.trip.count562
  %i.tg = shl i64 %i.tf, 1
  %scevgep614 = getelementptr i8, ptr %i.si, i64 %i.tg ; 2 uses
  %min.iters.check = icmp ult i32 %i.rs, 16
  %bound0 = icmp ult ptr %i.ss, %scevgep613
  %bound1 = icmp ult ptr %i.sg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.th = icmp slt <4 x i32> %i.rw, splat (i32 -1)
  %bound0616 = icmp ult ptr %i.ss, %scevgep614
  %bound1617 = icmp ult ptr %i.sm, %scevgep
  %found.conflict618 = and i1 %bound0616, %bound1617
  %bound0621 = icmp ult ptr %i.sg, %scevgep614
  %bound1622 = icmp ult ptr %i.sm, %scevgep613
  %found.conflict623 = and i1 %bound0621, %bound1622
  %i.ti = bitcast <4 x i1> %i.th to i4
  %i.tj = icmp ne i4 %i.ti, 0
  %op.rdx = or i1 %i.tj, %found.conflict
  %op.rdx631 = or i1 %found.conflict618, %found.conflict623
  %op.rdx632 = or i1 %op.rdx, %op.rdx631
  %n.vec = and i64 %wide.trip.count562, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count562
  %xtraiter643 = and i64 %wide.trip.count562, 1
  %lcmp.mod644.not = icmp eq i64 %xtraiter643, 0
  %i.tk = add nsw i64 %wide.trip.count562, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge526
  %.0530 = phi ptr [ %i.vz, %._crit_edge526 ], [ %i.ss, %.preheader.preheader ] ; 5 uses
  %.0284529 = phi ptr [ %i.wa, %._crit_edge526 ], [ %i.sm, %.preheader.preheader ] ; 5 uses
  %.0285528 = phi ptr [ %i.wb, %._crit_edge526 ], [ %i.sg, %.preheader.preheader ] ; 5 uses
  %.1299527 = phi i32 [ %i.wc, %._crit_edge526 ], [ 0, %.preheader.preheader ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx632
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.tl = getelementptr inbounds nuw [2 x i8], ptr %.0530, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.tl, align 2, !tbaa !63, !alias.scope !123, !noalias !124
  %i.tm = zext <8 x i16> %wide.load to <8 x i32>
  %i.tn = getelementptr inbounds nuw [2 x i8], ptr %.0284529, i64 %index ; 2 uses
  %wide.load627 = load <8 x i16>, ptr %i.tn, align 2, !tbaa !63, !alias.scope !125
  %i.to = zext <8 x i16> %wide.load627 to <8 x i32>
  %i.tp = add nuw nsw <8 x i32> %i.to, %i.tm
  %i.tq = and <8 x i32> %i.tp, %broadcast.splat
  %i.tr = trunc <8 x i32> %i.tq to <8 x i16>
  store <8 x i16> %i.tr, ptr %i.tl, align 2, !tbaa !63, !alias.scope !123, !noalias !124
  %i.ts = getelementptr inbounds nuw [2 x i8], ptr %.0285528, i64 %index ; 2 uses
  %wide.load628 = load <8 x i16>, ptr %i.ts, align 2, !tbaa !63, !alias.scope !126, !noalias !125
  %i.tt = zext <8 x i16> %wide.load628 to <8 x i32>
  %wide.load629 = load <8 x i16>, ptr %i.tn, align 2, !tbaa !63, !alias.scope !125
  %i.tu = zext <8 x i16> %wide.load629 to <8 x i32>
  %i.tv = add nuw nsw <8 x i32> %i.tu, %i.tt
  %i.tw = and <8 x i32> %i.tv, %broadcast.splat
  %i.tx = trunc <8 x i32> %i.tw to <8 x i16>
  store <8 x i16> %i.tx, ptr %i.ts, align 2, !tbaa !63, !alias.scope !126, !noalias !125
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ty = icmp eq i64 %index.next, %n.vec
  br i1 %i.ty, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge526, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv559.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 6 uses
  br i1 %lcmp.mod644.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.tz = getelementptr inbounds nuw [2 x i8], ptr %.0530, i64 %indvars.iv559.ph ; 2 uses
  %i.ua = load i16, ptr %i.tz, align 2, !tbaa !63
  %i.ub = zext i16 %i.ua to i32
  %i.uc = getelementptr inbounds nuw [2 x i8], ptr %.0284529, i64 %indvars.iv559.ph ; 2 uses
  %i.ud = load i16, ptr %i.uc, align 2, !tbaa !63
  %i.ue = zext i16 %i.ud to i32
  %i.uf = add nuw nsw i32 %i.ue, %i.ub
  %i.ug = and i32 %i.uf, %i.g
  %i.uh = trunc i32 %i.ug to i16
  store i16 %i.uh, ptr %i.tz, align 2, !tbaa !63
  %i.ui = getelementptr inbounds nuw [2 x i8], ptr %.0285528, i64 %indvars.iv559.ph ; 2 uses
  %i.uj = load i16, ptr %i.ui, align 2, !tbaa !63
  %i.uk = zext i16 %i.uj to i32
  %i.ul = load i16, ptr %i.uc, align 2, !tbaa !63
  %i.um = zext i16 %i.ul to i32
  %i.un = add nuw nsw i32 %i.um, %i.uk
  %i.uo = and i32 %i.un, %i.g
  %i.up = trunc i32 %i.uo to i16
  store i16 %i.up, ptr %i.ui, align 2, !tbaa !63
  %indvars.iv.next560.prol = or disjoint i64 %indvars.iv559.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv559.unr = phi i64 [ %indvars.iv559.ph, %scalar.ph.preheader ], [ %indvars.iv.next560.prol, %scalar.ph.prol ]
  %i.uq = icmp eq i64 %indvars.iv559.ph, %i.tk
  br i1 %i.uq, label %._crit_edge526, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv559 = phi i64 [ %indvars.iv.next560.1, %scalar.ph ], [ %indvars.iv559.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ur = getelementptr inbounds nuw [2 x i8], ptr %.0530, i64 %indvars.iv559 ; 2 uses
  %i.us = load i16, ptr %i.ur, align 2, !tbaa !63
  %i.ut = zext i16 %i.us to i32
  %i.uu = getelementptr inbounds nuw [2 x i8], ptr %.0284529, i64 %indvars.iv559 ; 2 uses
  %i.uv = load i16, ptr %i.uu, align 2, !tbaa !63
  %i.uw = zext i16 %i.uv to i32
  %i.ux = add nuw nsw i32 %i.uw, %i.ut
  %i.uy = and i32 %i.ux, %i.g
  %i.uz = trunc i32 %i.uy to i16
  store i16 %i.uz, ptr %i.ur, align 2, !tbaa !63
  %i.va = getelementptr inbounds nuw [2 x i8], ptr %.0285528, i64 %indvars.iv559 ; 2 uses
  %i.vb = load i16, ptr %i.va, align 2, !tbaa !63
  %i.vc = zext i16 %i.vb to i32
  %i.vd = load i16, ptr %i.uu, align 2, !tbaa !63
  %i.ve = zext i16 %i.vd to i32
  %i.vf = add nuw nsw i32 %i.ve, %i.vc
  %i.vg = and i32 %i.vf, %i.g
  %i.vh = trunc i32 %i.vg to i16
  store i16 %i.vh, ptr %i.va, align 2, !tbaa !63
  %indvars.iv.next560 = add nuw nsw i64 %indvars.iv559, 1 ; 3 uses
  %i.vi = getelementptr inbounds nuw [2 x i8], ptr %.0530, i64 %indvars.iv.next560 ; 2 uses
  %i.vj = load i16, ptr %i.vi, align 2, !tbaa !63
  %i.vk = zext i16 %i.vj to i32
  %i.vl = getelementptr inbounds nuw [2 x i8], ptr %.0284529, i64 %indvars.iv.next560 ; 2 uses
  %i.vm = load i16, ptr %i.vl, align 2, !tbaa !63
  %i.vn = zext i16 %i.vm to i32
  %i.vo = add nuw nsw i32 %i.vn, %i.vk
  %i.vp = and i32 %i.vo, %i.g
  %i.vq = trunc i32 %i.vp to i16
  store i16 %i.vq, ptr %i.vi, align 2, !tbaa !63
  %i.vr = getelementptr inbounds nuw [2 x i8], ptr %.0285528, i64 %indvars.iv.next560 ; 2 uses
  %i.vs = load i16, ptr %i.vr, align 2, !tbaa !63
  %i.vt = zext i16 %i.vs to i32
  %i.vu = load i16, ptr %i.vl, align 2, !tbaa !63
  %i.vv = zext i16 %i.vu to i32
  %i.vw = add nuw nsw i32 %i.vv, %i.vt
  %i.vx = and i32 %i.vw, %i.g
  %i.vy = trunc i32 %i.vx to i16
  store i16 %i.vy, ptr %i.vr, align 2, !tbaa !63
  %indvars.iv.next560.1 = add nuw nsw i64 %indvars.iv559, 2 ; 2 uses
  %exitcond563.not.1 = icmp eq i64 %indvars.iv.next560.1, %wide.trip.count562
  br i1 %exitcond563.not.1, label %._crit_edge526, label %scalar.ph, !llvm.loop !120

._crit_edge526:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.vz = getelementptr inbounds [2 x i8], ptr %.0530, i64 %i.sa
  %i.wa = getelementptr inbounds [2 x i8], ptr %.0284529, i64 %7
  %i.wb = getelementptr inbounds [2 x i8], ptr %.0285528, i64 %i.sb
  %i.wc = add nuw nsw i32 %.1299527, 1            ; 2 uses
  %exitcond564.not = icmp eq i32 %i.wc, %.316
  br i1 %exitcond564.not, label %bits_init8_be.exit.thread, label %.preheader, !llvm.loop !121

bits_init8_be.exit.thread:                        ; preds = %bb.b, %bb.d, %bits_read_vlc_multi_be.exit, %._crit_edge526, %bb.aj, %.preheader.lr.ph, %._crit_edge523
  %.2302 = phi i32 [ 0, %._crit_edge523 ], [ -1094995529, %bits_read_vlc_multi_be.exit ], [ 0, %bb.aj ], [ 0, %.preheader.lr.ph ], [ 0, %._crit_edge526 ], [ -1094995529, %bb.d ], [ -1094995529, %bb.b ]
  ret i32 %.2302
}

declare i32 @av_pix_fmt_count_planes(i32 noundef) local_unnamed_addr #3

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @av_fast_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @build_huffman(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 2, -2147483648) %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [33 x i16], align 16              ; 40 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 5 uses
  %i.d = getelementptr i8, ptr %i.c, i64 65880    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(66) %i.a, i8 0, i64 66, i1 false)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 141) #8
  tail call void @abort() #9
  unreachable

.lr.ph:                                           ; preds = %bb.a
  %i.e = zext nneg i32 %2 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 62 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 58 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 54 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 52 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 50 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 46 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 44 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 42 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 38 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 34 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 30 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 26 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 22 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 18 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 14 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.ap = zext nneg i32 %3 to i64                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %xtraiter89 = and i32 %3, 1
  %lcmp.mod90.not = icmp eq i32 %xtraiter89, 0
  %indvars.iv.next.i.prol = add nsw i64 %i.ap, -1 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next.i.prol ; 2 uses
  %i.as = trunc i64 %indvars.iv.next.i.prol to i16
  %i.at = icmp eq i32 %3, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %.04377 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.k ] ; 4 uses
  %.04476 = phi i32 [ 0, %.lr.ph ], [ %.246, %bb.k ] ; 4 uses
  %.sroa.0.075 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.1, %bb.k ] ; 3 uses
  %i.au = load i8, ptr %.sroa.0.075, align 1, !tbaa !29 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.075, i64 1 ; 3 uses
  %i.aw = and i8 %i.au, 127                       ; 3 uses
  %.not = icmp sgt i8 %i.au, -1
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.g, %i.ax
  %i.az = trunc i64 %i.ay to i32
  %i.ba = icmp slt i32 %i.az, 1
  br i1 %i.ba, label %.thread69, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.075, i64 2
  %i.bc = load i8, ptr %i.av, align 1, !tbaa !29
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nuw nsw i32 %i.bd, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.0.1 = phi ptr [ %i.av, %bb.c ], [ %i.bb, %bb.e ] ; 2 uses
  %.042 = phi i32 [ 1, %bb.c ], [ %i.be, %bb.e ]  ; 4 uses
  %i.bf = add nuw nsw i32 %.042, %.04377          ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, %3
  %i.bh = add nsw i8 %i.aw, -33
  %i.bi = icmp ult i8 %i.bh, -32
  %or.cond3 = select i1 %i.bg, i1 true, i1 %i.bi
  br i1 %or.cond3, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = zext nneg i8 %i.aw to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bj ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !63
  %i.bm = trunc nuw nsw i32 %.042 to i16
  %i.bn = add i16 %i.bl, %i.bm
  store i16 %i.bn, ptr %i.bk, align 2, !tbaa !63
  %i.bo = sext i32 %.04377 to i64                 ; 3 uses
  %scevgep82 = getelementptr i8, ptr %i.d, i64 %i.bo
  %i.bp = add i32 %.04377, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.bf, i32 %i.bp)
  %i.bq = xor i32 %.04377, -1
  %i.br = add i32 %smax, %i.bq
  %i.bs = zext i32 %i.br to i64
  %i.bt = add nuw nsw i64 %i.bs, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep82, i8 %i.aw, i64 %i.bt, i1 false), !tbaa !29
  %i.bu = sext i32 %i.bf to i64
  %i.bv = and i32 %.042, 7                        ; 2 uses
  %xtraiter = zext nneg i32 %i.bv to i64
  %lcmp.mod.not = icmp eq i32 %i.bv, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.g, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.bo, %bb.g ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.g ]
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !129

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.g
  %indvars.iv.unr = phi i64 [ %i.bo, %bb.g ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %indvars.iv.next.lcssa.unr = phi i64 [ poison, %bb.g ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.bw = icmp ult i32 %.042, 8
  br i1 %i.bw, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.new ], [ %indvars.iv.unr, %.prol.loopexit ]
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8 ; 3 uses
  %i.bx = icmp slt i64 %indvars.iv.next.7, %i.bu
  br i1 %i.bx, label %.new, label %.unr-lcssa, !llvm.loop !130

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next.lcssa.unr, %.prol.loopexit ], [ %indvars.iv.next.7, %.new ]
  %i.by = trunc nsw i64 %indvars.iv.next.lcssa to i32 ; 2 uses
  %i.bz = icmp eq i32 %3, %i.by
  br i1 %i.bz, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.unr-lcssa
  %.val = load ptr, ptr %i.b, align 8, !tbaa !28  ; 2 uses
  %i.ca = load i16, ptr %i.k, align 16, !tbaa !63
  %i.cb = load i16, ptr %i.j, align 2, !tbaa !63
  %i.cc = add i16 %i.cb, %i.ca                    ; 2 uses
  store i16 %i.cc, ptr %i.j, align 2, !tbaa !63
  %i.cd = load i16, ptr %i.l, align 4, !tbaa !63
  %i.ce = add i16 %i.cd, %i.cc                    ; 2 uses
  store i16 %i.ce, ptr %i.l, align 4, !tbaa !63
  %i.cf = load i16, ptr %i.m, align 2, !tbaa !63
  %i.cg = add i16 %i.cf, %i.ce                    ; 2 uses
  store i16 %i.cg, ptr %i.m, align 2, !tbaa !63
  %i.ch = load i16, ptr %i.n, align 8, !tbaa !63
  %i.ci = add i16 %i.ch, %i.cg                    ; 2 uses
  store i16 %i.ci, ptr %i.n, align 8, !tbaa !63
  %i.cj = load i16, ptr %i.o, align 2, !tbaa !63
  %i.ck = add i16 %i.cj, %i.ci                    ; 2 uses
  store i16 %i.ck, ptr %i.o, align 2, !tbaa !63
  %i.cl = load i16, ptr %i.p, align 4, !tbaa !63
  %i.cm = add i16 %i.cl, %i.ck                    ; 2 uses
  store i16 %i.cm, ptr %i.p, align 4, !tbaa !63
  %i.cn = load i16, ptr %i.q, align 2, !tbaa !63
  %i.co = add i16 %i.cn, %i.cm                    ; 2 uses
  store i16 %i.co, ptr %i.q, align 2, !tbaa !63
  %i.cp = load i16, ptr %i.r, align 16, !tbaa !63
  %i.cq = add i16 %i.cp, %i.co                    ; 2 uses
  store i16 %i.cq, ptr %i.r, align 16, !tbaa !63
  %i.cr = load i16, ptr %i.s, align 2, !tbaa !63
  %i.cs = add i16 %i.cr, %i.cq                    ; 2 uses
  store i16 %i.cs, ptr %i.s, align 2, !tbaa !63
  %i.ct = load i16, ptr %i.t, align 4, !tbaa !63
  %i.cu = add i16 %i.ct, %i.cs                    ; 2 uses
  store i16 %i.cu, ptr %i.t, align 4, !tbaa !63
  %i.cv = load i16, ptr %i.u, align 2, !tbaa !63
  %i.cw = add i16 %i.cv, %i.cu                    ; 2 uses
  store i16 %i.cw, ptr %i.u, align 2, !tbaa !63
  %i.cx = load i16, ptr %i.v, align 8, !tbaa !63
end_hunk_0
