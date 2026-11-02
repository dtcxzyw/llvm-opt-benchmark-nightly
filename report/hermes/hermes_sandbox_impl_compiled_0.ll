Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 26
begin_hunk_0_@w2c_hermes_0x5F_rem_pio2:bb.a
  %i.ea = fsub double %i.dx, %i.dz                ; 2 uses
  %i.eb = fsub double %i.dw, %i.ea                ; 2 uses
  %.val1656 = load ptr, ptr %i.cx, align 8, !tbaa !21
  %i.ec = getelementptr inbounds nuw i8, ptr %.val1656, i64 %i.cy
  store double %i.eb, ptr %i.ec, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ac, %bb.ae
  %.01539 = phi double [ %i.cw, %bb.ac ], [ %i.eb, %bb.ae ], [ %i.dn, %bb.ad ]
  %.11508 = phi double [ %.01507, %bb.ac ], [ %i.dw, %bb.ae ], [ %i.di, %bb.ad ]
  %.11505 = phi double [ %.01504, %bb.ac ], [ %i.ea, %bb.ae ], [ %i.dm, %bb.ad ]
  %i.ed = fsub double %.11508, %.01539
  %i.ee = fsub double %i.ed, %.11505
  %.val1655 = load ptr, ptr %i.cx, align 8, !tbaa !21
  %i.ef = getelementptr inbounds nuw i8, ptr %.val1655, i64 %i.cy
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store double %i.ee, ptr %i.eg, align 1
  br label %bb.da

bb.ag:                                            ; preds = %bb.t
  %i.eh = icmp samesign ugt i32 %i.g, 2146435071
  br i1 %i.eh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ei = fsub double %1, %1                      ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ek = zext i32 %2 to i64                      ; 2 uses
  %.val1654 = load ptr, ptr %i.ej, align 8, !tbaa !21
  %i.el = getelementptr inbounds nuw i8, ptr %.val1654, i64 %i.ek
  store double %i.ei, ptr %i.el, align 1
  %.val1653 = load ptr, ptr %i.ej, align 8, !tbaa !21
  %i.em = getelementptr inbounds nuw i8, ptr %.val1653, i64 %i.ek
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store double %i.ei, ptr %i.en, align 1
  br label %bb.da

bb.ai:                                            ; preds = %bb.ag
  %i.eo = and i64 %i.d, 4503599627370495
  %i.ep = or disjoint i64 %i.eo, 4710765210229538816
  %i.eq = bitcast i64 %i.ep to double             ; 4 uses
  %i.er = add i32 %i.b, -32                       ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 52 uses
  %i.et = fcmp olt double %i.eq, f0x41E0000000000000
  br i1 %i.et, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.eu = fcmp ule double %i.eq, f0xC1E0000000200000
  br i1 %i.eu, label %bb.ak, label %bb.al, !prof !28

bb.ak:                                            ; preds = %bb.an, %bb.aj
  tail call void @wasm_rt_trap(i32 noundef 2) #17
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.ev = fptosi double %i.eq to i32
  %i.ew = uitofp nneg i32 %i.ev to double
  br label %bb.am

bb.am:                                            ; preds = %bb.ai, %bb.al
  %.01498 = phi double [ %i.ew, %bb.al ], [ f0xC1E0000000000000, %bb.ai ] ; 2 uses
  %i.ex = zext i32 %i.er to i64
  %.val1652 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.ey = getelementptr inbounds nuw i8, ptr %.val1652, i64 %i.ex
  store double %.01498, ptr %i.ey, align 1
  %i.ez = fsub nnan double %i.eq, %.01498
  %i.fa = fmul nnan double %i.ez, f0x4170000000000000 ; 5 uses
  %i.fb = add i32 %i.b, -24
  %i.fc = tail call noundef double @llvm.fabs.f64(double %i.fa)
  %i.fd = fcmp olt double %i.fc, f0x41E0000000000000
  br i1 %i.fd, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.fe = fcmp ule double %i.fa, f0xC1E0000000200000
  %i.ff = fcmp uge double %i.fa, f0x41E0000000000000
  %.not1566.1 = or i1 %i.fe, %i.ff
  br i1 %.not1566.1, label %bb.ak, label %bb.ao, !prof !28

