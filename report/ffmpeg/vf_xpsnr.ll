Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_xpsnr?download=true
inline.NumInlined: 16
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@do_xpsnr:bb.a
  %.not217.i.us.i = icmp sgt i32 %i.mr, %i.mm
  %.not218.i.us.i = icmp sgt i32 %i.mu, %i.mn
  %or.cond.i.us.i = select i1 %.not217.i.us.i, i1 %.not218.i.us.i, i1 false
  br i1 %or.cond.i.us.i, label %bb.ab, label %calc_squared_error_and_weight.exit.us.i

bb.ab:                                            ; preds = %calc_squared_error.exit.i.us.i
  br i1 %i.mk, label %bb.ac, label %.preheader232.us.preheader.i.us.i

.preheader232.us.preheader.i.us.i:                ; preds = %bb.ab
  %i.nd = zext nneg i32 %i.mm to i64              ; 5 uses
  %i.ne = zext i32 %i.mr to i64                   ; 2 uses
  %i.nf = zext nneg i32 %i.mn to i64
  %i.ng = zext nneg i32 %i.mu to i64
  %i.nh = add nuw nsw i64 %i.nd, 1
  %i.ni = call i64 @llvm.umax.i64(i64 %i.nh, i64 %i.ne)
  %i.nj = sub nsw i64 %i.ni, %i.nd                ; 3 uses
  %min.iters.check473 = icmp ult i64 %i.nj, 4
  %n.vec475 = and i64 %i.nj, -4                   ; 3 uses
  %i.nk = or disjoint i64 %n.vec475, %i.nd
  %cmp.n501 = icmp eq i64 %i.nj, %n.vec475
  br label %.preheader232.us.i.us.i

.preheader232.us.i.us.i:                          ; preds = %._crit_edge.us.i.us.i, %.preheader232.us.preheader.i.us.i
  %indvars.iv268.i.us.i = phi i64 [ %i.nf, %.preheader232.us.preheader.i.us.i ], [ %indvars.iv.next269.i.us.i, %._crit_edge.us.i.us.i ] ; 3 uses
  %.0209237.us.i.us.i = phi i64 [ 0, %.preheader232.us.preheader.i.us.i ], [ %.lcssa328, %._crit_edge.us.i.us.i ] ; 2 uses
  %i.nl = mul nsw i64 %indvars.iv268.i.us.i, %i.jv
  %i.nm = add nsw i64 %indvars.iv268.i.us.i, -1
  %i.nn = mul nsw i64 %i.nm, %i.jv
  %indvars.iv.next269.i.us.i = add nuw nsw i64 %indvars.iv268.i.us.i, 1 ; 3 uses
  %i.no = mul nsw i64 %indvars.iv.next269.i.us.i, %i.jv
  %invariant.gep.i.us.i = getelementptr [2 x i8], ptr %i.me, i64 %i.nl ; 2 uses
  %invariant.gep293.i.us.i = getelementptr [2 x i8], ptr %i.me, i64 %i.nn ; 2 uses
  %invariant.gep295.i.us.i = getelementptr [2 x i8], ptr %i.me, i64 %i.no ; 2 uses
  br i1 %min.iters.check473, label %scalar.ph472.preheader, label %vector.ph474

vector.ph474:                                     ; preds = %.preheader232.us.i.us.i
  %i.np = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0209237.us.i.us.i, i64 0
  br label %vector.body476

