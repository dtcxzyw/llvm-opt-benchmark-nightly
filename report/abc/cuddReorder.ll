Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cuddReorder?download=true
inline.NumInlined: 24
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@cuddSwapInPlace:bb.a
  %i.fs = or disjoint i64 %i.fr, %i.fo
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %.split
  %.2492 = phi ptr [ %i.fb, %.split ], [ %i.gf, %bb.ab ] ; 2 uses
  %.0487 = load ptr, ptr %.2492, align 8, !tbaa !36 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.0487, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !134 ; 2 uses
  %i.fv = ptrtoint ptr %i.fu to i64               ; 2 uses
  %i.fw = and i64 %i.fv, -2                       ; 2 uses
  %.not598 = icmp eq i64 %i.fw, 0
  br i1 %.not598, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fx = inttoptr i64 %i.fw to ptr
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 32
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !62
  %i.ga = shl i64 %i.fz, 1
  %i.gb = and i64 %i.fv, 1
  %i.gc = or disjoint i64 %i.ga, %i.gb
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.gd = phi i64 [ %i.gc, %bb.aa ], [ 0, %bb.z ]
  %i.ge = icmp slt i64 %i.fs, %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %.0487, i64 8
  br i1 %i.ge, label %bb.z, label %.preheader628, !llvm.loop !118

.preheader628:                                    ; preds = %bb.ab, %.split.us, %bb.y
  %i.gg = phi ptr [ %i.fd, %.split.us ], [ %i.fd, %bb.y ], [ %i.fu, %bb.ab ]
  %.us-phi = phi ptr [ %.2492.us, %.split.us ], [ %.2492.us, %bb.y ], [ %.2492, %bb.ab ] ; 4 uses
  %.us-phi692 = phi ptr [ %.0487.us, %.split.us ], [ %.0487.us, %bb.y ], [ %.0487, %bb.ab ] ; 5 uses
  %i.gh = icmp eq ptr %i.dz, %i.gg
  br i1 %i.gh, label %.lr.ph695, label %.critedge2

.lr.ph695:                                        ; preds = %.preheader628
  br i1 %.not597, label %.lr.ph695.split.us.preheader, label %.lr.ph695.split

.lr.ph695.split.us.preheader:                     ; preds = %.lr.ph695
  %i.gi = getelementptr inbounds nuw i8, ptr %.us-phi692, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !134
  %i.gk = ptrtoint ptr %i.gj to i64               ; 2 uses
  %i.gl = and i64 %i.gk, -2                       ; 2 uses
  %.not599.us870 = icmp eq i64 %i.gl, 0
  br i1 %.not599.us870, label %.critedge2, label %.lr.ph873

.lr.ph695.split.us:                               ; preds = %bb.ac
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !134
  %i.go = ptrtoint ptr %i.gn to i64               ; 2 uses
  %i.gp = and i64 %i.go, -2                       ; 2 uses
  %.not599.us = icmp eq i64 %i.gp, 0
  br i1 %.not599.us, label %.critedge2, label %.lr.ph873, !llvm.loop !119

.lr.ph873:                                        ; preds = %.lr.ph695.split.us.preheader, %.lr.ph695.split.us
  %i.gq = phi i64 [ %i.gp, %.lr.ph695.split.us ], [ %i.gl, %.lr.ph695.split.us.preheader ]
  %i.gr = phi i64 [ %i.go, %.lr.ph695.split.us ], [ %i.gk, %.lr.ph695.split.us.preheader ]
  %.3493693.us872 = phi ptr [ %i.gz, %.lr.ph695.split.us ], [ %.us-phi, %.lr.ph695.split.us.preheader ]
  %.1488694.us871 = phi ptr [ %i.ha, %.lr.ph695.split.us ], [ %.us-phi692, %.lr.ph695.split.us.preheader ] ; 2 uses
  %i.gs = inttoptr i64 %i.gq to ptr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !62
  %i.gv = shl i64 %i.gu, 1
  %i.gw = and i64 %i.gr, 1
  %i.gx = or disjoint i64 %i.gv, %i.gw
  %i.gy = icmp sgt i64 %i.gx, 0
  br i1 %i.gy, label %bb.ac, label %.critedge2

