Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_strtod?download=true
inline.NumInlined: 82
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@zend_strtod:bb.a
  br i1 %i.lc, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %sulp.exit613, %bb.em, %bb.iw, %bb.ff, %bb.cc, %bb.bx, %bb.bp
  %.2391 = phi ptr [ %.4393, %bb.iw ], [ %.4393, %bb.em ], [ undef, %bb.cc ], [ %.4393, %bb.ff ], [ undef, %bb.bp ], [ undef, %bb.bx ], [ %.4393, %sulp.exit613 ]
  %.2386 = phi ptr [ %.4388, %bb.iw ], [ %.4388, %bb.em ], [ undef, %bb.cc ], [ %.4388, %bb.ff ], [ undef, %bb.bp ], [ undef, %bb.bx ], [ %.4388, %sulp.exit613 ]
  %.2383 = phi ptr [ null, %bb.iw ], [ %.228.lcssa.i, %bb.em ], [ null, %bb.cc ], [ %.228.lcssa.i, %bb.ff ], [ null, %bb.bp ], [ null, %bb.bx ], [ %.228.lcssa.i, %sulp.exit613 ]
  %.2378 = phi ptr [ %.4380, %bb.iw ], [ %.4380, %bb.em ], [ undef, %bb.cc ], [ %.4380, %bb.ff ], [ undef, %bb.bp ], [ undef, %bb.bx ], [ %.4380, %sulp.exit613 ]
  %.2 = phi ptr [ %.5, %bb.iw ], [ %.3, %bb.em ], [ undef, %bb.cc ], [ %i.sx, %bb.ff ], [ undef, %bb.bp ], [ undef, %bb.bx ], [ %i.sx, %sulp.exit613 ]
  store double 0.000000e+00, ptr %2, align 8, !tbaa !52
  br label %bb.ap

bb.ce:                                            ; preds = %bb.bl, %bb.cc, %bb.bo, %bb.an, %bb.bk, %bb.bj
  %.sroa.44670.1 = phi i32 [ 0, %bb.an ], [ 0, %bb.bj ], [ 0, %bb.bk ], [ 0, %bb.bo ], [ %spec.select720, %bb.cc ], [ 0, %bb.bl ] ; 6 uses
  %i.ld = sub nsw i32 %spec.store.select708, %.4433703 ; 6 uses
  %i.le = icmp sgt i32 %spec.store.select708, 40
  br i1 %i.le, label %bb.cf, label %.loopexit731

bb.cf:                                            ; preds = %bb.ce
  %i.lf = icmp slt i32 %spec.select562, 18
  %i.lg = add nsw i32 %.sroa.12.0698, 18
  %.2456 = select i1 %i.lf, i32 %i.lg, i32 18
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %bb.cf
  %.1462 = phi i32 [ 18, %bb.cf ], [ %i.lk, %bb.cg ] ; 12 uses
  %.3457 = phi i32 [ %.2456, %bb.cf ], [ %.4458, %bb.cg ] ; 3 uses
  %.not534 = icmp sgt i32 %.3457, %.sroa.6.2699
  %spec.select563 = tail call i32 @llvm.smin.i32(i32 %.3457, i32 %.sroa.0.2700)
  %.4458.in = select i1 %.not534, i32 %.3457, i32 %spec.select563
  %.4458 = add nsw i32 %.4458.in, -1              ; 2 uses
  %i.lh = sext i32 %.4458 to i64
  %i.li = getelementptr inbounds i8, ptr %.2413705, i64 %i.lh
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !52
  %.not536 = icmp eq i8 %i.lj, 48
  %i.lk = add nsw i32 %.1462, -1
  br i1 %.not536, label %bb.cg, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ll = sub nsw i32 %spec.store.select708, %.1462
  %i.lm = add nsw i32 %i.ll, %i.el                ; 4 uses
  %spec.select564 = tail call i32 @llvm.smin.i32(i32 %spec.select562, i32 %.1462) ; 9 uses
  %i.ln = icmp slt i32 %.1462, 9
  br i1 %i.ln, label %.preheader732, label %.loopexit731