vector.body476:                                   ; preds = %vector.body476, %vector.ph474
  %index477 = phi i64 [ 0, %vector.ph474 ], [ %index.next498, %vector.body476 ] ; 2 uses
  %vec.phi478 = phi <2 x i64> [ %i.np, %vector.ph474 ], [ %i.pw, %vector.body476 ]
  %vec.phi479 = phi <2 x i64> [ zeroinitializer, %vector.ph474 ], [ %i.px, %vector.body476 ]
  %i.nq = or disjoint i64 %index477, %i.nd        ; 3 uses
  %i.nr = getelementptr [2 x i8], ptr %invariant.gep.i.us.i, i64 %i.nq ; 5 uses
  %i.ns = getelementptr i8, ptr %i.nr, i64 4
  %wide.load480 = load <2 x i16>, ptr %i.nr, align 2, !tbaa !57
  %wide.load481 = load <2 x i16>, ptr %i.ns, align 2, !tbaa !57
  %i.nt = sext <2 x i16> %wide.load480 to <2 x i32>
  %i.nu = sext <2 x i16> %wide.load481 to <2 x i32>
  %i.nv = mul nsw <2 x i32> %i.nt, splat (i32 12)
  %i.nw = mul nsw <2 x i32> %i.nu, splat (i32 12)
  %i.nx = getelementptr i8, ptr %i.nr, i64 -2
  %i.ny = getelementptr i8, ptr %i.nr, i64 2
  %wide.load482 = load <2 x i16>, ptr %i.nx, align 2, !tbaa !57
  %wide.load483 = load <2 x i16>, ptr %i.ny, align 2, !tbaa !57 ; 2 uses
  %i.nz = sext <2 x i16> %wide.load482 to <2 x i32>
  %i.oa = sext <2 x i16> %wide.load483 to <2 x i32>
  %i.ob = getelementptr i8, ptr %i.nr, i64 6
  %wide.load485 = load <2 x i16>, ptr %i.ob, align 2, !tbaa !57
  %i.oc = sext <2 x i16> %wide.load483 to <2 x i32>
  %i.od = sext <2 x i16> %wide.load485 to <2 x i32>
  %i.oe = add nsw <2 x i32> %i.oc, %i.nz
  %i.of = add nsw <2 x i32> %i.od, %i.oa
  %i.og = getelementptr [2 x i8], ptr %invariant.gep293.i.us.i, i64 %i.nq ; 5 uses
  %i.oh = getelementptr i8, ptr %i.og, i64 4
  %wide.load486 = load <2 x i16>, ptr %i.og, align 2, !tbaa !57
  %wide.load487 = load <2 x i16>, ptr %i.oh, align 2, !tbaa !57
  %i.oi = sext <2 x i16> %wide.load486 to <2 x i32>
  %i.oj = sext <2 x i16> %wide.load487 to <2 x i32>
  %i.ok = add nsw <2 x i32> %i.oe, %i.oi
  %i.ol = add nsw <2 x i32> %i.of, %i.oj
  %i.om = getelementptr [2 x i8], ptr %invariant.gep295.i.us.i, i64 %i.nq ; 5 uses
  %i.on = getelementptr i8, ptr %i.om, i64 4
  %wide.load488 = load <2 x i16>, ptr %i.om, align 2, !tbaa !57
  %wide.load489 = load <2 x i16>, ptr %i.on, align 2, !tbaa !57
  %i.oo = sext <2 x i16> %wide.load488 to <2 x i32>
  %i.op = sext <2 x i16> %wide.load489 to <2 x i32>
  %i.oq = add nsw <2 x i32> %i.ok, %i.oo
  %i.or = add nsw <2 x i32> %i.ol, %i.op
  %i.os = getelementptr i8, ptr %i.og, i64 -2
  %i.ot = getelementptr i8, ptr %i.og, i64 2
  %wide.load490 = load <2 x i16>, ptr %i.os, align 2, !tbaa !57
  %wide.load491 = load <2 x i16>, ptr %i.ot, align 2, !tbaa !57 ; 2 uses
  %i.ou = sext <2 x i16> %wide.load490 to <2 x i32>
  %i.ov = sext <2 x i16> %wide.load491 to <2 x i32>
  %i.ow = getelementptr i8, ptr %i.og, i64 6
  %wide.load493 = load <2 x i16>, ptr %i.ow, align 2, !tbaa !57
  %i.ox = sext <2 x i16> %wide.load491 to <2 x i32>
  %i.oy = sext <2 x i16> %wide.load493 to <2 x i32>
  %i.oz = getelementptr i8, ptr %i.om, i64 -2
  %i.pa = getelementptr i8, ptr %i.om, i64 2
  %wide.load494 = load <2 x i16>, ptr %i.oz, align 2, !tbaa !57
  %wide.load495 = load <2 x i16>, ptr %i.pa, align 2, !tbaa !57 ; 2 uses
  %i.pb = sext <2 x i16> %wide.load494 to <2 x i32>
  %i.pc = sext <2 x i16> %wide.load495 to <2 x i32>
  %i.pd = getelementptr i8, ptr %i.om, i64 6
  %wide.load497 = load <2 x i16>, ptr %i.pd, align 2, !tbaa !57
  %i.pe = sext <2 x i16> %wide.load495 to <2 x i32>
  %i.pf = sext <2 x i16> %wide.load497 to <2 x i32>
  %i.pg = add nsw <2 x i32> %i.ou, %i.ox
  %i.ph = add nsw <2 x i32> %i.ov, %i.oy
  %i.pi = shl nsw <2 x i32> %i.oq, splat (i32 1)
  %i.pj = shl nsw <2 x i32> %i.or, splat (i32 1)
  %i.pk = add nsw <2 x i32> %i.pg, %i.pi
  %i.pl = add nsw <2 x i32> %i.ph, %i.pj
  %i.pm = add nsw <2 x i32> %i.pk, %i.pb
  %i.pn = add nsw <2 x i32> %i.pl, %i.pc
  %i.po = add nsw <2 x i32> %i.pm, %i.pe
  %i.pp = add nsw <2 x i32> %i.pn, %i.pf
  %i.pq = sub nsw <2 x i32> %i.nv, %i.po
  %i.pr = sub nsw <2 x i32> %i.nw, %i.pp
  %i.ps = call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.pq, i1 true)
  %i.pt = call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.pr, i1 true)
  %i.pu = zext nneg <2 x i32> %i.ps to <2 x i64>
  %i.pv = zext nneg <2 x i32> %i.pt to <2 x i64>
  %i.pw = add <2 x i64> %vec.phi478, %i.pu        ; 2 uses
  %i.px = add <2 x i64> %vec.phi479, %i.pv        ; 2 uses
  %index.next498 = add nuw i64 %index477, 4       ; 2 uses
  %i.py = icmp eq i64 %index.next498, %n.vec475
  br i1 %i.py, label %middle.block499, label %vector.body476, !llvm.loop !100