bb.ac:                                            ; preds = %.lr.ph873
  %i.gz = getelementptr inbounds nuw i8, ptr %.1488694.us871, i64 8 ; 4 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !36 ; 5 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !134
  %i.hd = icmp eq ptr %i.dz, %i.hc
  br i1 %i.hd, label %.lr.ph695.split.us, label %..critedge2.loopexit_crit_edge, !llvm.loop !119

.lr.ph695.split:                                  ; preds = %.lr.ph695
  %i.he = and i64 %i.en, 1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !62
  %i.hh = shl i64 %i.hg, 1
  %i.hi = or disjoint i64 %i.hh, %i.he
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph695.split, %bb.ag
  %.1488694 = phi ptr [ %.us-phi692, %.lr.ph695.split ], [ %i.hw, %bb.ag ] ; 3 uses
  %.3493693 = phi ptr [ %.us-phi, %.lr.ph695.split ], [ %i.hv, %bb.ag ]
  %i.hj = getelementptr inbounds nuw i8, ptr %.1488694, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !134
  %i.hl = ptrtoint ptr %i.hk to i64               ; 2 uses
  %i.hm = and i64 %i.hl, -2                       ; 2 uses
  %.not599 = icmp eq i64 %i.hm, 0
  br i1 %.not599, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hn = inttoptr i64 %i.hm to ptr
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !62
  %i.hq = shl i64 %i.hp, 1
  %i.hr = and i64 %i.hl, 1
  %i.hs = or disjoint i64 %i.hq, %i.hr
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.ht = phi i64 [ %i.hs, %bb.ae ], [ 0, %bb.ad ]
  %i.hu = icmp slt i64 %i.hi, %i.ht
  br i1 %i.hu, label %bb.ag, label %.critedge2

bb.ag:                                            ; preds = %bb.af
  %i.hv = getelementptr inbounds nuw i8, ptr %.1488694, i64 8 ; 3 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !36 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !134
  %i.hz = icmp eq ptr %i.dz, %i.hy
  br i1 %i.hz, label %bb.ad, label %.critedge2, !llvm.loop !119

..critedge2.loopexit_crit_edge:                   ; preds = %bb.ac
  br label %.critedge2, !llvm.loop !119

.critedge2:                                       ; preds = %bb.af, %bb.ag, %.lr.ph873, %.lr.ph695.split.us, %.lr.ph695.split.us.preheader, %..critedge2.loopexit_crit_edge, %.preheader628
  %i.ia = phi ptr [ %.us-phi692, %.preheader628 ], [ %.us-phi692, %.lr.ph695.split.us.preheader ], [ %i.ha, %..critedge2.loopexit_crit_edge ], [ %i.ha, %.lr.ph695.split.us ], [ %.1488694.us871, %.lr.ph873 ], [ %i.hw, %bb.ag ], [ %.1488694, %bb.af ]
  %.3493.lcssa = phi ptr [ %.us-phi, %.preheader628 ], [ %.us-phi, %.lr.ph695.split.us.preheader ], [ %i.gz, %..critedge2.loopexit_crit_edge ], [ %i.gz, %.lr.ph695.split.us ], [ %.3493693.us872, %.lr.ph873 ], [ %i.hv, %bb.ag ], [ %.3493693, %bb.af ]
  store ptr %i.ia, ptr %i.dw, align 8, !tbaa !61
  store ptr %.2518702, ptr %.3493.lcssa, align 8, !tbaa !36
  %.not595 = icmp eq ptr %i.dx, null
  br i1 %.not595, label %.loopexit, label %.lr.ph703, !llvm.loop !120

.loopexit:                                        ; preds = %._crit_edge, %.critedge2, %.preheader629
  %.1549 = phi ptr [ %.0548, %.preheader629 ], [ %.0548, %.critedge2 ], [ %i.k, %._crit_edge ] ; 4 uses
  %.1546 = phi i32 [ %.0545, %.preheader629 ], [ %.0545, %.critedge2 ], [ %i.o, %._crit_edge ] ; 2 uses
  %.1543 = phi i32 [ %.0542, %.preheader629 ], [ %.0542, %.critedge2 ], [ %i.q, %._crit_edge ] ; 4 uses
  %.6536 = phi i32 [ %.3533.lcssa, %.preheader629 ], [ %.3533.lcssa, %.critedge2 ], [ %.1531.lcssa, %._crit_edge ] ; 2 uses
  %.6500 = phi ptr [ %.3497.lcssa, %.preheader629 ], [ %.3497.lcssa, %.critedge2 ], [ %.1495.lcssa, %._crit_edge ] ; 2 uses
  %.not603718 = icmp eq ptr %.6500, null
  br i1 %.not603718, label %.preheader, label %.lr.ph723