bb.ao:                                            ; preds = %bb.an
  %i.fg = fptosi double %i.fa to i32
  %i.fh = sitofp i32 %i.fg to double
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %.01498.1 = phi double [ %i.fh, %bb.ao ], [ f0xC1E0000000000000, %bb.am ] ; 2 uses
  %i.fi = zext i32 %i.fb to i64
  %.val1652.1 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.fj = getelementptr inbounds nuw i8, ptr %.val1652.1, i64 %i.fi
  store double %.01498.1, ptr %i.fj, align 1
  %i.fk = fsub nnan double %i.fa, %.01498.1
  %i.fl = fmul nnan double %i.fk, f0x4170000000000000
  %i.fm = zext i32 %i.c to i64                    ; 4 uses
  %.val1651 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.fn = getelementptr inbounds nuw i8, ptr %.val1651, i64 %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  store double %i.fl, ptr %i.fo, align 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %bb.ap
  %.21525 = phi i32 [ 2, %bb.ap ], [ %i.fp, %bb.aq ] ; 10 uses
  %i.fp = add i32 %.21525, -1
  %i.fq = shl i32 %.21525, 3
  %i.fr = add i32 %i.fq, %i.er
  %i.fs = zext i32 %i.fr to i64
  %.val1638 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.ft = getelementptr inbounds nuw i8, ptr %.val1638, i64 %i.fs
  %.0.copyload.i = load double, ptr %i.ft, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i) #16, !srcloc !39
  %i.fu = fcmp oeq double %.0.copyload.i, 0.000000e+00
  br i1 %i.fu, label %bb.aq, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fv = load i32, ptr %i.a, align 8, !tbaa !19  ; 7 uses
  %i.fw = add i32 %i.fv, -560                     ; 16 uses
  store i32 %i.fw, ptr %i.a, align 8, !tbaa !19
  %i.fx = lshr i32 %i.g, 20                       ; 2 uses
  %i.fy = add nsw i32 %i.fx, -1046
  %i.fz = trunc nuw nsw i32 %i.fx to i16
  %.lhs.trunc = add nsw i16 %i.fz, -1049
  %i.ga = sdiv i16 %.lhs.trunc, 24
  %i.gb = zext nneg i16 %i.ga to i32              ; 3 uses
  %i.gc = mul nsw i32 %i.gb, -24
  %i.gd = add nsw i32 %i.fy, %i.gc                ; 7 uses
  %.val1617 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.ge = getelementptr inbounds nuw i8, ptr %.val1617, i64 241956
  %.0.copyload.i1675 = load i32, ptr %i.ge, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1675) #16, !srcloc !22
  %i.gf = add i32 %.21525, 1                      ; 2 uses
  %i.gg = add i32 %.0.copyload.i1675, %.21525
  %i.gh = icmp sgt i32 %i.gg, -1
  br i1 %i.gh, label %bb.as, label %..loopexit1716_crit_edge

..loopexit1716_crit_edge:                         ; preds = %bb.ar
  %.pre1794 = add i32 %i.fv, -240
  br label %.loopexit1716

bb.as:                                            ; preds = %bb.ar
  %i.gi = add i32 %.0.copyload.i1675, %i.gf
  %i.gj = sub i32 %i.gb, %.21525
  %i.gk = add i32 %i.fv, -240                     ; 2 uses
  %i.gl = zext i32 %i.gi to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.av, %bb.as
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.av ], [ 0, %bb.as ] ; 2 uses
  %.11530 = phi i32 [ %i.gx, %bb.av ], [ %i.gj, %bb.as ] ; 3 uses
  %i.gm = trunc nuw nsw i64 %indvars.iv to i32
  %i.gn = shl i32 %i.gm, 3
  %i.go = add i32 %i.gk, %i.gn
  %i.gp = icmp slt i32 %.11530, 0
  br i1 %i.gp, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gq = shl i32 %.11530, 2
  %i.gr = add i32 %i.gq, 241968
  %i.gs = zext i32 %i.gr to i64
  %.val1616 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.gt = getelementptr inbounds nuw i8, ptr %.val1616, i64 %i.gs
  %.0.copyload.i1676 = load i32, ptr %i.gt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1676) #16, !srcloc !22
  %i.gu = sitofp i32 %.0.copyload.i1676 to double
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %.0 = phi double [ %i.gu, %bb.au ], [ 0.000000e+00, %bb.at ]
  %i.gv = zext i32 %i.go to i64
  %.val1650 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.gw = getelementptr inbounds nuw i8, ptr %.val1650, i64 %i.gv
  store double %.0, ptr %i.gw, align 1
  %i.gx = add i32 %.11530, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not1567 = icmp eq i64 %indvars.iv.next, %i.gl
  br i1 %.not1567, label %.loopexit1716, label %bb.at