.preheader732:                                    ; preds = %bb.ch
  %i.lo = icmp sgt i32 %spec.select564, 0
  br i1 %i.lo, label %.lr.ph911.preheader, label %.preheader

.lr.ph911.preheader:                              ; preds = %.preheader732
  %wide.trip.count = zext nneg i32 %spec.select564 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.lp = icmp ult i32 %spec.select564, 4
  br i1 %i.lp, label %.lr.ph911.epil.preheader, label %.lr.ph911.preheader.new

.lr.ph911.preheader.new:                          ; preds = %.lr.ph911.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph911

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph911
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph911.epil.preheader

.lr.ph911.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph911.preheader
  %indvars.iv1039.epil.init = phi i64 [ 0, %.lr.ph911.preheader ], [ %indvars.iv.next1040.3, %.preheader.loopexit.unr-lcssa ]
  %.9910.epil.init = phi i32 [ 0, %.lr.ph911.preheader ], [ %i.ni, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod1564 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1564)
  br label %.lr.ph911.epil

.lr.ph911.epil:                                   ; preds = %.lr.ph911.epil, %.lr.ph911.epil.preheader
  %indvars.iv1039.epil = phi i64 [ %indvars.iv1039.epil.init, %.lr.ph911.epil.preheader ], [ %indvars.iv.next1040.epil, %.lr.ph911.epil ] ; 2 uses
  %.9910.epil = phi i32 [ %.9910.epil.init, %.lr.ph911.epil.preheader ], [ %i.lv, %.lr.ph911.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph911.epil.preheader ], [ %epil.iter.next, %.lr.ph911.epil ]
  %i.lq = mul i32 %.9910.epil, 10
  %i.lr = getelementptr inbounds nuw i8, ptr %.2413705, i64 %indvars.iv1039.epil
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !52
  %i.lt = sext i8 %i.ls to i32
  %i.lu = add i32 %i.lq, -48
  %i.lv = add i32 %i.lu, %i.lt                    ; 2 uses
  %indvars.iv.next1040.epil = add nuw nsw i64 %indvars.iv1039.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph911.epil, !llvm.loop !75

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph911.epil, %.preheader732
  %.2463.lcssa = phi i32 [ 0, %.preheader732 ], [ %spec.select564, %.lr.ph911.epil ], [ %spec.select564, %.preheader.loopexit.unr-lcssa ] ; 5 uses
  %.9.lcssa = phi i32 [ 0, %.preheader732 ], [ %i.ni, %.preheader.loopexit.unr-lcssa ], [ %i.lv, %.lr.ph911.epil ] ; 3 uses
  %i.lw = icmp slt i32 %.2463.lcssa, %.1462
  br i1 %i.lw, label %.lr.ph917.preheader, label %._crit_edge.thread.i

.lr.ph917.preheader:                              ; preds = %.preheader
  %i.lx = sext i32 %.sroa.6.2699 to i64           ; 2 uses
  %i.ly = sub i32 %.1462, %.2463.lcssa
  %xtraiter1565 = and i32 %i.ly, 3                ; 2 uses
  %lcmp.mod1566.not = icmp eq i32 %xtraiter1565, 0
  br i1 %lcmp.mod1566.not, label %.lr.ph917.prol.loopexit, label %.lr.ph917.prol