.preheader:                                       ; preds = %.critedge8, %bb.e, %.loopexit
  %.1543818 = phi i32 [ %.1543, %.loopexit ], [ %i.q, %bb.e ], [ %.1543, %.critedge8 ]
  %.1546817 = phi i32 [ %.1546, %.loopexit ], [ %i.o, %bb.e ], [ %.1546, %.critedge8 ]
  %.1549816 = phi ptr [ %.1549, %.loopexit ], [ %i.k, %bb.e ], [ %.1549, %.critedge8 ]
  %.7537.lcssa = phi i32 [ %.6536, %.loopexit ], [ 0, %bb.e ], [ %.10540, %.critedge8 ]
  %.0525.lcssa = phi i32 [ %i.x, %.loopexit ], [ %i.x, %bb.e ], [ %i.sg, %.critedge8 ] ; 2 uses
  %i.ib = icmp sgt i32 %i.z, 0
  br i1 %i.ib, label %.lr.ph737, label %._crit_edge738

.lr.ph737:                                        ; preds = %.preheader
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %wide.trip.count767 = zext nneg i32 %i.z to i64
  br label %bb.cp

.lr.ph723:                                        ; preds = %.loopexit, %.critedge8
  %.3519721 = phi ptr [ %i.ie, %.critedge8 ], [ %.6500, %.loopexit ] ; 4 uses
  %.0525720 = phi i32 [ %i.sg, %.critedge8 ], [ %i.x, %.loopexit ]
  %.7537719 = phi i32 [ %.10540, %.critedge8 ], [ %.6536, %.loopexit ] ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.3519721, i64 8 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !61 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.3519721, i64 16 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !134 ; 6 uses
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !135
  %i.ii = icmp eq i32 %i.ih, %i.t
  br i1 %i.ii, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph723
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !134
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !134
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph723, %bb.ah
  %.0510 = phi ptr [ %i.ik, %bb.ah ], [ %i.ig, %.lr.ph723 ] ; 8 uses
  %.0508 = phi ptr [ %i.im, %bb.ah ], [ %i.ig, %.lr.ph723 ] ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.3519721, i64 24 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !134
  %i.ip = ptrtoint ptr %i.io to i64               ; 2 uses
  %i.iq = and i64 %i.ip, -2
  %i.ir = inttoptr i64 %i.iq to ptr               ; 6 uses
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !135
  %i.it = icmp eq i32 %i.is, %i.t
  br i1 %i.it, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !134
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !134
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.0514 = phi ptr [ %i.iv, %bb.aj ], [ %i.ir, %bb.ai ] ; 2 uses
  %.0511 = phi ptr [ %i.ix, %bb.aj ], [ %i.ir, %bb.ai ] ; 2 uses
  %i.iy = and i64 %i.ip, 1
  %.not605 = icmp eq i64 %i.iy, 0                 ; 2 uses
  %i.iz = ptrtoint ptr %.0514 to i64
  %i.ja = xor i64 %i.iz, 1
  %i.jb = inttoptr i64 %i.ja to ptr
  %i.jc = ptrtoint ptr %.0511 to i64
  %i.jd = xor i64 %i.jc, 1
  %i.je = inttoptr i64 %i.jd to ptr
  %.1515 = select i1 %.not605, ptr %.0514, ptr %i.jb ; 4 uses
  %.1512 = select i1 %.not605, ptr %.0511, ptr %i.je ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ig, i64 4 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !37
  %i.jh = add i32 %i.jg, -1
  store i32 %i.jh, ptr %i.jf, align 4, !tbaa !37
  %i.ji = icmp eq ptr %.0510, %.1515
  br i1 %i.ji, label %bb.bd, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jj = ptrtoint ptr %.0510 to i64              ; 3 uses
  %i.jk = and i64 %i.jj, -2                       ; 2 uses
  %i.jl = inttoptr i64 %i.jk to ptr               ; 2 uses
  %.not606 = icmp eq i64 %i.jk, 0                 ; 2 uses
  br i1 %.not606, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !62
  %i.jo = shl i64 %i.jn, 1
  %i.jp = and i64 %i.jj, 1
  %i.jq = or disjoint i64 %i.jo, %i.jp
  %i.jr = trunc i64 %i.jq to i32
  %i.js = mul i32 %i.jr, 12582917
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %i.jt = phi i32 [ %i.js, %bb.am ], [ 0, %bb.al ]
  %i.ju = ptrtoint ptr %.1515 to i64              ; 3 uses
  %i.jv = and i64 %i.ju, -2                       ; 2 uses
  %i.jw = inttoptr i64 %i.jv to ptr               ; 3 uses
  %.not607 = icmp eq i64 %i.jv, 0                 ; 2 uses
  br i1 %.not607, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 32
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !62
  %i.jz = shl i64 %i.jy, 1
  %i.ka = and i64 %i.ju, 1
  %i.kb = or disjoint i64 %i.jz, %i.ka
  %i.kc = trunc i64 %i.kb to i32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.kd = phi i32 [ %i.kc, %bb.ao ], [ 0, %bb.an ]
  %i.ke = add i32 %i.kd, %i.jt
  %i.kf = mul i32 %i.ke, 4256249
  %i.kg = lshr i32 %i.kf, %.1543
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds [8 x i8], ptr %.1549, i64 %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %i.kk = and i64 %i.jj, 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.au, %bb.ap
  %.4 = phi ptr [ %i.ki, %bb.ap ], [ %i.lb, %bb.au ] ; 3 uses
  %.0505 = load ptr, ptr %.4, align 8, !tbaa !36  ; 3 uses
  br i1 %.not606, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kl = load i64, ptr %i.kj, align 8, !tbaa !62
  %i.km = shl i64 %i.kl, 1
  %i.kn = or disjoint i64 %i.km, %i.kk
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.ko = phi i64 [ %i.kn, %bb.ar ], [ 0, %bb.aq ]
  %i.kp = getelementptr inbounds nuw i8, ptr %.0505, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !134 ; 2 uses
  %i.kr = ptrtoint ptr %i.kq to i64               ; 2 uses
  %i.ks = and i64 %i.kr, -2                       ; 2 uses
  %.not608 = icmp eq i64 %i.ks, 0
  br i1 %.not608, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kt = inttoptr i64 %i.ks to ptr
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !62
  %i.kw = shl i64 %i.kv, 1
  %i.kx = and i64 %i.kr, 1
  %i.ky = or disjoint i64 %i.kw, %i.kx
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.kz = phi i64 [ %i.ky, %bb.at ], [ 0, %bb.as ]
  %i.la = icmp slt i64 %i.ko, %i.kz
  %i.lb = getelementptr inbounds nuw i8, ptr %.0505, i64 8
  br i1 %i.la, label %bb.aq, label %.preheader627, !llvm.loop !121

