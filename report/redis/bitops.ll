Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/bitops?download=true
inline.NumInlined: 24
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0_@bitopCommand:bb.a
  %i.iq = load i64, ptr %.5641, align 8, !tbaa !21
  %i.ir = xor i64 %i.iq, -1
  %i.is = and i64 %i.ip, %i.ir
  store i64 %i.is, ptr %.5641, align 8, !tbaa !21
  %i.it = getelementptr inbounds nuw i8, ptr %.0426642, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !21
  %i.iv = getelementptr inbounds nuw i8, ptr %.5641, i64 8 ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !21
  %i.ix = xor i64 %i.iw, -1
  %i.iy = and i64 %i.iu, %i.ix
  store i64 %i.iy, ptr %i.iv, align 8, !tbaa !21
  %i.iz = getelementptr inbounds nuw i8, ptr %.0426642, i64 16
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !21
  %i.jb = getelementptr inbounds nuw i8, ptr %.5641, i64 16 ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !21
  %i.jd = xor i64 %i.jc, -1
  %i.je = and i64 %i.ja, %i.jd
  store i64 %i.je, ptr %i.jb, align 8, !tbaa !21
  %i.jf = getelementptr inbounds nuw i8, ptr %.0426642, i64 24
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !21
  %i.jh = getelementptr inbounds nuw i8, ptr %.5641, i64 24 ; 2 uses
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !21
  %i.jj = xor i64 %i.ji, -1
  %i.jk = and i64 %i.jg, %i.jj
  store i64 %i.jk, ptr %i.jh, align 8, !tbaa !21
  %i.jl = getelementptr inbounds nuw i8, ptr %.5641, i64 32
  %i.jm = getelementptr inbounds nuw i8, ptr %.0426642, i64 32
  %i.jn = add nuw i64 %.4441640, 32               ; 2 uses
  %i.jo = icmp ult i64 %i.jn, %.6477.lcssa
  br i1 %i.jo, label %.lr.ph643, label %.loopexit572, !llvm.loop !147

.lr.ph639:                                        ; preds = %.preheader583, %.lr.ph639
  %.1638 = phi ptr [ %i.km, %.lr.ph639 ], [ %i.io, %.preheader583 ] ; 5 uses
  %.6637 = phi ptr [ %i.kl, %.lr.ph639 ], [ %i.cz, %.preheader583 ] ; 6 uses
  %.5442636 = phi i64 [ %i.kn, %.lr.ph639 ], [ 0, %.preheader583 ]
  %i.jp = load i64, ptr %.1638, align 8, !tbaa !21
  %i.jq = xor i64 %i.jp, -1
  %i.jr = load i64, ptr %.6637, align 8, !tbaa !21
  %i.js = and i64 %i.jr, %i.jq
  store i64 %i.js, ptr %.6637, align 8, !tbaa !21
  %i.jt = getelementptr inbounds nuw i8, ptr %.1638, i64 8
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !21
  %i.jv = xor i64 %i.ju, -1
  %i.jw = getelementptr inbounds nuw i8, ptr %.6637, i64 8 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !21
  %i.jy = and i64 %i.jx, %i.jv
  store i64 %i.jy, ptr %i.jw, align 8, !tbaa !21
  %i.jz = getelementptr inbounds nuw i8, ptr %.1638, i64 16
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !21
  %i.kb = xor i64 %i.ka, -1
  %i.kc = getelementptr inbounds nuw i8, ptr %.6637, i64 16 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !21
  %i.ke = and i64 %i.kd, %i.kb
  store i64 %i.ke, ptr %i.kc, align 8, !tbaa !21
  %i.kf = getelementptr inbounds nuw i8, ptr %.1638, i64 24
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !21
  %i.kh = xor i64 %i.kg, -1
  %i.ki = getelementptr inbounds nuw i8, ptr %.6637, i64 24 ; 2 uses
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !21
  %i.kk = and i64 %i.kj, %i.kh
  store i64 %i.kk, ptr %i.ki, align 8, !tbaa !21
  %i.kl = getelementptr inbounds nuw i8, ptr %.6637, i64 32
  %i.km = getelementptr inbounds nuw i8, ptr %.1638, i64 32
  %i.kn = add nuw i64 %.5442636, 32               ; 2 uses
  %i.ko = icmp ult i64 %i.kn, %.6477.lcssa
  br i1 %i.ko, label %.lr.ph639, label %.loopexit572, !llvm.loop !148