.lr.ph917.prol:                                   ; preds = %.lr.ph917.preheader, %.lr.ph917.prol
  %indvars.iv1044.prol = phi i64 [ %indvars.iv.next1045.prol, %.lr.ph917.prol ], [ %i.lx, %.lr.ph917.preheader ] ; 2 uses
  %.10916.prol = phi i32 [ %i.me, %.lr.ph917.prol ], [ %.9.lcssa, %.lr.ph917.preheader ]
  %.3464914.prol = phi i32 [ %i.mf, %.lr.ph917.prol ], [ %.2463.lcssa, %.lr.ph917.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph917.prol ], [ 0, %.lr.ph917.preheader ]
  %i.lz = mul i32 %.10916.prol, 10
  %indvars.iv.next1045.prol = add nsw i64 %indvars.iv1044.prol, 1 ; 2 uses
  %i.ma = getelementptr inbounds i8, ptr %.2413705, i64 %indvars.iv1044.prol
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !52
  %i.mc = sext i8 %i.mb to i32
  %i.md = add i32 %i.lz, -48
  %i.me = add i32 %i.md, %i.mc                    ; 3 uses
  %i.mf = add nuw nsw i32 %.3464914.prol, 1       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1565
  br i1 %prol.iter.cmp.not, label %.lr.ph917.prol.loopexit, label %.lr.ph917.prol, !llvm.loop !76

.lr.ph917.prol.loopexit:                          ; preds = %.lr.ph917.prol, %.lr.ph917.preheader
  %.lcssa1531.unr = phi i32 [ poison, %.lr.ph917.preheader ], [ %i.me, %.lr.ph917.prol ]
  %indvars.iv1044.unr = phi i64 [ %i.lx, %.lr.ph917.preheader ], [ %indvars.iv.next1045.prol, %.lr.ph917.prol ]
  %.10916.unr = phi i32 [ %.9.lcssa, %.lr.ph917.preheader ], [ %i.me, %.lr.ph917.prol ]
  %.3464914.unr = phi i32 [ %.2463.lcssa, %.lr.ph917.preheader ], [ %i.mf, %.lr.ph917.prol ]
  %i.mg = sub i32 %.2463.lcssa, %.1462
  %i.mh = icmp ugt i32 %i.mg, -4
  br i1 %i.mh, label %._crit_edge.thread.i, label %.lr.ph917

.lr.ph911:                                        ; preds = %.lr.ph911, %.lr.ph911.preheader.new
  %indvars.iv1039 = phi i64 [ 0, %.lr.ph911.preheader.new ], [ %indvars.iv.next1040.3, %.lr.ph911 ] ; 5 uses
  %.9910 = phi i32 [ 0, %.lr.ph911.preheader.new ], [ %i.ni, %.lr.ph911 ]
  %niter = phi i64 [ 0, %.lr.ph911.preheader.new ], [ %niter.next.3, %.lr.ph911 ]
  %i.mi = mul i32 %.9910, 10
  %i.mj = getelementptr inbounds nuw i8, ptr %.2413705, i64 %indvars.iv1039
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !52
  %i.ml = sext i8 %i.mk to i32
  %i.mm = add i32 %i.mi, -48
  %i.mn = add i32 %i.mm, %i.ml
  %i.mo = mul i32 %i.mn, 10
  %i.mp = getelementptr inbounds nuw i8, ptr %.2413705, i64 %indvars.iv1039
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 1
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !52
  %i.ms = sext i8 %i.mr to i32
  %i.mt = add i32 %i.mo, -48
  %i.mu = add i32 %i.mt, %i.ms
  %i.mv = mul i32 %i.mu, 10
  %i.mw = getelementptr inbounds nuw i8, ptr %.2413705, i64 %indvars.iv1039
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 2
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !52
  %i.mz = sext i8 %i.my to i32
  %i.na = add i32 %i.mv, -48
  %i.nb = add i32 %i.na, %i.mz
  %i.nc = mul i32 %i.nb, 10
  %i.nd = getelementptr inbounds nuw i8, ptr %.2413705, i64 %indvars.iv1039
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 3
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !52
  %i.ng = sext i8 %i.nf to i32
  %i.nh = add i32 %i.nc, -48
  %i.ni = add i32 %i.nh, %i.ng                    ; 3 uses
  %indvars.iv.next1040.3 = add nuw nsw i64 %indvars.iv1039, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph911, !llvm.loop !77