.preheader627:                                    ; preds = %bb.au
  %i.lc = icmp eq ptr %.0510, %i.kq
  br i1 %i.lc, label %.lr.ph706, label %.critedge4

.lr.ph706:                                        ; preds = %.preheader627
  %i.ld = getelementptr inbounds nuw i8, ptr %i.jw, i64 32
  %i.le = and i64 %i.ju, 1
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph706, %bb.ba
  %.5705 = phi ptr [ %.4, %.lr.ph706 ], [ %i.lv, %bb.ba ]
  %.1506704 = phi ptr [ %.0505, %.lr.ph706 ], [ %i.lw, %bb.ba ] ; 4 uses
  br i1 %.not607, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lf = load i64, ptr %i.ld, align 8, !tbaa !62
  %i.lg = shl i64 %i.lf, 1
  %i.lh = or disjoint i64 %i.lg, %i.le
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.li = phi i64 [ %i.lh, %bb.aw ], [ 0, %bb.av ]
  %i.lj = getelementptr inbounds nuw i8, ptr %.1506704, i64 24
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !134 ; 2 uses
  %i.ll = ptrtoint ptr %i.lk to i64               ; 2 uses
  %i.lm = and i64 %i.ll, -2                       ; 2 uses
  %.not609 = icmp eq i64 %i.lm, 0
  br i1 %.not609, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ln = inttoptr i64 %i.lm to ptr
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 32
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !62
  %i.lq = shl i64 %i.lp, 1
  %i.lr = and i64 %i.ll, 1
  %i.ls = or disjoint i64 %i.lq, %i.lr
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.lt = phi i64 [ %i.ls, %bb.ay ], [ 0, %bb.ax ]
  %i.lu = icmp slt i64 %i.li, %i.lt
  br i1 %i.lu, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.lv = getelementptr inbounds nuw i8, ptr %.1506704, i64 8 ; 3 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !36 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !134
  %i.lz = icmp eq ptr %.0510, %i.ly
  br i1 %i.lz, label %bb.av, label %.critedge4, !llvm.loop !122

