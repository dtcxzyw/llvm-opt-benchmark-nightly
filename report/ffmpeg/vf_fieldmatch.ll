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
  %i.ho = fptosi <2 x float> %i.hn to <2 x i32>
  %.fr492 = freeze <2 x i32> %i.ho                ; 7 uses
  %i.hp = extractelement <2 x i32> %i.hh, i64 0   ; 3 uses
  %i.hq = extractelement <2 x i32> %i.hh, i64 1   ; 3 uses
  %i.hr = icmp samesign ugt i32 %i.hp, %i.hq
  %i.hs = tail call i32 @llvm.umin.i32(i32 %i.hp, i32 %i.hq)
  %i.ht = tail call i32 @llvm.umax.i32(i32 %i.hs, i32 1)
  %i.hu = uitofp nneg i32 %i.ht to float
  %i.hv = extractelement <2 x i32> %.fr492, i64 1 ; 10 uses
  %i.hw = tail call i32 @llvm.umax.i32(i32 %i.hp, i32 %i.hq) ; 2 uses
  %i.hx = uitofp nneg i32 %i.hw to float
  %i.hy = fdiv nsz float %i.hx, %i.hu
  %i.hz = extractelement <2 x i32> %.fr492, i64 0 ; 10 uses
  %i.ia = icmp samesign ugt i32 %i.hz, %i.hv      ; 7 uses
  %i.ib = tail call i32 @llvm.umax.i32(i32 %i.hz, i32 %i.hv) ; 2 uses
  %i.ic = uitofp nsz nneg i32 %i.ib to float
  %i.id = tail call i32 @llvm.umin.i32(i32 %i.hz, i32 %i.hv)
  %i.ie = tail call i32 @llvm.umax.i32(i32 %i.id, i32 1)
  %i.if = uitofp nneg i32 %i.ie to float
  %i.ig = tail call i32 @llvm.umax.i32(i32 %i.hw, i32 1)
  %i.ih = uitofp nneg i32 %i.ig to float
  %i.ii = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ik = insertelement <2 x float> poison, float %i.if, i64 0
  %i.il = insertelement <2 x float> %i.ik, float %i.ih, i64 1
  %i.im = fdiv nsz <2 x float> %i.ij, %i.il       ; 2 uses
  %i.in = icmp samesign ugt i32 %i.hz, 499
  %i.io = icmp samesign ugt i32 %i.hv, 499
  %or.cond9 = select i1 %i.in, i1 true, i1 %i.io
  br i1 %or.cond9, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ip = shl nuw nsw i32 %i.hz, 1
  %i.iq = icmp samesign ult i32 %i.ip, %i.hv
  %i.ir = shl nuw nsw i32 %i.hv, 1
  %i.is = icmp samesign ult i32 %i.ir, %i.hz
  %or.cond375 = select i1 %i.iq, i1 true, i1 %i.is
  br i1 %or.cond375, label %bb.au, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.it = icmp ugt <2 x i32> %.fr492, splat (i32 999)
  %4 = bitcast <2 x i1> %i.it to i2
  %or.cond11.not = icmp eq i2 %4, 0
  br i1 %or.cond11.not, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.iu = mul nuw nsw i32 %i.hz, 3
  %i.iv = shl nuw nsw i32 %i.hv, 1
  %i.iw = icmp samesign ult i32 %i.iu, %i.iv
  br i1 %i.iw, label %bb.au, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ix = mul nuw nsw i32 %i.hv, 3
  %i.iy = shl nuw nsw i32 %i.hz, 1
  %i.iz = icmp samesign ult i32 %i.ix, %i.iy
  br i1 %i.iz, label %bb.au, label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.am
  %i.ja = icmp ugt <2 x i32> %.fr492, splat (i32 1999)
  %5 = bitcast <2 x i1> %i.ja to i2
  %or.cond13.not = icmp eq i2 %5, 0
  br i1 %or.cond13.not, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jb = mul nuw nsw i32 %i.hz, 5
  %i.jc = shl nuw nsw i32 %i.hv, 2
  %i.jd = icmp samesign ult i32 %i.jb, %i.jc
  br i1 %i.jd, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.je = mul nuw nsw i32 %i.hv, 5
  %i.jf = shl nuw nsw i32 %i.hz, 2
  %i.jg = icmp samesign ult i32 %i.je, %i.jf
  br i1 %i.jg, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.an, %bb.ap
  %i.jh = icmp ugt <2 x i32> %.fr492, splat (i32 3999)
  %6 = bitcast <2 x i1> %i.jh to i2
  %or.cond15 = icmp ne i2 %6, 0
  %i.ji = extractelement <2 x float> %i.im, i64 0
  %i.jj = fcmp nsz ogt float %i.ji, %i.hy
  %or.cond376 = select i1 %or.cond15, i1 %i.jj, i1 false
  br i1 %or.cond376, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jk = extractelement <2 x float> %i.im, i64 1
  %i.jl = fpext nsz float %i.jk to double
  %i.jm = fcmp nsz ogt double %i.jl, 5.000000e-03
  %i.jn = icmp samesign ugt i32 %i.ib, 150
  %or.cond377 = select i1 %i.jm, i1 %i.jn, i1 false
  br i1 %or.cond377, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.jo = shl nuw nsw <2 x i32> %.fr492, splat (i32 1)
  %i.jp = shufflevector <2 x i32> %.fr492, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.jq = icmp samesign ult <2 x i32> %i.jo, %i.jp
  %7 = freeze <2 x i1> %i.jq
  %8 = bitcast <2 x i1> %7 to i2
  %or.cond379.not = icmp eq i2 %8, 0
  br i1 %or.cond379.not, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.aj, %bb.al, %bb.am, %bb.ao, %bb.ap, %bb.aq, %bb.at
  %.sink = phi i1 [ %i.ia, %bb.aj ], [ %i.hr, %bb.at ], [ %i.ia, %bb.aq ], [ %i.ia, %bb.ap ], [ %i.ia, %bb.ao ], [ %i.ia, %bb.am ], [ %i.ia, %bb.al ], [ %i.ia, %bb.as ]
  %i.jr = select i1 %.sink, i32 %2, i32 %1
  ret i32 %i.jr
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
  %i.bf = load i32, ptr %i.g, align 4, !tbaa !42
  %i.bg = ashr i32 %i.be, %i.bf
end_hunk_0