.lr.ph917:                                        ; preds = %.lr.ph917.prol.loopexit, %.lr.ph917
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045.3, %.lr.ph917 ], [ %indvars.iv1044.unr, %.lr.ph917.prol.loopexit ] ; 5 uses
  %.10916 = phi i32 [ %i.oj, %.lr.ph917 ], [ %.10916.unr, %.lr.ph917.prol.loopexit ]
  %.3464914 = phi i32 [ %i.ok, %.lr.ph917 ], [ %.3464914.unr, %.lr.ph917.prol.loopexit ]
  %i.nj = mul i32 %.10916, 10
  %i.nk = getelementptr inbounds i8, ptr %.2413705, i64 %indvars.iv1044
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !52
  %i.nm = sext i8 %i.nl to i32
  %i.nn = add i32 %i.nj, -48
  %i.no = add i32 %i.nn, %i.nm
  %i.np = mul i32 %i.no, 10
  %i.nq = getelementptr i8, ptr %.2413705, i64 %indvars.iv1044
  %i.nr = getelementptr i8, ptr %i.nq, i64 1
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !52
  %i.nt = sext i8 %i.ns to i32
  %i.nu = add i32 %i.np, -48
  %i.nv = add i32 %i.nu, %i.nt
  %i.nw = mul i32 %i.nv, 10
  %i.nx = getelementptr i8, ptr %.2413705, i64 %indvars.iv1044
  %i.ny = getelementptr i8, ptr %i.nx, i64 2
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !52
  %i.oa = sext i8 %i.nz to i32
  %i.ob = add i32 %i.nw, -48
  %i.oc = add i32 %i.ob, %i.oa
  %i.od = mul i32 %i.oc, 10
  %indvars.iv.next1045.3 = add nsw i64 %indvars.iv1044, 4
  %i.oe = getelementptr i8, ptr %.2413705, i64 %indvars.iv1044
  %i.of = getelementptr i8, ptr %i.oe, i64 3
  %i.og = load i8, ptr %i.of, align 1, !tbaa !52
  %i.oh = sext i8 %i.og to i32
  %i.oi = add i32 %i.od, -48
  %i.oj = add i32 %i.oi, %i.oh                    ; 2 uses
  %i.ok = add nuw nsw i32 %.3464914, 4            ; 2 uses
  %exitcond1048.not.3 = icmp eq i32 %i.ok, %.1462
  br i1 %exitcond1048.not.3, label %._crit_edge.thread.i, label %.lr.ph917, !llvm.loop !78

.loopexit731:                                     ; preds = %bb.ch, %bb.ce
  %.2473 = phi i32 [ %i.el, %bb.ce ], [ %i.lm, %bb.ch ] ; 3 uses
  %.6453 = phi i32 [ %spec.store.select708, %bb.ce ], [ %.1462, %bb.ch ] ; 5 uses
  %.2446 = phi i32 [ %spec.select562, %bb.ce ], [ %spec.select564, %bb.ch ] ; 3 uses
  %i.ol = add nuw nsw i32 %.6453, 8
  %3 = sdiv i32 %i.ol, 9
  %i.om = icmp sgt i32 %.6453, 9
  br i1 %i.om, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %.loopexit731, %.lr.ph.i
  %.037.i = phi i32 [ %i.on, %.lr.ph.i ], [ 1, %.loopexit731 ]
  %.02436.i = phi i32 [ %i.oo, %.lr.ph.i ], [ 0, %.loopexit731 ] ; 2 uses
  %i.on = shl i32 %.037.i, 1                      ; 2 uses
  %i.oo = add nuw nsw i32 %.02436.i, 1            ; 3 uses
  %i.op = icmp sgt i32 %3, %i.on
  br i1 %i.op, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !79

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.oq = icmp samesign ult i32 %.02436.i, 7
  br i1 %i.oq, label %._crit_edge.thread.i, label %bb.cj

