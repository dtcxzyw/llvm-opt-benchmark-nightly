Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 26
begin_hunk_0_@w2c_hermes_0x5F_rem_pio2:bb.a

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
  %i.hg = shl i32 %i.hf, 3
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
  %i.ie = trunc nuw i64 %indvars.iv1761 to i32    ; 2 uses
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

.loopexit1714:                                    ; preds = %bb.be, %.loopexit1709
  %.51544 = phi double [ %.0.copyload.i1679, %.loopexit1709 ], [ %i.kk, %bb.be ]
  %i.kl = tail call double @w2c_hermes_scalbn(ptr noundef nonnull %0, double noundef %.51544, i32 noundef %i.gy) #16 ; 2 uses
  %i.km = fmul double %i.kl, 1.250000e-01         ; 3 uses
  %i.kn = fcmp uno double %i.km, 0.000000e+00
  br i1 %i.kn, label %bb.bf, label %bb.bg, !prof !28

bb.bf:                                            ; preds = %.loopexit1714
  %i.ko = bitcast double %i.km to i64
  %i.kp = or i64 %i.ko, 9221120237041090560
  %i.kq = bitcast i64 %i.kp to double
  br label %wasm_floor.exit

bb.bg:                                            ; preds = %.loopexit1714
  %i.kr = tail call nnan double @llvm.floor.f64(double %i.km)
  br label %wasm_floor.exit

wasm_floor.exit:                                  ; preds = %bb.bf, %bb.bg
  %.0.i = phi double [ %i.kq, %bb.bf ], [ %i.kr, %bb.bg ]
  %i.ks = fmul double %.0.i, 8.000000e+00
  %i.kt = fsub double %i.kl, %i.ks                ; 5 uses
  %i.ku = tail call noundef double @llvm.fabs.f64(double %i.kt)
  %i.kv = fcmp olt double %i.ku, f0x41E0000000000000
  br i1 %i.kv, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %wasm_floor.exit
  %i.kw = fcmp ule double %i.kt, f0xC1E0000000200000
  %i.kx = fcmp uge double %i.kt, f0x41E0000000000000
  %.not1579 = or i1 %i.kw, %i.kx
  br i1 %.not1579, label %bb.bi, label %bb.bj, !prof !28

bb.bi:                                            ; preds = %bb.bh
  tail call void @wasm_rt_trap(i32 noundef 2) #17
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.ky = fptosi double %i.kt to i32
  br label %bb.bk

bb.bk:                                            ; preds = %wasm_floor.exit, %bb.bj
  %.11500 = phi i32 [ %i.ky, %bb.bj ], [ -2147483648, %wasm_floor.exit ] ; 5 uses
  %i.kz = sitofp i32 %.11500 to double
  %i.la = fsub double %i.kt, %i.kz                ; 5 uses
end_hunk_0
begin_hunk_1_@w2c_hermes_0x5F_rem_pio2:bb.a
bb.bm:                                            ; preds = %bb.bk
  br i1 %.not1580, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.lm = shl i32 %.41527, 2
  %i.ln = add i32 %i.lm, %i.fw
  %i.lo = zext i32 %i.ln to i64
  %.val1614 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.lp = getelementptr inbounds nuw i8, ptr %.val1614, i64 %i.lo
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 476
  %.0.copyload.i1682 = load i32, ptr %i.lq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1682) #16, !srcloc !22
  %i.lr = ashr i32 %.0.copyload.i1682, 23
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bl
  %.01512 = phi i32 [ %i.lk, %bb.bl ], [ %.11500, %bb.bn ] ; 2 uses
  %.21501 = phi i32 [ %i.ll, %bb.bl ], [ %i.lr, %bb.bn ] ; 3 uses
  %i.ls = icmp slt i32 %.21501, 1
  br i1 %i.ls, label %bb.ca, label %bb.bq

bb.bp:                                            ; preds = %bb.bm
  %i.lt = fcmp ult double %i.la, 5.000000e-01
  br i1 %i.lt, label %bb.ca, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.11513 = phi i32 [ %.01512, %bb.bo ], [ %.11500, %bb.bp ]
  %.01510 = phi i32 [ %.21501, %bb.bo ], [ 2, %bb.bp ]
  br i1 %i.jk, label %.preheader1711.preheader, label %.loopexit1712