.loopexit1716:                                    ; preds = %bb.av, %..loopexit1716_crit_edge
  %.pre-phi1795 = phi i32 [ %.pre1794, %..loopexit1716_crit_edge ], [ %i.gk, %bb.av ] ; 3 uses
  %i.gy = add nsw i32 %i.gd, -24                  ; 6 uses
  %i.gz = tail call i32 @llvm.smax.i32(i32 %.0.copyload.i1675, i32 0) ; 2 uses
  %i.ha = icmp ugt i32 %.21525, 2147483646
  br i1 %i.ha, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %.loopexit1716
  %i.hb = zext nneg i32 %.21525 to i64            ; 2 uses
  %i.hc = zext nneg i32 %i.gz to i64
  br label %.split

.split.us.preheader:                              ; preds = %.loopexit1716
  %narrow = add nuw i32 %i.gz, 1
  %i.hd = zext i32 %narrow to i64                 ; 2 uses
  %xtraiter = and i64 %i.hd, 3                    ; 3 uses
  %i.he = icmp slt i32 %.0.copyload.i1675, 3
  br i1 %i.he, label %.split.us.epil.preheader, label %.split.us.preheader.new

.split.us.preheader.new:                          ; preds = %.split.us.preheader
  %unroll_iter = and i64 %i.hd, 4294967292
  br label %.split.us

.split.us:                                        ; preds = %.split.us, %.split.us.preheader.new
  %indvars.iv1767 = phi i64 [ 0, %.split.us.preheader.new ], [ %indvars.iv.next1768.3, %.split.us ] ; 5 uses
  %niter = phi i64 [ 0, %.split.us.preheader.new ], [ %niter.next.3, %.split.us ]
  %i.hf = trunc nuw nsw i64 %indvars.iv1767 to i32
  %i.hg = shl nsw i32 %i.hf, 3
  %i.hh = add i32 %i.hg, %i.fw
  %i.hi = zext i32 %i.hh to i64
  %.val1649.us = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.hj = getelementptr inbounds nuw i8, ptr %.val1649.us, i64 %i.hi
  store double 0.000000e+00, ptr %i.hj, align 1
  %i.hk = trunc i64 %indvars.iv1767 to i32
  %i.hl = shl i32 %i.hk, 3
  %i.hm = or disjoint i32 %i.hl, 8
  %i.hn = add i32 %i.hm, %i.fw
  %i.ho = zext i32 %i.hn to i64
  %.val1649.us.1 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.hp = getelementptr inbounds nuw i8, ptr %.val1649.us.1, i64 %i.ho
  store double 0.000000e+00, ptr %i.hp, align 1
  %i.hq = trunc i64 %indvars.iv1767 to i32
  %i.hr = shl i32 %i.hq, 3
  %i.hs = or disjoint i32 %i.hr, 16
  %i.ht = add i32 %i.hs, %i.fw
  %i.hu = zext i32 %i.ht to i64
  %.val1649.us.2 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.hv = getelementptr inbounds nuw i8, ptr %.val1649.us.2, i64 %i.hu
  store double 0.000000e+00, ptr %i.hv, align 1
  %i.hw = trunc i64 %indvars.iv1767 to i32
  %i.hx = shl i32 %i.hw, 3
  %i.hy = or disjoint i32 %i.hx, 24
  %i.hz = add i32 %i.hy, %i.fw
  %i.ia = zext i32 %i.hz to i64
  %.val1649.us.3 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.ib = getelementptr inbounds nuw i8, ptr %.val1649.us.3, i64 %i.ia
  store double 0.000000e+00, ptr %i.ib, align 1
  %indvars.iv.next1768.3 = add nuw nsw i64 %indvars.iv1767, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.split1740.us.loopexit.unr-lcssa, label %.split.us