middle.block499:                                  ; preds = %vector.body476
  %bin.rdx500 = add <2 x i64> %i.px, %i.pw
  %i.pz = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx500) ; 2 uses
  br i1 %cmp.n501, label %._crit_edge.us.i.us.i, label %scalar.ph472.preheader

scalar.ph472.preheader:                           ; preds = %.preheader232.us.i.us.i, %middle.block499
  %indvars.iv.i.us.i.ph = phi i64 [ %i.nd, %.preheader232.us.i.us.i ], [ %i.nk, %middle.block499 ]
  %.1210235.us.i.us.i.ph = phi i64 [ %.0209237.us.i.us.i, %.preheader232.us.i.us.i ], [ %i.pz, %middle.block499 ]
  br label %scalar.ph472

scalar.ph472:                                     ; preds = %scalar.ph472.preheader, %scalar.ph472
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i, %scalar.ph472 ], [ %indvars.iv.i.us.i.ph, %scalar.ph472.preheader ] ; 4 uses
  %.1210235.us.i.us.i = phi i64 [ %i.rk, %scalar.ph472 ], [ %.1210235.us.i.us.i.ph, %scalar.ph472.preheader ]
  %gep.i.us.i = getelementptr [2 x i8], ptr %invariant.gep.i.us.i, i64 %indvars.iv.i.us.i ; 3 uses
  %i.qa = load i16, ptr %gep.i.us.i, align 2, !tbaa !57
  %i.qb = sext i16 %i.qa to i32
  %i.qc = mul nsw i32 %i.qb, 12
  %i.qd = getelementptr i8, ptr %gep.i.us.i, i64 -2
  %i.qe = load i16, ptr %i.qd, align 2, !tbaa !57
  %i.qf = sext i16 %i.qe to i32
  %i.qg = getelementptr i8, ptr %gep.i.us.i, i64 2
  %i.qh = load i16, ptr %i.qg, align 2, !tbaa !57
  %i.qi = sext i16 %i.qh to i32
  %i.qj = add nsw i32 %i.qi, %i.qf
  %gep294.i.us.i = getelementptr [2 x i8], ptr %invariant.gep293.i.us.i, i64 %indvars.iv.i.us.i ; 3 uses
  %i.qk = load i16, ptr %gep294.i.us.i, align 2, !tbaa !57
  %i.ql = sext i16 %i.qk to i32
  %i.qm = add nsw i32 %i.qj, %i.ql
  %gep296.i.us.i = getelementptr [2 x i8], ptr %invariant.gep295.i.us.i, i64 %indvars.iv.i.us.i ; 3 uses
  %i.qn = load i16, ptr %gep296.i.us.i, align 2, !tbaa !57
  %i.qo = sext i16 %i.qn to i32
  %i.qp = add nsw i32 %i.qm, %i.qo
  %i.qq = getelementptr i8, ptr %gep294.i.us.i, i64 -2
  %i.qr = load i16, ptr %i.qq, align 2, !tbaa !57
  %i.qs = sext i16 %i.qr to i32
  %i.qt = getelementptr i8, ptr %gep294.i.us.i, i64 2
  %i.qu = load i16, ptr %i.qt, align 2, !tbaa !57
  %i.qv = sext i16 %i.qu to i32
  %i.qw = getelementptr i8, ptr %gep296.i.us.i, i64 -2
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !57
  %i.qy = sext i16 %i.qx to i32
  %i.qz = getelementptr i8, ptr %gep296.i.us.i, i64 2
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !57
  %i.rb = sext i16 %i.ra to i32
  %i.rc = add nsw i32 %i.qs, %i.qv
  %i.rd = shl nsw i32 %i.qp, 1
  %i.re = add nsw i32 %i.rc, %i.rd
  %i.rf = add nsw i32 %i.re, %i.qy
  %i.rg = add nsw i32 %i.rf, %i.rb
  %i.rh = sub nsw i32 %i.qc, %i.rg
  %i.ri = call i32 @llvm.abs.i32(i32 %i.rh, i1 true)
  %i.rj = zext nneg i32 %i.ri to i64
  %i.rk = add i64 %.1210235.us.i.us.i, %i.rj      ; 2 uses
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %i.rl = icmp samesign ult i64 %indvars.iv.next.i.us.i, %i.ne
  br i1 %i.rl, label %scalar.ph472, label %._crit_edge.us.i.us.i, !llvm.loop !101