.preheader1711.preheader:                         ; preds = %bb.bq
  %i.lu = zext nneg i32 %.41527 to i64
  br label %.preheader1711

.preheader1711:                                   ; preds = %.preheader1711.preheader, %bb.bt
  %indvars.iv1773 = phi i64 [ 0, %.preheader1711.preheader ], [ %indvars.iv.next1774, %bb.bt ] ; 2 uses
  %.21520 = phi i32 [ 0, %.preheader1711.preheader ], [ %.31502, %bb.bt ]
  %i.lv = trunc nuw nsw i64 %indvars.iv1773 to i32
  %i.lw = shl i32 %i.lv, 2
  %i.lx = add i32 %i.jb, %i.lw
  %i.ly = zext i32 %i.lx to i64                   ; 2 uses
  %.val1613 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.lz = getelementptr inbounds nuw i8, ptr %.val1613, i64 %i.ly
  %.0.copyload.i1683 = load i32, ptr %i.lz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1683) #16, !srcloc !22
  %.not1581 = icmp eq i32 %.21520, 0
  br i1 %.not1581, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.preheader1711
  %.not1582 = icmp eq i32 %.0.copyload.i1683, 0
  br i1 %.not1582, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.preheader1711
  %.01509 = phi i32 [ 16777215, %.preheader1711 ], [ 16777216, %bb.br ]
  %i.ma = sub i32 %.01509, %.0.copyload.i1683
  %.val1621 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.mb = getelementptr inbounds nuw i8, ptr %.val1621, i64 %i.ly
  store i32 %i.ma, ptr %i.mb, align 1
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %i.mc = phi i1 [ false, %bb.bs ], [ true, %bb.br ]
  %.31502 = phi i32 [ 1, %bb.bs ], [ 0, %bb.br ]
  %indvars.iv.next1774 = add nuw nsw i64 %indvars.iv1773, 1 ; 2 uses
  %.not1583 = icmp eq i64 %indvars.iv.next1774, %i.lu
  br i1 %.not1583, label %.loopexit1712, label %.preheader1711

.loopexit1712:                                    ; preds = %bb.bt, %bb.bq
  %.31521 = phi i1 [ true, %bb.bq ], [ %i.mc, %bb.bt ]
  br i1 %i.jc, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %.loopexit1712
  switch i32 %i.gd, label %bb.bx [
    i32 25, label %bb.bw
    i32 26, label %bb.bv
  ]

bb.bv:                                            ; preds = %bb.bu
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv
  %.51534 = phi i32 [ 8388607, %bb.bu ], [ 4194303, %bb.bv ]
  %i.md = shl i32 %.41527, 2
  %i.me = add i32 %i.md, %i.fw
  %i.mf = zext i32 %i.me to i64
  %i.mg = add nuw nsw i64 %i.mf, 476              ; 2 uses
  %.val1612 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.mh = getelementptr inbounds nuw i8, ptr %.val1612, i64 %i.mg
  %.0.copyload.i1684 = load i32, ptr %i.mh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1684) #16, !srcloc !22
  %i.mi = and i32 %.0.copyload.i1684, %.51534
  %.val1620 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.mj = getelementptr inbounds nuw i8, ptr %.val1620, i64 %i.mg
  store i32 %i.mi, ptr %i.mj, align 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bu, %.loopexit1712, %bb.bw
  %i.mk = add i32 %.11513, 1                      ; 3 uses
  %.not1584 = icmp eq i32 %.01510, 2
  br i1 %.not1584, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.ml = fsub double 1.000000e+00, %i.la         ; 2 uses
  br i1 %.31521, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.mm = tail call double @w2c_hermes_scalbn(ptr noundef nonnull %0, double noundef 1.000000e+00, i32 noundef %i.gy) #16
  %i.mn = fsub double %i.ml, %i.mm
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bp, %bb.by, %bb.bx, %bb.bo, %bb.bz
  %.61545 = phi double [ %i.la, %bb.bo ], [ %i.la, %bb.bx ], [ %i.ml, %bb.by ], [ %i.mn, %bb.bz ], [ %i.la, %bb.bp ] ; 2 uses
  %.21514 = phi i32 [ %.01512, %bb.bo ], [ %i.mk, %bb.bx ], [ %i.mk, %bb.by ], [ %i.mk, %bb.bz ], [ %.11500, %bb.bp ]
  %.11511 = phi i32 [ %.21501, %bb.bo ], [ 2, %bb.bx ], [ 2, %bb.by ], [ 2, %bb.bz ], [ 0, %bb.bp ]
  %i.mo = fcmp oeq double %.61545, 0.000000e+00
  br i1 %i.mo, label %bb.cb, label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  %.not1595 = icmp sgt i32 %.41527, %.0.copyload.i1675
  br i1 %.not1595, label %.preheader1710, label %.preheader1859