.lr.ph635:                                        ; preds = %.preheader585, %.lr.ph635
  %.2634 = phi ptr [ %i.li, %.lr.ph635 ], [ %i.io, %.preheader585 ] ; 5 uses
  %.7633 = phi ptr [ %i.lh, %.lr.ph635 ], [ %i.cz, %.preheader585 ] ; 6 uses
  %.6443632 = phi i64 [ %i.lj, %.lr.ph635 ], [ 0, %.preheader585 ]
  %i.kp = load i64, ptr %.2634, align 8, !tbaa !21
  %i.kq = load i64, ptr %.7633, align 8, !tbaa !21
  %i.kr = and i64 %i.kq, %i.kp
  store i64 %i.kr, ptr %.7633, align 8, !tbaa !21
  %i.ks = getelementptr inbounds nuw i8, ptr %.2634, i64 8
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !21
  %i.ku = getelementptr inbounds nuw i8, ptr %.7633, i64 8 ; 2 uses
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !21
  %i.kw = and i64 %i.kv, %i.kt
  store i64 %i.kw, ptr %i.ku, align 8, !tbaa !21
  %i.kx = getelementptr inbounds nuw i8, ptr %.2634, i64 16
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !21
  %i.kz = getelementptr inbounds nuw i8, ptr %.7633, i64 16 ; 2 uses
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !21
  %i.lb = and i64 %i.la, %i.ky
  store i64 %i.lb, ptr %i.kz, align 8, !tbaa !21
  %i.lc = getelementptr inbounds nuw i8, ptr %.2634, i64 24
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !21
  %i.le = getelementptr inbounds nuw i8, ptr %.7633, i64 24 ; 2 uses
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !21
  %i.lg = and i64 %i.lf, %i.ld
  store i64 %i.lg, ptr %i.le, align 8, !tbaa !21
  %i.lh = getelementptr inbounds nuw i8, ptr %.7633, i64 32
  %i.li = getelementptr inbounds nuw i8, ptr %.2634, i64 32
  %i.lj = add nuw i64 %.6443632, 32               ; 2 uses
  %i.lk = icmp ult i64 %i.lj, %.6477.lcssa
  br i1 %i.lk, label %.lr.ph635, label %.loopexit572, !llvm.loop !149

bb.be:                                            ; preds = %bb.bc
  br i1 %i.af, label %.preheader589.lr.ph, label %.loopexit572

.preheader589.lr.ph:                              ; preds = %bb.be
  %.not825 = icmp eq i32 %i.ai, 1
  %umax746 = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 2)
  br label %.preheader589

.preheader589:                                    ; preds = %.preheader589.lr.ph, %._crit_edge605
  %.4615 = phi i64 [ 0, %.preheader589.lr.ph ], [ %i.nh, %._crit_edge605 ] ; 2 uses
  %.8614 = phi ptr [ %i.cz, %.preheader589.lr.ph ], [ %i.ni, %._crit_edge605 ] ; 12 uses
  %.9613 = phi i64 [ %.0459.lcssa, %.preheader589.lr.ph ], [ %i.nk, %._crit_edge605 ]
  %.7478612 = phi i64 [ 0, %.preheader589.lr.ph ], [ %i.nj, %._crit_edge605 ]
  %.pre = load i64, ptr %.8614, align 8, !tbaa !21 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.8614, i64 8 ; 3 uses
  br i1 %.not825, label %.preheader589.._crit_edge605_crit_edge, label %.lr.ph604

.preheader589.._crit_edge605_crit_edge:           ; preds = %.preheader589
  %.pre764 = load i64, ptr %i.ll, align 8, !tbaa !21
  %.phi.trans.insert765 = getelementptr inbounds nuw i8, ptr %.8614, i64 16
  %.pre766 = load i64, ptr %.phi.trans.insert765, align 8, !tbaa !21
  %.phi.trans.insert767 = getelementptr inbounds nuw i8, ptr %.8614, i64 24
  %.pre768 = load i64, ptr %.phi.trans.insert767, align 8, !tbaa !21
  br label %._crit_edge605