._crit_edge.us.i.us.i:                            ; preds = %scalar.ph472, %middle.block499
  %.lcssa328 = phi i64 [ %i.pz, %middle.block499 ], [ %i.rk, %scalar.ph472 ] ; 2 uses
  %i.rm = icmp samesign ult i64 %indvars.iv.next269.i.us.i, %i.ng
  br i1 %i.rm, label %.preheader232.us.i.us.i, label %.loopexit234.i.us.i, !llvm.loop !102

bb.ac:                                            ; preds = %bb.ab
  %i.rn = icmp samesign ugt i32 %i.mr, 12
  br i1 %i.rn, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ro = call i64 @highds(i32 noundef %i.mm, i32 noundef %i.mn, i32 noundef %i.mr, i32 noundef %i.mu, ptr noundef %i.me, i32 noundef %i.jp) ; 0 uses
  br label %.loopexit234.i.us.i

bb.ae:                                            ; preds = %bb.ac
  %i.rp = load ptr, ptr %i.jw, align 8, !tbaa !53
  %i.rq = call i64 %i.rp(i32 noundef %i.mm, i32 noundef %i.mn, i32 noundef %i.mr, i32 noundef %i.mu, ptr noundef %i.me, i32 noundef %i.jp) #13, !inline_history !103
  br label %.loopexit234.i.us.i

.loopexit234.i.us.i:                              ; preds = %._crit_edge.us.i.us.i, %bb.ae, %bb.ad
  %.2211.i.us.i = phi i64 [ %i.rq, %bb.ae ], [ 0, %bb.ad ], [ %.lcssa328, %._crit_edge.us.i.us.i ]
  %i.rr = uitofp nsz i64 %.2211.i.us.i to double
  %i.rs = sub nuw nsw i32 %i.mr, %i.mm
  %1 = uitofp nneg i32 %i.rs to double
  %i.rt = sub nuw nsw i32 %i.mu, %i.mn
  %2 = uitofp nneg i32 %i.rt to double
  %i.ru = fmul nnan nsz double %1, %2
  %i.rv = fdiv nsz double %i.rr, %i.ru
  %i.rw = icmp ult i32 %i.mc, 32                  ; 2 uses
  br i1 %i.mk, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.loopexit234.i.us.i
  %.not259.i.us.i = icmp eq i32 %i.ma, 0
  %or.cond298.i.us.i = or i1 %.not.i.i.us.i, %.not259.i.us.i ; 2 uses
  br i1 %i.rw, label %.preheader228.i.us.i, label %.preheader230.i.us.i