.preheader1859:                                   ; preds = %bb.cc, %bb.cb
  br label %bb.cd

.preheader1710:                                   ; preds = %bb.cb, %.preheader1710
  %.61535 = phi i32 [ %i.mp, %.preheader1710 ], [ %.41527, %bb.cb ]
  %.41522 = phi i32 [ %i.mu, %.preheader1710 ], [ 0, %bb.cb ]
  %i.mp = add nsw i32 %.61535, -1                 ; 3 uses
  %i.mq = shl i32 %i.mp, 2
  %i.mr = add i32 %i.mq, %i.jb
  %i.ms = zext i32 %i.mr to i64
  %.val1611 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.mt = getelementptr inbounds nuw i8, ptr %.val1611, i64 %i.ms
  %.0.copyload.i1685 = load i32, ptr %i.mt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1685) #16, !srcloc !22
  %i.mu = or i32 %.0.copyload.i1685, %.41522      ; 2 uses
  %i.mv = icmp sgt i32 %i.mp, %.0.copyload.i1675
  br i1 %i.mv, label %.preheader1710, label %bb.cc

bb.cc:                                            ; preds = %.preheader1710
  %.not1596 = icmp eq i32 %i.mu, 0
  br i1 %.not1596, label %.preheader1859, label %.preheader1705

.preheader1705:                                   ; preds = %bb.cc, %.preheader1705
  %.51528 = phi i32 [ %i.mx, %.preheader1705 ], [ %.41527, %bb.cc ]
  %.01515 = phi i32 [ %i.mw, %.preheader1705 ], [ %i.gy, %bb.cc ]
  %i.mw = add i32 %.01515, -24                    ; 2 uses
  %i.mx = add i32 %.51528, -1                     ; 3 uses
  %i.my = shl i32 %i.mx, 2
  %i.mz = add i32 %i.my, %i.jb
  %i.na = zext i32 %i.mz to i64
  %.val1610 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.nb = getelementptr inbounds nuw i8, ptr %.val1610, i64 %i.na
  %.0.copyload.i1686 = load i32, ptr %i.nb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1686) #16, !srcloc !22
  %.not1597 = icmp eq i32 %.0.copyload.i1686, 0
  br i1 %.not1597, label %.preheader1705, label %.loopexit1706

bb.cd:                                            ; preds = %.preheader1859, %bb.cd
  %.71536 = phi i32 [ %i.nc, %bb.cd ], [ 1, %.preheader1859 ] ; 3 uses
  %i.nc = add i32 %.71536, 1
  %i.nd = sub i32 %.0.copyload.i1675, %.71536
  %i.ne = shl i32 %i.nd, 2
  %i.nf = add i32 %i.jb, %i.ne
  %i.ng = zext i32 %i.nf to i64
  %.val1609 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.nh = getelementptr inbounds nuw i8, ptr %.val1609, i64 %i.ng
  %.0.copyload.i1687 = load i32, ptr %i.nh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1687) #16, !srcloc !22
  %.not1603 = icmp eq i32 %.0.copyload.i1687, 0
  br i1 %.not1603, label %bb.cd, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ni = add i32 %.71536, %.41527                ; 2 uses
  br label %bb.cf