bb.bb:                                            ; preds = %bb.az
  %i.ma = icmp eq ptr %i.lk, %.1515
  br i1 %i.ma, label %bb.bd, label %.critedge4

.critedge4:                                       ; preds = %bb.ba, %.preheader627, %bb.bb
  %.5634 = phi ptr [ %.5705, %bb.bb ], [ %.4, %.preheader627 ], [ %i.lv, %bb.ba ] ; 2 uses
  %i.mb = tail call ptr @cuddDynamicAllocNode(ptr noundef %0) ; 8 uses
  %i.mc = icmp eq ptr %i.mb, null
  br i1 %i.mc, label %bb.cu, label %bb.bc

bb.bc:                                            ; preds = %.critedge4
  store i32 %i.g, ptr %i.mb, align 8, !tbaa !135
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  store i32 1, ptr %i.md, align 4, !tbaa !37
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  store ptr %.0510, ptr %i.me, align 8, !tbaa !134
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  store ptr %.1515, ptr %i.mf, align 8, !tbaa !134
  %i.mg = add nsw i32 %.7537719, 1
  %i.mh = load ptr, ptr %.5634, align 8, !tbaa !36
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  store ptr %i.mh, ptr %i.mi, align 8, !tbaa !61
  store ptr %i.mb, ptr %.5634, align 8, !tbaa !36
  %i.mj = getelementptr inbounds nuw i8, ptr %.0510, i64 4 ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !37
  %i.ml = add i32 %i.mk, 1
  store i32 %i.ml, ptr %i.mj, align 4, !tbaa !37
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.ak, %bb.bc
  %.1506704.lcssa.sink = phi ptr [ %.0510, %bb.ak ], [ %i.jw, %bb.bc ], [ %.1506704, %bb.bb ]
  %.8538 = phi i32 [ %.7537719, %bb.ak ], [ %i.mg, %bb.bc ], [ %.7537719, %bb.bb ] ; 3 uses
  %.2507 = phi ptr [ %.0510, %bb.ak ], [ %i.mb, %bb.bc ], [ %.1506704, %bb.bb ] ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.1506704.lcssa.sink, i64 4 ; 2 uses
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !37
  %i.mo = add i32 %i.mn, 1
  store i32 %i.mo, ptr %i.mm, align 4, !tbaa !37
  store ptr %.2507, ptr %i.if, align 8, !tbaa !134
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ir, i64 4 ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !37
  %i.mr = add i32 %i.mq, -1
  store i32 %i.mr, ptr %i.mp, align 4, !tbaa !37
  %i.ms = icmp eq ptr %.0508, %.1512
  %3 = ptrtoint ptr %.0508 to i64                 ; 3 uses
  br i1 %i.ms, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.mt = and i64 %3, -2
  %i.mu = inttoptr i64 %i.mt to ptr
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 4 ; 2 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !37
  %i.mx = add i32 %i.mw, 1
  store i32 %i.mx, ptr %i.mv, align 4, !tbaa !37
  br label %bb.bz