.preheader230.i.us.i:                             ; preds = %bb.af
  br i1 %or.cond298.i.us.i, label %.loopexit.i.us.i, label %.preheader229.us.preheader.i.us.i

.preheader229.us.preheader.i.us.i:                ; preds = %.preheader230.i.us.i
  %wide.trip.count.i.us.i = zext i32 %i.ma to i64 ; 3 uses
  %scevgep421 = getelementptr i8, ptr %scevgep420, i64 %i.ky
  %scevgep425 = getelementptr i8, ptr %scevgep423, i64 %i.le
  %scevgep428 = getelementptr i8, ptr %scevgep427, i64 %i.ky
  %scevgep431 = getelementptr i8, ptr %scevgep430, i64 %i.le
  %scevgep434 = getelementptr i8, ptr %scevgep433, i64 %i.ky
  %scevgep437 = getelementptr i8, ptr %scevgep436, i64 %i.le
  %min.iters.check451 = icmp ult i32 %i.ma, 6
  %i.rx = trunc i64 %i.lj to i32
  %i.ry = icmp ugt i64 %i.lj, 4294967295
  %n.vec453 = and i64 %wide.trip.count.i.us.i, 4294967292 ; 3 uses
  %cmp.n469 = icmp eq i64 %n.vec453, %wide.trip.count.i.us.i
  br label %.preheader229.us.i.us.i

.preheader229.us.i.us.i:                          ; preds = %._crit_edge.us245.i.us.i, %.preheader229.us.preheader.i.us.i
  %.0203243.us.i.us.i = phi i32 [ %i.ug, %._crit_edge.us245.i.us.i ], [ 0, %.preheader229.us.preheader.i.us.i ] ; 3 uses
  %.2242.us.i.us.i = phi i64 [ %.lcssa329, %._crit_edge.us245.i.us.i ], [ 0, %.preheader229.us.preheader.i.us.i ] ; 4 uses
  %i.rz = mul i32 %i.jp, %.0203243.us.i.us.i
  %i.sa = zext i32 %i.rz to i64
  %i.sb = shl nuw nsw i64 %i.sa, 1                ; 6 uses
  %scevgep422 = getelementptr i8, ptr %scevgep421, i64 %i.sb ; 2 uses
  %scevgep426 = getelementptr i8, ptr %scevgep425, i64 %i.sb ; 2 uses
  %scevgep429 = getelementptr i8, ptr %scevgep428, i64 %i.sb ; 2 uses
  %scevgep432 = getelementptr i8, ptr %scevgep431, i64 %i.sb ; 2 uses
  %scevgep435 = getelementptr i8, ptr %scevgep434, i64 %i.sb ; 2 uses
  %scevgep438 = getelementptr i8, ptr %scevgep437, i64 %i.sb ; 2 uses
  %i.sc = mul i32 %.0203243.us.i.us.i, %i.jp      ; 3 uses
  br i1 %min.iters.check451, label %scalar.ph450.preheader, label %vector.scevcheck417

vector.scevcheck417:                              ; preds = %.preheader229.us.i.us.i
  %i.sd = xor i32 %i.sc, -1
  %i.se = icmp ult i32 %i.sd, %i.rx
  %i.sf = or i1 %i.se, %i.ry
  br i1 %i.sf, label %scalar.ph450.preheader, label %vector.memcheck419