._crit_edge.thread.i:                             ; preds = %.lr.ph917.prol.loopexit, %.lr.ph917, %.preheader, %._crit_edge.i, %.loopexit731
  %.111186 = phi i32 [ %.8408706, %._crit_edge.i ], [ %.8408706, %.loopexit731 ], [ %.9.lcssa, %.preheader ], [ %.lcssa1531.unr, %.lr.ph917.prol.loopexit ], [ %i.oj, %.lr.ph917 ] ; 2 uses
  %.24461183 = phi i32 [ %.2446, %._crit_edge.i ], [ %.2446, %.loopexit731 ], [ %spec.select564, %.preheader ], [ %spec.select564, %.lr.ph917 ], [ %spec.select564, %.lr.ph917.prol.loopexit ] ; 2 uses
  %.64531180 = phi i32 [ %.6453, %._crit_edge.i ], [ %.6453, %.loopexit731 ], [ %.1462, %.preheader ], [ %.1462, %.lr.ph917 ], [ %.1462, %.lr.ph917.prol.loopexit ] ; 2 uses
  %.24731177 = phi i32 [ %.2473, %._crit_edge.i ], [ %.2473, %.loopexit731 ], [ %i.lm, %.preheader ], [ %i.lm, %.lr.ph917 ], [ %i.lm, %.lr.ph917.prol.loopexit ] ; 2 uses
  %.024.lcssa55.i = phi i32 [ %i.oo, %._crit_edge.i ], [ 0, %.loopexit731 ], [ 0, %.preheader ], [ 0, %.lr.ph917 ], [ 0, %.lr.ph917.prol.loopexit ] ; 2 uses
  %i.or = zext nneg i32 %.024.lcssa55.i to i64
  %i.os = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1856), i64 %i.or ; 2 uses
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !14 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ot, null
  br i1 %.not.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge.thread.i
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !16
  store ptr %i.ou, ptr %i.os, align 8, !tbaa !14
  br label %Balloc.exit.i

bb.cj:                                            ; preds = %._crit_edge.thread.i, %._crit_edge.i
  %.111185 = phi i32 [ %.111186, %._crit_edge.thread.i ], [ %.8408706, %._crit_edge.i ]
  %.24461182 = phi i32 [ %.24461183, %._crit_edge.thread.i ], [ %.2446, %._crit_edge.i ]
  %.64531179 = phi i32 [ %.64531180, %._crit_edge.thread.i ], [ %.6453, %._crit_edge.i ]
  %.24731176 = phi i32 [ %.24731177, %._crit_edge.thread.i ], [ %.2473, %._crit_edge.i ]
  %.024.lcssa54.i = phi i32 [ %.024.lcssa55.i, %._crit_edge.thread.i ], [ %i.oo, %._crit_edge.i ] ; 2 uses
  %i.ov = shl nuw i32 1, %.024.lcssa54.i          ; 2 uses
  %i.ow = add nsw i32 %i.ov, -1
  %i.ox = zext nneg i32 %i.ow to i64
  %i.oy = shl nuw nsw i64 %i.ox, 2
  %i.oz = add nuw nsw i64 %i.oy, 32
  %i.pa = tail call noalias ptr @malloc(i64 noundef %i.oz) #15 ; 4 uses
  %.not16.i.i = icmp eq ptr %i.pa, null
  br i1 %.not16.i.i, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str.8) #16
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  store i32 %.024.lcssa54.i, ptr %i.pb, align 8, !tbaa !55
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 12
  store i32 %i.ov, ptr %i.pc, align 4, !tbaa !57
  br label %Balloc.exit.i