bb.bf:                                            ; preds = %bb.bd
  %i.my = and i64 %3, 1
  %.not610 = icmp eq i64 %i.my, 0                 ; 3 uses
  %i.mz = and i64 %3, -2
  %i.na = inttoptr i64 %i.mz to ptr
  %i.nb = ptrtoint ptr %.1512 to i64
  %i.nc = xor i64 %i.nb, 1
  %i.nd = inttoptr i64 %i.nc to ptr
  %.2513 = select i1 %.not610, ptr %.1512, ptr %i.nd ; 3 uses
  %.1509 = select i1 %.not610, ptr %.0508, ptr %i.na ; 5 uses
  %i.ne = ptrtoint ptr %.1509 to i64              ; 3 uses
  %i.nf = and i64 %i.ne, -2                       ; 2 uses
  %i.ng = inttoptr i64 %i.nf to ptr               ; 2 uses
  %.not611 = icmp eq i64 %i.nf, 0                 ; 2 uses
  br i1 %.not611, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 32
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !62
  %i.nj = shl i64 %i.ni, 1
  %i.nk = and i64 %i.ne, 1
  %i.nl = or disjoint i64 %i.nj, %i.nk
  %i.nm = trunc i64 %i.nl to i32
  %i.nn = mul i32 %i.nm, 12582917
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %i.no = phi i32 [ %i.nn, %bb.bg ], [ 0, %bb.bf ]
  %i.np = ptrtoint ptr %.2513 to i64              ; 3 uses
  %i.nq = and i64 %i.np, -2                       ; 2 uses
  %i.nr = inttoptr i64 %i.nq to ptr               ; 3 uses
  %.not612 = icmp eq i64 %i.nq, 0                 ; 2 uses
  br i1 %.not612, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 32
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !62
  %i.nu = shl i64 %i.nt, 1
  %i.nv = and i64 %i.np, 1
  %i.nw = or disjoint i64 %i.nu, %i.nv
  %i.nx = trunc i64 %i.nw to i32
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %i.ny = phi i32 [ %i.nx, %bb.bi ], [ 0, %bb.bh ]
  %i.nz = add i32 %i.ny, %i.no
  %i.oa = mul i32 %i.nz, 4256249
  %i.ob = lshr i32 %i.oa, %.1543
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds [8 x i8], ptr %.1549, i64 %i.oc
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ng, i64 32
  %i.of = and i64 %i.ne, 1
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bo, %bb.bj
  %.6 = phi ptr [ %i.od, %bb.bj ], [ %i.ow, %bb.bo ] ; 3 uses
  %.0501 = load ptr, ptr %.6, align 8, !tbaa !36  ; 3 uses
  br i1 %.not611, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.og = load i64, ptr %i.oe, align 8, !tbaa !62
  %i.oh = shl i64 %i.og, 1
  %i.oi = or disjoint i64 %i.oh, %i.of
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %i.oj = phi i64 [ %i.oi, %bb.bl ], [ 0, %bb.bk ]
  %i.ok = getelementptr inbounds nuw i8, ptr %.0501, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !134 ; 2 uses
  %i.om = ptrtoint ptr %i.ol to i64               ; 2 uses
  %i.on = and i64 %i.om, -2                       ; 2 uses
  %.not613 = icmp eq i64 %i.on, 0
  br i1 %.not613, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.oo = inttoptr i64 %i.on to ptr
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 32
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !62
  %i.or = shl i64 %i.oq, 1
  %i.os = and i64 %i.om, 1
  %i.ot = or disjoint i64 %i.or, %i.os
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %i.ou = phi i64 [ %i.ot, %bb.bn ], [ 0, %bb.bm ]
  %i.ov = icmp slt i64 %i.oj, %i.ou
  %i.ow = getelementptr inbounds nuw i8, ptr %.0501, i64 8
  br i1 %i.ov, label %bb.bk, label %.preheader626, !llvm.loop !123

.preheader626:                                    ; preds = %bb.bo
  %i.ox = icmp eq ptr %.1509, %i.ol
  br i1 %i.ox, label %.lr.ph710, label %.critedge6

.lr.ph710:                                        ; preds = %.preheader626
  %i.oy = getelementptr inbounds nuw i8, ptr %i.nr, i64 32
  %i.oz = and i64 %i.np, 1
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph710, %bb.bu
  %.7709 = phi ptr [ %.6, %.lr.ph710 ], [ %i.pq, %bb.bu ]
  %.1502708 = phi ptr [ %.0501, %.lr.ph710 ], [ %i.pr, %bb.bu ] ; 4 uses
  br i1 %.not612, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.pa = load i64, ptr %i.oy, align 8, !tbaa !62
  %i.pb = shl i64 %i.pa, 1
  %i.pc = or disjoint i64 %i.pb, %i.oz
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %i.pd = phi i64 [ %i.pc, %bb.bq ], [ 0, %bb.bp ]
  %i.pe = getelementptr inbounds nuw i8, ptr %.1502708, i64 24
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !134 ; 2 uses
  %i.pg = ptrtoint ptr %i.pf to i64               ; 2 uses
  %i.ph = and i64 %i.pg, -2                       ; 2 uses
  %.not614 = icmp eq i64 %i.ph, 0
  br i1 %.not614, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.pi = inttoptr i64 %i.ph to ptr
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 32
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !62
  %i.pl = shl i64 %i.pk, 1
  %i.pm = and i64 %i.pg, 1
  %i.pn = or disjoint i64 %i.pl, %i.pm
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %i.po = phi i64 [ %i.pn, %bb.bs ], [ 0, %bb.br ]
  %i.pp = icmp slt i64 %i.pd, %i.po
  br i1 %i.pp, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.pq = getelementptr inbounds nuw i8, ptr %.1502708, i64 8 ; 3 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !36 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !134
  %i.pu = icmp eq ptr %.1509, %i.pt
  br i1 %i.pu, label %bb.bp, label %.critedge6, !llvm.loop !124