.split:                                           ; preds = %.split.preheader, %.loopexit1715
  %indvars.iv1764 = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next1765, %.loopexit1715 ] ; 3 uses
  %i.ic = trunc nuw nsw i64 %indvars.iv1764 to i32 ; 2 uses
  %i.id = add i32 %.21525, %i.ic
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.split
  %indvars.iv1761 = phi i64 [ %indvars.iv.next1762, %bb.aw ], [ 0, %.split ] ; 3 uses
  %.21541 = phi double [ %i.ip, %bb.aw ], [ 0.000000e+00, %.split ]
  %i.ie = trunc nuw nsw i64 %indvars.iv1761 to i32 ; 2 uses
  %i.if = shl i32 %i.ie, 3
  %i.ig = add i32 %i.if, %i.er
  %i.ih = zext i32 %i.ig to i64
  %.val1637 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.ii = getelementptr inbounds nuw i8, ptr %.val1637, i64 %i.ih
  %.0.copyload.i1677 = load double, ptr %i.ii, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i1677) #16, !srcloc !39
  %i.ij = sub i32 %i.id, %i.ie
  %i.ik = shl i32 %i.ij, 3
  %i.il = add i32 %.pre-phi1795, %i.ik
  %i.im = zext i32 %i.il to i64
  %.val1636 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.in = getelementptr inbounds nuw i8, ptr %.val1636, i64 %i.im
  %.0.copyload.i1678 = load double, ptr %i.in, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i1678) #16, !srcloc !39
  %i.io = fmul double %.0.copyload.i1677, %.0.copyload.i1678
  %i.ip = fadd double %.21541, %i.io              ; 2 uses
  %indvars.iv.next1762 = add nuw nsw i64 %indvars.iv1761, 1
  %.not1568 = icmp eq i64 %indvars.iv1761, %i.hb
  br i1 %.not1568, label %.loopexit1715, label %bb.aw

.loopexit1715:                                    ; preds = %bb.aw
  %i.iq = shl i32 %i.ic, 3
  %i.ir = add i32 %i.iq, %i.fw
  %i.is = zext i32 %i.ir to i64
  %.val1649 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.it = getelementptr inbounds nuw i8, ptr %.val1649, i64 %i.is
  store double %i.ip, ptr %i.it, align 1
  %.not1569 = icmp eq i64 %indvars.iv1764, %i.hc
  %indvars.iv.next1765 = add nuw nsw i64 %indvars.iv1764, 1
  br i1 %.not1569, label %.split1740.us, label %.split

.split1740.us.loopexit.unr-lcssa:                 ; preds = %.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split1740.us.loopexit, label %.split.us.epil.preheader

.split.us.epil.preheader:                         ; preds = %.split1740.us.loopexit.unr-lcssa, %.split.us.preheader
  %indvars.iv1767.epil.init = phi i64 [ 0, %.split.us.preheader ], [ %indvars.iv.next1768.3, %.split1740.us.loopexit.unr-lcssa ]
  %lcmp.mod1875 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1875)
  br label %.split.us.epil

.split.us.epil:                                   ; preds = %.split.us.epil, %.split.us.epil.preheader
  %indvars.iv1767.epil = phi i64 [ %indvars.iv1767.epil.init, %.split.us.epil.preheader ], [ %indvars.iv.next1768.epil, %.split.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.split.us.epil.preheader ], [ %epil.iter.next, %.split.us.epil ]
  %i.iu = trunc nuw nsw i64 %indvars.iv1767.epil to i32
  %i.iv = shl i32 %i.iu, 3
  %i.iw = add i32 %i.iv, %i.fw
  %i.ix = zext i32 %i.iw to i64
  %.val1649.us.epil = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.iy = getelementptr inbounds nuw i8, ptr %.val1649.us.epil, i64 %i.ix
  store double 0.000000e+00, ptr %i.iy, align 1
  %indvars.iv.next1768.epil = add nuw nsw i64 %indvars.iv1767.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.split1740.us.loopexit, label %.split.us.epil, !llvm.loop !63

.split1740.us.loopexit:                           ; preds = %.split.us.epil, %.split1740.us.loopexit.unr-lcssa
  %.pre = zext i32 %.21525 to i64
  br label %.split1740.us

.split1740.us:                                    ; preds = %.loopexit1715, %.split1740.us.loopexit
  %.pre-phi = phi i64 [ %.pre, %.split1740.us.loopexit ], [ %i.hb, %.loopexit1715 ]
  %i.iz = sub nsw i32 15, %i.gd
  %i.ja = sub nsw i32 16, %i.gd
  %i.jb = add i32 %i.fv, -80                      ; 8 uses
  %i.jc = icmp sgt i32 %i.gd, 24                  ; 2 uses
  %.not1580 = icmp eq i32 %i.gy, 0
  %i.jd = and i32 %i.ja, 31                       ; 2 uses
  %i.je = and i32 %i.iz, 31
  %i.jf = icmp ult i32 %.21525, 2147483647
  br label %.loopexit1709