vector.memcheck419:                               ; preds = %vector.scevcheck417
  %bound0439 = icmp ult ptr %scevgep422, %scevgep432
  %bound1440 = icmp ult ptr %scevgep429, %scevgep426
  %found.conflict441 = and i1 %bound0439, %bound1440
  %bound0442 = icmp ult ptr %scevgep422, %scevgep438
  %bound1443 = icmp ult ptr %scevgep435, %scevgep426
  %found.conflict444 = and i1 %bound0442, %bound1443
  %conflict.rdx445 = or i1 %found.conflict441, %found.conflict444
  %bound0446 = icmp ult ptr %scevgep429, %scevgep438
  %bound1447 = icmp ult ptr %scevgep435, %scevgep432
  %found.conflict448 = and i1 %bound0446, %bound1447
  %conflict.rdx449 = or i1 %conflict.rdx445, %found.conflict448
  br i1 %conflict.rdx449, label %scalar.ph450.preheader, label %vector.ph452

vector.ph452:                                     ; preds = %vector.memcheck419
  %i.sg = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.2242.us.i.us.i, i64 0
  br label %vector.body454

vector.body454:                                   ; preds = %vector.body454, %vector.ph452
  %index455 = phi i64 [ 0, %vector.ph452 ], [ %index.next466, %vector.body454 ] ; 2 uses
  %vec.phi456 = phi <2 x i64> [ %i.sg, %vector.ph452 ], [ %i.ti, %vector.body454 ]
  %vec.phi457 = phi <2 x i64> [ zeroinitializer, %vector.ph452 ], [ %i.tj, %vector.body454 ]
  %i.sh = trunc nuw i64 %index455 to i32
  %i.si = add i32 %i.sc, %i.sh
  %i.sj = zext i32 %i.si to i64                   ; 3 uses
  %i.sk = getelementptr inbounds nuw [2 x i8], ptr %i.me, i64 %i.sj ; 3 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 4 ; 2 uses
  %wide.load458 = load <2 x i16>, ptr %i.sk, align 2, !tbaa !57, !alias.scope !150
  %wide.load459 = load <2 x i16>, ptr %i.sl, align 2, !tbaa !57, !alias.scope !150
  %i.sm = sext <2 x i16> %wide.load458 to <2 x i32>
  %i.sn = sext <2 x i16> %wide.load459 to <2 x i32>
  %i.so = getelementptr inbounds nuw [2 x i8], ptr %i.mf, i64 %i.sj ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 4 ; 2 uses
  %wide.load460 = load <2 x i16>, ptr %i.so, align 2, !tbaa !57, !alias.scope !151, !noalias !150 ; 2 uses
  %wide.load461 = load <2 x i16>, ptr %i.sp, align 2, !tbaa !57, !alias.scope !151, !noalias !150 ; 2 uses
  %i.sq = sext <2 x i16> %wide.load460 to <2 x i32>
  %i.sr = sext <2 x i16> %wide.load461 to <2 x i32>
  %i.ss = shl nsw <2 x i32> %i.sq, splat (i32 1)
  %i.st = shl nsw <2 x i32> %i.sr, splat (i32 1)
  %i.su = sub nsw <2 x i32> %i.sm, %i.ss
  %i.sv = sub nsw <2 x i32> %i.sn, %i.st
  %i.sw = getelementptr inbounds nuw [2 x i8], ptr %i.mg, i64 %i.sj ; 3 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 4 ; 2 uses
  %wide.load462 = load <2 x i16>, ptr %i.sw, align 2, !tbaa !57, !alias.scope !152, !noalias !153
  %wide.load463 = load <2 x i16>, ptr %i.sx, align 2, !tbaa !57, !alias.scope !152, !noalias !153
  %i.sy = sext <2 x i16> %wide.load462 to <2 x i32>
  %i.sz = sext <2 x i16> %wide.load463 to <2 x i32>
  %i.ta = add nsw <2 x i32> %i.su, %i.sy
  %i.tb = add nsw <2 x i32> %i.sv, %i.sz
  %i.tc = call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.ta, i1 true)
  %i.td = call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.tb, i1 true)
  %i.te = shl nuw nsw <2 x i32> %i.tc, splat (i32 1)
  %i.tf = shl nuw nsw <2 x i32> %i.td, splat (i32 1)
  %i.tg = zext nneg <2 x i32> %i.te to <2 x i64>
  %i.th = zext nneg <2 x i32> %i.tf to <2 x i64>
  %i.ti = add <2 x i64> %vec.phi456, %i.tg        ; 2 uses
  %i.tj = add <2 x i64> %vec.phi457, %i.th        ; 2 uses
  store <2 x i16> %wide.load460, ptr %i.sw, align 2, !tbaa !57, !alias.scope !152, !noalias !153
  store <2 x i16> %wide.load461, ptr %i.sx, align 2, !tbaa !57, !alias.scope !152, !noalias !153
  %wide.load464 = load <2 x i16>, ptr %i.sk, align 2, !tbaa !57, !alias.scope !150
  %wide.load465 = load <2 x i16>, ptr %i.sl, align 2, !tbaa !57, !alias.scope !150
  store <2 x i16> %wide.load464, ptr %i.so, align 2, !tbaa !57, !alias.scope !151, !noalias !150
  store <2 x i16> %wide.load465, ptr %i.sp, align 2, !tbaa !57, !alias.scope !151, !noalias !150
  %index.next466 = add nuw i64 %index455, 4       ; 2 uses
  %i.tk = icmp eq i64 %index.next466, %n.vec453
  br i1 %i.tk, label %middle.block467, label %vector.body454, !llvm.loop !108

