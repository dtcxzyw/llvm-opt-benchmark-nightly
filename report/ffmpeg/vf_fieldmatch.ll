Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_fieldmatch?download=true
inline.NumInlined: 22
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@compare_fields:bb.a
  br i1 %.not360.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.et = zext nneg i32 %i.eo to i64
  %i.eu = add i64 %.2339393.us, %i.et
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.3340.us = phi i64 [ %i.eu, %bb.n ], [ %.2339393.us, %bb.m ] ; 3 uses
  %i.ev = icmp samesign ugt i32 %i.eo, 42
  br i1 %i.ev, label %bb.p, label %.thread387.us

bb.p:                                             ; preds = %bb.o
  %i.ew = and i8 %i.dr, 2
  %.not361.us = icmp eq i8 %i.ew, 0
  br i1 %.not361.us, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %gep479 = getelementptr i8, ptr %invariant.gep478, i64 %indvars.iv
  %i.ex = load i8, ptr %gep479, align 1, !tbaa !64
  %i.ey = and i8 %i.ex, 2
  %.not362.us = icmp eq i8 %i.ey, 0
  br i1 %.not362.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ez = zext nneg i32 %i.eo to i64
  %i.fa = add i64 %.2332394.us, %i.ez
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.3333.us = phi i64 [ %i.fa, %bb.r ], [ %.2332394.us, %bb.q ] ; 2 uses
  %i.fb = and i8 %i.dr, 4
  %.not363.us = icmp eq i8 %i.fb, 0
  br i1 %.not363.us, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %gep481 = getelementptr i8, ptr %invariant.gep480, i64 %indvars.iv
  %i.fc = load i8, ptr %gep481, align 1, !tbaa !64
  %i.fd = and i8 %i.fc, 4
  %.not364.us = icmp eq i8 %i.fd, 0
  br i1 %.not364.us, label %.thread387.us, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fe = zext nneg i32 %i.eo to i64
  %i.ff = add i64 %.2326395.us, %i.fe
  br label %.thread387.us

.thread387.us:                                    ; preds = %bb.u, %bb.t, %bb.o, %bb.k
  %.3340389.us = phi i64 [ %.3340.us, %bb.u ], [ %.3340.us, %bb.t ], [ %.3340.us, %bb.o ], [ %.2339393.us, %bb.k ] ; 4 uses
  %.4334.us = phi i64 [ %.3333.us, %bb.u ], [ %.3333.us, %bb.t ], [ %.2332394.us, %bb.o ], [ %.2332394.us, %bb.k ] ; 4 uses
  %.3327.us = phi i64 [ %i.ff, %bb.u ], [ %.2326395.us, %bb.t ], [ %.2326395.us, %bb.o ], [ %.2326395.us, %bb.k ] ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0303418.us, i64 %indvars.iv
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !64
  %i.fi = zext i8 %i.fh to i32
  %i.fj = getelementptr inbounds nuw i8, ptr %.0419.us, i64 %indvars.iv
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !64
  %i.fl = zext i8 %i.fk to i32
  %i.fm = add nuw nsw i32 %i.fl, %i.fi
  %i.fn = mul nuw nsw i32 %i.fm, 3
  %i.fo = sub nsw i32 %i.fn, %i.ee
  %i.fp = tail call i32 @llvm.abs.i32(i32 %i.fo, i1 true) ; 5 uses
  %i.fq = icmp samesign ugt i32 %i.fp, 23
  br i1 %i.fq, label %bb.v, label %.thread390.us

bb.v:                                             ; preds = %.thread387.us
  %i.fr = and i8 %i.dr, 1
  %.not365.us = icmp eq i8 %i.fr, 0
  br i1 %.not365.us, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %gep483 = getelementptr i8, ptr %invariant.gep482, i64 %indvars.iv
  %i.fs = load i8, ptr %gep483, align 1, !tbaa !64
  %i.ft = and i8 %i.fs, 1
  %.not366.us = icmp eq i8 %i.ft, 0
  br i1 %.not366.us, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fu = zext nneg i32 %i.fp to i64
  %i.fv = add i64 %.2320396.us, %i.fu
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.3321.us = phi i64 [ %i.fv, %bb.x ], [ %.2320396.us, %bb.w ] ; 3 uses
  %i.fw = icmp samesign ugt i32 %i.fp, 42
  br i1 %i.fw, label %bb.z, label %.thread390.us

bb.z:                                             ; preds = %bb.y
  %i.fx = and i8 %i.dr, 2
  %.not367.us = icmp eq i8 %i.fx, 0
  br i1 %.not367.us, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %gep485 = getelementptr i8, ptr %invariant.gep484, i64 %indvars.iv
  %i.fy = load i8, ptr %gep485, align 1, !tbaa !64
  %i.fz = and i8 %i.fy, 2
  %.not368.us = icmp eq i8 %i.fz, 0
  br i1 %.not368.us, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ga = zext nneg i32 %i.fp to i64
  %i.gb = add i64 %.2315397.us, %i.ga
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.3316.us = phi i64 [ %i.gb, %bb.ab ], [ %.2315397.us, %bb.aa ] ; 2 uses
  %i.gc = and i8 %i.dr, 4
  %.not369.us = icmp eq i8 %i.gc, 0
  br i1 %.not369.us, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %gep487 = getelementptr i8, ptr %invariant.gep486, i64 %indvars.iv
  %i.gd = load i8, ptr %gep487, align 1, !tbaa !64
  %i.ge = and i8 %i.gd, 4
  %.not370.us = icmp eq i8 %i.ge, 0
  br i1 %.not370.us, label %.thread390.us, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.gf = zext nneg i32 %i.fp to i64
  %i.gg = add i64 %.2398.us, %i.gf
  br label %.thread390.us