Balloc.exit.i:                                    ; preds = %bb.cl, %bb.ci
  %.111184 = phi i32 [ %.111186, %bb.ci ], [ %.111185, %bb.cl ]
  %.24461181 = phi i32 [ %.24461183, %bb.ci ], [ %.24461182, %bb.cl ] ; 3 uses
  %.64531178 = phi i32 [ %.64531180, %bb.ci ], [ %.64531179, %bb.cl ] ; 4 uses
  %.24731175 = phi i32 [ %.24731177, %bb.ci ], [ %.24731176, %bb.cl ] ; 3 uses
  %.0.i.i = phi ptr [ %i.ot, %bb.ci ], [ %i.pa, %bb.cl ] ; 5 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  %i.pe = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  store i32 0, ptr %i.pe, align 8, !tbaa !58
  %i.pf = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  store i32 %.111184, ptr %i.pf, align 8, !tbaa !59
  store i32 1, ptr %i.pd, align 4, !tbaa !60
  %i.pg = icmp sgt i32 %.24461181, 9
  br i1 %i.pg, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %Balloc.exit.i
  %i.ph = getelementptr inbounds nuw i8, ptr %.2413705, i64 9
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cn, %bb.cm
  %.029.i = phi ptr [ %i.ph, %bb.cm ], [ %i.pi, %bb.cn ] ; 2 uses
  %.026.i = phi ptr [ %.0.i.i, %bb.cm ], [ %i.pm, %bb.cn ]
  %.025.i = phi i32 [ 9, %bb.cm ], [ %i.pn, %bb.cn ]
  %i.pi = getelementptr inbounds nuw i8, ptr %.029.i, i64 1 ; 2 uses
  %i.pj = load i8, ptr %.029.i, align 1, !tbaa !52
  %i.pk = sext i8 %i.pj to i32
  %i.pl = add nsw i32 %i.pk, -48
  %i.pm = tail call fastcc ptr @multadd(ptr noundef %.026.i, i32 noundef 10, i32 noundef %i.pl) ; 2 uses
  %i.pn = add nuw nsw i32 %.025.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.pn, %.24461181
  br i1 %exitcond.not.i, label %bb.co, label %bb.cn, !llvm.loop !80

bb.co:                                            ; preds = %bb.cn
  %i.po = sext i32 %.sroa.12.0698 to i64
  %i.pp = getelementptr inbounds i8, ptr %i.pi, i64 %i.po
  br label %bb.cq

bb.cp:                                            ; preds = %Balloc.exit.i
  %i.pq = sext i32 %.sroa.12.0698 to i64
  %i.pr = getelementptr i8, ptr %.2413705, i64 %i.pq
  %i.ps = getelementptr i8, ptr %i.pr, i64 9
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.130.i = phi ptr [ %i.pp, %bb.co ], [ %i.ps, %bb.cp ]
  %.127.i = phi ptr [ %i.pm, %bb.co ], [ %.0.i.i, %bb.cp ] ; 2 uses
  %.1.i = phi i32 [ %.24461181, %bb.co ], [ 9, %bb.cp ] ; 2 uses
  %i.pt = icmp slt i32 %.1.i, %.64531178
  br i1 %i.pt, label %.lr.ph42.i, label %s2b.exit

.lr.ph42.i:                                       ; preds = %bb.cq, %.lr.ph42.i
  %.240.i = phi i32 [ %i.pz, %.lr.ph42.i ], [ %.1.i, %bb.cq ]
  %.22839.i = phi ptr [ %i.py, %.lr.ph42.i ], [ %.127.i, %bb.cq ]
  %.23138.i = phi ptr [ %i.pu, %.lr.ph42.i ], [ %.130.i, %bb.cq ] ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.23138.i, i64 1
  %i.pv = load i8, ptr %.23138.i, align 1, !tbaa !52
  %i.pw = sext i8 %i.pv to i32
  %i.px = add nsw i32 %i.pw, -48
  %i.py = tail call fastcc ptr @multadd(ptr noundef %.22839.i, i32 noundef 10, i32 noundef %i.px) ; 2 uses
  %i.pz = add nuw i32 %.240.i, 1                  ; 2 uses
  %exitcond49.not.i = icmp eq i32 %i.pz, %.64531178
  br i1 %exitcond49.not.i, label %s2b.exit, label %.lr.ph42.i, !llvm.loop !81