.lr.ph604:                                        ; preds = %.preheader589
  %i.lm = getelementptr inbounds nuw i8, ptr %.8614, i64 16 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.8614, i64 24 ; 2 uses
  %.promoted = load i64, ptr %i.ll, align 8, !tbaa !21
  %.promoted610 = load i64, ptr %i.lm, align 8, !tbaa !21
  %.promoted611 = load i64, ptr %i.ln, align 8, !tbaa !21
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph604, %bb.bf
  %i.lo = phi i64 [ %.promoted611, %.lr.ph604 ], [ %i.mq, %bb.bf ] ; 2 uses
  %i.lp = phi i64 [ %.promoted610, %.lr.ph604 ], [ %i.mo, %bb.bf ] ; 2 uses
  %i.lq = phi i64 [ %.promoted, %.lr.ph604 ], [ %i.mm, %bb.bf ] ; 2 uses
  %i.lr = phi i64 [ %.pre, %.lr.ph604 ], [ %i.mk, %bb.bf ] ; 2 uses
  %.sroa.12.0603 = phi i64 [ 0, %.lr.ph604 ], [ %i.mj, %bb.bf ]
  %.sroa.9.0602 = phi i64 [ 0, %.lr.ph604 ], [ %i.mf, %bb.bf ]
  %.sroa.6.0601 = phi i64 [ 0, %.lr.ph604 ], [ %i.mb, %bb.bf ]
  %.sroa.0.0600 = phi i64 [ 0, %.lr.ph604 ], [ %i.lx, %bb.bf ]
  %.7444599 = phi i64 [ 1, %.lr.ph604 ], [ %i.mr, %bb.bf ] ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.7444599
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !157
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %.4615 ; 4 uses
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !21 ; 2 uses
  %i.lw = and i64 %i.lv, %i.lr
  %i.lx = or i64 %i.lw, %.sroa.0.0600             ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 8 ; 2 uses
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !21
  %i.ma = and i64 %i.lz, %i.lq
  %i.mb = or i64 %i.ma, %.sroa.6.0601             ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lu, i64 16 ; 2 uses
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !21
  %i.me = and i64 %i.md, %i.lp
  %i.mf = or i64 %i.me, %.sroa.9.0602             ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lu, i64 24 ; 2 uses
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !21
  %i.mi = and i64 %i.mh, %i.lo
  %i.mj = or i64 %i.mi, %.sroa.12.0603            ; 2 uses
  %i.mk = xor i64 %i.lv, %i.lr                    ; 3 uses
  store i64 %i.mk, ptr %.8614, align 8, !tbaa !21
  %i.ml = load i64, ptr %i.ly, align 8, !tbaa !21
  %i.mm = xor i64 %i.ml, %i.lq                    ; 3 uses
  store i64 %i.mm, ptr %i.ll, align 8, !tbaa !21
  %i.mn = load i64, ptr %i.mc, align 8, !tbaa !21
  %i.mo = xor i64 %i.mn, %i.lp                    ; 3 uses
  store i64 %i.mo, ptr %i.lm, align 8, !tbaa !21
  %i.mp = load i64, ptr %i.mg, align 8, !tbaa !21
  %i.mq = xor i64 %i.mp, %i.lo                    ; 3 uses
  store i64 %i.mq, ptr %i.ln, align 8, !tbaa !21
  %i.mr = add nuw i64 %.7444599, 1                ; 2 uses
  %exitcond747.not = icmp eq i64 %i.mr, %umax746
  br i1 %exitcond747.not, label %._crit_edge605.loopexit, label %bb.bf, !llvm.loop !150

._crit_edge605.loopexit:                          ; preds = %bb.bf
  %i.ms = xor i64 %i.lx, -1
  %i.mt = and i64 %i.mk, %i.ms
  %i.mu = xor i64 %i.mb, -1
  %i.mv = and i64 %i.mm, %i.mu
  %i.mw = xor i64 %i.mf, -1
  %i.mx = and i64 %i.mo, %i.mw
  %i.my = xor i64 %i.mj, -1
  %i.mz = and i64 %i.mq, %i.my
  br label %._crit_edge605