.loopexit1709:                                    ; preds = %.loopexit1708, %.split1740.us
  %.41527 = phi i32 [ %.0.copyload.i1675, %.split1740.us ], [ %i.ni, %.loopexit1708 ] ; 17 uses
  %i.jg = shl i32 %.41527, 3
  %i.jh = add i32 %i.jg, %i.fw
  %i.ji = zext i32 %i.jh to i64
  %.val1635 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.jj = getelementptr inbounds nuw i8, ptr %.val1635, i64 %i.ji
  %.0.copyload.i1679 = load double, ptr %i.jj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i1679) #16, !srcloc !39
  %i.jk = icmp sgt i32 %.41527, 0                 ; 2 uses
  br i1 %i.jk, label %.preheader1713.preheader, label %.loopexit1714

.preheader1713.preheader:                         ; preds = %.loopexit1709
  %i.jl = zext nneg i32 %.41527 to i64
  br label %.preheader1713

.preheader1713:                                   ; preds = %.preheader1713.preheader, %bb.be
  %indvars.iv1770 = phi i64 [ 0, %.preheader1713.preheader ], [ %indvars.iv.next1771, %bb.be ] ; 2 uses
  %.41543 = phi double [ %.0.copyload.i1679, %.preheader1713.preheader ], [ %i.kk, %bb.be ] ; 2 uses
  %.11519 = phi i32 [ %.41527, %.preheader1713.preheader ], [ %i.kf, %bb.be ]
  %i.jm = trunc nuw nsw i64 %indvars.iv1770 to i32
  %i.jn = shl i32 %i.jm, 2
  %i.jo = add i32 %i.jb, %i.jn
  %i.jp = fmul double %.41543, f0x3E70000000000000 ; 4 uses
  %i.jq = tail call noundef double @llvm.fabs.f64(double %i.jp)
  %i.jr = fcmp olt double %i.jq, f0x41E0000000000000
  br i1 %i.jr, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %.preheader1713
  %i.js = fcmp ule double %i.jp, f0xC1E0000000200000
  %i.jt = fcmp uge double %i.jp, f0x41E0000000000000
  %.not1572 = or i1 %i.js, %i.jt
  br i1 %.not1572, label %bb.ay, label %bb.az, !prof !28

bb.ay:                                            ; preds = %bb.ax
  tail call void @wasm_rt_trap(i32 noundef 2) #17
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.ju = fptosi double %i.jp to i32
  %i.jv = sitofp i32 %i.ju to double
  br label %bb.ba

bb.ba:                                            ; preds = %.preheader1713, %bb.az
  %.1 = phi double [ %i.jv, %bb.az ], [ f0xC1E0000000000000, %.preheader1713 ] ; 2 uses
  %i.jw = fmul nnan double %.1, f0x4170000000000000
  %i.jx = fsub double %.41543, %i.jw              ; 4 uses
  %i.jy = tail call noundef double @llvm.fabs.f64(double %i.jx)
  %i.jz = fcmp olt double %i.jy, f0x41E0000000000000
  br i1 %i.jz, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.ka = fcmp ule double %i.jx, f0xC1E0000000200000
  %i.kb = fcmp uge double %i.jx, f0x41E0000000000000
  %.not1575 = or i1 %i.ka, %i.kb
  br i1 %.not1575, label %bb.bc, label %bb.bd, !prof !28

bb.bc:                                            ; preds = %bb.bb
  tail call void @wasm_rt_trap(i32 noundef 2) #17
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.kc = fptosi double %i.jx to i32
  br label %bb.be

bb.be:                                            ; preds = %bb.ba, %bb.bd
  %.2 = phi i32 [ %i.kc, %bb.bd ], [ -2147483648, %bb.ba ]
  %i.kd = zext i32 %i.jo to i64
  %.val1623 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.ke = getelementptr inbounds nuw i8, ptr %.val1623, i64 %i.kd
  store i32 %.2, ptr %i.ke, align 1
  %i.kf = add i32 %.11519, -1                     ; 2 uses
  %i.kg = shl i32 %i.kf, 3
  %i.kh = add i32 %i.kg, %i.fw
  %i.ki = zext i32 %i.kh to i64
  %.val1634 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.kj = getelementptr inbounds nuw i8, ptr %.val1634, i64 %i.ki
  %.0.copyload.i1680 = load double, ptr %i.kj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i1680) #16, !srcloc !39
  %i.kk = fadd double %.1, %.0.copyload.i1680     ; 2 uses
  %indvars.iv.next1771 = add nuw nsw i64 %indvars.iv1770, 1 ; 2 uses
  %.not1576 = icmp eq i64 %indvars.iv.next1771, %i.jl
  br i1 %.not1576, label %.loopexit1714, label %.preheader1713
end_hunk_0