bb.cf:                                            ; preds = %.loopexit1708, %bb.ce
  %.6 = phi i32 [ %.41527, %bb.ce ], [ %i.nm, %.loopexit1708 ] ; 2 uses
  %i.nj = add i32 %.6, %i.gf                      ; 2 uses
  %i.nk = shl i32 %i.nj, 3
  %i.nl = add i32 %i.nk, %.pre-phi1795
  %i.nm = add i32 %.6, 1                          ; 4 uses
  %i.nn = add i32 %i.nm, %i.gb
  %i.no = shl i32 %i.nn, 2
  %i.np = add i32 %i.no, 241968
  %i.nq = zext i32 %i.np to i64
  %.val1608 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.nr = getelementptr inbounds nuw i8, ptr %.val1608, i64 %i.nq
  %.0.copyload.i1688 = load i32, ptr %i.nr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1688) #16, !srcloc !22
  %i.ns = sitofp i32 %.0.copyload.i1688 to double
  %i.nt = zext i32 %i.nl to i64
  %.val1648 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.nu = getelementptr inbounds nuw i8, ptr %.val1648, i64 %i.nt
  store double %i.ns, ptr %i.nu, align 1
  br i1 %i.jf, label %.preheader1707, label %.loopexit1708

.preheader1707:                                   ; preds = %bb.cf, %.preheader1707
  %indvars.iv1776 = phi i64 [ %indvars.iv.next1777, %.preheader1707 ], [ 0, %bb.cf ] ; 3 uses
  %.71546 = phi double [ %i.og, %.preheader1707 ], [ 0.000000e+00, %bb.cf ]
  %i.nv = trunc nuw i64 %indvars.iv1776 to i32    ; 2 uses
  %i.nw = shl i32 %i.nv, 3
  %i.nx = add i32 %i.nw, %i.er
  %i.ny = zext i32 %i.nx to i64
  %.val1633 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.nz = getelementptr inbounds nuw i8, ptr %.val1633, i64 %i.ny
  %.0.copyload.i1689 = load double, ptr %i.nz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i1689) #16, !srcloc !39
  %i.oa = sub i32 %i.nj, %i.nv
  %i.ob = shl i32 %i.oa, 3
  %i.oc = add i32 %i.ob, %.pre-phi1795
  %i.od = zext i32 %i.oc to i64
  %.val1632 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.oe = getelementptr inbounds nuw i8, ptr %.val1632, i64 %i.od
  %.0.copyload.i1690 = load double, ptr %i.oe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i1690) #16, !srcloc !39
  %i.of = fmul double %.0.copyload.i1689, %.0.copyload.i1690
  %i.og = fadd double %.71546, %i.of              ; 2 uses
  %indvars.iv.next1777 = add nuw nsw i64 %indvars.iv1776, 1
  %.not1604 = icmp eq i64 %indvars.iv1776, %.pre-phi
  br i1 %.not1604, label %.loopexit1708, label %.preheader1707

.loopexit1708:                                    ; preds = %.preheader1707, %bb.cf
  %.81547 = phi double [ 0.000000e+00, %bb.cf ], [ %i.og, %.preheader1707 ]
  %i.oh = shl i32 %i.nm, 3
  %i.oi = add i32 %i.oh, %i.fw
  %i.oj = zext i32 %i.oi to i64
  %.val1647 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.ok = getelementptr inbounds nuw i8, ptr %.val1647, i64 %i.oj
  store double %.81547, ptr %i.ok, align 1
  %i.ol = icmp slt i32 %i.nm, %i.ni
  br i1 %i.ol, label %bb.cf, label %.loopexit1709

bb.cg:                                            ; preds = %bb.ca
  %i.om = sub nsw i32 24, %i.gd
  %i.on = tail call double @w2c_hermes_scalbn(ptr noundef nonnull %0, double noundef %.61545, i32 noundef %i.om) #16 ; 7 uses
  %i.oo = fcmp ult double %i.on, f0x4170000000000000
  br i1 %i.oo, label %bb.cq, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.op = shl i32 %.41527, 2
  %i.oq = add i32 %i.jb, %i.op
  %i.or = fmul nnan double %i.on, f0x3E70000000000000 ; 3 uses
  %i.os = fcmp olt double %i.or, f0x41E0000000000000
  br i1 %i.os, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.ot = fcmp ule double %i.or, f0xC1E0000000200000
  br i1 %i.ot, label %bb.cj, label %bb.ck, !prof !28

bb.cj:                                            ; preds = %bb.ci
  tail call void @wasm_rt_trap(i32 noundef 2) #17
  unreachable