._crit_edge605:                                   ; preds = %.preheader589.._crit_edge605_crit_edge, %._crit_edge605.loopexit
  %i.na = phi i64 [ %.pre768, %.preheader589.._crit_edge605_crit_edge ], [ %i.mz, %._crit_edge605.loopexit ]
  %i.nb = phi i64 [ %.pre766, %.preheader589.._crit_edge605_crit_edge ], [ %i.mx, %._crit_edge605.loopexit ]
  %i.nc = phi i64 [ %.pre764, %.preheader589.._crit_edge605_crit_edge ], [ %i.mv, %._crit_edge605.loopexit ]
  %i.nd = phi i64 [ %.pre, %.preheader589.._crit_edge605_crit_edge ], [ %i.mt, %._crit_edge605.loopexit ]
  store i64 %i.nd, ptr %.8614, align 8, !tbaa !21
  %i.ne = getelementptr inbounds nuw i8, ptr %.8614, i64 8
  store i64 %i.nc, ptr %i.ne, align 8, !tbaa !21
  %i.nf = getelementptr inbounds nuw i8, ptr %.8614, i64 16
  store i64 %i.nb, ptr %i.nf, align 8, !tbaa !21
  %i.ng = getelementptr inbounds nuw i8, ptr %.8614, i64 24
  store i64 %i.na, ptr %i.ng, align 8, !tbaa !21
  %i.nh = add nuw nsw i64 %.4615, 4
  %i.ni = getelementptr inbounds nuw i8, ptr %.8614, i64 32
  %i.nj = add i64 %.7478612, 32                   ; 2 uses
  %i.nk = add i64 %.9613, -32                     ; 2 uses
  %i.nl = icmp ugt i64 %i.nk, 31
  br i1 %i.nl, label %.preheader589, label %.loopexit572, !llvm.loop !151

.loopexit572:                                     ; preds = %._crit_edge605, %.lr.ph635, %.lr.ph639, %.lr.ph643, %.lr.ph647, %._crit_edge651.us, %._crit_edge663.us, %._crit_edge675.us, %.preheader576.preheader, %.preheader573.preheader, %.preheader570.preheader, %.preheader585, %.preheader583, %.preheader581, %.thread, %bb.be, %._crit_edge628, %bb.ar
  %.9480 = phi i64 [ 0, %bb.ar ], [ %i.dc, %.thread ], [ 0, %.preheader585 ], [ %i.hf, %.lr.ph647 ], [ %i.fq, %._crit_edge663.us ], [ 0, %bb.be ], [ %.6477.lcssa, %._crit_edge628 ], [ 0, %.preheader581 ], [ %i.fx, %.preheader576.preheader ], [ %i.gw, %._crit_edge651.us ], [ 0, %.preheader583 ], [ %i.ek, %._crit_edge675.us ], [ %.6477.lcssa, %.lr.ph635 ], [ %.6477.lcssa, %.lr.ph639 ], [ %i.dl, %.preheader570.preheader ], [ %.6477.lcssa, %.lr.ph643 ], [ %i.er, %.preheader573.preheader ], [ %i.nj, %._crit_edge605 ] ; 2 uses
  %i.nm = icmp ult i64 %.9480, %.0468.lcssa
  br i1 %i.nm, label %.lr.ph703, label %.loopexit

.lr.ph703:                                        ; preds = %.loopexit572
  %i.nn = sext i1 %i.ab to i8                     ; 2 uses
  %.not830 = icmp eq i32 %i.ai, 1
  %umax759 = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 2)
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph703, %.thread565
  %.10699 = phi i64 [ %.9480, %.lr.ph703 ], [ %i.pd, %.thread565 ] ; 6 uses
  %i.no = load i64, ptr %i.am, align 8, !tbaa !21
  %.not510 = icmp ugt i64 %i.no, %.10699
  br i1 %.not510, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.np = load ptr, ptr %i.al, align 8, !tbaa !84
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 %.10699
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !15
  %i.ns = xor i8 %i.nr, %i.nn
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %spec.select514 = phi i8 [ %i.ns, %bb.bh ], [ %i.nn, %bb.bg ] ; 2 uses
  br i1 %.not830, label %.split._crit_edge, label %.lr.ph690