middle.block467:                                  ; preds = %vector.body454
  %bin.rdx468 = add <2 x i64> %i.tj, %i.ti
  %i.tl = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx468) ; 2 uses
  br i1 %cmp.n469, label %._crit_edge.us245.i.us.i, label %scalar.ph450.preheader

scalar.ph450.preheader:                           ; preds = %vector.memcheck419, %vector.scevcheck417, %.preheader229.us.i.us.i, %middle.block467
  %indvars.iv271.i.us.i.ph = phi i64 [ 0, %vector.memcheck419 ], [ 0, %vector.scevcheck417 ], [ 0, %.preheader229.us.i.us.i ], [ %n.vec453, %middle.block467 ]
  %.3240.us.i.us.i.ph = phi i64 [ %.2242.us.i.us.i, %vector.memcheck419 ], [ %.2242.us.i.us.i, %vector.scevcheck417 ], [ %.2242.us.i.us.i, %.preheader229.us.i.us.i ], [ %i.tl, %middle.block467 ]
  br label %scalar.ph450

scalar.ph450:                                     ; preds = %scalar.ph450.preheader, %scalar.ph450
  %indvars.iv271.i.us.i = phi i64 [ %indvars.iv.next272.i.us.i, %scalar.ph450 ], [ %indvars.iv271.i.us.i.ph, %scalar.ph450.preheader ] ; 2 uses
  %.3240.us.i.us.i = phi i64 [ %i.ue, %scalar.ph450 ], [ %.3240.us.i.us.i.ph, %scalar.ph450.preheader ]
  %i.tm = trunc nuw i64 %indvars.iv271.i.us.i to i32
  %i.tn = add i32 %i.sc, %i.tm
  %i.to = zext i32 %i.tn to i64                   ; 3 uses
  %i.tp = getelementptr inbounds nuw [2 x i8], ptr %i.me, i64 %i.to ; 2 uses
  %i.tq = load i16, ptr %i.tp, align 2, !tbaa !57
  %i.tr = sext i16 %i.tq to i32
  %i.ts = getelementptr inbounds nuw [2 x i8], ptr %i.mf, i64 %i.to ; 2 uses
  %i.tt = load i16, ptr %i.ts, align 2, !tbaa !57 ; 2 uses
  %i.tu = sext i16 %i.tt to i32
  %i.tv = shl nsw i32 %i.tu, 1
  %i.tw = sub nsw i32 %i.tr, %i.tv
  %i.tx = getelementptr inbounds nuw [2 x i8], ptr %i.mg, i64 %i.to ; 2 uses
  %i.ty = load i16, ptr %i.tx, align 2, !tbaa !57
  %i.tz = sext i16 %i.ty to i32
  %i.ua = add nsw i32 %i.tw, %i.tz
  %i.ub = call i32 @llvm.abs.i32(i32 %i.ua, i1 true)
  %i.uc = shl nuw nsw i32 %i.ub, 1
  %i.ud = zext nneg i32 %i.uc to i64
  %i.ue = add i64 %.3240.us.i.us.i, %i.ud         ; 2 uses
  store i16 %i.tt, ptr %i.tx, align 2, !tbaa !57
  %i.uf = load i16, ptr %i.tp, align 2, !tbaa !57
  store i16 %i.uf, ptr %i.ts, align 2, !tbaa !57
  %indvars.iv.next272.i.us.i = add nuw nsw i64 %indvars.iv271.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next272.i.us.i, %wide.trip.count.i.us.i
  br i1 %exitcond.not.i.us.i, label %._crit_edge.us245.i.us.i, label %scalar.ph450, !llvm.loop !109