.thread390.us:                                    ; preds = %bb.ae, %bb.ad, %bb.y, %.thread387.us, %bb.j
  %.4341.us = phi i64 [ %.3340389.us, %bb.ae ], [ %.3340389.us, %bb.ad ], [ %.3340389.us, %bb.y ], [ %.2339393.us, %bb.j ], [ %.3340389.us, %.thread387.us ] ; 2 uses
  %.5335.us = phi i64 [ %.4334.us, %bb.ae ], [ %.4334.us, %bb.ad ], [ %.4334.us, %bb.y ], [ %.2332394.us, %bb.j ], [ %.4334.us, %.thread387.us ] ; 2 uses
  %.4328.us = phi i64 [ %.3327.us, %bb.ae ], [ %.3327.us, %bb.ad ], [ %.3327.us, %bb.y ], [ %.2326395.us, %bb.j ], [ %.3327.us, %.thread387.us ] ; 2 uses
  %.4322.us = phi i64 [ %.3321.us, %bb.ae ], [ %.3321.us, %bb.ad ], [ %.3321.us, %bb.y ], [ %.2320396.us, %bb.j ], [ %.2320396.us, %.thread387.us ] ; 2 uses
  %.4317.us = phi i64 [ %.3316.us, %bb.ae ], [ %.3316.us, %bb.ad ], [ %.2315397.us, %bb.y ], [ %.2315397.us, %bb.j ], [ %.2315397.us, %.thread387.us ] ; 2 uses
  %.3.us = phi i64 [ %i.gg, %bb.ae ], [ %.2398.us, %bb.ad ], [ %.2398.us, %bb.y ], [ %.2398.us, %bb.j ], [ %.2398.us, %.thread387.us ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gh = icmp slt i64 %indvars.iv.next, %i.dm
  br i1 %i.gh, label %.preheader.us, label %..loopexit_crit_edge.us, !llvm.loop !132

..loopexit_crit_edge.us:                          ; preds = %.thread390.us, %.lr.ph421.split.us
  %.5342.us = phi i64 [ %.1338406.us, %.lr.ph421.split.us ], [ %.4341.us, %.thread390.us ] ; 2 uses
  %.6336.us = phi i64 [ %.1331407.us, %.lr.ph421.split.us ], [ %.5335.us, %.thread390.us ] ; 2 uses
  %.5329.us = phi i64 [ %.1325408.us, %.lr.ph421.split.us ], [ %.4328.us, %.thread390.us ] ; 2 uses
  %.5323.us = phi i64 [ %.1319409.us, %.lr.ph421.split.us ], [ %.4322.us, %.thread390.us ] ; 2 uses
  %.5.us = phi i64 [ %.1314410.us, %.lr.ph421.split.us ], [ %.4317.us, %.thread390.us ] ; 2 uses
  %.4.us = phi i64 [ %.1411.us, %.lr.ph421.split.us ], [ %.3.us, %.thread390.us ] ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %.0305416.us, i64 %i.cn
  %i.gj = getelementptr inbounds i8, ptr %.0304417.us, i64 %i.cn
  %i.gk = getelementptr inbounds i8, ptr %.0308414.us, i64 %i.bx
  %i.gl = getelementptr inbounds i8, ptr %.0303418.us, i64 %i.cz
  %i.gm = getelementptr inbounds i8, ptr %.0419.us, i64 %i.cz
  %i.gn = getelementptr inbounds i8, ptr %.0309413.us, i64 %i.dk
  %i.go = add nuw nsw i32 %.0310412.us, 2         ; 2 uses
  %i.gp = icmp slt i32 %i.go, %i.dg
  br i1 %i.gp, label %.lr.ph421.split.us, label %._crit_edge, !llvm.loop !133

._crit_edge:                                      ; preds = %..loopexit_crit_edge.us, %.lr.ph421, %bb.i
  %.1338.lcssa = phi i64 [ %.0337461, %bb.i ], [ %.0337461, %.lr.ph421 ], [ %.5342.us, %..loopexit_crit_edge.us ] ; 2 uses
  %.1331.lcssa = phi i64 [ %.0330462, %bb.i ], [ %.0330462, %.lr.ph421 ], [ %.6336.us, %..loopexit_crit_edge.us ] ; 5 uses
  %.1325.lcssa = phi i64 [ %.0324463, %bb.i ], [ %.0324463, %.lr.ph421 ], [ %.5329.us, %..loopexit_crit_edge.us ] ; 5 uses
  %.1319.lcssa = phi i64 [ %.0318464, %bb.i ], [ %.0318464, %.lr.ph421 ], [ %.5323.us, %..loopexit_crit_edge.us ] ; 2 uses
  %.1314.lcssa = phi i64 [ %.0313465, %bb.i ], [ %.0313465, %.lr.ph421 ], [ %.5.us, %..loopexit_crit_edge.us ] ; 5 uses
  %.1.lcssa = phi i64 [ %.0312466, %bb.i ], [ %.0312466, %.lr.ph421 ], [ %.4.us, %..loopexit_crit_edge.us ] ; 5 uses
  %indvars.iv.next471 = add nuw nsw i64 %indvars.iv470, 1
  %i.gq = load i32, ptr %i.c, align 8, !tbaa !137
  %.not = icmp ne i32 %i.gq, 0
  %i.gr = icmp samesign ult i64 %indvars.iv470, 2
  %i.gs = select i1 %.not, i1 %i.gr, i1 false
  br i1 %i.gs, label %bb.b, label %bb.af, !llvm.loop !134

bb.af:                                            ; preds = %._crit_edge
  %i.gt = icmp ult i64 %.1331.lcssa, 500
  %i.gu = icmp ult i64 %.1314.lcssa, 500
  %or.cond5 = select i1 %i.gt, i1 %i.gu, i1 false
  br i1 %or.cond5, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.gv = icmp ugt i64 %.1325.lcssa, 499
  %i.gw = icmp ugt i64 %.1.lcssa, 499
  %or.cond7 = select i1 %i.gv, i1 true, i1 %i.gw
  br i1 %or.cond7, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gx = tail call i64 @llvm.umax.i64(i64 %.1325.lcssa, i64 %.1.lcssa)
  %i.gy = tail call i64 @llvm.umin.i64(i64 %.1325.lcssa, i64 %.1.lcssa)
  %i.gz = mul i64 %i.gy, 3
  %i.ha = icmp ugt i64 %i.gx, %i.gz               ; 2 uses
  %spec.select = select i1 %i.ha, i64 %.1325.lcssa, i64 %.1331.lcssa
  %spec.select373 = select i1 %i.ha, i64 %.1.lcssa, i64 %.1314.lcssa
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %.7 = phi i64 [ %.1331.lcssa, %bb.af ], [ %spec.select, %bb.ah ], [ %.1331.lcssa, %bb.ag ]
  %.6 = phi i64 [ %.1314.lcssa, %bb.af ], [ %spec.select373, %bb.ah ], [ %.1314.lcssa, %bb.ag ]
  %i.hb = uitofp nsz i64 %.1338.lcssa to float
  %i.hc = uitofp nsz i64 %.1319.lcssa to float
  %i.hd = insertelement <2 x float> poison, float %i.hb, i64 0
  %i.he = insertelement <2 x float> %i.hd, float %i.hc, i64 1
  %i.hf = fdiv nsz <2 x float> %i.he, splat (float 6.000000e+00)
  %i.hg = fadd nsz <2 x float> %i.hf, splat (float 5.000000e-01)
  %i.hh = fptosi <2 x float> %i.hg to <2 x i32>   ; 2 uses
  %i.hi = uitofp nsz i64 %.7 to float
  %i.hj = uitofp nsz i64 %.6 to float
  %i.hk = insertelement <2 x float> poison, float %i.hi, i64 0
  %i.hl = insertelement <2 x float> %i.hk, float %i.hj, i64 1
  %i.hm = fdiv nsz <2 x float> %i.hl, splat (float 6.000000e+00)
  %i.hn = fadd nsz <2 x float> %i.hm, splat (float 5.000000e-01)
  %i.ho = fptosi <2 x float> %i.hn to <2 x i32>   ; 9 uses
  %i.hp = extractelement <2 x i32> %i.hh, i64 0   ; 3 uses
  %i.hq = extractelement <2 x i32> %i.hh, i64 1   ; 3 uses
  %4 = icmp sgt i32 %i.hp, %i.hq
  %i.hr = tail call i32 @llvm.smin.i32(i32 %i.hp, i32 %i.hq)
  %i.hs = tail call i32 @llvm.smax.i32(i32 %i.hr, i32 1)
  %i.ht = uitofp nneg i32 %i.hs to float
  %i.hu = extractelement <2 x i32> %i.ho, i64 1   ; 8 uses
  %i.hv = extractelement <2 x i32> %i.ho, i64 0   ; 8 uses
  %i.hw = tail call i32 @llvm.smax.i32(i32 %i.hp, i32 %i.hq) ; 2 uses
  %5 = sitofp nsz i32 %i.hw to float
  %i.hx = fdiv nsz float %5, %i.ht
  %6 = icmp sgt i32 %i.hv, %i.hu                  ; 7 uses
  %i.hy = tail call i32 @llvm.smax.i32(i32 %i.hv, i32 %i.hu) ; 2 uses
  %7 = sitofp nsz i32 %i.hy to float
  %i.hz = tail call i32 @llvm.smin.i32(i32 %i.hv, i32 %i.hu)
  %i.ia = tail call i32 @llvm.smax.i32(i32 %i.hw, i32 1)
  %i.ib = tail call i32 @llvm.smax.i32(i32 %i.hz, i32 1)
  %i.ic = uitofp nneg i32 %i.ia to float
  %i.id = uitofp nneg i32 %i.ib to float
  %i.ie = insertelement <2 x float> poison, float %7, i64 0
  %i.if = shufflevector <2 x float> %i.ie, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ig = insertelement <2 x float> poison, float %i.id, i64 0
  %i.ih = insertelement <2 x float> %i.ig, float %i.ic, i64 1
  %i.ii = fdiv nsz <2 x float> %i.if, %i.ih       ; 2 uses
  %8 = icmp sgt i32 %i.hv, 499
  %9 = icmp sgt i32 %i.hu, 499
  %or.cond9 = select i1 %8, i1 true, i1 %9
  br i1 %or.cond9, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %10 = shl nsw <2 x i32> %i.ho, splat (i32 1)
  %11 = shufflevector <2 x i32> %10, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %12 = icmp slt <2 x i32> %11, %i.ho             ; 2 uses
  %13 = extractelement <2 x i1> %12, i64 0
  %14 = extractelement <2 x i1> %12, i64 1
  %or.cond375 = select i1 %14, i1 true, i1 %13
  br i1 %or.cond375, label %bb.au, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %15 = icmp sgt <2 x i32> %i.ho, splat (i32 999) ; 2 uses
  %i.ij = extractelement <2 x i1> %15, i64 0
  %i.ik = extractelement <2 x i1> %15, i64 1
  %or.cond11 = select i1 %i.ij, i1 true, i1 %i.ik
  br i1 %or.cond11, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.il = mul nsw i32 %i.hv, 3
  %i.im = shl nsw i32 %i.hu, 1
  %16 = icmp slt i32 %i.il, %i.im
  br i1 %16, label %bb.au, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.in = mul nsw i32 %i.hu, 3
  %i.io = shl nsw i32 %i.hv, 1
  %17 = icmp slt i32 %i.in, %i.io
  br i1 %17, label %bb.au, label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.am
  %18 = icmp sgt <2 x i32> %i.ho, splat (i32 1999) ; 2 uses
  %i.ip = extractelement <2 x i1> %18, i64 0
  %i.iq = extractelement <2 x i1> %18, i64 1
  %or.cond13 = select i1 %i.ip, i1 true, i1 %i.iq
  br i1 %or.cond13, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.ir = mul nsw i32 %i.hv, 5
  %i.is = shl nsw i32 %i.hu, 2
  %19 = icmp slt i32 %i.ir, %i.is
  br i1 %19, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.it = mul nsw i32 %i.hu, 5
  %i.iu = shl nsw i32 %i.hv, 2
  %20 = icmp slt i32 %i.it, %i.iu
  br i1 %20, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.an, %bb.ap
  %21 = icmp sgt <2 x i32> %i.ho, splat (i32 3999) ; 2 uses
  %i.iv = extractelement <2 x i1> %21, i64 0
  %i.iw = extractelement <2 x i1> %21, i64 1
  %or.cond15 = select i1 %i.iv, i1 true, i1 %i.iw
  %i.ix = extractelement <2 x float> %i.ii, i64 0
  %i.iy = fcmp nsz ogt float %i.ix, %i.hx
  %or.cond376 = select i1 %or.cond15, i1 %i.iy, i1 false
  br i1 %or.cond376, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.iz = extractelement <2 x float> %i.ii, i64 1
  %i.ja = fpext nsz float %i.iz to double
  %i.jb = fcmp nsz ogt double %i.ja, 5.000000e-03
  %22 = icmp sgt i32 %i.hy, 150
  %or.cond377 = select i1 %i.jb, i1 %22, i1 false
  br i1 %or.cond377, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.jc = shl nsw <2 x i32> %i.ho, splat (i32 1)
  %i.jd = shufflevector <2 x i32> %i.ho, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %23 = icmp slt <2 x i32> %i.jc, %i.jd           ; 2 uses
  %i.je = extractelement <2 x i1> %23, i64 0
  %i.jf = extractelement <2 x i1> %23, i64 1
  %or.cond379 = select i1 %i.je, i1 true, i1 %i.jf
  br i1 %or.cond379, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.aj, %bb.al, %bb.am, %bb.ao, %bb.ap, %bb.aq, %bb.at
  %.sink = phi i1 [ %6, %bb.aj ], [ %4, %bb.at ], [ %6, %bb.aq ], [ %6, %bb.ap ], [ %6, %bb.ao ], [ %6, %bb.am ], [ %6, %bb.al ], [ %6, %bb.as ]
  %i.jg = select i1 %.sink, i32 %2, i32 %1
  ret i32 %i.jg
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @checkmm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull captures(none) %4, i32 noundef range(i32 0, -1) %5) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 10 uses
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %1, i64 %i.c ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !42   ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds [8 x i8], ptr %4, i64 %i.c ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32
  %i.o = tail call fastcc ptr @create_weave_frame(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %5, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n, i32 noundef 0) ; 2 uses
  store ptr %i.o, ptr %i.g, align 8, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.h, %bb.b ]
  %i.q = tail call fastcc i32 @calc_combed_score(ptr noundef %i.b, ptr noundef %i.p) ; 2 uses
  store i32 %i.q, ptr %i.d, align 4, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.r = phi i32 [ %i.e, %bb.a ], [ %i.q, %bb.d ]
  %i.s = sext i32 %3 to i64                       ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %1, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42   ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds [8 x i8], ptr %4, i64 %i.s ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36   ; 2 uses
  %.not56 = icmp eq ptr %i.x, null
  br i1 %.not56, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32
  %i.ae = tail call fastcc ptr @create_weave_frame(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %5, ptr noundef %i.z, ptr noundef %i.ab, ptr noundef %i.ad, i32 noundef 0) ; 2 uses
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = phi ptr [ %i.ae, %bb.g ], [ %i.x, %bb.f ]
  %i.ag = tail call fastcc i32 @calc_combed_score(ptr noundef %i.b, ptr noundef %i.af) ; 2 uses
  store i32 %i.ag, ptr %i.t, align 4, !tbaa !42
  %.pre = load i32, ptr %i.d, align 4, !tbaa !42
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.ah = phi i32 [ %.pre, %bb.h ], [ %i.r, %bb.e ] ; 4 uses
  %i.ai = phi i32 [ %i.ag, %bb.h ], [ %i.u, %bb.e ] ; 4 uses
  %i.aj = mul nuw nsw i32 %i.ai, 3
  %i.ak = icmp slt i32 %i.aj, %i.ah
  br i1 %i.ak, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = shl nuw nsw i32 %i.ai, 1
  %i.am = icmp slt i32 %i.al, %i.ah
  br i1 %i.am, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !29
  %i.ap = icmp sgt i32 %i.ah, %i.ao
  br i1 %i.ap, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.aq = add nsw i32 %i.ai, -30
  %i.ar = sub i32 %i.aq, %i.ah
  %i.as = icmp ult i32 %i.ar, -59
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.au = load i32, ptr %i.at, align 8, !tbaa !29
  %i.av = icmp slt i32 %i.ai, %i.au
  br i1 %i.av, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.0 = phi i32 [ %2, %bb.n ], [ %3, %bb.m ]
  ret i32 %.0
}

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @copy_fields(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = zext nneg i32 %4 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 108 ; 4 uses
  %.not33 = icmp eq i32 %3, 0                     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.b ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !61     ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.l = load i32, ptr %i.k, align 8, !tbaa !42   ; 3 uses
  %.not32 = icmp eq i32 %i.l, 0
  br i1 %.not32, label %.critedge, label %get_width.exit

get_width.exit:                                   ; preds = %bb.b
  %i.m = load i32, ptr %i.d, align 4, !tbaa !63   ; 2 uses
  %i.n = ashr i32 %i.m, 1
  %i.o = and i32 %i.m, 1
  %i.p = select i1 %.not33, i32 %i.o, i32 0
  %i.q = add nsw i32 %i.p, %i.n
  %i.r = load ptr, ptr %1, align 8, !tbaa !61
  %i.s = load i32, ptr %i.e, align 8, !tbaa !42   ; 2 uses
  %i.t = mul nsw i32 %i.s, %3
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  %i.w = shl i32 %i.s, 1
  %i.x = mul nsw i32 %i.l, %3
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.j, i64 %i.y
  %i.aa = shl i32 %i.l, 1
  %i.ab = load i32, ptr %i.h, align 8, !tbaa !62
  %i.ac = load i32, ptr %i.i, align 8, !tbaa !52
  %i.ad = mul nsw i32 %i.ac, %i.ab
  tail call void @av_image_copy_plane(ptr noundef %i.v, i32 noundef %i.w, ptr noundef nonnull %i.z, i32 noundef %i.aa, i32 noundef %i.ad, i32 noundef %i.q) #10
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !61 ; 2 uses
  %.not.1 = icmp eq ptr %i.af, null
  br i1 %.not.1, label %.critedge, label %bb.c

bb.c:                                             ; preds = %get_width.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !42 ; 3 uses
  %.not32.1 = icmp eq i32 %i.ah, 0
  br i1 %.not32.1, label %.critedge, label %get_width.exit.1

get_width.exit.1:                                 ; preds = %bb.c
  %i.ai = load i32, ptr %i.d, align 4, !tbaa !63
  %i.aj = sub nsw i32 0, %i.ai
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !42
  %i.al = ashr i32 %i.aj, %i.ak
  %i.am = sub nsw i32 0, %i.al                    ; 2 uses
  %i.an = ashr i32 %i.am, 1
  %i.ao = and i32 %i.am, 1
  %i.ap = select i1 %.not33, i32 %i.ao, i32 0
  %i.aq = add nsw i32 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.au = load i32, ptr %i.at, align 4, !tbaa !42 ; 2 uses
  %i.av = mul nsw i32 %i.au, %3
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 %i.aw
  %i.ay = shl i32 %i.au, 1
  %i.az = mul nsw i32 %i.ah, %3
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %i.af, i64 %i.ba
  %i.bc = shl i32 %i.ah, 1
  %i.bd = load i32, ptr %i.h, align 8, !tbaa !62
  %i.be = sub nsw i32 0, %i.bd
end_hunk_0
begin_hunk_1_@build_diff_map:bb.a
bb.g:                                             ; preds = %bb.f
  %i.ey = getelementptr inbounds nuw i8, ptr %.0123157, i64 %indvars.iv170 ; 2 uses
  store i8 1, ptr %i.ey, align 1, !tbaa !64
  %i.ez = icmp ugt i8 %i.cz, 19
  br i1 %i.ez, label %.preheader, label %bb.q

.preheader:                                       ; preds = %bb.g
  %i.fa = getelementptr inbounds nuw i8, ptr %.0113159.pn, i64 %indvars.iv
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !64
  %i.fc = icmp ugt i8 %i.fb, 19                   ; 2 uses
  %i.fd = zext i1 %i.fc to i32
  %spec.select128 = zext i1 %i.fc to i32          ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0113159, i64 %indvars.iv
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !64
  %i.fg = icmp ugt i8 %i.ff, 19
  %i.fh = zext i1 %i.fg to i32
  %.3117 = add nuw nsw i32 %i.fd, %i.fh
  %gep181 = getelementptr i8, ptr %invariant.gep180, i64 %indvars.iv
  %i.fi = load i8, ptr %gep181, align 1, !tbaa !64
  %i.fj = icmp ugt i8 %i.fi, 19                   ; 2 uses
  %i.fk = zext i1 %i.fj to i32
  %.4 = add nuw nsw i32 %.3117, %i.fk             ; 3 uses
  %.1108 = zext i1 %i.fj to i32                   ; 2 uses
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.fl = icmp samesign ult i64 %indvars.iv.next165, %i.db
  %i.fm = icmp samesign ult i32 %.4, 6
  %i.fn = select i1 %i.fl, i1 %i.fm, i1 false
  br i1 %i.fn, label %.preheader.1, label %bb.h

.preheader.1:                                     ; preds = %.preheader
  %i.fo = getelementptr inbounds nuw i8, ptr %.0113159.pn, i64 %indvars.iv.next165
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !64
  %i.fq = icmp ugt i8 %i.fp, 19                   ; 2 uses
  %i.fr = zext i1 %i.fq to i32
  %spec.select.1 = add nuw nsw i32 %.4, %i.fr
  %spec.select128.1 = select i1 %i.fq, i32 1, i32 %spec.select128 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0113159, i64 %indvars.iv.next165
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !64
  %i.fu = icmp ugt i8 %i.ft, 19
  %i.fv = zext i1 %i.fu to i32
  %.3117.1 = add nuw nsw i32 %spec.select.1, %i.fv
  %gep181.1 = getelementptr i8, ptr %invariant.gep180, i64 %indvars.iv.next165
  %i.fw = load i8, ptr %gep181.1, align 1, !tbaa !64
  %i.fx = icmp ugt i8 %i.fw, 19                   ; 2 uses
  %i.fy = zext i1 %i.fx to i32
  %.4.1 = add nuw nsw i32 %.3117.1, %i.fy         ; 3 uses
  %.1108.1 = select i1 %i.fx, i32 1, i32 %.1108   ; 2 uses
  %i.fz = icmp samesign ult i64 %indvars.iv, %indvars.iv170
  %i.ga = icmp samesign ult i32 %.4.1, 6
  %i.gb = select i1 %i.fz, i1 %i.ga, i1 false
  br i1 %i.gb, label %.preheader.2, label %bb.h

.preheader.2:                                     ; preds = %.preheader.1
  %indvars.iv.next165.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.0113159.pn, i64 %indvars.iv.next165.1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !64
  %i.ge = icmp ugt i8 %i.gd, 19                   ; 2 uses
  %i.gf = zext i1 %i.ge to i32
  %spec.select.2 = add nuw nsw i32 %.4.1, %i.gf
  %spec.select128.2 = select i1 %i.ge, i32 1, i32 %spec.select128.1
  %i.gg = getelementptr inbounds nuw i8, ptr %.0113159, i64 %indvars.iv.next165.1
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !64
  %i.gi = icmp ugt i8 %i.gh, 19
  %i.gj = zext i1 %i.gi to i32
  %.3117.2 = add nuw nsw i32 %spec.select.2, %i.gj
  %gep181.2 = getelementptr i8, ptr %invariant.gep180, i64 %indvars.iv.next165.1
  %i.gk = load i8, ptr %gep181.2, align 1, !tbaa !64
  %i.gl = icmp ugt i8 %i.gk, 19                   ; 2 uses
  %i.gm = zext i1 %i.gl to i32
  %.4.2 = add nuw nsw i32 %.3117.2, %i.gm
  %.1108.2 = select i1 %i.gl, i32 1, i32 %.1108.1
  br label %bb.h

bb.h:                                             ; preds = %.preheader.2, %.preheader.1, %.preheader
  %spec.select128.lcssa = phi i32 [ %spec.select128, %.preheader ], [ %spec.select128.1, %.preheader.1 ], [ %spec.select128.2, %.preheader.2 ] ; 3 uses
  %.4.lcssa = phi i32 [ %.4, %.preheader ], [ %.4.1, %.preheader.1 ], [ %.4.2, %.preheader.2 ] ; 2 uses
  %.1108.lcssa = phi i32 [ %.1108, %.preheader ], [ %.1108.1, %.preheader.1 ], [ %.1108.2, %.preheader.2 ] ; 3 uses
  %i.gn = icmp sgt i32 %.4.lcssa, 3
  br i1 %i.gn, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.go = icmp ne i32 %spec.select128.lcssa, 0
  %i.gp = icmp ne i32 %.1108.lcssa, 0
  %or.cond = select i1 %i.go, i1 %i.gp, i1 false
  br i1 %or.cond, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.gq = add nsw i32 %smax, -4
  %i.gr = trunc i64 %indvars.iv170 to i32
  %i.gs = add i32 %i.gr, 5
  %i.gt = tail call i32 @llvm.smin.i32(i32 %i.gs, i32 %8) ; 2 uses
  %i.gu = icmp slt i32 %i.gq, %i.gt
  br i1 %i.gu, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.gv = zext nneg i32 %i.gt to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %indvars.iv167 = phi i64 [ %i.cx, %.lr.ph.preheader ], [ %indvars.iv.next168, %bb.n ] ; 5 uses
  %.0149 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1, %bb.n ] ; 2 uses
  %.0105148 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1106, %bb.n ] ; 2 uses
  %.2147 = phi i32 [ %.1108.lcssa, %.lr.ph.preheader ], [ %.3, %bb.n ]
  %.2111146 = phi i32 [ %spec.select128.lcssa, %.lr.ph.preheader ], [ %spec.select130, %bb.n ]
  br i1 %.not126, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.gw = sub nsw i64 %indvars.iv167, %i.ct
  %i.gx = getelementptr inbounds i8, ptr %.0113159, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !64
  %i.gz = icmp ugt i8 %i.gy, 19
  %spec.select129 = select i1 %i.gz, i32 1, i32 %.0105148
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph
  %.1106 = phi i32 [ %.0105148, %.lr.ph ], [ %spec.select129, %bb.k ] ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %.0113159.pn, i64 %indvars.iv167
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !64
  %i.hc = icmp ugt i8 %i.hb, 19
  %spec.select130 = select i1 %i.hc, i32 1, i32 %.2111146 ; 2 uses
  %gep183 = getelementptr i8, ptr %invariant.gep182, i64 %indvars.iv167
  %i.hd = load i8, ptr %gep183, align 1, !tbaa !64
  %i.he = icmp ugt i8 %i.hd, 19
  %.3 = select i1 %i.he, i32 1, i32 %.2147        ; 2 uses
  br i1 %.not127, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %gep185 = getelementptr i8, ptr %invariant.gep184, i64 %indvars.iv167
  %i.hf = load i8, ptr %gep185, align 1, !tbaa !64
  %i.hg = icmp ugt i8 %i.hf, 19
  %spec.select131 = select i1 %i.hg, i32 1, i32 %.0149
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1 = phi i32 [ %.0149, %bb.l ], [ %spec.select131, %bb.m ] ; 2 uses
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %i.hh = icmp slt i64 %indvars.iv.next168, %i.gv
  br i1 %i.hh, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !146