bb.bv:                                            ; preds = %bb.bt
  %i.pv = icmp eq ptr %i.pf, %.2513
  br i1 %i.pv, label %bb.bx, label %.critedge6

.critedge6:                                       ; preds = %bb.bu, %.preheader626, %bb.bv
  %.7637 = phi ptr [ %.7709, %bb.bv ], [ %.6, %.preheader626 ], [ %i.pq, %bb.bu ] ; 2 uses
  %i.pw = tail call ptr @cuddDynamicAllocNode(ptr noundef %0) ; 8 uses
  %i.px = icmp eq ptr %i.pw, null
  br i1 %i.px, label %bb.cu, label %bb.bw

bb.bw:                                            ; preds = %.critedge6
  store i32 %i.g, ptr %i.pw, align 8, !tbaa !135
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 4
  store i32 1, ptr %i.py, align 4, !tbaa !37
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  store ptr %.1509, ptr %i.pz, align 8, !tbaa !134
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pw, i64 24
  store ptr %.2513, ptr %i.qa, align 8, !tbaa !134
  %i.qb = add nsw i32 %.8538, 1
  %i.qc = load ptr, ptr %.7637, align 8, !tbaa !36
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  store ptr %i.qc, ptr %i.qd, align 8, !tbaa !61
  store ptr %i.pw, ptr %.7637, align 8, !tbaa !36
  %i.qe = getelementptr inbounds nuw i8, ptr %.1509, i64 4 ; 2 uses
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !37
  %i.qg = add i32 %i.qf, 1
  store i32 %i.qg, ptr %i.qe, align 4, !tbaa !37
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  %.sink846 = phi ptr [ %i.nr, %bb.bw ], [ %.1502708, %bb.bv ]
  %.9539 = phi i32 [ %i.qb, %bb.bw ], [ %.8538, %bb.bv ] ; 2 uses
  %.2503 = phi ptr [ %i.pw, %bb.bw ], [ %.1502708, %bb.bv ] ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.sink846, i64 4 ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !37
  %i.qj = add i32 %i.qi, 1
  store i32 %i.qj, ptr %i.qh, align 4, !tbaa !37
  br i1 %.not610, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.qk = ptrtoint ptr %.2503 to i64
  %i.ql = xor i64 %i.qk, 1
  %i.qm = inttoptr i64 %i.ql to ptr
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.by, %bb.be
  %.10540 = phi i32 [ %.8538, %bb.be ], [ %.9539, %bb.by ], [ %.9539, %bb.bx ] ; 2 uses
  %.3504 = phi ptr [ %.1512, %bb.be ], [ %i.qm, %bb.by ], [ %.2503, %bb.bx ] ; 2 uses
  store ptr %.3504, ptr %i.in, align 8, !tbaa !134
  %i.qn = ptrtoint ptr %.2507 to i64              ; 3 uses
  %i.qo = and i64 %i.qn, -2                       ; 2 uses
  %i.qp = inttoptr i64 %i.qo to ptr               ; 2 uses
  %.not615 = icmp eq i64 %i.qo, 0                 ; 2 uses
  br i1 %.not615, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 32
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !62
  %i.qs = shl i64 %i.qr, 1
  %i.qt = and i64 %i.qn, 1
  %i.qu = or disjoint i64 %i.qs, %i.qt
  %i.qv = trunc i64 %i.qu to i32
  %i.qw = mul i32 %i.qv, 12582917
  br label %bb.cb
end_hunk_0