bb.ck:                                            ; preds = %bb.ci
  %i.ou = fptosi double %i.or to i32
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ch, %bb.ck
  %.3 = phi i32 [ %i.ou, %bb.ck ], [ -2147483648, %bb.ch ] ; 2 uses
  %i.ov = sitofp i32 %.3 to double
  %i.ow = fmul nnan double %i.ov, f0x4170000000000000
  %i.ox = fsub double %i.on, %i.ow                ; 4 uses
  %i.oy = tail call noundef double @llvm.fabs.f64(double %i.ox)
  %i.oz = fcmp olt double %i.oy, f0x41E0000000000000
  br i1 %i.oz, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  %i.pa = fcmp ule double %i.ox, f0xC1E0000000200000
  %i.pb = fcmp uge double %i.ox, f0x41E0000000000000
  %.not1594 = or i1 %i.pa, %i.pb
  br i1 %.not1594, label %bb.cn, label %bb.co, !prof !28

bb.cn:                                            ; preds = %bb.cm
  tail call void @wasm_rt_trap(i32 noundef 2) #17
  unreachable

bb.co:                                            ; preds = %bb.cm
  %i.pc = fptosi double %i.ox to i32
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cl, %bb.co
  %.4 = phi i32 [ %i.pc, %bb.co ], [ -2147483648, %bb.cl ]
  %i.pd = zext i32 %i.oq to i64
  %.val1619 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.pe = getelementptr inbounds nuw i8, ptr %.val1619, i64 %i.pd
  store i32 %.4, ptr %i.pe, align 1
  %i.pf = add i32 %.41527, 1
  br label %bb.cu

bb.cq:                                            ; preds = %bb.cg
  %i.pg = tail call noundef double @llvm.fabs.f64(double %i.on)
  %i.ph = fcmp olt double %i.pg, f0x41E0000000000000
  br i1 %i.ph, label %bb.cr, label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  %i.pi = fcmp ule double %i.on, f0xC1E0000000200000
  %i.pj = fcmp uge double %i.on, f0x41E0000000000000
  %.not1588 = or i1 %i.pi, %i.pj
  br i1 %.not1588, label %bb.cs, label %bb.ct, !prof !28

bb.cs:                                            ; preds = %bb.cr
  tail call void @wasm_rt_trap(i32 noundef 2) #17
  unreachable

bb.ct:                                            ; preds = %bb.cr
  %i.pk = fptosi double %i.on to i32
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cq, %bb.cp
  %.91538 = phi i32 [ %.3, %bb.cp ], [ %i.pk, %bb.ct ], [ -2147483648, %bb.cq ]
  %.7 = phi i32 [ %i.pf, %bb.cp ], [ %.41527, %bb.ct ], [ %.41527, %bb.cq ] ; 2 uses
  %.11516 = phi i32 [ %i.gd, %bb.cp ], [ %i.gy, %bb.ct ], [ %i.gy, %bb.cq ]
  %i.pl = shl i32 %.7, 2
  %i.pm = add i32 %i.jb, %i.pl
  %i.pn = zext i32 %i.pm to i64
  %.val1618 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.po = getelementptr inbounds nuw i8, ptr %.val1618, i64 %i.pn
  store i32 %.91538, ptr %i.po, align 1
  br label %.loopexit1706

.loopexit1706:                                    ; preds = %.preheader1705, %bb.cu
  %.8 = phi i32 [ %.7, %bb.cu ], [ %i.mx, %.preheader1705 ] ; 5 uses
  %.21517 = phi i32 [ %.11516, %bb.cu ], [ %i.mw, %.preheader1705 ]
  %i.pp = tail call double @w2c_hermes_scalbn(ptr noundef nonnull %0, double noundef 1.000000e+00, i32 noundef %.21517) #16
  %i.pq = icmp slt i32 %.8, 0
  br i1 %i.pq, label %.thread, label %.preheader1704

.preheader1704:                                   ; preds = %.loopexit1706
  %i.pr = zext nneg i32 %.8 to i64                ; 3 uses
  br label %bb.cv