.lr.ph690:                                        ; preds = %bb.bi, %.thread554
  %.8445688 = phi i64 [ %i.ow, %.thread554 ], [ 1, %bb.bi ] ; 3 uses
  %.0446687 = phi i8 [ %.1447561, %.thread554 ], [ 0, %bb.bi ] ; 6 uses
  %.0448686 = phi i8 [ %.1449560, %.thread554 ], [ 0, %bb.bi ] ; 6 uses
  %.1452685 = phi i8 [ %.2453559, %.thread554 ], [ %spec.select514, %bb.bi ] ; 8 uses
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.8445688
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !21
  %.not511 = icmp ugt i64 %i.nu, %.10699
  br i1 %.not511, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.lr.ph690
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.8445688
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !84
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 %.10699
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !15
  %i.nz = zext i8 %i.ny to i32
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph690, %bb.bj
  %i.oa = phi i32 [ %i.nz, %bb.bj ], [ 0, %.lr.ph690 ] ; 6 uses
  switch i64 %.0481523528, label %default.unreachable [
    i64 0, label %bb.bm
    i64 1, label %.split563
    i64 2, label %bb.bl
    i64 4, label %.split
    i64 5, label %.split
    i64 6, label %.split
    i64 7, label %.split562
    i64 3, label %.thread554
  ]

.split563:                                        ; preds = %bb.bk
  %i.ob = trunc nuw i32 %i.oa to i8
  %i.oc = or i8 %.1452685, %i.ob                  ; 2 uses
  %i.od = icmp eq i8 %i.oc, -1
  br i1 %i.od, label %.thread565, label %.thread554

bb.bl:                                            ; preds = %bb.bk
  %i.oe = trunc nuw i32 %i.oa to i8
  %i.of = xor i8 %.1452685, %i.oe
  br label %.thread554

.split:                                           ; preds = %bb.bk, %bb.bk, %bb.bk
  %i.og = trunc nuw i32 %i.oa to i8
  %i.oh = or i8 %.0448686, %i.og                  ; 2 uses
  %i.oi = icmp eq i8 %i.oh, -1
  br i1 %i.oi, label %.split._crit_edge, label %.thread554

.split562:                                        ; preds = %bb.bk
  %i.oj = trunc nuw i32 %i.oa to i8
  %i.ok = and i8 %.1452685, %i.oj
  %i.ol = or i8 %i.ok, %.0446687                  ; 3 uses
  %i.om = zext i8 %i.ol to i32
  %i.on = xor i32 %i.om, -1
  %i.oo = zext i8 %.1452685 to i32
  %i.op = xor i32 %i.oa, %i.oo
  %i.oq = and i32 %i.op, %i.on
  %i.or = trunc nuw i32 %i.oq to i8               ; 2 uses
  %i.os = icmp eq i8 %i.ol, -1
  br i1 %i.os, label %.thread565, label %.thread554

default.unreachable:                              ; preds = %bb.bk
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.ot = trunc nuw i32 %i.oa to i8
  %i.ou = and i8 %.1452685, %i.ot                 ; 2 uses
  %i.ov = icmp eq i8 %i.ou, 0
  br i1 %i.ov, label %.thread565, label %.thread554

.thread554:                                       ; preds = %bb.bl, %bb.bk, %.split563, %.split562, %.split, %bb.bm
  %.1447561 = phi i8 [ %.0446687, %.split563 ], [ %.0446687, %bb.bm ], [ %.0446687, %.split ], [ %i.ol, %.split562 ], [ %.0446687, %bb.bk ], [ %.0446687, %bb.bl ]
  %.1449560 = phi i8 [ %.0448686, %.split563 ], [ %.0448686, %bb.bm ], [ %i.oh, %.split ], [ %.0448686, %.split562 ], [ %.0448686, %bb.bk ], [ %.0448686, %bb.bl ] ; 2 uses
  %.2453559 = phi i8 [ %i.oc, %.split563 ], [ %i.ou, %bb.bm ], [ %.1452685, %.split ], [ %i.or, %.split562 ], [ %.1452685, %bb.bk ], [ %i.of, %bb.bl ] ; 2 uses
  %i.ow = add nuw i64 %.8445688, 1                ; 2 uses
  %exitcond760.not = icmp eq i64 %i.ow, %umax759
  br i1 %exitcond760.not, label %.split._crit_edge, label %.lr.ph690, !llvm.loop !152

.split._crit_edge:                                ; preds = %.thread554, %.split, %bb.bi
  %.3454 = phi i8 [ %spec.select514, %bb.bi ], [ %.1452685, %.split ], [ %.2453559, %.thread554 ] ; 4 uses
  %.2450 = phi i8 [ 0, %bb.bi ], [ -1, %.split ], [ %.1449560, %.thread554 ] ; 3 uses
  switch i64 %.0481523528, label %.thread565 [
    i64 4, label %bb.bn
    i64 5, label %bb.bo
    i64 6, label %bb.bp
  ]