._crit_edge.us245.i.us.i:                         ; preds = %scalar.ph450, %middle.block467
  %.lcssa329 = phi i64 [ %i.tl, %middle.block467 ], [ %i.ue, %scalar.ph450 ] ; 2 uses
  %i.ug = add nuw i32 %.0203243.us.i.us.i, 1      ; 2 uses
  %exitcond274.not.i.us.i = icmp eq i32 %i.ug, %i.km
  br i1 %exitcond274.not.i.us.i, label %.loopexit.i.us.i, label %.preheader229.us.i.us.i, !llvm.loop !110

.preheader228.i.us.i:                             ; preds = %bb.af
  br i1 %or.cond298.i.us.i, label %.loopexit.i.us.i, label %.preheader.us.preheader.i.us.i

.preheader.us.preheader.i.us.i:                   ; preds = %.preheader228.i.us.i
  %wide.trip.count278.i.us.i = zext i32 %i.ma to i64 ; 3 uses
  %scevgep387 = getelementptr i8, ptr %scevgep386, i64 %i.ll
  %scevgep391 = getelementptr i8, ptr %scevgep389, i64 %i.lr
  %scevgep394 = getelementptr i8, ptr %scevgep393, i64 %i.ll
  %scevgep397 = getelementptr i8, ptr %scevgep396, i64 %i.lr
  %min.iters.check403 = icmp ult i32 %i.ma, 6
  %i.uh = trunc i64 %i.lw to i32
  %i.ui = icmp ugt i64 %i.lw, 4294967295
  %n.vec405 = and i64 %wide.trip.count278.i.us.i, 4294967292 ; 3 uses
  %cmp.n415 = icmp eq i64 %n.vec405, %wide.trip.count278.i.us.i
  %xtraiter530 = and i64 %i.li, 1
  %lcmp.mod531.not = icmp eq i64 %xtraiter530, 0
  %i.uj = add nsw i64 %i.li, -1
  br label %.preheader.us.i.us.i

.preheader.us.i.us.i:                             ; preds = %._crit_edge.us253.i.us.i, %.preheader.us.preheader.i.us.i
  %.0205251.us.i.us.i = phi i32 [ %i.xf, %._crit_edge.us253.i.us.i ], [ 0, %.preheader.us.preheader.i.us.i ] ; 3 uses
  %.0208250.us.i.us.i = phi i64 [ %.lcssa330, %._crit_edge.us253.i.us.i ], [ 0, %.preheader.us.preheader.i.us.i ] ; 4 uses
  %i.uk = mul i32 %i.jp, %.0205251.us.i.us.i
  %i.ul = zext i32 %i.uk to i64
  %i.um = shl nuw nsw i64 %i.ul, 1                ; 4 uses
  %scevgep388 = getelementptr i8, ptr %scevgep387, i64 %i.um
  %scevgep392 = getelementptr i8, ptr %scevgep391, i64 %i.um
  %scevgep395 = getelementptr i8, ptr %scevgep394, i64 %i.um
  %scevgep398 = getelementptr i8, ptr %scevgep397, i64 %i.um
  %i.un = mul i32 %.0205251.us.i.us.i, %i.jp      ; 5 uses
  br i1 %min.iters.check403, label %scalar.ph402.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us.i.us.i
  %i.uo = xor i32 %i.un, -1
  %i.up = icmp ult i32 %i.uo, %i.uh
  %i.uq = or i1 %i.up, %i.ui
  br i1 %i.uq, label %scalar.ph402.preheader, label %vector.memcheck383

vector.memcheck383:                               ; preds = %vector.scevcheck
end_hunk_0