._crit_edge.loopexit:                             ; preds = %bb.n
  %i.hi = icmp ne i32 %.1106, 0
  %i.hj = icmp ne i32 %.1, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.2111.lcssa = phi i32 [ %spec.select128.lcssa, %bb.j ], [ %spec.select130, %._crit_edge.loopexit ]
  %.2.lcssa = phi i32 [ %.1108.lcssa, %bb.j ], [ %.3, %._crit_edge.loopexit ]
  %.0105.lcssa = phi i1 [ false, %bb.j ], [ %i.hi, %._crit_edge.loopexit ]
  %.0.lcssa = phi i1 [ false, %bb.j ], [ %i.hj, %._crit_edge.loopexit ]
  %.not137 = icmp eq i32 %.2111.lcssa, 0
  %.not125 = icmp ne i32 %.2.lcssa, 0             ; 2 uses
  br i1 %.not137, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %or.cond3 = select i1 %.not125, i1 true, i1 %.0105.lcssa
  br i1 %or.cond3, label %.sink.split, label %.thread

bb.p:                                             ; preds = %._crit_edge
  %or.cond132 = select i1 %.not125, i1 %.0.lcssa, i1 false
  br i1 %or.cond132, label %.sink.split, label %.thread

.thread:                                          ; preds = %bb.o, %bb.p
  %i.hk = icmp sgt i32 %.4.lcssa, 5
  br i1 %i.hk, label %.sink.split, label %bb.q