bb.bn:                                            ; preds = %.split._crit_edge
  %i.ox = xor i8 %.2450, -1
  %i.oy = and i8 %.3454, %i.ox
  br label %.thread565

bb.bo:                                            ; preds = %.split._crit_edge
  %i.oz = xor i8 %.3454, -1
  %i.pa = and i8 %.2450, %i.oz
  br label %.thread565

bb.bp:                                            ; preds = %.split._crit_edge
  %i.pb = and i8 %.2450, %.3454
  br label %.thread565

.thread565:                                       ; preds = %.split563, %.split562, %bb.bm, %.split._crit_edge, %bb.bn, %bb.bo, %bb.bp
  %.sink = phi i8 [ %i.oy, %bb.bn ], [ %i.pa, %bb.bo ], [ %i.pb, %bb.bp ], [ %.3454, %.split._crit_edge ], [ 0, %bb.bm ], [ -1, %.split563 ], [ %i.or, %.split562 ]
  %i.pc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.10699
  store i8 %.sink, ptr %i.pc, align 1, !tbaa !15
  %i.pd = add i64 %.10699, 1                      ; 2 uses
  %exitcond761.not = icmp eq i64 %i.pd, %.0468.lcssa
  br i1 %exitcond761.not, label %.loopexit, label %bb.bg, !llvm.loop !153

.loopexit:                                        ; preds = %.thread565, %.loopexit572, %._crit_edge
  %.0468.lcssa793 = phi i64 [ 0, %._crit_edge ], [ %.0468.lcssa, %.loopexit572 ], [ %.0468.lcssa, %.thread565 ]
  %.0458 = phi ptr [ null, %._crit_edge ], [ %i.cz, %.loopexit572 ], [ %i.cz, %.thread565 ]
  br label %.lr.ph706

.lr.ph706:                                        ; preds = %.loopexit, %bb.br
  %.11704 = phi i64 [ %i.pg, %bb.br ], [ 0, %.loopexit ] ; 2 uses
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.11704
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !76 ; 2 uses
  %.not509 = icmp eq ptr %i.pf, null
  br i1 %.not509, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph706
  tail call void @decrRefCount(ptr noundef nonnull %i.pf) #23
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph706, %bb.bq
  %i.pg = add nuw i64 %.11704, 1                  ; 2 uses
  %exitcond763.not = icmp eq i64 %i.pg, %i.aj
  br i1 %exitcond763.not, label %._crit_edge707, label %.lr.ph706, !llvm.loop !154

._crit_edge707:                                   ; preds = %bb.br, %.thread524
  %.0458802 = phi ptr [ null, %.thread524 ], [ %.0458, %bb.br ]
  %.0468.lcssa793801 = phi i64 [ 0, %.thread524 ], [ %.0468.lcssa793, %bb.br ]
  %.not504794800 = phi i1 [ true, %.thread524 ], [ %.not504, %bb.br ]
  tail call void @zfree(ptr noundef %i.al) #23
  tail call void @zfree(ptr noundef %i.am) #23
  tail call void @zfree(ptr noundef %i.an) #23
  br i1 %.not504794800, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.ph = tail call ptr @createObject(i32 noundef 0, ptr noundef %.0458802) #23
  store ptr %i.ph, ptr %i.a, align 8, !tbaa !76
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !77
  call void @setKey(ptr noundef %0, ptr noundef %i.pj, ptr noundef %i.i, ptr noundef nonnull %i.a, i32 noundef 0) #23
  %i.pk = load ptr, ptr %i.pi, align 8, !tbaa !77
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 72
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !80
  call void @notifyKeyspaceEvent(i32 noundef 8, ptr noundef nonnull @.str.22, ptr noundef %i.i, i32 noundef %i.pm) #23
  %i.pn = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !81
  %i.po = add nsw i64 %i.pn, 1
  store i64 %i.po, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.bv

bb.bt:                                            ; preds = %._crit_edge707
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !77
  %i.pr = tail call i32 @dbDelete(ptr noundef %i.pq, ptr noundef %i.i) #23
  %.not508 = icmp eq i32 %i.pr, 0
  br i1 %.not508, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ps = load ptr, ptr %i.pp, align 8, !tbaa !77
  tail call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.ps, ptr noundef %i.i, ptr noundef null, i32 noundef 1) #23
  %i.pt = load ptr, ptr %i.pp, align 8, !tbaa !77
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 72
end_hunk_0