s2b.exit:                                         ; preds = %.lr.ph42.i, %bb.cq
  %.228.lcssa.i = phi ptr [ %.127.i, %bb.cq ], [ %i.py, %.lr.ph42.i ] ; 12 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.228.lcssa.i, i64 8 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.228.lcssa.i, i64 16
  %i.qc = getelementptr inbounds nuw i8, ptr %.228.lcssa.i, i64 20
  %i.qd = icmp sgt i32 %.24731175, -1             ; 2 uses
  %i.qe = sub nsw i32 0, %.24731175
  %.0485 = select i1 %i.qd, i32 0, i32 %i.qe      ; 3 uses
  %.0481 = select i1 %i.qd, i32 %.24731175, i32 0 ; 3 uses
  %.1483 = add i32 %.0481, %.sroa.44670.1
  %.not537 = icmp eq i32 %.0485, 0
  %i.qf = icmp sgt i32 %.0481, 0
  %i.qg = icmp sgt i32 %i.ld, %.64531178          ; 5 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 14 uses
  %i.qi = icmp ne i32 %.sroa.44670.1, 0           ; 2 uses
  %i.qj = icmp ne i32 %i.ld, %.64531178
  %or.cond44 = or i1 %i.qj, %i.qi
  %.not553 = icmp ne i32 %.sroa.44670.1, 0        ; 7 uses
  br label %Bfree.exit629

Bfree.exit629:                                    ; preds = %Bfree.exit629.backedge, %s2b.exit
  %i.qk = load i32, ptr %i.qa, align 8, !tbaa !55 ; 4 uses
  %i.ql = icmp slt i32 %i.qk, 8
  br i1 %i.ql, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %Bfree.exit629
  %i.qm = sext i32 %i.qk to i64
  %i.qn = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1856), i64 %i.qm ; 2 uses
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !14 ; 3 uses
  %.not.i585 = icmp eq ptr %i.qo, null
  br i1 %.not.i585, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !16
  store ptr %i.qp, ptr %i.qn, align 8, !tbaa !14
  br label %Balloc.exit

bb.ct:                                            ; preds = %bb.cr, %Bfree.exit629
  %i.qq = shl nuw i32 1, %i.qk                    ; 2 uses
  %i.qr = add nsw i32 %i.qq, -1
  %i.qs = zext nneg i32 %i.qr to i64
  %i.qt = shl nuw nsw i64 %i.qs, 2
  %i.qu = add nuw nsw i64 %i.qt, 32
  %i.qv = tail call noalias ptr @malloc(i64 noundef %i.qu) #15 ; 4 uses
  %.not16.i = icmp eq ptr %i.qv, null
  br i1 %.not16.i, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str.8) #16
  unreachable

bb.cv:                                            ; preds = %bb.ct
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  store i32 %i.qk, ptr %i.qw, align 8, !tbaa !55
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qv, i64 12
  store i32 %i.qq, ptr %i.qx, align 4, !tbaa !57
  br label %Balloc.exit

Balloc.exit:                                      ; preds = %bb.cs, %bb.cv
  %.0.i = phi ptr [ %i.qo, %bb.cs ], [ %i.qv, %bb.cv ] ; 4 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.0.i, i64 20
  store i32 0, ptr %i.qy, align 4, !tbaa !60
  %i.qz = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  store i32 0, ptr %i.qz, align 8, !tbaa !58
  %i.ra = load i32, ptr %i.qc, align 4, !tbaa !60
  %i.rb = sext i32 %i.ra to i64
  %i.rc = shl nsw i64 %i.rb, 2
  %i.rd = add nsw i64 %i.rc, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.qz, ptr nonnull align 8 %i.qb, i64 %i.rd, i1 false)
  %i.re = call fastcc ptr @d2b(ptr noundef %2, ptr noundef %i.e, ptr noundef %i.f) ; 6 uses
  %i.rf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1864), align 8, !tbaa !14 ; 3 uses
  %.not.i.i586 = icmp eq ptr %i.rf, null
  br i1 %.not.i.i586, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %Balloc.exit
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !16
  store ptr %i.rg, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1864), align 8, !tbaa !14
  br label %i2b.exit

end_hunk_0