.sink.split:                                      ; preds = %.thread, %bb.o, %bb.p, %bb.i
  %.sink = phi i8 [ 3, %bb.i ], [ 3, %bb.o ], [ 3, %bb.p ], [ 5, %.thread ]
  store i8 %.sink, ptr %i.ey, align 1, !tbaa !64
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.h, %.thread, %bb.b, %bb.g, %bb.f
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge155, label %bb.b, !llvm.loop !147

._crit_edge155:                                   ; preds = %bb.q
  %i.hl = getelementptr inbounds i8, ptr %.0123157, i64 %i.cr
  %i.hm = add nuw nsw i32 %.0121158, 2            ; 2 uses
  %i.hn = icmp slt i32 %i.hm, %i.cn
  br i1 %i.hn, label %.preheader138, label %._crit_edge160.split, !llvm.loop !148

._crit_edge160.split:                             ; preds = %._crit_edge155, %.preheader138.lr.ph, %build_abs_diff_mask.exit
  ret void
}

declare ptr @av_ts_make_time_string2(ptr noundef, i64 noundef, i64) local_unnamed_addr #3

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.abs.v16i16(<16 x i16>, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.abs.v8i16(<8 x i16>, i1 immarg) #7

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !41}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"override-stack-alignment", i32 16}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS7AVClass", !10, i64 0}
!12 = !{!"p1 _ZTS8AVFilter", !10, i64 0}
!13 = !{!"p1 omnipotent char", !10, i64 0}
!14 = !{!"p1 _ZTS11AVFilterPad", !10, i64 0}
!15 = !{!"any p2 pointer", !10, i64 0}
!16 = !{!"p2 _ZTS12AVFilterLink", !15, i64 0}
!17 = !{!"p1 _ZTS13AVFilterGraph", !10, i64 0}
!18 = !{!"p1 _ZTS11AVBufferRef", !10, i64 0}
!19 = !{!"AVFilterContext", !11, i64 0, !12, i64 8, !13, i64 16, !14, i64 24, !16, i64 32, !7, i64 40, !14, i64 48, !16, i64 56, !7, i64 64, !10, i64 72, !17, i64 80, !7, i64 88, !7, i64 92, !13, i64 96, !7, i64 104, !18, i64 112, !7, i64 120}
!20 = !{!19, !10, i64 72}
!21 = !{!"p1 _ZTS7AVFrame", !10, i64 0}
!22 = !{!"long", !6, i64 0}
!23 = !{!"double", !6, i64 0}
!24 = !{!"p1 int", !10, i64 0}
!25 = !{!"FieldMatchContext", !11, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !7, i64 80, !7, i64 84, !22, i64 88, !22, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !22, i64 136, !23, i64 144, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !6, i64 184, !6, i64 216, !6, i64 232, !6, i64 264, !24, i64 280, !7, i64 288, !7, i64 292, !13, i64 296}
!26 = !{!25, !7, i64 108}
!27 = !{!25, !7, i64 168}
!28 = !{!25, !7, i64 172}
!29 = !{!25, !7, i64 176}
!30 = !{!25, !21, i64 8}
!31 = !{!25, !21, i64 16}
!32 = !{!25, !21, i64 24}
!33 = !{!25, !21, i64 32}
!34 = !{!25, !21, i64 40}
!35 = !{!25, !21, i64 48}
!36 = !{!21, !21, i64 0}
!37 = !{!19, !16, i64 56}
!38 = !{!"p1 _ZTS12AVFilterLink", !10, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!19, !16, i64 32}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!7, !7, i64 0}
!43 = !{!"p1 _ZTS15AVFilterContext", !10, i64 0}
!44 = !{!"AVRational", !7, i64 0, !7, i64 4}
!45 = !{!"AVChannelLayout", !7, i64 0, !7, i64 4, !6, i64 8, !10, i64 16}
!46 = !{!"p2 _ZTS15AVFrameSideData", !15, i64 0}
!47 = !{!"p1 _ZTS15AVFilterFormats", !10, i64 0}
!48 = !{!"p1 _ZTS22AVFilterChannelLayouts", !10, i64 0}
!49 = !{!"AVFilterFormatsConfig", !47, i64 0, !47, i64 8, !48, i64 16, !47, i64 24, !47, i64 32, !47, i64 40}
!50 = !{!"AVFilterLink", !43, i64 0, !14, i64 8, !43, i64 16, !14, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !44, i64 48, !7, i64 56, !7, i64 60, !7, i64 64, !45, i64 72, !44, i64 96, !46, i64 104, !7, i64 112, !7, i64 116, !49, i64 120, !49, i64 168}
!51 = !{!50, !7, i64 36}
!52 = !{!25, !7, i64 80}
!53 = !{!50, !43, i64 16}
!54 = !{!25, !22, i64 136}
!55 = !{!25, !13, i64 296}
!56 = !{!25, !24, i64 280}
!57 = !{!"p2 omnipotent char", !15, i64 0}
!58 = !{!"p2 _ZTS11AVBufferRef", !15, i64 0}
!59 = !{!"p1 _ZTS12AVDictionary", !10, i64 0}
!60 = !{!"AVFrame", !6, i64 0, !6, i64 64, !57, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !44, i64 124, !22, i64 136, !22, i64 144, !44, i64 152, !7, i64 160, !10, i64 168, !7, i64 176, !7, i64 180, !6, i64 184, !58, i64 248, !7, i64 256, !46, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !7, i64 296, !22, i64 304, !59, i64 312, !7, i64 320, !18, i64 328, !18, i64 336, !22, i64 344, !22, i64 352, !22, i64 360, !22, i64 368, !10, i64 376, !45, i64 384, !22, i64 408, !7, i64 416}
!61 = !{!13, !13, i64 0}
!62 = !{!60, !7, i64 104}
!63 = !{!60, !7, i64 108}
!64 = !{!6, !6, i64 0}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!"llvm.loop.isvectorized", i32 1}
!67 = !{!"llvm.loop.unroll.runtime.disable"}
!68 = !{!"AVFilterPad", !13, i64 0, !7, i64 8, !7, i64 12, !6, i64 16, !10, i64 24, !10, i64 32, !10, i64 40}
!69 = !{!68, !13, i64 0}
!70 = !{!68, !10, i64 40}
!71 = !{!"p1 _ZTS21AVFilterFormatsConfig", !10, i64 0}
!72 = !{!71, !71, i64 0}
!73 = distinct !{!73, !41}
!74 = !{!19, !7, i64 40}
!75 = !{!25, !7, i64 84}
!76 = !{!22, !22, i64 0}
!77 = !{!50, !43, i64 0}
!78 = !{!"AVComponentDescriptor", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!79 = !{!78, !7, i64 16}
!80 = !{!25, !23, i64 144}
!81 = !{!"AVPixFmtDescriptor", !13, i64 0, !6, i64 8, !6, i64 9, !6, i64 10, !22, i64 16, !6, i64 24, !13, i64 104}
!82 = !{!81, !6, i64 9}
!83 = !{!81, !6, i64 10}
!84 = !{!25, !7, i64 288}
!85 = !{!25, !7, i64 292}
!86 = distinct !{!86, !41}
!87 = distinct !{!87, !41}
!88 = !{!50, !14, i64 24}
!89 = !{!19, !14, i64 24}
!90 = !{!25, !7, i64 104}
!91 = !{!60, !7, i64 276}
!92 = !{!25, !7, i64 116}
!93 = !{!25, !7, i64 156}
!94 = !{!25, !7, i64 112}
!95 = !{!25, !7, i64 152}
!96 = !{!25, !22, i64 96}
!97 = !{!"FilterLink", !50, i64 0, !17, i64 216, !22, i64 224, !22, i64 232, !7, i64 240, !7, i64 244, !22, i64 248, !22, i64 256, !22, i64 264, !22, i64 272, !44, i64 280, !18, i64 288}
!98 = !{!97, !22, i64 248}
!99 = !{!25, !22, i64 88}
!100 = !{!60, !22, i64 136}
!101 = !{!16, !16, i64 0}
!102 = !{!50, !7, i64 40}
!103 = !{!50, !7, i64 44}
!104 = distinct !{!104, !65}
!105 = distinct !{!105, !41}
!106 = distinct !{!106, !41}
!107 = distinct !{!107, !41}
!108 = distinct !{!108, !41}
!109 = distinct !{!109, !41}
!110 = distinct !{!110, !41}
!111 = distinct !{!111, !65}
!112 = distinct !{!112, !41}
!113 = distinct !{!113, !41}
!114 = distinct !{!114, !41}
!115 = distinct !{!115, !41}
!116 = distinct !{!116, !41}
!117 = distinct !{!117, !41}
!118 = distinct !{!118, !41}
!119 = distinct !{!119, !41}
!120 = distinct !{!120, !41}
!121 = distinct !{!121, !41}
!122 = distinct !{!122, !41}
!123 = distinct !{!123, !41, !66, !67}
!124 = distinct !{!124, !41}
!125 = distinct !{!125, !41}
!126 = distinct !{!126, !41, !67, !66}
!127 = !{!25, !7, i64 160}
!128 = !{!25, !7, i64 164}
!129 = !{!"short", !6, i64 0}
!130 = !{!129, !129, i64 0}
!131 = distinct !{!131, !65}
!132 = distinct !{!132, !41}
!133 = distinct !{!133, !41}
!134 = distinct !{!134, !41}
!135 = !{!25, !7, i64 124}
!136 = !{!25, !7, i64 128}
!137 = !{!25, !7, i64 120}
!138 = distinct !{!138, !"LVerDomain"}
!139 = distinct !{!139, !138}
!140 = distinct !{!140, !138}
!141 = distinct !{!141, !138}
!142 = distinct !{!142, !41, !66, !67}
!143 = distinct !{!143, !41, !66, !67}
!144 = distinct !{!144, !41, !66}
!145 = distinct !{!145, !41}
!146 = distinct !{!146, !41}
!147 = distinct !{!147, !41}
!148 = distinct !{!148, !41}
!149 = !{!139}
!150 = !{!140}
!151 = !{!141}
!152 = !{!139, !140}
!153 = !{!"branch_weights", i32 8, i32 24}
end_hunk_1