bb.cv:                                            ; preds = %.preheader1704, %bb.cv
  %indvars.iv1779 = phi i64 [ %i.pr, %.preheader1704 ], [ %indvars.iv.next1780, %bb.cv ] ; 3 uses
  %.91548 = phi double [ %i.pp, %.preheader1704 ], [ %i.qd, %bb.cv ] ; 2 uses
  %i.ps = trunc nuw i64 %indvars.iv1779 to i32    ; 2 uses
  %i.pt = shl i32 %i.ps, 3
  %i.pu = add i32 %i.pt, %i.fw
  %i.pv = shl i32 %i.ps, 2
  %i.pw = add i32 %i.jb, %i.pv
  %i.px = zext i32 %i.pw to i64
  %.val = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.py = getelementptr inbounds nuw i8, ptr %.val, i64 %i.px
  %.0.copyload.i1691 = load i32, ptr %i.py, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1691) #16, !srcloc !22
  %i.pz = sitofp i32 %.0.copyload.i1691 to double
  %i.qa = fmul double %.91548, %i.pz
  %i.qb = zext i32 %i.pu to i64
  %.val1646 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.qc = getelementptr inbounds nuw i8, ptr %.val1646, i64 %i.qb
  store double %i.qa, ptr %i.qc, align 1
  %indvars.iv.next1780 = add nsw i64 %indvars.iv1779, -1
  %i.qd = fmul double %.91548, f0x3E70000000000000
  %.not1598 = icmp eq i64 %indvars.iv1779, 0
  br i1 %.not1598, label %.preheader1703, label %bb.cv

.preheader1703:                                   ; preds = %bb.cv
  %i.qe = add i32 %i.fv, -400                     ; 2 uses
  br label %bb.cw

bb.cw:                                            ; preds = %.preheader1703, %.loopexit1702
  %indvars.iv1785 = phi i64 [ %i.pr, %.preheader1703 ], [ %indvars.iv.next1786, %.loopexit1702 ] ; 4 uses
  %i.qf = trunc i64 %indvars.iv1785 to i32
  %i.qg = sub i32 %.8, %i.qf                      ; 2 uses
  %i.qh = tail call i32 @llvm.smin.i32(i32 %i.qg, i32 %.0.copyload.i1675) ; 2 uses
  %i.qi = icmp sgt i32 %i.qh, -1
  br i1 %i.qi, label %.preheader1701.preheader, label %.loopexit1702

.preheader1701.preheader:                         ; preds = %bb.cw
  %i.qj = zext nneg i32 %i.qh to i64
  %i.qk = trunc nuw nsw i64 %indvars.iv1785 to i32
  br label %.preheader1701

.preheader1701:                                   ; preds = %.preheader1701.preheader, %.preheader1701
  %indvars.iv1782 = phi i64 [ 0, %.preheader1701.preheader ], [ %indvars.iv.next1783, %.preheader1701 ] ; 4 uses
  %.101549 = phi double [ 0.000000e+00, %.preheader1701.preheader ], [ %i.qw, %.preheader1701 ]
  %i.ql = trunc nuw nsw i64 %indvars.iv1782 to i32
  %i.qm = shl i64 %indvars.iv1782, 3
  %i.qn = add i64 %i.qm, 244736
  %i.qo = and i64 %i.qn, 4294967288
  %.val1631 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.qp = getelementptr inbounds nuw i8, ptr %.val1631, i64 %i.qo
  %.0.copyload.i1692 = load double, ptr %i.qp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i1692) #16, !srcloc !39
  %i.qq = add i32 %i.ql, %i.qk
  %i.qr = shl i32 %i.qq, 3
  %i.qs = add i32 %i.qr, %i.fw
  %i.qt = zext i32 %i.qs to i64
  %.val1630 = load ptr, ptr %i.es, align 8, !tbaa !21
  %i.qu = getelementptr inbounds nuw i8, ptr %.val1630, i64 %i.qt
  %.0.copyload.i1693 = load double, ptr %i.qu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i1693) #16, !srcloc !39
  %i.qv = fmul double %.0.copyload.i1692, %.0.copyload.i1693
  %i.qw = fadd double %.101549, %i.qv             ; 2 uses
  %.not1599 = icmp eq i64 %indvars.iv1782, %i.qj
  %indvars.iv.next1783 = add nuw nsw i64 %indvars.iv1782, 1
  br i1 %.not1599, label %.loopexit1702, label %.preheader1701

.loopexit1702:                                    ; preds = %.preheader1701, %bb.cw
  %.111550 = phi double [ 0.000000e+00, %bb.cw ], [ %i.qw, %.preheader1701 ]
  %i.qx = shl i32 %i.qg, 3
end_hunk_1
