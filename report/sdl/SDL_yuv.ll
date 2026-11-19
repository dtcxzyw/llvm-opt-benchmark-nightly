Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_yuv?download=true
inline.NumInlined: 47
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@SDL_ConvertPixels_XRGB8888_to_YUV:bb.a
  %i.ln = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat2174, <2 x float> %i.ld, <2 x float> %i.lm)
  %i.lo = fadd <2 x float> %i.ln, splat (float 5.000000e-01)
  %i.lp = fptosi <2 x float> %i.lo to <2 x i32>   ; 3 uses
  %i.lq = icmp sgt <2 x i32> %i.lp, splat (i32 -129)
  %i.lr = icmp sgt <2 x i32> %i.lp, splat (i32 127)
  %i.ls = trunc <2 x i32> %i.lp to <2 x i8>
  %i.lt = xor <2 x i8> %i.ls, splat (i8 -128)
  %predphi2186 = select <2 x i1> %i.lr, <2 x i8> splat (i8 -1), <2 x i8> %i.lt
  %predphi2187 = select <2 x i1> %i.lq, <2 x i8> %predphi2186, <2 x i8> zeroinitializer
  store <2 x i8> %predphi2187, ptr %next.gep2179, align 1, !alias.scope !82, !noalias !79
  %index.next2188 = add nuw i64 %index2176, 2     ; 2 uses
  %i.lu = icmp eq i64 %index.next2188, %n.vec2162
  br i1 %i.lu, label %middle.block2189, label %vector.body2175, !llvm.loop !26

middle.block2189:                                 ; preds = %vector.body2175
  %i.lv = or disjoint i64 %index2176, 1           ; 2 uses
  %next.gep2180 = getelementptr i8, ptr %.promoted1528, i64 %i.lv
  %i.lw = getelementptr inbounds nuw i8, ptr %next.gep2180, i64 1
  %next.gep2178 = getelementptr i8, ptr %.promoted1527, i64 %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %next.gep2178, i64 1
  store ptr %i.lx, ptr %i.b, align 8, !alias.scope !83, !noalias !84
  store ptr %i.lw, ptr %i.c, align 8, !alias.scope !85, !noalias !86
  %cmp.n2190 = icmp eq i64 %n.vec2162, %wide.trip.count1623
  br i1 %cmp.n2190, label %._crit_edge1531.loopexit, label %scalar.ph2119.preheader

scalar.ph2119.preheader:                          ; preds = %vector.memcheck2121, %.lr.ph1530, %middle.block2189
  %indvars.iv1620.ph = phi i64 [ 0, %vector.memcheck2121 ], [ 0, %.lr.ph1530 ], [ %n.vec2162, %middle.block2189 ]
  %.ph = phi ptr [ %.promoted1527, %vector.memcheck2121 ], [ %.promoted1527, %.lr.ph1530 ], [ %i.kj, %middle.block2189 ]
  %.ph2315 = phi ptr [ %.promoted1528, %vector.memcheck2121 ], [ %.promoted1528, %.lr.ph1530 ], [ %i.kk, %middle.block2189 ]
  br label %scalar.ph2119

scalar.ph2119:                                    ; preds = %scalar.ph2119.preheader, %bb.x
  %indvars.iv1620 = phi i64 [ %indvars.iv.next1621, %bb.x ], [ %indvars.iv1620.ph, %scalar.ph2119.preheader ] ; 2 uses
  %i.ly = phi ptr [ %i.nd, %bb.x ], [ %.ph, %scalar.ph2119.preheader ] ; 2 uses
  %i.lz = phi ptr [ %i.no, %bb.x ], [ %.ph2315, %scalar.ph2119.preheader ] ; 2 uses
  %.idx1689 = shl nuw nsw i64 %indvars.iv1620, 3
  %i.ma = getelementptr inbounds nuw i8, ptr %.11320.lcssa, i64 %.idx1689 ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 4            ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.md = load i32, ptr %i.mc, align 4            ; 3 uses
  %i.me = and i32 %i.mb, 16711680
  %i.mf = and i32 %i.md, 16711680
  %i.mg = add nuw nsw i32 %i.mf, %i.me
  %i.mh = lshr i32 %i.mg, 17
  %i.mi = and i32 %i.mb, 65280
  %i.mj = and i32 %i.md, 65280
  %i.mk = add nuw nsw i32 %i.mj, %i.mi
  %i.ml = lshr i32 %i.mk, 9
  %i.mm = and i32 %i.mb, 255
  %i.mn = and i32 %i.md, 255
  %i.mo = add nuw nsw i32 %i.mn, %i.mm
  %i.mp = lshr i32 %i.mo, 1
  %i.mq = uitofp nneg i32 %i.mh to float          ; 2 uses
  %i.mr = uitofp nneg i32 %i.ml to float          ; 2 uses
  %i.ms = fmul float %i.ju, %i.mr
  %i.mt = tail call float @llvm.fmuladd.f32(float %i.js, float %i.mq, float %i.ms)
  %i.mu = uitofp nneg i32 %i.mp to float          ; 2 uses
  %i.mv = tail call float @llvm.fmuladd.f32(float %i.jw, float %i.mu, float %i.mt)
  %i.mw = fadd float %i.mv, 5.000000e-01
  %i.mx = fptosi float %i.mw to i32               ; 3 uses
  %i.my = icmp slt i32 %i.mx, -128
  br i1 %i.my, label %bb.u, label %bb.s

bb.s:                                             ; preds = %scalar.ph2119
  %i.mz = icmp sgt i32 %i.mx, 127
  br i1 %i.mz, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.na = trunc nsw i32 %i.mx to i8
  %i.nb = xor i8 %i.na, -128
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %scalar.ph2119
  %i.nc = phi i8 [ 0, %scalar.ph2119 ], [ %i.nb, %bb.t ], [ -1, %bb.s ]
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ly, i64 1 ; 2 uses
  store ptr %i.nd, ptr %i.b, align 8
  store i8 %i.nc, ptr %i.ly, align 1
  %i.ne = fmul float %i.ka, %i.mr
  %i.nf = tail call float @llvm.fmuladd.f32(float %i.jy, float %i.mq, float %i.ne)
  %i.ng = tail call float @llvm.fmuladd.f32(float %i.kc, float %i.mu, float %i.nf)
  %i.nh = fadd float %i.ng, 5.000000e-01
  %i.ni = fptosi float %i.nh to i32               ; 3 uses
  %i.nj = icmp slt i32 %i.ni, -128
  br i1 %i.nj, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.nk = icmp sgt i32 %i.ni, 127
  br i1 %i.nk, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.nl = trunc nsw i32 %i.ni to i8
  %i.nm = xor i8 %i.nl, -128
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.nn = phi i8 [ 0, %bb.u ], [ %i.nm, %bb.w ], [ -1, %bb.v ]
  %i.no = getelementptr inbounds nuw i8, ptr %i.lz, i64 1 ; 2 uses
  store ptr %i.no, ptr %i.c, align 8
  store i8 %i.nn, ptr %i.lz, align 1
  %indvars.iv.next1621 = add nuw nsw i64 %indvars.iv1620, 1 ; 2 uses
  %exitcond1624.not = icmp eq i64 %indvars.iv.next1621, %wide.trip.count1623
  br i1 %exitcond1624.not, label %._crit_edge1531.loopexit, label %scalar.ph2119, !llvm.loop !28

._crit_edge1531.loopexit:                         ; preds = %bb.x, %middle.block2189
  %i.np = shl nuw nsw i32 %i.i, 1
  %i.nq = zext nneg i32 %i.np to i64
  br label %._crit_edge1531

._crit_edge1531:                                  ; preds = %._crit_edge1531.loopexit, %.preheader1438
  %.21332.lcssa = phi i64 [ 0, %.preheader1438 ], [ %i.nq, %._crit_edge1531.loopexit ]
  %.not1410 = icmp eq i32 %i.j, 0
  br i1 %.not1410, label %._crit_edge1531._crit_edge, label %bb.y

bb.y:                                             ; preds = %._crit_edge1531
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %.11320.lcssa, i64 %.21332.lcssa
  %i.ns = load i32, ptr %i.nr, align 4            ; 3 uses
  %i.nt = lshr i32 %i.ns, 16
  %i.nu = and i32 %i.nt, 255
  %i.nv = lshr i32 %i.ns, 8
  %i.nw = and i32 %i.nv, 255
  %i.nx = and i32 %i.ns, 255
  %i.ny = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.nz = load float, ptr %i.ny, align 8
  %i.oa = uitofp nneg i32 %i.nu to float          ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.oc = load float, ptr %i.ob, align 4
  %i.od = uitofp nneg i32 %i.nw to float          ; 2 uses
  %i.oe = fmul float %i.oc, %i.od
  %i.of = tail call float @llvm.fmuladd.f32(float %i.nz, float %i.oa, float %i.oe)
  %i.og = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.oh = load float, ptr %i.og, align 8
  %i.oi = uitofp nneg i32 %i.nx to float          ; 2 uses
  %i.oj = tail call float @llvm.fmuladd.f32(float %i.oh, float %i.oi, float %i.of)
  %i.ok = fadd float %i.oj, 5.000000e-01
  %i.ol = fptosi float %i.ok to i32               ; 3 uses
  %i.om = icmp slt i32 %i.ol, -128
  br i1 %i.om, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.on = icmp sgt i32 %i.ol, 127
  br i1 %i.on, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.oo = trunc nsw i32 %i.ol to i8
  %i.op = xor i8 %i.oo, -128
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.oq = phi i8 [ 0, %bb.y ], [ %i.op, %bb.aa ], [ -1, %bb.z ]
  %i.or = load ptr, ptr %i.b, align 8
  store i8 %i.oq, ptr %i.or, align 1
  %i.os = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.ot = load float, ptr %i.os, align 4
  %i.ou = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ov = load float, ptr %i.ou, align 8
  %i.ow = fmul float %i.ov, %i.od
  %i.ox = tail call float @llvm.fmuladd.f32(float %i.ot, float %i.oa, float %i.ow)
  %i.oy = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.oz = load float, ptr %i.oy, align 4
  %i.pa = tail call float @llvm.fmuladd.f32(float %i.oz, float %i.oi, float %i.ox)
  %i.pb = fadd float %i.pa, 5.000000e-01
  %i.pc = fptosi float %i.pb to i32               ; 3 uses
  %i.pd = icmp slt i32 %i.pc, -128
  br i1 %i.pd, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.pe = icmp sgt i32 %i.pc, 127
  br i1 %i.pe, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.pf = trunc nsw i32 %i.pc to i8
  %i.pg = xor i8 %i.pf, -128
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.ph = phi i8 [ 0, %bb.ab ], [ %i.pg, %bb.ad ], [ -1, %bb.ac ]
  %i.pi = load ptr, ptr %i.c, align 8
  store i8 %i.ph, ptr %i.pi, align 1
  br label %._crit_edge1531._crit_edge

bb.af:                                            ; preds = %._crit_edge1484
  %i.pj = icmp sgt i32 %1, 1
  br i1 %i.pj, label %.preheader1441.lr.ph, label %._crit_edge1496

.preheader1441.lr.ph:                             ; preds = %bb.af
  %i.pk = load i32, ptr %i.e, align 4
  %i.pl = add nsw i32 %0, 1
  %.neg1403 = sdiv i32 %i.pl, -2
  %.neg1404 = shl nsw i32 %.neg1403, 1
  %i.pm = add i32 %i.pk, %.neg1404
  %i.pn = icmp sgt i32 %0, 1
  %i.po = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.l, i64 28 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.l, i64 36 ; 2 uses
  %.not1407 = icmp eq i32 %i.j, 0
  %i.pu = zext i32 %i.pm to i64
  %i.pv = sext i32 %i.f to i64                    ; 3 uses
  %wide.trip.count1606 = zext i32 %i.i to i64     ; 6 uses
  %i.pw = shl nuw nsw i32 %i.i, 1                 ; 2 uses
  %i.px = add nsw i32 %i.g, -1
  %i.py = zext i32 %i.px to i64
  %i.pz = mul nsw i64 %i.pv, %i.py                ; 2 uses
  %i.qa = shl nuw nsw i64 %wide.trip.count1606, 3 ; 2 uses
  %i.qb = getelementptr i8, ptr %2, i64 %i.pz
  %scevgep1903 = getelementptr i8, ptr %i.qb, i64 %i.qa
  %i.qc = getelementptr i8, ptr %2, i64 %.pre-phi
  %i.qd = getelementptr i8, ptr %i.qc, i64 %i.pz
  %scevgep1904 = getelementptr i8, ptr %i.qd, i64 %i.qa
  %i.qe = shl nuw nsw i64 %wide.trip.count1606, 1
  %min.iters.check1906 = icmp ult i32 %0, 8
  %8 = shl nuw nsw i64 %wide.trip.count1606, 1
  %stride.check1911 = icmp slt i32 %i.f, 0
  %n.vec1916 = and i64 %wide.trip.count1606, 1073741820 ; 4 uses
  %i.qf = shl nuw nsw i64 %n.vec1916, 1
  %cmp.n1945 = icmp eq i64 %n.vec1916, %wide.trip.count1606
  br label %.preheader1441

.preheader1441:                                   ; preds = %.preheader1441.lr.ph, %bb.at
  %.013081495 = phi ptr [ %i.r, %.preheader1441.lr.ph ], [ %i.wp, %bb.at ] ; 10 uses
  %.113171494 = phi ptr [ %i.cd, %.preheader1441.lr.ph ], [ %i.wr, %bb.at ] ; 5 uses
  %.213211493 = phi ptr [ %2, %.preheader1441.lr.ph ], [ %i.wq, %bb.at ] ; 5 uses
  %.213251492 = phi i32 [ 0, %.preheader1441.lr.ph ], [ %i.ws, %bb.at ]
  br i1 %i.pn, label %.lr.ph1488, label %._crit_edge1489

.lr.ph1488:                                       ; preds = %.preheader1441
  %i.qg = load float, ptr %i.po, align 8          ; 2 uses
  %i.qh = load float, ptr %i.pp, align 4          ; 2 uses
  %i.qi = load float, ptr %i.pq, align 8          ; 2 uses
  %i.qj = load float, ptr %i.pr, align 4          ; 2 uses
  %i.qk = load float, ptr %i.ps, align 8          ; 2 uses
  %i.ql = load float, ptr %i.pt, align 4          ; 2 uses
  %9 = getelementptr i8, ptr %.013081495, i64 %8
  %10 = getelementptr i8, ptr %9, i64 -2
  %11 = icmp ult ptr %10, %.013081495
  %or.cond = select i1 %min.iters.check1906, i1 true, i1 %11
  br i1 %or.cond, label %scalar.ph1905.preheader, label %vector.memcheck1907

vector.memcheck1907:                              ; preds = %.lr.ph1488
  %i.qm = getelementptr i8, ptr %.013081495, i64 %i.qe ; 2 uses
  %bound01908 = icmp ult ptr %.013081495, %scevgep1904
  %bound11909 = icmp ult ptr %i.cd, %i.qm
  %found.conflict1910 = and i1 %bound01908, %bound11909
  %i.qn = or i1 %found.conflict1910, %stride.check1911
  %bound01912 = icmp ult ptr %.013081495, %scevgep1903
  %bound11913 = icmp ult ptr %2, %i.qm
  %found.conflict1914 = and i1 %bound01912, %bound11913
  %conflict.rdx = or i1 %i.qn, %found.conflict1914
  br i1 %conflict.rdx, label %scalar.ph1905.preheader, label %vector.ph1915

vector.ph1915:                                    ; preds = %vector.memcheck1907
  %i.qo = getelementptr i8, ptr %.013081495, i64 %i.qf ; 2 uses
  %broadcast.splatinsert1917 = insertelement <4 x float> poison, float %i.qg, i64 0
  %broadcast.splat1918 = shufflevector <4 x float> %broadcast.splatinsert1917, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1919 = insertelement <4 x float> poison, float %i.qh, i64 0
  %broadcast.splat1920 = shufflevector <4 x float> %broadcast.splatinsert1919, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1921 = insertelement <4 x float> poison, float %i.qi, i64 0
  %broadcast.splat1922 = shufflevector <4 x float> %broadcast.splatinsert1921, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1923 = insertelement <4 x float> poison, float %i.qj, i64 0
  %broadcast.splat1924 = shufflevector <4 x float> %broadcast.splatinsert1923, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1925 = insertelement <4 x float> poison, float %i.qk, i64 0
  %broadcast.splat1926 = shufflevector <4 x float> %broadcast.splatinsert1925, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1927 = insertelement <4 x float> poison, float %i.ql, i64 0
  %broadcast.splat1928 = shufflevector <4 x float> %broadcast.splatinsert1927, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1929

vector.body1929:                                  ; preds = %vector.body1929, %vector.ph1915
  %index1930 = phi i64 [ 0, %vector.ph1915 ], [ %index.next1943, %vector.body1929 ] ; 3 uses
  %i.qp = shl i64 %index1930, 1
  %next.gep1931 = getelementptr i8, ptr %.013081495, i64 %i.qp
  %i.qq = shl nuw nsw i64 %index1930, 1           ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %.213211493, i64 %i.qq
  %wide.vec1932 = load <8 x i32>, ptr %i.qr, align 4, !alias.scope !87 ; 2 uses
  %strided.vec1933 = shufflevector <8 x i32> %wide.vec1932, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec1934 = shufflevector <8 x i32> %wide.vec1932, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %.113171494, i64 %i.qq
  %wide.vec1935 = load <8 x i32>, ptr %i.qs, align 4, !alias.scope !88 ; 2 uses
  %strided.vec1936 = shufflevector <8 x i32> %wide.vec1935, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec1937 = shufflevector <8 x i32> %wide.vec1935, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.qt = and <4 x i32> %strided.vec1933, splat (i32 16711680)
  %i.qu = and <4 x i32> %strided.vec1934, splat (i32 16711680)
  %i.qv = add nuw nsw <4 x i32> %i.qu, %i.qt
  %i.qw = and <4 x i32> %strided.vec1936, splat (i32 16711680)
  %i.qx = add nuw nsw <4 x i32> %i.qv, %i.qw
  %i.qy = and <4 x i32> %strided.vec1937, splat (i32 16711680)
  %i.qz = add nuw nsw <4 x i32> %i.qx, %i.qy
  %i.ra = lshr <4 x i32> %i.qz, splat (i32 18)
  %i.rb = and <4 x i32> %strided.vec1933, splat (i32 65280)
  %i.rc = and <4 x i32> %strided.vec1934, splat (i32 65280)
  %i.rd = add nuw nsw <4 x i32> %i.rc, %i.rb
  %i.re = and <4 x i32> %strided.vec1936, splat (i32 65280)
  %i.rf = add nuw nsw <4 x i32> %i.rd, %i.re
  %i.rg = and <4 x i32> %strided.vec1937, splat (i32 65280)
  %i.rh = add nuw nsw <4 x i32> %i.rf, %i.rg
  %i.ri = lshr <4 x i32> %i.rh, splat (i32 10)
  %i.rj = and <4 x i32> %strided.vec1933, splat (i32 255)
  %i.rk = and <4 x i32> %strided.vec1934, splat (i32 255)
  %i.rl = add nuw nsw <4 x i32> %i.rk, %i.rj
  %i.rm = and <4 x i32> %strided.vec1936, splat (i32 255)
  %i.rn = add nuw nsw <4 x i32> %i.rl, %i.rm
  %i.ro = and <4 x i32> %strided.vec1937, splat (i32 255)
  %i.rp = add nuw nsw <4 x i32> %i.rn, %i.ro
  %i.rq = lshr <4 x i32> %i.rp, splat (i32 2)
  %i.rr = uitofp nneg <4 x i32> %i.ra to <4 x float> ; 2 uses
  %i.rs = uitofp nneg <4 x i32> %i.ri to <4 x float> ; 2 uses
  %i.rt = fmul <4 x float> %broadcast.splat1920, %i.rs
  %i.ru = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1918, <4 x float> %i.rr, <4 x float> %i.rt)
  %i.rv = uitofp nneg <4 x i32> %i.rq to <4 x float> ; 2 uses
  %i.rw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1922, <4 x float> %i.rv, <4 x float> %i.ru)
  %i.rx = fadd <4 x float> %i.rw, splat (float 5.000000e-01)
  %i.ry = fptosi <4 x float> %i.rx to <4 x i32>   ; 3 uses
  %i.rz = fmul <4 x float> %broadcast.splat1926, %i.rs
  %i.sa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1924, <4 x float> %i.rr, <4 x float> %i.rz)
  %i.sb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1928, <4 x float> %i.rv, <4 x float> %i.sa)
  %i.sc = fadd <4 x float> %i.sb, splat (float 5.000000e-01)
  %i.sd = fptosi <4 x float> %i.sc to <4 x i32>   ; 3 uses
  %i.se = shufflevector <4 x i32> %i.ry, <4 x i32> %i.sd, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.sf = icmp sgt <8 x i32> %i.se, splat (i32 -129)
  %i.sg = shufflevector <4 x i32> %i.ry, <4 x i32> %i.sd, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.sh = icmp sgt <8 x i32> %i.sg, splat (i32 127)
  %i.si = shufflevector <4 x i32> %i.ry, <4 x i32> %i.sd, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.sj = trunc <8 x i32> %i.si to <8 x i8>
  %i.sk = xor <8 x i8> %i.sj, splat (i8 -128)
  %i.sl = select <8 x i1> %i.sh, <8 x i8> splat (i8 -1), <8 x i8> %i.sk
  %interleaved.vec1942 = select <8 x i1> %i.sf, <8 x i8> %i.sl, <8 x i8> zeroinitializer
  store <8 x i8> %interleaved.vec1942, ptr %next.gep1931, align 1, !alias.scope !89, !noalias !90
  %index.next1943 = add nuw i64 %index1930, 4     ; 2 uses
  %i.sm = icmp eq i64 %index.next1943, %n.vec1916
  br i1 %i.sm, label %middle.block1944, label %vector.body1929, !llvm.loop !33

middle.block1944:                                 ; preds = %vector.body1929
  br i1 %cmp.n1945, label %._crit_edge1489, label %scalar.ph1905.preheader

scalar.ph1905.preheader:                          ; preds = %vector.memcheck1907, %.lr.ph1488, %middle.block1944
  %indvars.iv1603.ph = phi i64 [ 0, %vector.memcheck1907 ], [ 0, %.lr.ph1488 ], [ %n.vec1916, %middle.block1944 ]
  %.113091487.ph = phi ptr [ %.013081495, %vector.memcheck1907 ], [ %.013081495, %.lr.ph1488 ], [ %i.qo, %middle.block1944 ]
  br label %scalar.ph1905

scalar.ph1905:                                    ; preds = %scalar.ph1905.preheader, %bb.al
  %indvars.iv1603 = phi i64 [ %indvars.iv.next1604, %bb.al ], [ %indvars.iv1603.ph, %scalar.ph1905.preheader ] ; 2 uses
  %.113091487 = phi ptr [ %i.ut, %bb.al ], [ %.113091487.ph, %scalar.ph1905.preheader ] ; 3 uses
  %i.sn = shl nuw nsw i64 %indvars.iv1603, 1      ; 3 uses
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %.213211493, i64 %i.sn
  %i.sp = load i32, ptr %i.so, align 4            ; 3 uses
  %i.sq = or disjoint i64 %i.sn, 1                ; 2 uses
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %.213211493, i64 %i.sq
  %i.ss = load i32, ptr %i.sr, align 4            ; 3 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %.113171494, i64 %i.sn
  %i.su = load i32, ptr %i.st, align 4            ; 3 uses
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %.113171494, i64 %i.sq
  %i.sw = load i32, ptr %i.sv, align 4            ; 3 uses
  %i.sx = and i32 %i.sp, 16711680
  %i.sy = and i32 %i.ss, 16711680
  %i.sz = add nuw nsw i32 %i.sy, %i.sx
  %i.ta = and i32 %i.su, 16711680
  %i.tb = add nuw nsw i32 %i.sz, %i.ta
  %i.tc = and i32 %i.sw, 16711680
  %i.td = add nuw nsw i32 %i.tb, %i.tc
  %i.te = lshr i32 %i.td, 18
  %i.tf = and i32 %i.sp, 65280
  %i.tg = and i32 %i.ss, 65280
  %i.th = add nuw nsw i32 %i.tg, %i.tf
  %i.ti = and i32 %i.su, 65280
  %i.tj = add nuw nsw i32 %i.th, %i.ti
  %i.tk = and i32 %i.sw, 65280
  %i.tl = add nuw nsw i32 %i.tj, %i.tk
  %i.tm = lshr i32 %i.tl, 10
  %i.tn = and i32 %i.sp, 255
  %i.to = and i32 %i.ss, 255
  %i.tp = add nuw nsw i32 %i.to, %i.tn
  %i.tq = and i32 %i.su, 255
  %i.tr = add nuw nsw i32 %i.tp, %i.tq
  %i.ts = and i32 %i.sw, 255
  %i.tt = add nuw nsw i32 %i.tr, %i.ts
  %i.tu = lshr i32 %i.tt, 2
  %i.tv = uitofp nneg i32 %i.te to float          ; 2 uses
  %i.tw = uitofp nneg i32 %i.tm to float          ; 2 uses
  %i.tx = fmul float %i.qh, %i.tw
  %i.ty = tail call float @llvm.fmuladd.f32(float %i.qg, float %i.tv, float %i.tx)
  %i.tz = uitofp nneg i32 %i.tu to float          ; 2 uses
  %i.ua = tail call float @llvm.fmuladd.f32(float %i.qi, float %i.tz, float %i.ty)
  %i.ub = fadd float %i.ua, 5.000000e-01
  %i.uc = fptosi float %i.ub to i32               ; 3 uses
  %i.ud = icmp slt i32 %i.uc, -128
  br i1 %i.ud, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %scalar.ph1905
  %i.ue = icmp sgt i32 %i.uc, 127
  br i1 %i.ue, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.uf = trunc nsw i32 %i.uc to i8
  %i.ug = xor i8 %i.uf, -128
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %scalar.ph1905
  %i.uh = phi i8 [ 0, %scalar.ph1905 ], [ %i.ug, %bb.ah ], [ -1, %bb.ag ]
  %i.ui = getelementptr inbounds nuw i8, ptr %.113091487, i64 1
  store i8 %i.uh, ptr %.113091487, align 1
  %i.uj = fmul float %i.qk, %i.tw
  %i.uk = tail call float @llvm.fmuladd.f32(float %i.qj, float %i.tv, float %i.uj)
  %i.ul = tail call float @llvm.fmuladd.f32(float %i.ql, float %i.tz, float %i.uk)
  %i.um = fadd float %i.ul, 5.000000e-01
  %i.un = fptosi float %i.um to i32               ; 3 uses
  %i.uo = icmp slt i32 %i.un, -128
  br i1 %i.uo, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.up = icmp sgt i32 %i.un, 127
  br i1 %i.up, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.uq = trunc nsw i32 %i.un to i8
  %i.ur = xor i8 %i.uq, -128
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.us = phi i8 [ 0, %bb.ai ], [ %i.ur, %bb.ak ], [ -1, %bb.aj ]
  %i.ut = getelementptr inbounds nuw i8, ptr %.113091487, i64 2 ; 2 uses
  store i8 %i.us, ptr %i.ui, align 1
  %indvars.iv.next1604 = add nuw nsw i64 %indvars.iv1603, 1 ; 2 uses
  %exitcond1607.not = icmp eq i64 %indvars.iv.next1604, %wide.trip.count1606
  br i1 %exitcond1607.not, label %._crit_edge1489, label %scalar.ph1905, !llvm.loop !34

._crit_edge1489:                                  ; preds = %bb.al, %middle.block1944, %.preheader1441
  %.31333.lcssa.shrunk = phi i32 [ 0, %.preheader1441 ], [ %i.pw, %middle.block1944 ], [ %i.pw, %bb.al ]
  %.11309.lcssa = phi ptr [ %.013081495, %.preheader1441 ], [ %i.qo, %middle.block1944 ], [ %i.ut, %bb.al ] ; 4 uses
  br i1 %.not1407, label %bb.at, label %bb.am

bb.am:                                            ; preds = %._crit_edge1489
  %.31333.lcssa = zext nneg i32 %.31333.lcssa.shrunk to i64 ; 2 uses
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %.213211493, i64 %.31333.lcssa
  %i.uv = load i32, ptr %i.uu, align 4            ; 3 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %.113171494, i64 %.31333.lcssa
  %i.ux = load i32, ptr %i.uw, align 4            ; 3 uses
  %i.uy = and i32 %i.uv, 16711680
  %i.uz = and i32 %i.ux, 16711680
  %i.va = add nuw nsw i32 %i.uz, %i.uy
  %i.vb = lshr i32 %i.va, 17
  %i.vc = and i32 %i.uv, 65280
  %i.vd = and i32 %i.ux, 65280
  %i.ve = add nuw nsw i32 %i.vd, %i.vc
  %i.vf = lshr i32 %i.ve, 9
  %i.vg = and i32 %i.uv, 255
  %i.vh = and i32 %i.ux, 255
  %i.vi = add nuw nsw i32 %i.vh, %i.vg
  %i.vj = lshr i32 %i.vi, 1
  %i.vk = load float, ptr %i.po, align 8
  %i.vl = uitofp nneg i32 %i.vb to float          ; 2 uses
  %i.vm = load float, ptr %i.pp, align 4
  %i.vn = uitofp nneg i32 %i.vf to float          ; 2 uses
  %i.vo = fmul float %i.vm, %i.vn
  %i.vp = tail call float @llvm.fmuladd.f32(float %i.vk, float %i.vl, float %i.vo)
  %i.vq = load float, ptr %i.pq, align 8
  %i.vr = uitofp nneg i32 %i.vj to float          ; 2 uses
  %i.vs = tail call float @llvm.fmuladd.f32(float %i.vq, float %i.vr, float %i.vp)
  %i.vt = fadd float %i.vs, 5.000000e-01
  %i.vu = fptosi float %i.vt to i32               ; 3 uses
  %i.vv = icmp slt i32 %i.vu, -128
  br i1 %i.vv, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.vw = icmp sgt i32 %i.vu, 127
  br i1 %i.vw, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.vx = trunc nsw i32 %i.vu to i8
  %i.vy = xor i8 %i.vx, -128
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.vz = phi i8 [ 0, %bb.am ], [ %i.vy, %bb.ao ], [ -1, %bb.an ]
  %i.wa = getelementptr inbounds nuw i8, ptr %.11309.lcssa, i64 1
  store i8 %i.vz, ptr %.11309.lcssa, align 1
  %i.wb = load float, ptr %i.pr, align 4
  %i.wc = load float, ptr %i.ps, align 8
  %i.wd = fmul float %i.wc, %i.vn
  %i.we = tail call float @llvm.fmuladd.f32(float %i.wb, float %i.vl, float %i.wd)
  %i.wf = load float, ptr %i.pt, align 4
  %i.wg = tail call float @llvm.fmuladd.f32(float %i.wf, float %i.vr, float %i.we)
  %i.wh = fadd float %i.wg, 5.000000e-01
  %i.wi = fptosi float %i.wh to i32               ; 3 uses
  %i.wj = icmp slt i32 %i.wi, -128
  br i1 %i.wj, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.wk = icmp sgt i32 %i.wi, 127
  br i1 %i.wk, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.wl = trunc nsw i32 %i.wi to i8
  %i.wm = xor i8 %i.wl, -128
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.wn = phi i8 [ 0, %bb.ap ], [ %i.wm, %bb.ar ], [ -1, %bb.aq ]
  %i.wo = getelementptr inbounds nuw i8, ptr %.11309.lcssa, i64 2
  store i8 %i.wn, ptr %i.wa, align 1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %._crit_edge1489
  %.21310 = phi ptr [ %i.wo, %bb.as ], [ %.11309.lcssa, %._crit_edge1489 ]
  %i.wp = getelementptr inbounds nuw i8, ptr %.21310, i64 %i.pu ; 2 uses
  %i.wq = getelementptr inbounds i8, ptr %.213211493, i64 %i.pv ; 2 uses
  %i.wr = getelementptr inbounds i8, ptr %.113171494, i64 %i.pv
  %i.ws = add nuw nsw i32 %.213251492, 1          ; 2 uses
  %exitcond1608.not = icmp eq i32 %i.ws, %i.g
  br i1 %exitcond1608.not, label %._crit_edge1496, label %.preheader1441, !llvm.loop !35

._crit_edge1496:                                  ; preds = %bb.at, %bb.af
  %.21321.lcssa = phi ptr [ %2, %bb.af ], [ %i.wq, %bb.at ] ; 5 uses
  %.01308.lcssa = phi ptr [ %i.r, %bb.af ], [ %i.wp, %bb.at ] ; 9 uses
  %.not1405 = icmp eq i32 %i.h, 0
  br i1 %.not1405, label %._crit_edge1531._crit_edge, label %.preheader1440

.preheader1440:                                   ; preds = %._crit_edge1496
  %i.wt = icmp sgt i32 %0, 1
  br i1 %i.wt, label %.lr.ph1501, label %._crit_edge1502

.lr.ph1501:                                       ; preds = %.preheader1440
  %i.wu = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.wv = load float, ptr %i.wu, align 8          ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.wx = load float, ptr %i.ww, align 4          ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.wz = load float, ptr %i.wy, align 8          ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.xb = load float, ptr %i.xa, align 4          ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.xd = load float, ptr %i.xc, align 8          ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.xf = load float, ptr %i.xe, align 4          ; 2 uses
  %wide.trip.count1612 = zext nneg i32 %i.i to i64 ; 6 uses
  %min.iters.check1955 = icmp ult i32 %0, 8
  %12 = shl nuw nsw i64 %wide.trip.count1612, 1
  %13 = getelementptr i8, ptr %.01308.lcssa, i64 %12
  %14 = getelementptr i8, ptr %13, i64 -2
  %15 = icmp ult ptr %14, %.01308.lcssa
  %or.cond2324 = select i1 %min.iters.check1955, i1 true, i1 %15
  br i1 %or.cond2324, label %scalar.ph1954.preheader, label %vector.memcheck1956

vector.memcheck1956:                              ; preds = %.lr.ph1501
  %i.xg = shl nuw nsw i64 %wide.trip.count1612, 1
  %i.xh = getelementptr i8, ptr %.01308.lcssa, i64 %i.xg
  %i.xi = shl nuw nsw i64 %wide.trip.count1612, 3
  %i.xj = getelementptr i8, ptr %.21321.lcssa, i64 %i.xi
  %bound01957 = icmp ult ptr %.01308.lcssa, %i.xj
  %bound11958 = icmp ult ptr %.21321.lcssa, %i.xh
  %found.conflict1959 = and i1 %bound01957, %bound11958
  br i1 %found.conflict1959, label %scalar.ph1954.preheader, label %vector.ph1960

vector.ph1960:                                    ; preds = %vector.memcheck1956
  %n.vec1961 = and i64 %wide.trip.count1612, 1073741820 ; 4 uses
  %i.xk = shl nuw nsw i64 %n.vec1961, 1
  %i.xl = getelementptr i8, ptr %.01308.lcssa, i64 %i.xk ; 2 uses
  %broadcast.splatinsert1962 = insertelement <4 x float> poison, float %i.wv, i64 0
  %broadcast.splat1963 = shufflevector <4 x float> %broadcast.splatinsert1962, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1964 = insertelement <4 x float> poison, float %i.wx, i64 0
  %broadcast.splat1965 = shufflevector <4 x float> %broadcast.splatinsert1964, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1966 = insertelement <4 x float> poison, float %i.wz, i64 0
  %broadcast.splat1967 = shufflevector <4 x float> %broadcast.splatinsert1966, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1968 = insertelement <4 x float> poison, float %i.xb, i64 0
  %broadcast.splat1969 = shufflevector <4 x float> %broadcast.splatinsert1968, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1970 = insertelement <4 x float> poison, float %i.xd, i64 0
  %broadcast.splat1971 = shufflevector <4 x float> %broadcast.splatinsert1970, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1972 = insertelement <4 x float> poison, float %i.xf, i64 0
  %broadcast.splat1973 = shufflevector <4 x float> %broadcast.splatinsert1972, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1974

vector.body1974:                                  ; preds = %vector.body1974, %vector.ph1960
  %index1975 = phi i64 [ 0, %vector.ph1960 ], [ %index.next1985, %vector.body1974 ] ; 3 uses
  %i.xm = shl i64 %index1975, 1
  %next.gep1976 = getelementptr i8, ptr %.01308.lcssa, i64 %i.xm
  %i.xn = shl nuw nsw i64 %index1975, 3
  %i.xo = getelementptr inbounds nuw i8, ptr %.21321.lcssa, i64 %i.xn
  %wide.vec1977 = load <8 x i32>, ptr %i.xo, align 4, !alias.scope !91 ; 2 uses
  %strided.vec1978 = shufflevector <8 x i32> %wide.vec1977, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec1979 = shufflevector <8 x i32> %wide.vec1977, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.xp = and <4 x i32> %strided.vec1978, splat (i32 16711680)
  %i.xq = and <4 x i32> %strided.vec1979, splat (i32 16711680)
  %i.xr = add nuw nsw <4 x i32> %i.xq, %i.xp
  %i.xs = lshr <4 x i32> %i.xr, splat (i32 17)
  %i.xt = and <4 x i32> %strided.vec1978, splat (i32 65280)
  %i.xu = and <4 x i32> %strided.vec1979, splat (i32 65280)
  %i.xv = add nuw nsw <4 x i32> %i.xu, %i.xt
  %i.xw = lshr <4 x i32> %i.xv, splat (i32 9)
  %i.xx = and <4 x i32> %strided.vec1978, splat (i32 255)
  %i.xy = and <4 x i32> %strided.vec1979, splat (i32 255)
  %i.xz = add nuw nsw <4 x i32> %i.xy, %i.xx
  %i.ya = lshr <4 x i32> %i.xz, splat (i32 1)
  %i.yb = uitofp nneg <4 x i32> %i.xs to <4 x float> ; 2 uses
  %i.yc = uitofp nneg <4 x i32> %i.xw to <4 x float> ; 2 uses
  %i.yd = fmul <4 x float> %broadcast.splat1965, %i.yc
  %i.ye = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1963, <4 x float> %i.yb, <4 x float> %i.yd)
  %i.yf = uitofp nneg <4 x i32> %i.ya to <4 x float> ; 2 uses
  %i.yg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1967, <4 x float> %i.yf, <4 x float> %i.ye)
  %i.yh = fadd <4 x float> %i.yg, splat (float 5.000000e-01)
  %i.yi = fptosi <4 x float> %i.yh to <4 x i32>   ; 3 uses
  %i.yj = fmul <4 x float> %broadcast.splat1971, %i.yc
  %i.yk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1969, <4 x float> %i.yb, <4 x float> %i.yj)
  %i.yl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1973, <4 x float> %i.yf, <4 x float> %i.yk)
  %i.ym = fadd <4 x float> %i.yl, splat (float 5.000000e-01)
  %i.yn = fptosi <4 x float> %i.ym to <4 x i32>   ; 3 uses
  %i.yo = shufflevector <4 x i32> %i.yi, <4 x i32> %i.yn, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.yp = icmp sgt <8 x i32> %i.yo, splat (i32 -129)
  %i.yq = shufflevector <4 x i32> %i.yi, <4 x i32> %i.yn, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.yr = icmp sgt <8 x i32> %i.yq, splat (i32 127)
  %i.ys = shufflevector <4 x i32> %i.yi, <4 x i32> %i.yn, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.yt = trunc <8 x i32> %i.ys to <8 x i8>
  %i.yu = xor <8 x i8> %i.yt, splat (i8 -128)
  %i.yv = select <8 x i1> %i.yr, <8 x i8> splat (i8 -1), <8 x i8> %i.yu
  %interleaved.vec1984 = select <8 x i1> %i.yp, <8 x i8> %i.yv, <8 x i8> zeroinitializer
  store <8 x i8> %interleaved.vec1984, ptr %next.gep1976, align 1, !alias.scope !92, !noalias !91
  %index.next1985 = add nuw i64 %index1975, 4     ; 2 uses
  %i.yw = icmp eq i64 %index.next1985, %n.vec1961
  br i1 %i.yw, label %middle.block1986, label %vector.body1974, !llvm.loop !39

middle.block1986:                                 ; preds = %vector.body1974
  %cmp.n1987 = icmp eq i64 %n.vec1961, %wide.trip.count1612
  br i1 %cmp.n1987, label %._crit_edge1502.loopexit, label %scalar.ph1954.preheader

scalar.ph1954.preheader:                          ; preds = %vector.memcheck1956, %.lr.ph1501, %middle.block1986
  %indvars.iv1609.ph = phi i64 [ 0, %vector.memcheck1956 ], [ 0, %.lr.ph1501 ], [ %n.vec1961, %middle.block1986 ]
  %.313111500.ph = phi ptr [ %.01308.lcssa, %vector.memcheck1956 ], [ %.01308.lcssa, %.lr.ph1501 ], [ %i.xl, %middle.block1986 ]
  br label %scalar.ph1954

scalar.ph1954:                                    ; preds = %scalar.ph1954.preheader, %bb.az
  %indvars.iv1609 = phi i64 [ %indvars.iv.next1610, %bb.az ], [ %indvars.iv1609.ph, %scalar.ph1954.preheader ] ; 2 uses
  %.313111500 = phi ptr [ %i.aal, %bb.az ], [ %.313111500.ph, %scalar.ph1954.preheader ] ; 3 uses
  %.idx1688 = shl nuw nsw i64 %indvars.iv1609, 3
  %i.yx = getelementptr inbounds nuw i8, ptr %.21321.lcssa, i64 %.idx1688 ; 2 uses
  %i.yy = load i32, ptr %i.yx, align 4            ; 3 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yx, i64 4
  %i.za = load i32, ptr %i.yz, align 4            ; 3 uses
  %i.zb = and i32 %i.yy, 16711680
  %i.zc = and i32 %i.za, 16711680
  %i.zd = add nuw nsw i32 %i.zc, %i.zb
  %i.ze = lshr i32 %i.zd, 17
  %i.zf = and i32 %i.yy, 65280
  %i.zg = and i32 %i.za, 65280
  %i.zh = add nuw nsw i32 %i.zg, %i.zf
  %i.zi = lshr i32 %i.zh, 9
  %i.zj = and i32 %i.yy, 255
  %i.zk = and i32 %i.za, 255
  %i.zl = add nuw nsw i32 %i.zk, %i.zj
  %i.zm = lshr i32 %i.zl, 1
  %i.zn = uitofp nneg i32 %i.ze to float          ; 2 uses
  %i.zo = uitofp nneg i32 %i.zi to float          ; 2 uses
  %i.zp = fmul float %i.wx, %i.zo
  %i.zq = tail call float @llvm.fmuladd.f32(float %i.wv, float %i.zn, float %i.zp)
  %i.zr = uitofp nneg i32 %i.zm to float          ; 2 uses
  %i.zs = tail call float @llvm.fmuladd.f32(float %i.wz, float %i.zr, float %i.zq)
  %i.zt = fadd float %i.zs, 5.000000e-01
  %i.zu = fptosi float %i.zt to i32               ; 3 uses
  %i.zv = icmp slt i32 %i.zu, -128
  br i1 %i.zv, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %scalar.ph1954
  %i.zw = icmp sgt i32 %i.zu, 127
  br i1 %i.zw, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.zx = trunc nsw i32 %i.zu to i8
  %i.zy = xor i8 %i.zx, -128
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %scalar.ph1954
  %i.zz = phi i8 [ 0, %scalar.ph1954 ], [ %i.zy, %bb.av ], [ -1, %bb.au ]
  %i.aaa = getelementptr inbounds nuw i8, ptr %.313111500, i64 1
  store i8 %i.zz, ptr %.313111500, align 1
  %i.aab = fmul float %i.xd, %i.zo
  %i.aac = tail call float @llvm.fmuladd.f32(float %i.xb, float %i.zn, float %i.aab)
  %i.aad = tail call float @llvm.fmuladd.f32(float %i.xf, float %i.zr, float %i.aac)
  %i.aae = fadd float %i.aad, 5.000000e-01
  %i.aaf = fptosi float %i.aae to i32             ; 3 uses
  %i.aag = icmp slt i32 %i.aaf, -128
  br i1 %i.aag, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.aah = icmp sgt i32 %i.aaf, 127
  br i1 %i.aah, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.aai = trunc nsw i32 %i.aaf to i8
  %i.aaj = xor i8 %i.aai, -128
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.aak = phi i8 [ 0, %bb.aw ], [ %i.aaj, %bb.ay ], [ -1, %bb.ax ]
  %i.aal = getelementptr inbounds nuw i8, ptr %.313111500, i64 2 ; 2 uses
  store i8 %i.aak, ptr %i.aaa, align 1
  %indvars.iv.next1610 = add nuw nsw i64 %indvars.iv1609, 1 ; 2 uses
  %exitcond1613.not = icmp eq i64 %indvars.iv.next1610, %wide.trip.count1612
  br i1 %exitcond1613.not, label %._crit_edge1502.loopexit, label %scalar.ph1954, !llvm.loop !40

._crit_edge1502.loopexit:                         ; preds = %bb.az, %middle.block1986
  %.lcssa1721 = phi ptr [ %i.xl, %middle.block1986 ], [ %i.aal, %bb.az ]
  %i.aam = shl nuw nsw i32 %i.i, 1
  %i.aan = zext nneg i32 %i.aam to i64
  br label %._crit_edge1502

._crit_edge1502:                                  ; preds = %._crit_edge1502.loopexit, %.preheader1440
  %.41334.lcssa = phi i64 [ 0, %.preheader1440 ], [ %i.aan, %._crit_edge1502.loopexit ]
  %.31311.lcssa = phi ptr [ %.01308.lcssa, %.preheader1440 ], [ %.lcssa1721, %._crit_edge1502.loopexit ] ; 2 uses
  %.not1406 = icmp eq i32 %i.j, 0
  br i1 %.not1406, label %._crit_edge1531._crit_edge, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge1502
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %.21321.lcssa, i64 %.41334.lcssa
  %i.aap = load i32, ptr %i.aao, align 4          ; 3 uses
  %i.aaq = lshr i32 %i.aap, 16
  %i.aar = and i32 %i.aaq, 255
  %i.aas = lshr i32 %i.aap, 8
  %i.aat = and i32 %i.aas, 255
  %i.aau = and i32 %i.aap, 255
  %i.aav = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.aaw = load float, ptr %i.aav, align 8
  %i.aax = uitofp nneg i32 %i.aar to float        ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.aaz = load float, ptr %i.aay, align 4
  %i.aba = uitofp nneg i32 %i.aat to float        ; 2 uses
  %i.abb = fmul float %i.aaz, %i.aba
  %i.abc = tail call float @llvm.fmuladd.f32(float %i.aaw, float %i.aax, float %i.abb)
  %i.abd = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.abe = load float, ptr %i.abd, align 8
  %i.abf = uitofp nneg i32 %i.aau to float        ; 2 uses
  %i.abg = tail call float @llvm.fmuladd.f32(float %i.abe, float %i.abf, float %i.abc)
  %i.abh = fadd float %i.abg, 5.000000e-01
  %i.abi = fptosi float %i.abh to i32             ; 3 uses
  %i.abj = icmp slt i32 %i.abi, -128
  br i1 %i.abj, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.abk = icmp sgt i32 %i.abi, 127
  br i1 %i.abk, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.abl = trunc nsw i32 %i.abi to i8
  %i.abm = xor i8 %i.abl, -128
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.abn = phi i8 [ 0, %bb.ba ], [ %i.abm, %bb.bc ], [ -1, %bb.bb ]
  %i.abo = getelementptr inbounds nuw i8, ptr %.31311.lcssa, i64 1
  store i8 %i.abn, ptr %.31311.lcssa, align 1
  %i.abp = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.abq = load float, ptr %i.abp, align 4
  %i.abr = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.abs = load float, ptr %i.abr, align 8
  %i.abt = fmul float %i.abs, %i.aba
  %i.abu = tail call float @llvm.fmuladd.f32(float %i.abq, float %i.aax, float %i.abt)
  %i.abv = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.abw = load float, ptr %i.abv, align 4
  %i.abx = tail call float @llvm.fmuladd.f32(float %i.abw, float %i.abf, float %i.abu)
  %i.aby = fadd float %i.abx, 5.000000e-01
  %i.abz = fptosi float %i.aby to i32             ; 3 uses
  %i.aca = icmp slt i32 %i.abz, -128
  br i1 %i.aca, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.acb = icmp sgt i32 %i.abz, 127
  br i1 %i.acb, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.acc = trunc nsw i32 %i.abz to i8
  %i.acd = xor i8 %i.acc, -128
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %i.ace = phi i8 [ 0, %bb.bd ], [ %i.acd, %bb.bf ], [ -1, %bb.be ]
  store i8 %i.ace, ptr %i.abo, align 1
  br label %._crit_edge1531._crit_edge

bb.bh:                                            ; preds = %._crit_edge1484
  %i.acf = icmp sgt i32 %1, 1
  br i1 %i.acf, label %.preheader1437.lr.ph, label %._crit_edge1543

.preheader1437.lr.ph:                             ; preds = %bb.bh
  %i.acg = load i32, ptr %i.e, align 4
  %i.ach = add nsw i32 %0, 1
  %.neg = sdiv i32 %i.ach, -2
  %.neg1399 = shl nsw i32 %.neg, 1
  %i.aci = add i32 %i.acg, %.neg1399
  %i.acj = icmp sgt i32 %0, 1
  %i.ack = getelementptr inbounds nuw i8, ptr %i.l, i64 28 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.l, i64 36 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %.not1402 = icmp eq i32 %i.j, 0
  %i.acq = zext i32 %i.aci to i64
  %i.acr = sext i32 %i.f to i64                   ; 3 uses
  %wide.trip.count1628 = zext i32 %i.i to i64     ; 6 uses
  %i.acs = shl nuw nsw i32 %i.i, 1                ; 2 uses
  %i.act = add nsw i32 %i.g, -1
  %i.acu = zext i32 %i.act to i64
  %i.acv = mul nsw i64 %i.acr, %i.acu             ; 2 uses
  %i.acw = shl nuw nsw i64 %wide.trip.count1628, 3 ; 2 uses
  %i.acx = getelementptr i8, ptr %2, i64 %i.acv
  %scevgep2206 = getelementptr i8, ptr %i.acx, i64 %i.acw
  %i.acy = getelementptr i8, ptr %2, i64 %.pre-phi
  %i.acz = getelementptr i8, ptr %i.acy, i64 %i.acv
  %scevgep2207 = getelementptr i8, ptr %i.acz, i64 %i.acw
  %i.ada = shl nuw nsw i64 %wide.trip.count1628, 1
  %min.iters.check2209 = icmp ult i32 %0, 8
  %16 = shl nuw nsw i64 %wide.trip.count1628, 1
  %stride.check2214 = icmp slt i32 %i.f, 0
  %n.vec2220 = and i64 %wide.trip.count1628, 1073741820 ; 4 uses
  %i.adb = shl nuw nsw i64 %n.vec2220, 1
  %cmp.n2249 = icmp eq i64 %n.vec2220, %wide.trip.count1628
  br label %.preheader1437

.preheader1437:                                   ; preds = %.preheader1437.lr.ph, %bb.bv
  %.413121542 = phi ptr [ %i.r, %.preheader1437.lr.ph ], [ %i.ajl, %bb.bv ] ; 10 uses
  %.213181541 = phi ptr [ %i.cd, %.preheader1437.lr.ph ], [ %i.ajn, %bb.bv ] ; 5 uses
  %.313221540 = phi ptr [ %2, %.preheader1437.lr.ph ], [ %i.ajm, %bb.bv ] ; 5 uses
  %.313261539 = phi i32 [ 0, %.preheader1437.lr.ph ], [ %i.ajo, %bb.bv ]
  br i1 %i.acj, label %.lr.ph1535, label %._crit_edge1536

.lr.ph1535:                                       ; preds = %.preheader1437
  %i.adc = load float, ptr %i.ack, align 4        ; 2 uses
  %i.add = load float, ptr %i.acl, align 8        ; 2 uses
  %i.ade = load float, ptr %i.acm, align 4        ; 2 uses
  %i.adf = load float, ptr %i.acn, align 8        ; 2 uses
  %i.adg = load float, ptr %i.aco, align 4        ; 2 uses
  %i.adh = load float, ptr %i.acp, align 8        ; 2 uses
  %17 = getelementptr i8, ptr %.413121542, i64 %16
  %18 = getelementptr i8, ptr %17, i64 -2
  %19 = icmp ult ptr %18, %.413121542
  %or.cond2328 = select i1 %min.iters.check2209, i1 true, i1 %19
  br i1 %or.cond2328, label %scalar.ph2208.preheader, label %vector.memcheck2210

vector.memcheck2210:                              ; preds = %.lr.ph1535
  %i.adi = getelementptr i8, ptr %.413121542, i64 %i.ada ; 2 uses
  %bound02211 = icmp ult ptr %.413121542, %scevgep2207
  %bound12212 = icmp ult ptr %i.cd, %i.adi
  %found.conflict2213 = and i1 %bound02211, %bound12212
  %i.adj = or i1 %found.conflict2213, %stride.check2214
  %bound02215 = icmp ult ptr %.413121542, %scevgep2206
  %bound12216 = icmp ult ptr %2, %i.adi
  %found.conflict2217 = and i1 %bound02215, %bound12216
  %conflict.rdx2218 = or i1 %i.adj, %found.conflict2217
  br i1 %conflict.rdx2218, label %scalar.ph2208.preheader, label %vector.ph2219

vector.ph2219:                                    ; preds = %vector.memcheck2210
  %i.adk = getelementptr i8, ptr %.413121542, i64 %i.adb ; 2 uses
  %broadcast.splatinsert2221 = insertelement <4 x float> poison, float %i.adc, i64 0
  %broadcast.splat2222 = shufflevector <4 x float> %broadcast.splatinsert2221, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2223 = insertelement <4 x float> poison, float %i.add, i64 0
  %broadcast.splat2224 = shufflevector <4 x float> %broadcast.splatinsert2223, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2225 = insertelement <4 x float> poison, float %i.ade, i64 0
  %broadcast.splat2226 = shufflevector <4 x float> %broadcast.splatinsert2225, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2227 = insertelement <4 x float> poison, float %i.adf, i64 0
  %broadcast.splat2228 = shufflevector <4 x float> %broadcast.splatinsert2227, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2229 = insertelement <4 x float> poison, float %i.adg, i64 0
  %broadcast.splat2230 = shufflevector <4 x float> %broadcast.splatinsert2229, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2231 = insertelement <4 x float> poison, float %i.adh, i64 0
  %broadcast.splat2232 = shufflevector <4 x float> %broadcast.splatinsert2231, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body2233

vector.body2233:                                  ; preds = %vector.body2233, %vector.ph2219
  %index2234 = phi i64 [ 0, %vector.ph2219 ], [ %index.next2247, %vector.body2233 ] ; 3 uses
  %i.adl = shl i64 %index2234, 1
  %next.gep2235 = getelementptr i8, ptr %.413121542, i64 %i.adl
  %i.adm = shl nuw nsw i64 %index2234, 1          ; 2 uses
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %.313221540, i64 %i.adm
  %wide.vec2236 = load <8 x i32>, ptr %i.adn, align 4, !alias.scope !93 ; 2 uses
  %strided.vec2237 = shufflevector <8 x i32> %wide.vec2236, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec2238 = shufflevector <8 x i32> %wide.vec2236, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %.213181541, i64 %i.adm
  %wide.vec2239 = load <8 x i32>, ptr %i.ado, align 4, !alias.scope !94 ; 2 uses
  %strided.vec2240 = shufflevector <8 x i32> %wide.vec2239, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec2241 = shufflevector <8 x i32> %wide.vec2239, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.adp = and <4 x i32> %strided.vec2237, splat (i32 16711680)
  %i.adq = and <4 x i32> %strided.vec2238, splat (i32 16711680)
  %i.adr = add nuw nsw <4 x i32> %i.adq, %i.adp
  %i.ads = and <4 x i32> %strided.vec2240, splat (i32 16711680)
  %i.adt = add nuw nsw <4 x i32> %i.adr, %i.ads
  %i.adu = and <4 x i32> %strided.vec2241, splat (i32 16711680)
  %i.adv = add nuw nsw <4 x i32> %i.adt, %i.adu
  %i.adw = lshr <4 x i32> %i.adv, splat (i32 18)
  %i.adx = and <4 x i32> %strided.vec2237, splat (i32 65280)
  %i.ady = and <4 x i32> %strided.vec2238, splat (i32 65280)
  %i.adz = add nuw nsw <4 x i32> %i.ady, %i.adx
  %i.aea = and <4 x i32> %strided.vec2240, splat (i32 65280)
  %i.aeb = add nuw nsw <4 x i32> %i.adz, %i.aea
  %i.aec = and <4 x i32> %strided.vec2241, splat (i32 65280)
  %i.aed = add nuw nsw <4 x i32> %i.aeb, %i.aec
  %i.aee = lshr <4 x i32> %i.aed, splat (i32 10)
  %i.aef = and <4 x i32> %strided.vec2237, splat (i32 255)
  %i.aeg = and <4 x i32> %strided.vec2238, splat (i32 255)
  %i.aeh = add nuw nsw <4 x i32> %i.aeg, %i.aef
  %i.aei = and <4 x i32> %strided.vec2240, splat (i32 255)
  %i.aej = add nuw nsw <4 x i32> %i.aeh, %i.aei
  %i.aek = and <4 x i32> %strided.vec2241, splat (i32 255)
  %i.ael = add nuw nsw <4 x i32> %i.aej, %i.aek
  %i.aem = lshr <4 x i32> %i.ael, splat (i32 2)
  %i.aen = uitofp nneg <4 x i32> %i.adw to <4 x float> ; 2 uses
  %i.aeo = uitofp nneg <4 x i32> %i.aee to <4 x float> ; 2 uses
  %i.aep = fmul <4 x float> %broadcast.splat2224, %i.aeo
  %i.aeq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat2222, <4 x float> %i.aen, <4 x float> %i.aep)
  %i.aer = uitofp nneg <4 x i32> %i.aem to <4 x float> ; 2 uses
  %i.aes = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat2226, <4 x float> %i.aer, <4 x float> %i.aeq)
  %i.aet = fadd <4 x float> %i.aes, splat (float 5.000000e-01)
  %i.aeu = fptosi <4 x float> %i.aet to <4 x i32> ; 3 uses
  %i.aev = fmul <4 x float> %broadcast.splat2230, %i.aeo
  %i.aew = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat2228, <4 x float> %i.aen, <4 x float> %i.aev)
  %i.aex = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat2232, <4 x float> %i.aer, <4 x float> %i.aew)
  %i.aey = fadd <4 x float> %i.aex, splat (float 5.000000e-01)
  %i.aez = fptosi <4 x float> %i.aey to <4 x i32> ; 3 uses
  %i.afa = shufflevector <4 x i32> %i.aeu, <4 x i32> %i.aez, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.afb = icmp sgt <8 x i32> %i.afa, splat (i32 -129)
  %i.afc = shufflevector <4 x i32> %i.aeu, <4 x i32> %i.aez, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.afd = icmp sgt <8 x i32> %i.afc, splat (i32 127)
  %i.afe = shufflevector <4 x i32> %i.aeu, <4 x i32> %i.aez, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.aff = trunc <8 x i32> %i.afe to <8 x i8>
  %i.afg = xor <8 x i8> %i.aff, splat (i8 -128)
  %i.afh = select <8 x i1> %i.afd, <8 x i8> splat (i8 -1), <8 x i8> %i.afg
  %interleaved.vec2246 = select <8 x i1> %i.afb, <8 x i8> %i.afh, <8 x i8> zeroinitializer
  store <8 x i8> %interleaved.vec2246, ptr %next.gep2235, align 1, !alias.scope !95, !noalias !96
  %index.next2247 = add nuw i64 %index2234, 4     ; 2 uses
  %i.afi = icmp eq i64 %index.next2247, %n.vec2220
  br i1 %i.afi, label %middle.block2248, label %vector.body2233, !llvm.loop !45

middle.block2248:                                 ; preds = %vector.body2233
  br i1 %cmp.n2249, label %._crit_edge1536, label %scalar.ph2208.preheader

scalar.ph2208.preheader:                          ; preds = %vector.memcheck2210, %.lr.ph1535, %middle.block2248
  %indvars.iv1625.ph = phi i64 [ 0, %vector.memcheck2210 ], [ 0, %.lr.ph1535 ], [ %n.vec2220, %middle.block2248 ]
  %.513131534.ph = phi ptr [ %.413121542, %vector.memcheck2210 ], [ %.413121542, %.lr.ph1535 ], [ %i.adk, %middle.block2248 ]
  br label %scalar.ph2208

scalar.ph2208:                                    ; preds = %scalar.ph2208.preheader, %bb.bn
  %indvars.iv1625 = phi i64 [ %indvars.iv.next1626, %bb.bn ], [ %indvars.iv1625.ph, %scalar.ph2208.preheader ] ; 2 uses
  %.513131534 = phi ptr [ %i.ahp, %bb.bn ], [ %.513131534.ph, %scalar.ph2208.preheader ] ; 3 uses
  %i.afj = shl nuw nsw i64 %indvars.iv1625, 1     ; 3 uses
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %.313221540, i64 %i.afj
  %i.afl = load i32, ptr %i.afk, align 4          ; 3 uses
  %i.afm = or disjoint i64 %i.afj, 1              ; 2 uses
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %.313221540, i64 %i.afm
  %i.afo = load i32, ptr %i.afn, align 4          ; 3 uses
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %.213181541, i64 %i.afj
  %i.afq = load i32, ptr %i.afp, align 4          ; 3 uses
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %.213181541, i64 %i.afm
  %i.afs = load i32, ptr %i.afr, align 4          ; 3 uses
  %i.aft = and i32 %i.afl, 16711680
  %i.afu = and i32 %i.afo, 16711680
  %i.afv = add nuw nsw i32 %i.afu, %i.aft
  %i.afw = and i32 %i.afq, 16711680
  %i.afx = add nuw nsw i32 %i.afv, %i.afw
  %i.afy = and i32 %i.afs, 16711680
  %i.afz = add nuw nsw i32 %i.afx, %i.afy
  %i.aga = lshr i32 %i.afz, 18
  %i.agb = and i32 %i.afl, 65280
  %i.agc = and i32 %i.afo, 65280
  %i.agd = add nuw nsw i32 %i.agc, %i.agb
  %i.age = and i32 %i.afq, 65280
  %i.agf = add nuw nsw i32 %i.agd, %i.age
  %i.agg = and i32 %i.afs, 65280
  %i.agh = add nuw nsw i32 %i.agf, %i.agg
  %i.agi = lshr i32 %i.agh, 10
  %i.agj = and i32 %i.afl, 255
  %i.agk = and i32 %i.afo, 255
  %i.agl = add nuw nsw i32 %i.agk, %i.agj
  %i.agm = and i32 %i.afq, 255
  %i.agn = add nuw nsw i32 %i.agl, %i.agm
  %i.ago = and i32 %i.afs, 255
  %i.agp = add nuw nsw i32 %i.agn, %i.ago
  %i.agq = lshr i32 %i.agp, 2
  %i.agr = uitofp nneg i32 %i.aga to float        ; 2 uses
  %i.ags = uitofp nneg i32 %i.agi to float        ; 2 uses
  %i.agt = fmul float %i.add, %i.ags
  %i.agu = tail call float @llvm.fmuladd.f32(float %i.adc, float %i.agr, float %i.agt)
  %i.agv = uitofp nneg i32 %i.agq to float        ; 2 uses
  %i.agw = tail call float @llvm.fmuladd.f32(float %i.ade, float %i.agv, float %i.agu)
  %i.agx = fadd float %i.agw, 5.000000e-01
  %i.agy = fptosi float %i.agx to i32             ; 3 uses
  %i.agz = icmp slt i32 %i.agy, -128
  br i1 %i.agz, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %scalar.ph2208
  %i.aha = icmp sgt i32 %i.agy, 127
  br i1 %i.aha, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ahb = trunc nsw i32 %i.agy to i8
  %i.ahc = xor i8 %i.ahb, -128
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %scalar.ph2208
  %i.ahd = phi i8 [ 0, %scalar.ph2208 ], [ %i.ahc, %bb.bj ], [ -1, %bb.bi ]
  %i.ahe = getelementptr inbounds nuw i8, ptr %.513131534, i64 1
  store i8 %i.ahd, ptr %.513131534, align 1
  %i.ahf = fmul float %i.adg, %i.ags
  %i.ahg = tail call float @llvm.fmuladd.f32(float %i.adf, float %i.agr, float %i.ahf)
  %i.ahh = tail call float @llvm.fmuladd.f32(float %i.adh, float %i.agv, float %i.ahg)
  %i.ahi = fadd float %i.ahh, 5.000000e-01
  %i.ahj = fptosi float %i.ahi to i32             ; 3 uses
  %i.ahk = icmp slt i32 %i.ahj, -128
  br i1 %i.ahk, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ahl = icmp sgt i32 %i.ahj, 127
  br i1 %i.ahl, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ahm = trunc nsw i32 %i.ahj to i8
  %i.ahn = xor i8 %i.ahm, -128
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.aho = phi i8 [ 0, %bb.bk ], [ %i.ahn, %bb.bm ], [ -1, %bb.bl ]
  %i.ahp = getelementptr inbounds nuw i8, ptr %.513131534, i64 2 ; 2 uses
  store i8 %i.aho, ptr %i.ahe, align 1
  %indvars.iv.next1626 = add nuw nsw i64 %indvars.iv1625, 1 ; 2 uses
  %exitcond1629.not = icmp eq i64 %indvars.iv.next1626, %wide.trip.count1628
  br i1 %exitcond1629.not, label %._crit_edge1536, label %scalar.ph2208, !llvm.loop !46

._crit_edge1536:                                  ; preds = %bb.bn, %middle.block2248, %.preheader1437
  %.51335.lcssa.shrunk = phi i32 [ 0, %.preheader1437 ], [ %i.acs, %middle.block2248 ], [ %i.acs, %bb.bn ]
  %.51313.lcssa = phi ptr [ %.413121542, %.preheader1437 ], [ %i.adk, %middle.block2248 ], [ %i.ahp, %bb.bn ] ; 4 uses
  br i1 %.not1402, label %bb.bv, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge1536
  %.51335.lcssa = zext nneg i32 %.51335.lcssa.shrunk to i64 ; 2 uses
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %.313221540, i64 %.51335.lcssa
  %i.ahr = load i32, ptr %i.ahq, align 4          ; 3 uses
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %.213181541, i64 %.51335.lcssa
  %i.aht = load i32, ptr %i.ahs, align 4          ; 3 uses
  %i.ahu = and i32 %i.ahr, 16711680
  %i.ahv = and i32 %i.aht, 16711680
  %i.ahw = add nuw nsw i32 %i.ahv, %i.ahu
  %i.ahx = lshr i32 %i.ahw, 17
  %i.ahy = and i32 %i.ahr, 65280
  %i.ahz = and i32 %i.aht, 65280
  %i.aia = add nuw nsw i32 %i.ahz, %i.ahy
  %i.aib = lshr i32 %i.aia, 9
  %i.aic = and i32 %i.ahr, 255
  %i.aid = and i32 %i.aht, 255
  %i.aie = add nuw nsw i32 %i.aid, %i.aic
  %i.aif = lshr i32 %i.aie, 1
  %i.aig = load float, ptr %i.ack, align 4
  %i.aih = uitofp nneg i32 %i.ahx to float        ; 2 uses
  %i.aii = load float, ptr %i.acl, align 8
  %i.aij = uitofp nneg i32 %i.aib to float        ; 2 uses
  %i.aik = fmul float %i.aii, %i.aij
  %i.ail = tail call float @llvm.fmuladd.f32(float %i.aig, float %i.aih, float %i.aik)
  %i.aim = load float, ptr %i.acm, align 4
  %i.ain = uitofp nneg i32 %i.aif to float        ; 2 uses
  %i.aio = tail call float @llvm.fmuladd.f32(float %i.aim, float %i.ain, float %i.ail)
  %i.aip = fadd float %i.aio, 5.000000e-01
  %i.aiq = fptosi float %i.aip to i32             ; 3 uses
  %i.air = icmp slt i32 %i.aiq, -128
  br i1 %i.air, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ais = icmp sgt i32 %i.aiq, 127
  br i1 %i.ais, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ait = trunc nsw i32 %i.aiq to i8
  %i.aiu = xor i8 %i.ait, -128
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.aiv = phi i8 [ 0, %bb.bo ], [ %i.aiu, %bb.bq ], [ -1, %bb.bp ]
  %i.aiw = getelementptr inbounds nuw i8, ptr %.51313.lcssa, i64 1
  store i8 %i.aiv, ptr %.51313.lcssa, align 1
  %i.aix = load float, ptr %i.acn, align 8
  %i.aiy = load float, ptr %i.aco, align 4
  %i.aiz = fmul float %i.aiy, %i.aij
  %i.aja = tail call float @llvm.fmuladd.f32(float %i.aix, float %i.aih, float %i.aiz)
  %i.ajb = load float, ptr %i.acp, align 8
  %i.ajc = tail call float @llvm.fmuladd.f32(float %i.ajb, float %i.ain, float %i.aja)
  %i.ajd = fadd float %i.ajc, 5.000000e-01
  %i.aje = fptosi float %i.ajd to i32             ; 3 uses
  %i.ajf = icmp slt i32 %i.aje, -128
  br i1 %i.ajf, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ajg = icmp sgt i32 %i.aje, 127
  br i1 %i.ajg, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ajh = trunc nsw i32 %i.aje to i8
  %i.aji = xor i8 %i.ajh, -128
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  %i.ajj = phi i8 [ 0, %bb.br ], [ %i.aji, %bb.bt ], [ -1, %bb.bs ]
  %i.ajk = getelementptr inbounds nuw i8, ptr %.51313.lcssa, i64 2
  store i8 %i.ajj, ptr %i.aiw, align 1
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %._crit_edge1536
  %.61314 = phi ptr [ %i.ajk, %bb.bu ], [ %.51313.lcssa, %._crit_edge1536 ]
  %i.ajl = getelementptr inbounds nuw i8, ptr %.61314, i64 %i.acq ; 2 uses
  %i.ajm = getelementptr inbounds i8, ptr %.313221540, i64 %i.acr ; 2 uses
  %i.ajn = getelementptr inbounds i8, ptr %.213181541, i64 %i.acr
  %i.ajo = add nuw nsw i32 %.313261539, 1         ; 2 uses
  %exitcond1630.not = icmp eq i32 %i.ajo, %i.g
  br i1 %exitcond1630.not, label %._crit_edge1543, label %.preheader1437, !llvm.loop !47

._crit_edge1543:                                  ; preds = %bb.bv, %bb.bh
  %.31322.lcssa = phi ptr [ %2, %bb.bh ], [ %i.ajm, %bb.bv ] ; 5 uses
  %.41312.lcssa = phi ptr [ %i.r, %bb.bh ], [ %i.ajl, %bb.bv ] ; 9 uses
  %.not1400 = icmp eq i32 %i.h, 0
  br i1 %.not1400, label %._crit_edge1531._crit_edge, label %.preheader

.preheader:                                       ; preds = %._crit_edge1543
  %i.ajp = icmp sgt i32 %0, 1
  br i1 %i.ajp, label %.lr.ph1548, label %._crit_edge1549

.lr.ph1548:                                       ; preds = %.preheader
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.ajr = load float, ptr %i.ajq, align 4        ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ajt = load float, ptr %i.ajs, align 8        ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.ajv = load float, ptr %i.aju, align 4        ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ajx = load float, ptr %i.ajw, align 8        ; 2 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.ajz = load float, ptr %i.ajy, align 4        ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.akb = load float, ptr %i.aka, align 8        ; 2 uses
  %wide.trip.count1634 = zext nneg i32 %i.i to i64 ; 6 uses
  %min.iters.check2259 = icmp ult i32 %0, 8
  %20 = shl nuw nsw i64 %wide.trip.count1634, 1
  %21 = getelementptr i8, ptr %.41312.lcssa, i64 %20
  %22 = getelementptr i8, ptr %21, i64 -2
  %23 = icmp ult ptr %22, %.41312.lcssa
  %or.cond2332 = select i1 %min.iters.check2259, i1 true, i1 %23
  br i1 %or.cond2332, label %scalar.ph2258.preheader, label %vector.memcheck2260

vector.memcheck2260:                              ; preds = %.lr.ph1548
  %i.akc = shl nuw nsw i64 %wide.trip.count1634, 1
  %i.akd = getelementptr i8, ptr %.41312.lcssa, i64 %i.akc
  %i.ake = shl nuw nsw i64 %wide.trip.count1634, 3
  %i.akf = getelementptr i8, ptr %.31322.lcssa, i64 %i.ake
  %bound02261 = icmp ult ptr %.41312.lcssa, %i.akf
  %bound12262 = icmp ult ptr %.31322.lcssa, %i.akd
  %found.conflict2263 = and i1 %bound02261, %bound12262
  br i1 %found.conflict2263, label %scalar.ph2258.preheader, label %vector.ph2264

vector.ph2264:                                    ; preds = %vector.memcheck2260
  %n.vec2265 = and i64 %wide.trip.count1634, 1073741820 ; 4 uses
  %i.akg = shl nuw nsw i64 %n.vec2265, 1
  %i.akh = getelementptr i8, ptr %.41312.lcssa, i64 %i.akg ; 2 uses
  %broadcast.splatinsert2266 = insertelement <4 x float> poison, float %i.ajr, i64 0
  %broadcast.splat2267 = shufflevector <4 x float> %broadcast.splatinsert2266, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2268 = insertelement <4 x float> poison, float %i.ajt, i64 0
  %broadcast.splat2269 = shufflevector <4 x float> %broadcast.splatinsert2268, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2270 = insertelement <4 x float> poison, float %i.ajv, i64 0
  %broadcast.splat2271 = shufflevector <4 x float> %broadcast.splatinsert2270, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2272 = insertelement <4 x float> poison, float %i.ajx, i64 0
  %broadcast.splat2273 = shufflevector <4 x float> %broadcast.splatinsert2272, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2274 = insertelement <4 x float> poison, float %i.ajz, i64 0
  %broadcast.splat2275 = shufflevector <4 x float> %broadcast.splatinsert2274, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2276 = insertelement <4 x float> poison, float %i.akb, i64 0
  %broadcast.splat2277 = shufflevector <4 x float> %broadcast.splatinsert2276, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body2278

vector.body2278:                                  ; preds = %vector.body2278, %vector.ph2264
  %index2279 = phi i64 [ 0, %vector.ph2264 ], [ %index.next2289, %vector.body2278 ] ; 3 uses
  %i.aki = shl i64 %index2279, 1
  %next.gep2280 = getelementptr i8, ptr %.41312.lcssa, i64 %i.aki
  %i.akj = shl nuw nsw i64 %index2279, 3
  %i.akk = getelementptr inbounds nuw i8, ptr %.31322.lcssa, i64 %i.akj
  %wide.vec2281 = load <8 x i32>, ptr %i.akk, align 4, !alias.scope !97 ; 2 uses
  %strided.vec2282 = shufflevector <8 x i32> %wide.vec2281, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec2283 = shufflevector <8 x i32> %wide.vec2281, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.akl = and <4 x i32> %strided.vec2282, splat (i32 16711680)
  %i.akm = and <4 x i32> %strided.vec2283, splat (i32 16711680)
  %i.akn = add nuw nsw <4 x i32> %i.akm, %i.akl
  %i.ako = lshr <4 x i32> %i.akn, splat (i32 17)
  %i.akp = and <4 x i32> %strided.vec2282, splat (i32 65280)
  %i.akq = and <4 x i32> %strided.vec2283, splat (i32 65280)
  %i.akr = add nuw nsw <4 x i32> %i.akq, %i.akp
  %i.aks = lshr <4 x i32> %i.akr, splat (i32 9)
  %i.akt = and <4 x i32> %strided.vec2282, splat (i32 255)
  %i.aku = and <4 x i32> %strided.vec2283, splat (i32 255)
  %i.akv = add nuw nsw <4 x i32> %i.aku, %i.akt
  %i.akw = lshr <4 x i32> %i.akv, splat (i32 1)
  %i.akx = uitofp nneg <4 x i32> %i.ako to <4 x float> ; 2 uses
  %i.aky = uitofp nneg <4 x i32> %i.aks to <4 x float> ; 2 uses
  %i.akz = fmul <4 x float> %broadcast.splat2269, %i.aky
  %i.ala = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat2267, <4 x float> %i.akx, <4 x float> %i.akz)
  %i.alb = uitofp nneg <4 x i32> %i.akw to <4 x float> ; 2 uses
  %i.alc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat2271, <4 x float> %i.alb, <4 x float> %i.ala)
  %i.ald = fadd <4 x float> %i.alc, splat (float 5.000000e-01)
  %i.ale = fptosi <4 x float> %i.ald to <4 x i32> ; 3 uses
  %i.alf = fmul <4 x float> %broadcast.splat2275, %i.aky
  %i.alg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat2273, <4 x float> %i.akx, <4 x float> %i.alf)
  %i.alh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat2277, <4 x float> %i.alb, <4 x float> %i.alg)
  %i.ali = fadd <4 x float> %i.alh, splat (float 5.000000e-01)
  %i.alj = fptosi <4 x float> %i.ali to <4 x i32> ; 3 uses
  %i.alk = shufflevector <4 x i32> %i.ale, <4 x i32> %i.alj, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.all = icmp sgt <8 x i32> %i.alk, splat (i32 -129)
  %i.alm = shufflevector <4 x i32> %i.ale, <4 x i32> %i.alj, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.aln = icmp sgt <8 x i32> %i.alm, splat (i32 127)
  %i.alo = shufflevector <4 x i32> %i.ale, <4 x i32> %i.alj, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.alp = trunc <8 x i32> %i.alo to <8 x i8>
  %i.alq = xor <8 x i8> %i.alp, splat (i8 -128)
  %i.alr = select <8 x i1> %i.aln, <8 x i8> splat (i8 -1), <8 x i8> %i.alq
  %interleaved.vec2288 = select <8 x i1> %i.all, <8 x i8> %i.alr, <8 x i8> zeroinitializer
  store <8 x i8> %interleaved.vec2288, ptr %next.gep2280, align 1, !alias.scope !98, !noalias !97
  %index.next2289 = add nuw i64 %index2279, 4     ; 2 uses
  %i.als = icmp eq i64 %index.next2289, %n.vec2265
  br i1 %i.als, label %middle.block2290, label %vector.body2278, !llvm.loop !51

middle.block2290:                                 ; preds = %vector.body2278
  %cmp.n2291 = icmp eq i64 %n.vec2265, %wide.trip.count1634
  br i1 %cmp.n2291, label %._crit_edge1549.loopexit, label %scalar.ph2258.preheader

scalar.ph2258.preheader:                          ; preds = %vector.memcheck2260, %.lr.ph1548, %middle.block2290
  %indvars.iv1631.ph = phi i64 [ 0, %vector.memcheck2260 ], [ 0, %.lr.ph1548 ], [ %n.vec2265, %middle.block2290 ]
  %.713151547.ph = phi ptr [ %.41312.lcssa, %vector.memcheck2260 ], [ %.41312.lcssa, %.lr.ph1548 ], [ %i.akh, %middle.block2290 ]
  br label %scalar.ph2258

scalar.ph2258:                                    ; preds = %scalar.ph2258.preheader, %bb.cb
  %indvars.iv1631 = phi i64 [ %indvars.iv.next1632, %bb.cb ], [ %indvars.iv1631.ph, %scalar.ph2258.preheader ] ; 2 uses
  %.713151547 = phi ptr [ %i.anh, %bb.cb ], [ %.713151547.ph, %scalar.ph2258.preheader ] ; 3 uses
  %.idx1690 = shl nuw nsw i64 %indvars.iv1631, 3
  %i.alt = getelementptr inbounds nuw i8, ptr %.31322.lcssa, i64 %.idx1690 ; 2 uses
  %i.alu = load i32, ptr %i.alt, align 4          ; 3 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alt, i64 4
  %i.alw = load i32, ptr %i.alv, align 4          ; 3 uses
  %i.alx = and i32 %i.alu, 16711680
  %i.aly = and i32 %i.alw, 16711680
  %i.alz = add nuw nsw i32 %i.aly, %i.alx
  %i.ama = lshr i32 %i.alz, 17
  %i.amb = and i32 %i.alu, 65280
  %i.amc = and i32 %i.alw, 65280
  %i.amd = add nuw nsw i32 %i.amc, %i.amb
  %i.ame = lshr i32 %i.amd, 9
  %i.amf = and i32 %i.alu, 255
  %i.amg = and i32 %i.alw, 255
  %i.amh = add nuw nsw i32 %i.amg, %i.amf
  %i.ami = lshr i32 %i.amh, 1
  %i.amj = uitofp nneg i32 %i.ama to float        ; 2 uses
  %i.amk = uitofp nneg i32 %i.ame to float        ; 2 uses
  %i.aml = fmul float %i.ajt, %i.amk
  %i.amm = tail call float @llvm.fmuladd.f32(float %i.ajr, float %i.amj, float %i.aml)
  %i.amn = uitofp nneg i32 %i.ami to float        ; 2 uses
  %i.amo = tail call float @llvm.fmuladd.f32(float %i.ajv, float %i.amn, float %i.amm)
  %i.amp = fadd float %i.amo, 5.000000e-01
  %i.amq = fptosi float %i.amp to i32             ; 3 uses
  %i.amr = icmp slt i32 %i.amq, -128
  br i1 %i.amr, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %scalar.ph2258
  %i.ams = icmp sgt i32 %i.amq, 127
  br i1 %i.ams, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.amt = trunc nsw i32 %i.amq to i8
  %i.amu = xor i8 %i.amt, -128
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %scalar.ph2258
  %i.amv = phi i8 [ 0, %scalar.ph2258 ], [ %i.amu, %bb.bx ], [ -1, %bb.bw ]
  %i.amw = getelementptr inbounds nuw i8, ptr %.713151547, i64 1
  store i8 %i.amv, ptr %.713151547, align 1
  %i.amx = fmul float %i.ajz, %i.amk
  %i.amy = tail call float @llvm.fmuladd.f32(float %i.ajx, float %i.amj, float %i.amx)
  %i.amz = tail call float @llvm.fmuladd.f32(float %i.akb, float %i.amn, float %i.amy)
  %i.ana = fadd float %i.amz, 5.000000e-01
  %i.anb = fptosi float %i.ana to i32             ; 3 uses
  %i.anc = icmp slt i32 %i.anb, -128
  br i1 %i.anc, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.and = icmp sgt i32 %i.anb, 127
  br i1 %i.and, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ane = trunc nsw i32 %i.anb to i8
  %i.anf = xor i8 %i.ane, -128
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  %i.ang = phi i8 [ 0, %bb.by ], [ %i.anf, %bb.ca ], [ -1, %bb.bz ]
  %i.anh = getelementptr inbounds nuw i8, ptr %.713151547, i64 2 ; 2 uses
  store i8 %i.ang, ptr %i.amw, align 1
  %indvars.iv.next1632 = add nuw nsw i64 %indvars.iv1631, 1 ; 2 uses
  %exitcond1635.not = icmp eq i64 %indvars.iv.next1632, %wide.trip.count1634
  br i1 %exitcond1635.not, label %._crit_edge1549.loopexit, label %scalar.ph2258, !llvm.loop !52

._crit_edge1549.loopexit:                         ; preds = %bb.cb, %middle.block2290
  %.lcssa1712 = phi ptr [ %i.akh, %middle.block2290 ], [ %i.anh, %bb.cb ]
  %i.ani = shl nuw nsw i32 %i.i, 1
  %i.anj = zext nneg i32 %i.ani to i64
  br label %._crit_edge1549

._crit_edge1549:                                  ; preds = %._crit_edge1549.loopexit, %.preheader
  %.61336.lcssa = phi i64 [ 0, %.preheader ], [ %i.anj, %._crit_edge1549.loopexit ]
  %.71315.lcssa = phi ptr [ %.41312.lcssa, %.preheader ], [ %.lcssa1712, %._crit_edge1549.loopexit ] ; 2 uses
  %.not1401 = icmp eq i32 %i.j, 0
  br i1 %.not1401, label %._crit_edge1531._crit_edge, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge1549
  %i.ank = getelementptr inbounds nuw [4 x i8], ptr %.31322.lcssa, i64 %.61336.lcssa
  %i.anl = load i32, ptr %i.ank, align 4          ; 3 uses
  %i.anm = lshr i32 %i.anl, 16
  %i.ann = and i32 %i.anm, 255
  %i.ano = lshr i32 %i.anl, 8
  %i.anp = and i32 %i.ano, 255
  %i.anq = and i32 %i.anl, 255
  %i.anr = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.ans = load float, ptr %i.anr, align 4
  %i.ant = uitofp nneg i32 %i.ann to float        ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.anv = load float, ptr %i.anu, align 8
  %i.anw = uitofp nneg i32 %i.anp to float        ; 2 uses
  %i.anx = fmul float %i.anv, %i.anw
  %i.any = tail call float @llvm.fmuladd.f32(float %i.ans, float %i.ant, float %i.anx)
  %i.anz = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.aoa = load float, ptr %i.anz, align 4
  %i.aob = uitofp nneg i32 %i.anq to float        ; 2 uses
  %i.aoc = tail call float @llvm.fmuladd.f32(float %i.aoa, float %i.aob, float %i.any)
  %i.aod = fadd float %i.aoc, 5.000000e-01
  %i.aoe = fptosi float %i.aod to i32             ; 3 uses
  %i.aof = icmp slt i32 %i.aoe, -128
  br i1 %i.aof, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.aog = icmp sgt i32 %i.aoe, 127
  br i1 %i.aog, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.aoh = trunc nsw i32 %i.aoe to i8
  %i.aoi = xor i8 %i.aoh, -128
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cc
  %i.aoj = phi i8 [ 0, %bb.cc ], [ %i.aoi, %bb.ce ], [ -1, %bb.cd ]
  %i.aok = getelementptr inbounds nuw i8, ptr %.71315.lcssa, i64 1
  store i8 %i.aoj, ptr %.71315.lcssa, align 1
  %i.aol = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.aom = load float, ptr %i.aol, align 8
  %i.aon = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.aoo = load float, ptr %i.aon, align 4
  %i.aop = fmul float %i.aoo, %i.anw
  %i.aoq = tail call float @llvm.fmuladd.f32(float %i.aom, float %i.ant, float %i.aop)
  %i.aor = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.aos = load float, ptr %i.aor, align 8
  %i.aot = tail call float @llvm.fmuladd.f32(float %i.aos, float %i.aob, float %i.aoq)
  %i.aou = fadd float %i.aot, 5.000000e-01
  %i.aov = fptosi float %i.aou to i32             ; 3 uses
  %i.aow = icmp slt i32 %i.aov, -128
  br i1 %i.aow, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.aox = icmp sgt i32 %i.aov, 127
  br i1 %i.aox, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.aoy = trunc nsw i32 %i.aov to i8
  %i.aoz = xor i8 %i.aoy, -128
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  %i.apa = phi i8 [ 0, %bb.cf ], [ %i.aoz, %bb.ch ], [ -1, %bb.cg ]
  store i8 %i.apa, ptr %i.aok, align 1
  br label %._crit_edge1531._crit_edge

._crit_edge1531._crit_edge:                       ; preds = %bb.ae, %._crit_edge1531, %._crit_edge1523, %._crit_edge1543, %bb.ci, %._crit_edge1549, %._crit_edge1496, %bb.bg, %._crit_edge1502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.thread1425

bb.cj:                                            ; preds = %bb.a, %bb.a, %bb.a
  %i.apb = add nsw i32 %0, 1
  %i.apc = sdiv i32 %i.apb, 2
  %i.apd = shl nsw i32 %i.apc, 2                  ; 3 uses
  %.not1398 = icmp slt i32 %6, %i.apd
  br i1 %.not1398, label %.thread, label %bb.ck

.thread:                                          ; preds = %bb.cj
  %i.ape = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.14, i32 noundef %i.apd) #6
  br label %.thread1425

bb.ck:                                            ; preds = %bb.cj
  %i.apf = sub nsw i32 %6, %i.apd                 ; 3 uses
  switch i32 %4, label %.thread1425 [
    i32 844715353, label %.preheader1444
    i32 1498831189, label %.preheader1446
    i32 1431918169, label %.preheader1449
  ]

.preheader1449:                                   ; preds = %bb.ck
  %i.apg = icmp sgt i32 %1, 0
  br i1 %i.apg, label %.preheader1448.lr.ph, label %.thread1425

.preheader1448.lr.ph:                             ; preds = %.preheader1449
  %i.aph = icmp sgt i32 %0, 1
  %i.api = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.apk = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 2 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %i.l, i64 28 ; 2 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.apn = getelementptr inbounds nuw i8, ptr %i.l, i64 36 ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.app = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 2 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.not = icmp eq i32 %i.j, 0
  %i.apr = sext i32 %i.apf to i64
  %i.aps = sext i32 %3 to i64                     ; 2 uses
  %wide.trip.count = zext i32 %i.i to i64         ; 6 uses
  %i.apt = shl nuw nsw i32 %i.i, 1                ; 2 uses
  %24 = add nsw i64 %wide.trip.count, -1          ; 2 uses
  %i.apu = add nsw i32 %1, -1
  %i.apv = zext i32 %i.apu to i64
  %i.apw = mul nsw i64 %i.aps, %i.apv
  %i.apx = shl nuw nsw i64 %wide.trip.count, 3
  %i.apy = getelementptr i8, ptr %2, i64 %i.apw
  %scevgep = getelementptr i8, ptr %i.apy, i64 %i.apx
  %i.apz = shl nuw nsw i64 %wide.trip.count, 2
  %min.iters.check = icmp ult i32 %0, 8
  %mul.result = shl nsw i64 %24, 2
  %mul.overflow = icmp ugt i64 %24, 4611686018427387903
  %stride.check = icmp slt i32 %3, 0
  %n.vec = and i64 %wide.trip.count, 1073741820   ; 4 uses
  %i.aqa = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader1448

.preheader1446:                                   ; preds = %bb.ck
  %i.aqb = icmp sgt i32 %1, 0
  br i1 %i.aqb, label %.preheader1445.lr.ph, label %.thread1425

.preheader1445.lr.ph:                             ; preds = %.preheader1446
  %i.aqc = icmp sgt i32 %0, 1
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 2 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 2 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.l, i64 28 ; 2 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.l, i64 36 ; 2 uses
  %.not1396 = icmp eq i32 %i.j, 0
  %i.aql = sext i32 %i.apf to i64
  %i.aqm = sext i32 %3 to i64                     ; 2 uses
  %wide.trip.count1588 = zext i32 %i.i to i64     ; 6 uses
  %i.aqn = shl nuw nsw i32 %i.i, 1                ; 2 uses
  %25 = add nsw i64 %wide.trip.count1588, -1      ; 2 uses
  %i.aqo = add nsw i32 %1, -1
  %i.aqp = zext i32 %i.aqo to i64
  %i.aqq = mul nsw i64 %i.aqm, %i.aqp
  %i.aqr = shl nuw nsw i64 %wide.trip.count1588, 3
  %i.aqs = getelementptr i8, ptr %2, i64 %i.aqq
  %scevgep1760 = getelementptr i8, ptr %i.aqs, i64 %i.aqr
  %i.aqt = shl nuw nsw i64 %wide.trip.count1588, 2
  %min.iters.check1762 = icmp ult i32 %0, 8
  %mul.result1755 = shl nsw i64 %25, 2
  %mul.overflow1756 = icmp ugt i64 %25, 4611686018427387903
  %stride.check1767 = icmp slt i32 %3, 0
  %n.vec1769 = and i64 %wide.trip.count1588, 1073741820 ; 4 uses
  %i.aqu = shl nuw nsw i64 %n.vec1769, 2
  %cmp.n1803 = icmp eq i64 %n.vec1769, %wide.trip.count1588
  br label %.preheader1445

.preheader1444:                                   ; preds = %bb.ck
  %i.aqv = icmp sgt i32 %1, 0
  br i1 %i.aqv, label %.preheader1443.lr.ph, label %.thread1425

.preheader1443.lr.ph:                             ; preds = %.preheader1444
  %i.aqw = icmp sgt i32 %0, 1
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.ara = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.arb = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 2 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ard = getelementptr inbounds nuw i8, ptr %i.l, i64 28 ; 2 uses
  %i.are = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.arf = getelementptr inbounds nuw i8, ptr %i.l, i64 36 ; 2 uses
  %.not1397 = icmp eq i32 %i.j, 0
  %i.arg = sext i32 %i.apf to i64
  %i.arh = sext i32 %3 to i64                     ; 2 uses
  %wide.trip.count1594 = zext i32 %i.i to i64     ; 6 uses
  %i.ari = shl nuw nsw i32 %i.i, 1                ; 2 uses
  %26 = add nsw i64 %wide.trip.count1594, -1      ; 2 uses
  %i.arj = add nsw i32 %1, -1
  %i.ark = zext i32 %i.arj to i64
  %i.arl = mul nsw i64 %i.arh, %i.ark
  %i.arm = shl nuw nsw i64 %wide.trip.count1594, 3
  %i.arn = getelementptr i8, ptr %2, i64 %i.arl
  %scevgep1813 = getelementptr i8, ptr %i.arn, i64 %i.arm
  %i.aro = shl nuw nsw i64 %wide.trip.count1594, 2
  %min.iters.check1815 = icmp ult i32 %0, 8
  %mul.result1812 = shl nsw i64 %26, 2
  %mul.overflow1813 = icmp ugt i64 %26, 4611686018427387903
  %stride.check1820 = icmp slt i32 %3, 0
  %n.vec1822 = and i64 %wide.trip.count1594, 1073741820 ; 4 uses
  %i.arp = shl nuw nsw i64 %n.vec1822, 2
  %cmp.n1856 = icmp eq i64 %n.vec1822, %wide.trip.count1594
  br label %.preheader1443

.preheader1443:                                   ; preds = %.preheader1443.lr.ph, %bb.cy
  %.01474 = phi ptr [ %5, %.preheader1443.lr.ph ], [ %i.azz, %bb.cy ] ; 9 uses
  %.013031473 = phi ptr [ %2, %.preheader1443.lr.ph ], [ %i.baa, %bb.cy ] ; 4 uses
  %.413271472 = phi i32 [ 0, %.preheader1443.lr.ph ], [ %i.bab, %bb.cy ]
  br i1 %i.aqw, label %.lr.ph1468, label %._crit_edge1469

.lr.ph1468:                                       ; preds = %.preheader1443
  %i.arq = load float, ptr %i.aqz, align 4        ; 3 uses
  %i.arr = load i32, ptr %i.l, align 8            ; 3 uses
  %i.ars = load float, ptr %i.ara, align 8        ; 2 uses
  %i.art = load float, ptr %i.arb, align 4        ; 2 uses
  %i.aru = load float, ptr %i.arc, align 8        ; 2 uses
  %i.arv = load <2 x float>, ptr %i.aqx, align 4  ; 5 uses
  %i.arw = load float, ptr %i.aqy, align 8
  %i.arx = load <2 x float>, ptr %i.ard, align 4  ; 4 uses
  %i.ary = load float, ptr %i.arf, align 4        ; 2 uses
  %27 = getelementptr i8, ptr %.01474, i64 %mul.result1812
  %28 = icmp ult ptr %27, %.01474
  %29 = or i1 %28, %mul.overflow1813
  %or.cond2392 = select i1 %min.iters.check1815, i1 true, i1 %29
  br i1 %or.cond2392, label %scalar.ph1814.preheader, label %vector.memcheck1816

vector.memcheck1816:                              ; preds = %.lr.ph1468
  %i.arz = getelementptr i8, ptr %.01474, i64 %i.aro
  %bound01817 = icmp ult ptr %.01474, %scevgep1813
  %bound11818 = icmp ult ptr %2, %i.arz
  %found.conflict1819 = and i1 %bound01817, %bound11818
  %i.asa = or i1 %found.conflict1819, %stride.check1820
  br i1 %i.asa, label %scalar.ph1814.preheader, label %vector.ph1821

vector.ph1821:                                    ; preds = %vector.memcheck1816
  %i.asb = getelementptr i8, ptr %.01474, i64 %i.arp ; 2 uses
  %broadcast.splat1824 = shufflevector <2 x float> %i.arv, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat1826 = shufflevector <2 x float> %i.arv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert1827 = insertelement <4 x float> poison, float %i.arq, i64 0
  %broadcast.splat1828 = shufflevector <4 x float> %broadcast.splatinsert1827, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1829 = insertelement <4 x i32> poison, i32 %i.arr, i64 0
  %broadcast.splat1830 = shufflevector <4 x i32> %broadcast.splatinsert1829, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1831 = insertelement <4 x float> poison, float %i.ars, i64 0
  %broadcast.splat1832 = shufflevector <4 x float> %broadcast.splatinsert1831, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1833 = insertelement <4 x float> poison, float %i.art, i64 0
  %broadcast.splat1834 = shufflevector <4 x float> %broadcast.splatinsert1833, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1835 = insertelement <4 x float> poison, float %i.aru, i64 0
  %broadcast.splat1836 = shufflevector <4 x float> %broadcast.splatinsert1835, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1838 = shufflevector <2 x float> %i.arx, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1840 = shufflevector <2 x float> %i.arx, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert1841 = insertelement <4 x float> poison, float %i.ary, i64 0
  %broadcast.splat1842 = shufflevector <4 x float> %broadcast.splatinsert1841, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1843

vector.body1843:                                  ; preds = %vector.body1843, %vector.ph1821
  %index1844 = phi i64 [ 0, %vector.ph1821 ], [ %index.next1854, %vector.body1843 ] ; 3 uses
  %i.asc = shl i64 %index1844, 2
  %next.gep1845 = getelementptr i8, ptr %.01474, i64 %i.asc
  %i.asd = shl nuw nsw i64 %index1844, 3
  %i.ase = getelementptr inbounds nuw i8, ptr %.013031473, i64 %i.asd
  %wide.vec1846 = load <8 x i32>, ptr %i.ase, align 4, !alias.scope !99 ; 2 uses
  %strided.vec1847 = shufflevector <8 x i32> %wide.vec1846, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec1848 = shufflevector <8 x i32> %wide.vec1846, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.asf = lshr <4 x i32> %strided.vec1847, splat (i32 16)
  %i.asg = and <4 x i32> %i.asf, splat (i32 255)  ; 2 uses
  %i.ash = lshr <4 x i32> %strided.vec1847, splat (i32 8)
  %i.asi = and <4 x i32> %i.ash, splat (i32 255)  ; 2 uses
  %i.asj = and <4 x i32> %strided.vec1847, splat (i32 255) ; 2 uses
  %i.ask = lshr <4 x i32> %strided.vec1848, splat (i32 16)
  %i.asl = and <4 x i32> %i.ask, splat (i32 255)  ; 2 uses
  %i.asm = lshr <4 x i32> %strided.vec1848, splat (i32 8)
  %i.asn = and <4 x i32> %i.asm, splat (i32 255)  ; 2 uses
  %i.aso = and <4 x i32> %strided.vec1848, splat (i32 255) ; 2 uses
  %i.asp = add nuw nsw <4 x i32> %i.asl, %i.asg
  %i.asq = lshr <4 x i32> %i.asp, splat (i32 1)
  %i.asr = add nuw nsw <4 x i32> %i.asn, %i.asi
  %i.ass = lshr <4 x i32> %i.asr, splat (i32 1)
  %i.ast = add nuw nsw <4 x i32> %i.aso, %i.asj
  %i.asu = lshr <4 x i32> %i.ast, splat (i32 1)
  %i.asv = uitofp nneg <4 x i32> %i.asg to <4 x float>
  %i.asw = uitofp nneg <4 x i32> %i.asi to <4 x float>
  %i.asx = fmul <4 x float> %broadcast.splat1826, %i.asw
  %i.asy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1824, <4 x float> %i.asv, <4 x float> %i.asx)
  %i.asz = uitofp nneg <4 x i32> %i.asj to <4 x float>
  %i.ata = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1828, <4 x float> %i.asz, <4 x float> %i.asy)
  %i.atb = fadd <4 x float> %i.ata, splat (float 5.000000e-01)
  %i.atc = fptosi <4 x float> %i.atb to <4 x i32>
  %i.atd = add nsw <4 x i32> %broadcast.splat1830, %i.atc
  %i.ate = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.atd, <4 x i32> zeroinitializer)
  %i.atf = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ate, <4 x i32> splat (i32 255))
  %i.atg = trunc nuw <4 x i32> %i.atf to <4 x i8>
  %i.ath = uitofp nneg <4 x i32> %i.asq to <4 x float> ; 2 uses
  %i.ati = uitofp nneg <4 x i32> %i.ass to <4 x float> ; 2 uses
  %i.atj = fmul <4 x float> %broadcast.splat1834, %i.ati
  %i.atk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1832, <4 x float> %i.ath, <4 x float> %i.atj)
  %i.atl = uitofp nneg <4 x i32> %i.asu to <4 x float> ; 2 uses
  %i.atm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1836, <4 x float> %i.atl, <4 x float> %i.atk)
  %i.atn = fadd <4 x float> %i.atm, splat (float 5.000000e-01)
  %i.ato = fptosi <4 x float> %i.atn to <4 x i32> ; 3 uses
  %i.atp = icmp sgt <4 x i32> %i.ato, splat (i32 -129)
  %i.atq = icmp sgt <4 x i32> %i.ato, splat (i32 127)
  %i.atr = trunc <4 x i32> %i.ato to <4 x i8>
  %i.ats = xor <4 x i8> %i.atr, splat (i8 -128)
  %predphi1849 = select <4 x i1> %i.atq, <4 x i8> splat (i8 -1), <4 x i8> %i.ats
  %predphi1850 = select <4 x i1> %i.atp, <4 x i8> %predphi1849, <4 x i8> zeroinitializer
  %i.att = uitofp nneg <4 x i32> %i.asl to <4 x float>
  %i.atu = uitofp nneg <4 x i32> %i.asn to <4 x float>
  %i.atv = fmul <4 x float> %broadcast.splat1826, %i.atu
  %i.atw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1824, <4 x float> %i.att, <4 x float> %i.atv)
  %i.atx = uitofp nneg <4 x i32> %i.aso to <4 x float>
  %i.aty = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1828, <4 x float> %i.atx, <4 x float> %i.atw)
  %i.atz = fadd <4 x float> %i.aty, splat (float 5.000000e-01)
  %i.aua = fptosi <4 x float> %i.atz to <4 x i32>
  %i.aub = add nsw <4 x i32> %broadcast.splat1830, %i.aua
  %i.auc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.aub, <4 x i32> zeroinitializer)
  %i.aud = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.auc, <4 x i32> splat (i32 255))
  %i.aue = trunc nuw <4 x i32> %i.aud to <4 x i8>
  %i.auf = fmul <4 x float> %broadcast.splat1840, %i.ati
  %i.aug = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1838, <4 x float> %i.ath, <4 x float> %i.auf)
  %i.auh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1842, <4 x float> %i.atl, <4 x float> %i.aug)
  %i.aui = fadd <4 x float> %i.auh, splat (float 5.000000e-01)
  %i.auj = fptosi <4 x float> %i.aui to <4 x i32> ; 3 uses
  %i.auk = icmp sgt <4 x i32> %i.auj, splat (i32 -129)
  %i.aul = icmp sgt <4 x i32> %i.auj, splat (i32 127)
  %i.aum = trunc <4 x i32> %i.auj to <4 x i8>
  %i.aun = xor <4 x i8> %i.aum, splat (i8 -128)
  %predphi1851 = select <4 x i1> %i.aul, <4 x i8> splat (i8 -1), <4 x i8> %i.aun
  %predphi1852 = select <4 x i1> %i.auk, <4 x i8> %predphi1851, <4 x i8> zeroinitializer
  %i.auo = shufflevector <4 x i8> %i.atg, <4 x i8> %predphi1850, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aup = shufflevector <4 x i8> %i.aue, <4 x i8> %predphi1852, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec1853 = shufflevector <8 x i8> %i.auo, <8 x i8> %i.aup, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec1853, ptr %next.gep1845, align 1, !alias.scope !100, !noalias !99
  %index.next1854 = add nuw i64 %index1844, 4     ; 2 uses
  %i.auq = icmp eq i64 %index.next1854, %n.vec1822
  br i1 %i.auq, label %middle.block1855, label %vector.body1843, !llvm.loop !56

middle.block1855:                                 ; preds = %vector.body1843
  br i1 %cmp.n1856, label %._crit_edge1469, label %scalar.ph1814.preheader

scalar.ph1814.preheader:                          ; preds = %vector.memcheck1816, %.lr.ph1468, %middle.block1855
  %indvars.iv1591.ph = phi i64 [ 0, %vector.memcheck1816 ], [ %n.vec1822, %middle.block1855 ], [ 0, %.lr.ph1468 ]
  %.11467.ph = phi ptr [ %.01474, %vector.memcheck1816 ], [ %i.asb, %middle.block1855 ], [ %.01474, %.lr.ph1468 ]
  %i.aur = extractelement <2 x float> %i.arv, i64 0
  %i.aus = shufflevector <2 x float> %i.arv, <2 x float> %i.arx, <2 x i32> <i32 1, i32 3>
  %i.aut = shufflevector <2 x float> %i.arv, <2 x float> %i.arx, <2 x i32> <i32 0, i32 2>
  %i.auu = insertelement <2 x float> poison, float %i.arq, i64 0
  %i.auv = insertelement <2 x float> %i.auu, float %i.ary, i64 1
  br label %scalar.ph1814

scalar.ph1814:                                    ; preds = %scalar.ph1814.preheader, %bb.cq
  %indvars.iv1591 = phi i64 [ %indvars.iv.next1592, %bb.cq ], [ %indvars.iv1591.ph, %scalar.ph1814.preheader ] ; 2 uses
  %.11467 = phi ptr [ %i.axs, %bb.cq ], [ %.11467.ph, %scalar.ph1814.preheader ] ; 5 uses
  %.idx1687 = shl nuw nsw i64 %indvars.iv1591, 3
  %i.auw = getelementptr inbounds nuw i8, ptr %.013031473, i64 %.idx1687 ; 2 uses
  %i.aux = load i32, ptr %i.auw, align 4          ; 3 uses
  %i.auy = lshr i32 %i.aux, 16
  %i.auz = and i32 %i.auy, 255                    ; 2 uses
  %i.ava = lshr i32 %i.aux, 8
  %i.avb = and i32 %i.ava, 255                    ; 2 uses
  %i.avc = and i32 %i.aux, 255                    ; 2 uses
  %i.avd = getelementptr inbounds nuw i8, ptr %i.auw, i64 4
  %i.ave = load i32, ptr %i.avd, align 4          ; 3 uses
  %i.avf = lshr i32 %i.ave, 16
  %i.avg = and i32 %i.avf, 255                    ; 2 uses
  %i.avh = lshr i32 %i.ave, 8
  %i.avi = and i32 %i.avh, 255                    ; 2 uses
  %i.avj = and i32 %i.ave, 255                    ; 2 uses
  %i.avk = add nuw nsw i32 %i.avg, %i.auz
  %i.avl = lshr i32 %i.avk, 1
  %i.avm = add nuw nsw i32 %i.avi, %i.avb
  %i.avn = lshr i32 %i.avm, 1
  %i.avo = add nuw nsw i32 %i.avj, %i.avc
  %i.avp = lshr i32 %i.avo, 1
  %i.avq = uitofp nneg i32 %i.auz to float
  %i.avr = uitofp nneg i32 %i.avb to float
  %i.avs = fmul float %i.arw, %i.avr
  %i.avt = tail call float @llvm.fmuladd.f32(float %i.aur, float %i.avq, float %i.avs)
  %i.avu = uitofp nneg i32 %i.avc to float
  %i.avv = tail call float @llvm.fmuladd.f32(float %i.arq, float %i.avu, float %i.avt)
  %i.avw = fadd float %i.avv, 5.000000e-01
  %i.avx = fptosi float %i.avw to i32
  %i.avy = add nsw i32 %i.arr, %i.avx
  %i.avz = tail call i32 @llvm.smax.i32(i32 %i.avy, i32 0)
  %i.awa = tail call i32 @llvm.umin.i32(i32 %i.avz, i32 255)
  %i.awb = trunc nuw i32 %i.awa to i8
  %i.awc = getelementptr inbounds nuw i8, ptr %.11467, i64 1
  store i8 %i.awb, ptr %.11467, align 1
  %i.awd = uitofp nneg i32 %i.avl to float        ; 2 uses
  %i.awe = uitofp nneg i32 %i.avn to float        ; 2 uses
  %i.awf = fmul float %i.art, %i.awe
  %i.awg = tail call float @llvm.fmuladd.f32(float %i.ars, float %i.awd, float %i.awf)
  %i.awh = uitofp nneg i32 %i.avp to float        ; 2 uses
  %i.awi = tail call float @llvm.fmuladd.f32(float %i.aru, float %i.awh, float %i.awg)
  %i.awj = fadd float %i.awi, 5.000000e-01
  %i.awk = fptosi float %i.awj to i32             ; 3 uses
  %i.awl = icmp slt i32 %i.awk, -128
  br i1 %i.awl, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %scalar.ph1814
  %i.awm = icmp sgt i32 %i.awk, 127
  br i1 %i.awm, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.awn = trunc nsw i32 %i.awk to i8
  %i.awo = xor i8 %i.awn, -128
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %scalar.ph1814
  %i.awp = phi i8 [ 0, %scalar.ph1814 ], [ %i.awo, %bb.cm ], [ -1, %bb.cl ]
  %i.awq = getelementptr inbounds nuw i8, ptr %.11467, i64 2
  store i8 %i.awp, ptr %i.awc, align 1
  %i.awr = uitofp nneg i32 %i.avg to float
  %i.aws = uitofp nneg i32 %i.avi to float
  %i.awt = uitofp nneg i32 %i.avj to float
  %i.awu = getelementptr inbounds nuw i8, ptr %.11467, i64 3
  %i.awv = insertelement <2 x float> poison, float %i.aws, i64 0
  %i.aww = insertelement <2 x float> %i.awv, float %i.awe, i64 1
  %i.awx = fmul <2 x float> %i.aus, %i.aww
  %i.awy = insertelement <2 x float> poison, float %i.awr, i64 0
  %i.awz = insertelement <2 x float> %i.awy, float %i.awd, i64 1
  %i.axa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aut, <2 x float> %i.awz, <2 x float> %i.awx)
  %i.axb = insertelement <2 x float> poison, float %i.awt, i64 0
  %i.axc = insertelement <2 x float> %i.axb, float %i.awh, i64 1
  %i.axd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.auv, <2 x float> %i.axc, <2 x float> %i.axa)
  %i.axe = fadd <2 x float> %i.axd, splat (float 5.000000e-01) ; 2 uses
  %i.axf = extractelement <2 x float> %i.axe, i64 0
  %i.axg = fptosi float %i.axf to i32
  %i.axh = add nsw i32 %i.arr, %i.axg
  %i.axi = tail call i32 @llvm.smax.i32(i32 %i.axh, i32 0)
  %i.axj = tail call i32 @llvm.umin.i32(i32 %i.axi, i32 255)
  %i.axk = trunc nuw i32 %i.axj to i8
  store i8 %i.axk, ptr %i.awq, align 1
  %i.axl = extractelement <2 x float> %i.axe, i64 1
  %i.axm = fptosi float %i.axl to i32             ; 3 uses
  %i.axn = icmp slt i32 %i.axm, -128
  br i1 %i.axn, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.axo = icmp sgt i32 %i.axm, 127
  br i1 %i.axo, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.axp = trunc nsw i32 %i.axm to i8
  %i.axq = xor i8 %i.axp, -128
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cn
  %i.axr = phi i8 [ 0, %bb.cn ], [ %i.axq, %bb.cp ], [ -1, %bb.co ]
  %i.axs = getelementptr inbounds nuw i8, ptr %.11467, i64 4 ; 2 uses
  store i8 %i.axr, ptr %i.awu, align 1
  %indvars.iv.next1592 = add nuw nsw i64 %indvars.iv1591, 1 ; 2 uses
  %exitcond1595.not = icmp eq i64 %indvars.iv.next1592, %wide.trip.count1594
  br i1 %exitcond1595.not, label %._crit_edge1469, label %scalar.ph1814, !llvm.loop !57

._crit_edge1469:                                  ; preds = %bb.cq, %middle.block1855, %.preheader1443
  %.71337.lcssa.shrunk = phi i32 [ 0, %.preheader1443 ], [ %i.ari, %middle.block1855 ], [ %i.ari, %bb.cq ]
  %.1.lcssa = phi ptr [ %.01474, %.preheader1443 ], [ %i.asb, %middle.block1855 ], [ %i.axs, %bb.cq ] ; 6 uses
  br i1 %.not1397, label %bb.cy, label %bb.cr

bb.cr:                                            ; preds = %._crit_edge1469
  %.71337.lcssa = zext nneg i32 %.71337.lcssa.shrunk to i64
  %i.axt = getelementptr inbounds nuw [4 x i8], ptr %.013031473, i64 %.71337.lcssa
  %i.axu = load i32, ptr %i.axt, align 4          ; 3 uses
  %i.axv = lshr i32 %i.axu, 16
  %i.axw = and i32 %i.axv, 255
  %i.axx = lshr i32 %i.axu, 8
  %i.axy = and i32 %i.axx, 255
  %i.axz = and i32 %i.axu, 255
  %i.aya = load i32, ptr %i.l, align 8
  %i.ayb = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 1
  %i.ayc = uitofp nneg i32 %i.axw to float        ; 2 uses
  %i.ayd = uitofp nneg i32 %i.axy to float        ; 2 uses
  %i.aye = uitofp nneg i32 %i.axz to float        ; 2 uses
  %i.ayf = load <4 x float>, ptr %i.aqx, align 4  ; 3 uses
  %i.ayg = load <2 x float>, ptr %i.arb, align 4  ; 2 uses
  %i.ayh = shufflevector <4 x float> %i.ayf, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ayi = shufflevector <2 x float> %i.ayg, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ayj = shufflevector <4 x float> %i.ayf, <4 x float> %i.ayi, <2 x i32> <i32 1, i32 4>
  %i.ayk = insertelement <2 x float> poison, float %i.ayd, i64 0
  %i.ayl = shufflevector <2 x float> %i.ayk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aym = fmul <2 x float> %i.ayj, %i.ayl
  %i.ayn = shufflevector <4 x float> %i.ayf, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ayo = insertelement <2 x float> poison, float %i.ayc, i64 0
  %i.ayp = shufflevector <2 x float> %i.ayo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ayq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayn, <2 x float> %i.ayp, <2 x float> %i.aym)
  %i.ayr = shufflevector <2 x float> %i.ayh, <2 x float> %i.ayg, <2 x i32> <i32 0, i32 3>
  %i.ays = insertelement <2 x float> poison, float %i.aye, i64 0
  %i.ayt = shufflevector <2 x float> %i.ays, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ayu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ayr, <2 x float> %i.ayt, <2 x float> %i.ayq)
  %i.ayv = fadd <2 x float> %i.ayu, splat (float 5.000000e-01) ; 2 uses
  %i.ayw = extractelement <2 x float> %i.ayv, i64 0
  %i.ayx = fptosi float %i.ayw to i32
  %i.ayy = add nsw i32 %i.aya, %i.ayx
  %i.ayz = tail call i32 @llvm.smax.i32(i32 %i.ayy, i32 0)
  %i.aza = tail call i32 @llvm.umin.i32(i32 %i.ayz, i32 255)
  %i.azb = trunc nuw i32 %i.aza to i8             ; 2 uses
  store i8 %i.azb, ptr %.1.lcssa, align 1
  %i.azc = extractelement <2 x float> %i.ayv, i64 1
  %i.azd = fptosi float %i.azc to i32             ; 3 uses
  %i.aze = icmp slt i32 %i.azd, -128
  br i1 %i.aze, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.azf = icmp sgt i32 %i.azd, 127
  br i1 %i.azf, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.azg = trunc nsw i32 %i.azd to i8
  %i.azh = xor i8 %i.azg, -128
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cr
  %i.azi = phi i8 [ 0, %bb.cr ], [ %i.azh, %bb.ct ], [ -1, %bb.cs ]
  %i.azj = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 2
  store i8 %i.azi, ptr %i.ayb, align 1
  %i.azk = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 3
  store i8 %i.azb, ptr %i.azj, align 1
  %i.azl = load float, ptr %i.ard, align 4
  %i.azm = load float, ptr %i.are, align 8
  %i.azn = fmul float %i.azm, %i.ayd
  %i.azo = tail call float @llvm.fmuladd.f32(float %i.azl, float %i.ayc, float %i.azn)
  %i.azp = load float, ptr %i.arf, align 4
  %i.azq = tail call float @llvm.fmuladd.f32(float %i.azp, float %i.aye, float %i.azo)
  %i.azr = fadd float %i.azq, 5.000000e-01
  %i.azs = fptosi float %i.azr to i32             ; 3 uses
  %i.azt = icmp slt i32 %i.azs, -128
  br i1 %i.azt, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.azu = icmp sgt i32 %i.azs, 127
  br i1 %i.azu, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.azv = trunc nsw i32 %i.azs to i8
  %i.azw = xor i8 %i.azv, -128
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu
  %i.azx = phi i8 [ 0, %bb.cu ], [ %i.azw, %bb.cw ], [ -1, %bb.cv ]
  %i.azy = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 4
  store i8 %i.azx, ptr %i.azk, align 1
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %._crit_edge1469
  %.2 = phi ptr [ %i.azy, %bb.cx ], [ %.1.lcssa, %._crit_edge1469 ]
  %i.azz = getelementptr inbounds i8, ptr %.2, i64 %i.arg
  %i.baa = getelementptr inbounds i8, ptr %.013031473, i64 %i.arh
  %i.bab = add nuw nsw i32 %.413271472, 1         ; 2 uses
  %exitcond1596.not = icmp eq i32 %i.bab, %1
  br i1 %exitcond1596.not, label %.thread1425, label %.preheader1443, !llvm.loop !58

.preheader1445:                                   ; preds = %.preheader1445.lr.ph, %bb.dm
  %.31465 = phi ptr [ %5, %.preheader1445.lr.ph ], [ %i.bim, %bb.dm ] ; 9 uses
  %.113041464 = phi ptr [ %2, %.preheader1445.lr.ph ], [ %i.bin, %bb.dm ] ; 4 uses
  %.513281463 = phi i32 [ 0, %.preheader1445.lr.ph ], [ %i.bio, %bb.dm ]
  br i1 %i.aqc, label %.lr.ph1459, label %._crit_edge1460

.lr.ph1459:                                       ; preds = %.preheader1445
  %i.bac = load float, ptr %i.aqd, align 8        ; 2 uses
  %i.bad = load float, ptr %i.aqe, align 4        ; 2 uses
  %i.bae = load float, ptr %i.aqf, align 8        ; 2 uses
  %i.baf = load float, ptr %i.aqi, align 4        ; 3 uses
  %i.bag = load i32, ptr %i.l, align 8            ; 3 uses
  %i.bah = load <2 x float>, ptr %i.aqg, align 4  ; 5 uses
  %i.bai = load float, ptr %i.aqh, align 8
  %i.baj = load <2 x float>, ptr %i.aqj, align 4  ; 4 uses
  %i.bak = load float, ptr %i.aqk, align 4        ; 2 uses
  %30 = getelementptr i8, ptr %.31465, i64 %mul.result1755
  %31 = icmp ult ptr %30, %.31465
  %32 = or i1 %31, %mul.overflow1756
  %or.cond2395 = select i1 %min.iters.check1762, i1 true, i1 %32
  br i1 %or.cond2395, label %scalar.ph1761.preheader, label %vector.memcheck1763

vector.memcheck1763:                              ; preds = %.lr.ph1459
  %i.bal = getelementptr i8, ptr %.31465, i64 %i.aqt
  %bound01764 = icmp ult ptr %.31465, %scevgep1760
  %bound11765 = icmp ult ptr %2, %i.bal
  %found.conflict1766 = and i1 %bound01764, %bound11765
  %i.bam = or i1 %found.conflict1766, %stride.check1767
  br i1 %i.bam, label %scalar.ph1761.preheader, label %vector.ph1768

vector.ph1768:                                    ; preds = %vector.memcheck1763
  %i.ban = getelementptr i8, ptr %.31465, i64 %i.aqu ; 2 uses
  %broadcast.splatinsert1770 = insertelement <4 x float> poison, float %i.bac, i64 0
  %broadcast.splat1771 = shufflevector <4 x float> %broadcast.splatinsert1770, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1772 = insertelement <4 x float> poison, float %i.bad, i64 0
  %broadcast.splat1773 = shufflevector <4 x float> %broadcast.splatinsert1772, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1774 = insertelement <4 x float> poison, float %i.bae, i64 0
  %broadcast.splat1775 = shufflevector <4 x float> %broadcast.splatinsert1774, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1777 = shufflevector <2 x float> %i.bah, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat1779 = shufflevector <2 x float> %i.bah, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert1780 = insertelement <4 x float> poison, float %i.baf, i64 0
  %broadcast.splat1781 = shufflevector <4 x float> %broadcast.splatinsert1780, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1782 = insertelement <4 x i32> poison, i32 %i.bag, i64 0
  %broadcast.splat1783 = shufflevector <4 x i32> %broadcast.splatinsert1782, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat1785 = shufflevector <2 x float> %i.baj, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1787 = shufflevector <2 x float> %i.baj, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert1788 = insertelement <4 x float> poison, float %i.bak, i64 0
  %broadcast.splat1789 = shufflevector <4 x float> %broadcast.splatinsert1788, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1790

vector.body1790:                                  ; preds = %vector.body1790, %vector.ph1768
  %index1791 = phi i64 [ 0, %vector.ph1768 ], [ %index.next1801, %vector.body1790 ] ; 3 uses
  %i.bao = shl i64 %index1791, 2
  %next.gep1792 = getelementptr i8, ptr %.31465, i64 %i.bao
  %i.bap = shl nuw nsw i64 %index1791, 3
  %i.baq = getelementptr inbounds nuw i8, ptr %.113041464, i64 %i.bap
  %wide.vec1793 = load <8 x i32>, ptr %i.baq, align 4, !alias.scope !101 ; 2 uses
  %strided.vec1794 = shufflevector <8 x i32> %wide.vec1793, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec1795 = shufflevector <8 x i32> %wide.vec1793, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.bar = lshr <4 x i32> %strided.vec1794, splat (i32 16)
  %i.bas = and <4 x i32> %i.bar, splat (i32 255)  ; 2 uses
  %i.bat = lshr <4 x i32> %strided.vec1794, splat (i32 8)
  %i.bau = and <4 x i32> %i.bat, splat (i32 255)  ; 2 uses
  %i.bav = and <4 x i32> %strided.vec1794, splat (i32 255) ; 2 uses
  %i.baw = lshr <4 x i32> %strided.vec1795, splat (i32 16)
  %i.bax = and <4 x i32> %i.baw, splat (i32 255)  ; 2 uses
  %i.bay = lshr <4 x i32> %strided.vec1795, splat (i32 8)
  %i.baz = and <4 x i32> %i.bay, splat (i32 255)  ; 2 uses
  %i.bba = and <4 x i32> %strided.vec1795, splat (i32 255) ; 2 uses
  %i.bbb = add nuw nsw <4 x i32> %i.bax, %i.bas
  %i.bbc = lshr <4 x i32> %i.bbb, splat (i32 1)
  %i.bbd = add nuw nsw <4 x i32> %i.baz, %i.bau
  %i.bbe = lshr <4 x i32> %i.bbd, splat (i32 1)
  %i.bbf = add nuw nsw <4 x i32> %i.bba, %i.bav
  %i.bbg = lshr <4 x i32> %i.bbf, splat (i32 1)
  %i.bbh = uitofp nneg <4 x i32> %i.bbc to <4 x float> ; 2 uses
  %i.bbi = uitofp nneg <4 x i32> %i.bbe to <4 x float> ; 2 uses
  %i.bbj = fmul <4 x float> %broadcast.splat1773, %i.bbi
  %i.bbk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1771, <4 x float> %i.bbh, <4 x float> %i.bbj)
  %i.bbl = uitofp nneg <4 x i32> %i.bbg to <4 x float> ; 2 uses
  %i.bbm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1775, <4 x float> %i.bbl, <4 x float> %i.bbk)
  %i.bbn = fadd <4 x float> %i.bbm, splat (float 5.000000e-01)
  %i.bbo = fptosi <4 x float> %i.bbn to <4 x i32> ; 3 uses
  %i.bbp = icmp sgt <4 x i32> %i.bbo, splat (i32 -129)
  %i.bbq = icmp sgt <4 x i32> %i.bbo, splat (i32 127)
  %i.bbr = trunc <4 x i32> %i.bbo to <4 x i8>
  %i.bbs = xor <4 x i8> %i.bbr, splat (i8 -128)
  %predphi1796 = select <4 x i1> %i.bbq, <4 x i8> splat (i8 -1), <4 x i8> %i.bbs
  %predphi1797 = select <4 x i1> %i.bbp, <4 x i8> %predphi1796, <4 x i8> zeroinitializer
  %i.bbt = uitofp nneg <4 x i32> %i.bas to <4 x float>
  %i.bbu = uitofp nneg <4 x i32> %i.bau to <4 x float>
  %i.bbv = fmul <4 x float> %broadcast.splat1779, %i.bbu
  %i.bbw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1777, <4 x float> %i.bbt, <4 x float> %i.bbv)
  %i.bbx = uitofp nneg <4 x i32> %i.bav to <4 x float>
  %i.bby = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1781, <4 x float> %i.bbx, <4 x float> %i.bbw)
  %i.bbz = fadd <4 x float> %i.bby, splat (float 5.000000e-01)
  %i.bca = fptosi <4 x float> %i.bbz to <4 x i32>
  %i.bcb = add nsw <4 x i32> %broadcast.splat1783, %i.bca
  %i.bcc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bcb, <4 x i32> zeroinitializer)
  %i.bcd = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bcc, <4 x i32> splat (i32 255))
  %i.bce = trunc nuw <4 x i32> %i.bcd to <4 x i8>
  %i.bcf = fmul <4 x float> %broadcast.splat1787, %i.bbi
  %i.bcg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1785, <4 x float> %i.bbh, <4 x float> %i.bcf)
  %i.bch = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1789, <4 x float> %i.bbl, <4 x float> %i.bcg)
  %i.bci = fadd <4 x float> %i.bch, splat (float 5.000000e-01)
  %i.bcj = fptosi <4 x float> %i.bci to <4 x i32> ; 3 uses
  %i.bck = icmp sgt <4 x i32> %i.bcj, splat (i32 -129)
  %i.bcl = icmp sgt <4 x i32> %i.bcj, splat (i32 127)
  %i.bcm = trunc <4 x i32> %i.bcj to <4 x i8>
  %i.bcn = xor <4 x i8> %i.bcm, splat (i8 -128)
  %predphi1798 = select <4 x i1> %i.bcl, <4 x i8> splat (i8 -1), <4 x i8> %i.bcn
  %predphi1799 = select <4 x i1> %i.bck, <4 x i8> %predphi1798, <4 x i8> zeroinitializer
  %i.bco = uitofp nneg <4 x i32> %i.bax to <4 x float>
  %i.bcp = uitofp nneg <4 x i32> %i.baz to <4 x float>
  %i.bcq = fmul <4 x float> %broadcast.splat1779, %i.bcp
  %i.bcr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1777, <4 x float> %i.bco, <4 x float> %i.bcq)
  %i.bcs = uitofp nneg <4 x i32> %i.bba to <4 x float>
  %i.bct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1781, <4 x float> %i.bcs, <4 x float> %i.bcr)
  %i.bcu = fadd <4 x float> %i.bct, splat (float 5.000000e-01)
  %i.bcv = fptosi <4 x float> %i.bcu to <4 x i32>
  %i.bcw = add nsw <4 x i32> %broadcast.splat1783, %i.bcv
  %i.bcx = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bcw, <4 x i32> zeroinitializer)
  %i.bcy = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bcx, <4 x i32> splat (i32 255))
  %i.bcz = trunc nuw <4 x i32> %i.bcy to <4 x i8>
  %i.bda = shufflevector <4 x i8> %predphi1797, <4 x i8> %i.bce, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bdb = shufflevector <4 x i8> %predphi1799, <4 x i8> %i.bcz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec1800 = shufflevector <8 x i8> %i.bda, <8 x i8> %i.bdb, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec1800, ptr %next.gep1792, align 1, !alias.scope !102, !noalias !101
  %index.next1801 = add nuw i64 %index1791, 4     ; 2 uses
  %i.bdc = icmp eq i64 %index.next1801, %n.vec1769
  br i1 %i.bdc, label %middle.block1802, label %vector.body1790, !llvm.loop !62

middle.block1802:                                 ; preds = %vector.body1790
  br i1 %cmp.n1803, label %._crit_edge1460, label %scalar.ph1761.preheader

scalar.ph1761.preheader:                          ; preds = %vector.memcheck1763, %.lr.ph1459, %middle.block1802
  %indvars.iv1585.ph = phi i64 [ 0, %vector.memcheck1763 ], [ %n.vec1769, %middle.block1802 ], [ 0, %.lr.ph1459 ]
  %.41458.ph = phi ptr [ %.31465, %vector.memcheck1763 ], [ %i.ban, %middle.block1802 ], [ %.31465, %.lr.ph1459 ]
  %i.bdd = shufflevector <2 x float> %i.bah, <2 x float> %i.baj, <2 x i32> <i32 1, i32 3>
  %i.bde = shufflevector <2 x float> %i.bah, <2 x float> %i.baj, <2 x i32> <i32 0, i32 2>
  %i.bdf = insertelement <2 x float> poison, float %i.baf, i64 0
  %i.bdg = insertelement <2 x float> %i.bdf, float %i.bak, i64 1
  %i.bdh = extractelement <2 x float> %i.bah, i64 0
  br label %scalar.ph1761

scalar.ph1761:                                    ; preds = %scalar.ph1761.preheader, %bb.de
  %indvars.iv1585 = phi i64 [ %indvars.iv.next1586, %bb.de ], [ %indvars.iv1585.ph, %scalar.ph1761.preheader ] ; 2 uses
  %.41458 = phi ptr [ %i.bge, %bb.de ], [ %.41458.ph, %scalar.ph1761.preheader ] ; 5 uses
  %.idx1686 = shl nuw nsw i64 %indvars.iv1585, 3
  %i.bdi = getelementptr inbounds nuw i8, ptr %.113041464, i64 %.idx1686 ; 2 uses
  %i.bdj = load i32, ptr %i.bdi, align 4          ; 3 uses
  %i.bdk = lshr i32 %i.bdj, 16
  %i.bdl = and i32 %i.bdk, 255                    ; 2 uses
  %i.bdm = lshr i32 %i.bdj, 8
  %i.bdn = and i32 %i.bdm, 255                    ; 2 uses
  %i.bdo = and i32 %i.bdj, 255                    ; 2 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdi, i64 4
  %i.bdq = load i32, ptr %i.bdp, align 4          ; 3 uses
  %i.bdr = lshr i32 %i.bdq, 16
  %i.bds = and i32 %i.bdr, 255                    ; 2 uses
  %i.bdt = lshr i32 %i.bdq, 8
  %i.bdu = and i32 %i.bdt, 255                    ; 2 uses
  %i.bdv = and i32 %i.bdq, 255                    ; 2 uses
  %i.bdw = add nuw nsw i32 %i.bds, %i.bdl
  %i.bdx = lshr i32 %i.bdw, 1
  %i.bdy = add nuw nsw i32 %i.bdu, %i.bdn
  %i.bdz = lshr i32 %i.bdy, 1
  %i.bea = add nuw nsw i32 %i.bdv, %i.bdo
  %i.beb = lshr i32 %i.bea, 1
  %i.bec = uitofp nneg i32 %i.bdx to float        ; 2 uses
  %i.bed = uitofp nneg i32 %i.bdz to float        ; 2 uses
  %i.bee = fmul float %i.bad, %i.bed
  %i.bef = tail call float @llvm.fmuladd.f32(float %i.bac, float %i.bec, float %i.bee)
  %i.beg = uitofp nneg i32 %i.beb to float        ; 2 uses
  %i.beh = tail call float @llvm.fmuladd.f32(float %i.bae, float %i.beg, float %i.bef)
  %i.bei = fadd float %i.beh, 5.000000e-01
  %i.bej = fptosi float %i.bei to i32             ; 3 uses
  %i.bek = icmp slt i32 %i.bej, -128
  br i1 %i.bek, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %scalar.ph1761
  %i.bel = icmp sgt i32 %i.bej, 127
  br i1 %i.bel, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.bem = trunc nsw i32 %i.bej to i8
  %i.ben = xor i8 %i.bem, -128
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %scalar.ph1761
  %i.beo = phi i8 [ 0, %scalar.ph1761 ], [ %i.ben, %bb.da ], [ -1, %bb.cz ]
  %i.bep = getelementptr inbounds nuw i8, ptr %.41458, i64 1
  store i8 %i.beo, ptr %.41458, align 1
  %i.beq = uitofp nneg i32 %i.bdl to float
  %i.ber = uitofp nneg i32 %i.bdn to float
  %i.bes = uitofp nneg i32 %i.bdo to float
  %i.bet = getelementptr inbounds nuw i8, ptr %.41458, i64 2
  %i.beu = insertelement <2 x float> poison, float %i.ber, i64 0
  %i.bev = insertelement <2 x float> %i.beu, float %i.bed, i64 1
  %i.bew = fmul <2 x float> %i.bdd, %i.bev
  %i.bex = insertelement <2 x float> poison, float %i.beq, i64 0
  %i.bey = insertelement <2 x float> %i.bex, float %i.bec, i64 1
  %i.bez = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bde, <2 x float> %i.bey, <2 x float> %i.bew)
  %i.bfa = insertelement <2 x float> poison, float %i.bes, i64 0
  %i.bfb = insertelement <2 x float> %i.bfa, float %i.beg, i64 1
  %i.bfc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bdg, <2 x float> %i.bfb, <2 x float> %i.bez)
  %i.bfd = fadd <2 x float> %i.bfc, splat (float 5.000000e-01) ; 2 uses
  %i.bfe = extractelement <2 x float> %i.bfd, i64 0
  %i.bff = fptosi float %i.bfe to i32
  %i.bfg = add nsw i32 %i.bag, %i.bff
  %i.bfh = tail call i32 @llvm.smax.i32(i32 %i.bfg, i32 0)
  %i.bfi = tail call i32 @llvm.umin.i32(i32 %i.bfh, i32 255)
  %i.bfj = trunc nuw i32 %i.bfi to i8
  store i8 %i.bfj, ptr %i.bep, align 1
  %i.bfk = extractelement <2 x float> %i.bfd, i64 1
  %i.bfl = fptosi float %i.bfk to i32             ; 3 uses
  %i.bfm = icmp slt i32 %i.bfl, -128
  br i1 %i.bfm, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.bfn = icmp sgt i32 %i.bfl, 127
  br i1 %i.bfn, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.bfo = trunc nsw i32 %i.bfl to i8
  %i.bfp = xor i8 %i.bfo, -128
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.db
  %i.bfq = phi i8 [ 0, %bb.db ], [ %i.bfp, %bb.dd ], [ -1, %bb.dc ]
  %i.bfr = getelementptr inbounds nuw i8, ptr %.41458, i64 3
  store i8 %i.bfq, ptr %i.bet, align 1
  %i.bfs = uitofp nneg i32 %i.bds to float
  %i.bft = uitofp nneg i32 %i.bdu to float
  %i.bfu = fmul float %i.bai, %i.bft
  %i.bfv = tail call float @llvm.fmuladd.f32(float %i.bdh, float %i.bfs, float %i.bfu)
  %i.bfw = uitofp nneg i32 %i.bdv to float
  %i.bfx = tail call float @llvm.fmuladd.f32(float %i.baf, float %i.bfw, float %i.bfv)
  %i.bfy = fadd float %i.bfx, 5.000000e-01
  %i.bfz = fptosi float %i.bfy to i32
  %i.bga = add nsw i32 %i.bag, %i.bfz
  %i.bgb = tail call i32 @llvm.smax.i32(i32 %i.bga, i32 0)
  %i.bgc = tail call i32 @llvm.umin.i32(i32 %i.bgb, i32 255)
  %i.bgd = trunc nuw i32 %i.bgc to i8
  %i.bge = getelementptr inbounds nuw i8, ptr %.41458, i64 4 ; 2 uses
  store i8 %i.bgd, ptr %i.bfr, align 1
  %indvars.iv.next1586 = add nuw nsw i64 %indvars.iv1585, 1 ; 2 uses
  %exitcond1589.not = icmp eq i64 %indvars.iv.next1586, %wide.trip.count1588
  br i1 %exitcond1589.not, label %._crit_edge1460, label %scalar.ph1761, !llvm.loop !63

._crit_edge1460:                                  ; preds = %bb.de, %middle.block1802, %.preheader1445
  %.81338.lcssa.shrunk = phi i32 [ 0, %.preheader1445 ], [ %i.aqn, %middle.block1802 ], [ %i.aqn, %bb.de ]
  %.4.lcssa = phi ptr [ %.31465, %.preheader1445 ], [ %i.ban, %middle.block1802 ], [ %i.bge, %bb.de ] ; 6 uses
  br i1 %.not1396, label %bb.dm, label %bb.df

bb.df:                                            ; preds = %._crit_edge1460
  %.81338.lcssa = zext nneg i32 %.81338.lcssa.shrunk to i64
  %i.bgf = getelementptr inbounds nuw [4 x i8], ptr %.113041464, i64 %.81338.lcssa
  %i.bgg = load i32, ptr %i.bgf, align 4          ; 3 uses
  %i.bgh = lshr i32 %i.bgg, 16
  %i.bgi = and i32 %i.bgh, 255
  %i.bgj = lshr i32 %i.bgg, 8
  %i.bgk = and i32 %i.bgj, 255
  %i.bgl = and i32 %i.bgg, 255
  %i.bgm = load float, ptr %i.aqd, align 8
  %i.bgn = load float, ptr %i.aqe, align 4
  %i.bgo = load float, ptr %i.aqf, align 8
  %i.bgp = uitofp nneg i32 %i.bgi to float        ; 2 uses
  %i.bgq = uitofp nneg i32 %i.bgk to float        ; 2 uses
  %i.bgr = fmul float %i.bgn, %i.bgq
  %i.bgs = tail call float @llvm.fmuladd.f32(float %i.bgm, float %i.bgp, float %i.bgr)
  %i.bgt = uitofp nneg i32 %i.bgl to float        ; 2 uses
  %i.bgu = tail call float @llvm.fmuladd.f32(float %i.bgo, float %i.bgt, float %i.bgs)
  %i.bgv = fadd float %i.bgu, 5.000000e-01
  %i.bgw = fptosi float %i.bgv to i32             ; 3 uses
  %i.bgx = icmp slt i32 %i.bgw, -128
  br i1 %i.bgx, label %bb.di, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.bgy = icmp sgt i32 %i.bgw, 127
  br i1 %i.bgy, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.bgz = trunc nsw i32 %i.bgw to i8
  %i.bha = xor i8 %i.bgz, -128
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %bb.df
  %i.bhb = phi i8 [ 0, %bb.df ], [ %i.bha, %bb.dh ], [ -1, %bb.dg ]
  %i.bhc = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 1
  store i8 %i.bhb, ptr %.4.lcssa, align 1
  %i.bhd = load float, ptr %i.aqi, align 4
  %i.bhe = load i32, ptr %i.l, align 8
  %i.bhf = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 2
  %i.bhg = load float, ptr %i.aqk, align 4
  %i.bhh = load <2 x float>, ptr %i.aqg, align 4  ; 2 uses
  %i.bhi = load <2 x float>, ptr %i.aqj, align 4  ; 2 uses
  %i.bhj = shufflevector <2 x float> %i.bhh, <2 x float> %i.bhi, <2 x i32> <i32 1, i32 3>
  %i.bhk = insertelement <2 x float> poison, float %i.bgq, i64 0
  %i.bhl = shufflevector <2 x float> %i.bhk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bhm = fmul <2 x float> %i.bhj, %i.bhl
  %i.bhn = shufflevector <2 x float> %i.bhh, <2 x float> %i.bhi, <2 x i32> <i32 0, i32 2>
  %i.bho = insertelement <2 x float> poison, float %i.bgp, i64 0
  %i.bhp = shufflevector <2 x float> %i.bho, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bhq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bhn, <2 x float> %i.bhp, <2 x float> %i.bhm)
  %i.bhr = insertelement <2 x float> poison, float %i.bhd, i64 0
  %i.bhs = insertelement <2 x float> %i.bhr, float %i.bhg, i64 1
  %i.bht = insertelement <2 x float> poison, float %i.bgt, i64 0
  %i.bhu = shufflevector <2 x float> %i.bht, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bhv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bhs, <2 x float> %i.bhu, <2 x float> %i.bhq)
  %i.bhw = fadd <2 x float> %i.bhv, splat (float 5.000000e-01) ; 2 uses
  %i.bhx = extractelement <2 x float> %i.bhw, i64 0
  %i.bhy = fptosi float %i.bhx to i32
  %i.bhz = add nsw i32 %i.bhe, %i.bhy
  %i.bia = tail call i32 @llvm.smax.i32(i32 %i.bhz, i32 0)
  %i.bib = tail call i32 @llvm.umin.i32(i32 %i.bia, i32 255)
  %i.bic = trunc nuw i32 %i.bib to i8             ; 2 uses
  store i8 %i.bic, ptr %i.bhc, align 1
  %i.bid = extractelement <2 x float> %i.bhw, i64 1
  %i.bie = fptosi float %i.bid to i32             ; 3 uses
  %i.bif = icmp slt i32 %i.bie, -128
  br i1 %i.bif, label %bb.dl, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.big = icmp sgt i32 %i.bie, 127
  br i1 %i.big, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.bih = trunc nsw i32 %i.bie to i8
  %i.bii = xor i8 %i.bih, -128
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %bb.di
  %i.bij = phi i8 [ 0, %bb.di ], [ %i.bii, %bb.dk ], [ -1, %bb.dj ]
  %i.bik = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 3
  store i8 %i.bij, ptr %i.bhf, align 1
  %i.bil = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 4
  store i8 %i.bic, ptr %i.bik, align 1
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %._crit_edge1460
  %.5 = phi ptr [ %i.bil, %bb.dl ], [ %.4.lcssa, %._crit_edge1460 ]
  %i.bim = getelementptr inbounds i8, ptr %.5, i64 %i.aql
  %i.bin = getelementptr inbounds i8, ptr %.113041464, i64 %i.aqm
  %i.bio = add nuw nsw i32 %.513281463, 1         ; 2 uses
  %exitcond1590.not = icmp eq i32 %i.bio, %1
  br i1 %exitcond1590.not, label %.thread1425, label %.preheader1445, !llvm.loop !64

.preheader1448:                                   ; preds = %.preheader1448.lr.ph, %bb.ea
  %.61456 = phi ptr [ %5, %.preheader1448.lr.ph ], [ %i.bqz, %bb.ea ] ; 9 uses
  %.213051455 = phi ptr [ %2, %.preheader1448.lr.ph ], [ %i.bra, %bb.ea ] ; 4 uses
  %.613291454 = phi i32 [ 0, %.preheader1448.lr.ph ], [ %i.brb, %bb.ea ]
  br i1 %i.aph, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader1448
  %i.bip = load i32, ptr %i.l, align 8            ; 3 uses
  %i.biq = load float, ptr %i.apl, align 4        ; 2 uses
  %i.bir = load float, ptr %i.apm, align 8        ; 2 uses
  %i.bis = load float, ptr %i.apn, align 4        ; 2 uses
  %i.bit = load <4 x float>, ptr %i.api, align 4  ; 8 uses
  %i.biu = load float, ptr %i.apk, align 4
  %i.biv = load float, ptr %i.apj, align 8
  %i.biw = load <2 x float>, ptr %i.app, align 4  ; 4 uses
  %33 = getelementptr i8, ptr %.61456, i64 %mul.result
  %34 = icmp ult ptr %33, %.61456
  %35 = or i1 %34, %mul.overflow
  %or.cond2398 = select i1 %min.iters.check, i1 true, i1 %35
  br i1 %or.cond2398, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bix = getelementptr i8, ptr %.61456, i64 %i.apz
  %bound0 = icmp ult ptr %.61456, %scevgep
  %bound1 = icmp ult ptr %2, %i.bix
  %found.conflict = and i1 %bound0, %bound1
  %i.biy = or i1 %found.conflict, %stride.check
  br i1 %i.biy, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.biz = getelementptr i8, ptr %.61456, i64 %i.aqa ; 2 uses
  %broadcast.splat = shufflevector <4 x float> %i.bit, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat1731 = shufflevector <4 x float> %i.bit, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat1733 = shufflevector <4 x float> %i.bit, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %broadcast.splatinsert1734 = insertelement <4 x i32> poison, i32 %i.bip, i64 0
  %broadcast.splat1735 = shufflevector <4 x i32> %broadcast.splatinsert1734, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1736 = insertelement <4 x float> poison, float %i.biq, i64 0
  %broadcast.splat1737 = shufflevector <4 x float> %broadcast.splatinsert1736, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1738 = insertelement <4 x float> poison, float %i.bir, i64 0
  %broadcast.splat1739 = shufflevector <4 x float> %broadcast.splatinsert1738, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1740 = insertelement <4 x float> poison, float %i.bis, i64 0
  %broadcast.splat1741 = shufflevector <4 x float> %broadcast.splatinsert1740, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1743 = shufflevector <4 x float> %i.bit, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat1745 = shufflevector <2 x float> %i.biw, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1747 = shufflevector <2 x float> %i.biw, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bja = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.61456, i64 %i.bja
  %i.bjb = shl nuw nsw i64 %index, 3
  %i.bjc = getelementptr inbounds nuw i8, ptr %.213051455, i64 %i.bjb
  %wide.vec = load <8 x i32>, ptr %i.bjc, align 4, !alias.scope !103 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec1748 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.bjd = lshr <4 x i32> %strided.vec, splat (i32 16)
  %i.bje = and <4 x i32> %i.bjd, splat (i32 255)  ; 2 uses
  %i.bjf = lshr <4 x i32> %strided.vec, splat (i32 8)
  %i.bjg = and <4 x i32> %i.bjf, splat (i32 255)  ; 2 uses
  %i.bjh = and <4 x i32> %strided.vec, splat (i32 255) ; 2 uses
  %i.bji = lshr <4 x i32> %strided.vec1748, splat (i32 16)
  %i.bjj = and <4 x i32> %i.bji, splat (i32 255)  ; 2 uses
  %i.bjk = lshr <4 x i32> %strided.vec1748, splat (i32 8)
  %i.bjl = and <4 x i32> %i.bjk, splat (i32 255)  ; 2 uses
  %i.bjm = and <4 x i32> %strided.vec1748, splat (i32 255) ; 2 uses
  %i.bjn = add nuw nsw <4 x i32> %i.bjj, %i.bje
  %i.bjo = lshr <4 x i32> %i.bjn, splat (i32 1)
  %i.bjp = add nuw nsw <4 x i32> %i.bjl, %i.bjg
  %i.bjq = lshr <4 x i32> %i.bjp, splat (i32 1)
  %i.bjr = add nuw nsw <4 x i32> %i.bjm, %i.bjh
  %i.bjs = lshr <4 x i32> %i.bjr, splat (i32 1)
  %i.bjt = uitofp nneg <4 x i32> %i.bje to <4 x float>
  %i.bju = uitofp nneg <4 x i32> %i.bjg to <4 x float>
  %i.bjv = fmul <4 x float> %broadcast.splat1731, %i.bju
  %i.bjw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.bjt, <4 x float> %i.bjv)
  %i.bjx = uitofp nneg <4 x i32> %i.bjh to <4 x float>
  %i.bjy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1733, <4 x float> %i.bjx, <4 x float> %i.bjw)
  %i.bjz = fadd <4 x float> %i.bjy, splat (float 5.000000e-01)
  %i.bka = fptosi <4 x float> %i.bjz to <4 x i32>
  %i.bkb = add nsw <4 x i32> %broadcast.splat1735, %i.bka
  %i.bkc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bkb, <4 x i32> zeroinitializer)
  %i.bkd = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bkc, <4 x i32> splat (i32 255))
  %i.bke = trunc nuw <4 x i32> %i.bkd to <4 x i8>
  %i.bkf = uitofp nneg <4 x i32> %i.bjo to <4 x float> ; 2 uses
  %i.bkg = uitofp nneg <4 x i32> %i.bjq to <4 x float> ; 2 uses
  %i.bkh = fmul <4 x float> %broadcast.splat1739, %i.bkg
  %i.bki = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1737, <4 x float> %i.bkf, <4 x float> %i.bkh)
  %i.bkj = uitofp nneg <4 x i32> %i.bjs to <4 x float> ; 2 uses
  %i.bkk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1741, <4 x float> %i.bkj, <4 x float> %i.bki)
  %i.bkl = fadd <4 x float> %i.bkk, splat (float 5.000000e-01)
  %i.bkm = fptosi <4 x float> %i.bkl to <4 x i32> ; 3 uses
  %i.bkn = icmp sgt <4 x i32> %i.bkm, splat (i32 -129)
  %i.bko = icmp sgt <4 x i32> %i.bkm, splat (i32 127)
  %i.bkp = trunc <4 x i32> %i.bkm to <4 x i8>
  %i.bkq = xor <4 x i8> %i.bkp, splat (i8 -128)
  %predphi = select <4 x i1> %i.bko, <4 x i8> splat (i8 -1), <4 x i8> %i.bkq
  %predphi1749 = select <4 x i1> %i.bkn, <4 x i8> %predphi, <4 x i8> zeroinitializer
  %i.bkr = uitofp nneg <4 x i32> %i.bjj to <4 x float>
  %i.bks = uitofp nneg <4 x i32> %i.bjl to <4 x float>
  %i.bkt = fmul <4 x float> %broadcast.splat1731, %i.bks
  %i.bku = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.bkr, <4 x float> %i.bkt)
  %i.bkv = uitofp nneg <4 x i32> %i.bjm to <4 x float>
  %i.bkw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1733, <4 x float> %i.bkv, <4 x float> %i.bku)
  %i.bkx = fadd <4 x float> %i.bkw, splat (float 5.000000e-01)
  %i.bky = fptosi <4 x float> %i.bkx to <4 x i32>
  %i.bkz = add nsw <4 x i32> %broadcast.splat1735, %i.bky
  %i.bla = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bkz, <4 x i32> zeroinitializer)
  %i.blb = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bla, <4 x i32> splat (i32 255))
  %i.blc = trunc nuw <4 x i32> %i.blb to <4 x i8>
  %i.bld = fmul <4 x float> %broadcast.splat1745, %i.bkg
  %i.ble = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1743, <4 x float> %i.bkf, <4 x float> %i.bld)
  %i.blf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1747, <4 x float> %i.bkj, <4 x float> %i.ble)
  %i.blg = fadd <4 x float> %i.blf, splat (float 5.000000e-01)
  %i.blh = fptosi <4 x float> %i.blg to <4 x i32> ; 3 uses
  %i.bli = icmp sgt <4 x i32> %i.blh, splat (i32 -129)
  %i.blj = icmp sgt <4 x i32> %i.blh, splat (i32 127)
  %i.blk = trunc <4 x i32> %i.blh to <4 x i8>
  %i.bll = xor <4 x i8> %i.blk, splat (i8 -128)
  %predphi1750 = select <4 x i1> %i.blj, <4 x i8> splat (i8 -1), <4 x i8> %i.bll
  %predphi1751 = select <4 x i1> %i.bli, <4 x i8> %predphi1750, <4 x i8> zeroinitializer
  %i.blm = shufflevector <4 x i8> %i.bke, <4 x i8> %predphi1749, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bln = shufflevector <4 x i8> %i.blc, <4 x i8> %predphi1751, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x i8> %i.blm, <8 x i8> %i.bln, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !alias.scope !104, !noalias !103
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.blo = icmp eq i64 %index.next, %n.vec
  br i1 %i.blo, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  %.71452.ph = phi ptr [ %.61456, %vector.memcheck ], [ %i.biz, %middle.block ], [ %.61456, %.lr.ph ]
  %i.blp = extractelement <4 x float> %i.bit, i64 0
  %i.blq = shufflevector <4 x float> %i.bit, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.blr = shufflevector <2 x float> %i.biw, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bls = shufflevector <4 x float> %i.bit, <4 x float> %i.blr, <2 x i32> <i32 1, i32 4>
  %i.blt = shufflevector <4 x float> %i.bit, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.blu = shufflevector <2 x float> %i.blq, <2 x float> %i.biw, <2 x i32> <i32 0, i32 3>
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.ds
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ds ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.71452 = phi ptr [ %i.bor, %bb.ds ], [ %.71452.ph, %scalar.ph.preheader ] ; 5 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.blv = getelementptr inbounds nuw i8, ptr %.213051455, i64 %.idx ; 2 uses
  %i.blw = load i32, ptr %i.blv, align 4          ; 3 uses
  %i.blx = lshr i32 %i.blw, 16
  %i.bly = and i32 %i.blx, 255                    ; 2 uses
  %i.blz = lshr i32 %i.blw, 8
  %i.bma = and i32 %i.blz, 255                    ; 2 uses
  %i.bmb = and i32 %i.blw, 255                    ; 2 uses
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.blv, i64 4
  %i.bmd = load i32, ptr %i.bmc, align 4          ; 3 uses
  %i.bme = lshr i32 %i.bmd, 16
  %i.bmf = and i32 %i.bme, 255                    ; 2 uses
  %i.bmg = lshr i32 %i.bmd, 8
  %i.bmh = and i32 %i.bmg, 255                    ; 2 uses
  %i.bmi = and i32 %i.bmd, 255                    ; 2 uses
  %i.bmj = add nuw nsw i32 %i.bmf, %i.bly
  %i.bmk = lshr i32 %i.bmj, 1
  %i.bml = add nuw nsw i32 %i.bmh, %i.bma
  %i.bmm = lshr i32 %i.bml, 1
  %i.bmn = add nuw nsw i32 %i.bmi, %i.bmb
  %i.bmo = lshr i32 %i.bmn, 1
  %i.bmp = uitofp nneg i32 %i.bly to float
  %i.bmq = uitofp nneg i32 %i.bma to float
  %i.bmr = fmul float %i.biv, %i.bmq
  %i.bms = tail call float @llvm.fmuladd.f32(float %i.blp, float %i.bmp, float %i.bmr)
  %i.bmt = uitofp nneg i32 %i.bmb to float
  %i.bmu = tail call float @llvm.fmuladd.f32(float %i.biu, float %i.bmt, float %i.bms)
  %i.bmv = fadd float %i.bmu, 5.000000e-01
  %i.bmw = fptosi float %i.bmv to i32
  %i.bmx = add nsw i32 %i.bip, %i.bmw
  %i.bmy = tail call i32 @llvm.smax.i32(i32 %i.bmx, i32 0)
  %i.bmz = tail call i32 @llvm.umin.i32(i32 %i.bmy, i32 255)
  %i.bna = trunc nuw i32 %i.bmz to i8
  %i.bnb = getelementptr inbounds nuw i8, ptr %.71452, i64 1
  store i8 %i.bna, ptr %.71452, align 1
  %i.bnc = uitofp nneg i32 %i.bmk to float        ; 2 uses
  %i.bnd = uitofp nneg i32 %i.bmm to float        ; 2 uses
  %i.bne = fmul float %i.bir, %i.bnd
  %i.bnf = tail call float @llvm.fmuladd.f32(float %i.biq, float %i.bnc, float %i.bne)
  %i.bng = uitofp nneg i32 %i.bmo to float        ; 2 uses
  %i.bnh = tail call float @llvm.fmuladd.f32(float %i.bis, float %i.bng, float %i.bnf)
  %i.bni = fadd float %i.bnh, 5.000000e-01
  %i.bnj = fptosi float %i.bni to i32             ; 3 uses
  %i.bnk = icmp slt i32 %i.bnj, -128
  br i1 %i.bnk, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %scalar.ph
  %i.bnl = icmp sgt i32 %i.bnj, 127
  br i1 %i.bnl, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.bnm = trunc nsw i32 %i.bnj to i8
  %i.bnn = xor i8 %i.bnm, -128
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn, %scalar.ph
  %i.bno = phi i8 [ 0, %scalar.ph ], [ %i.bnn, %bb.do ], [ -1, %bb.dn ]
  %i.bnp = getelementptr inbounds nuw i8, ptr %.71452, i64 2
  store i8 %i.bno, ptr %i.bnb, align 1
  %i.bnq = uitofp nneg i32 %i.bmf to float
  %i.bnr = uitofp nneg i32 %i.bmh to float
  %i.bns = uitofp nneg i32 %i.bmi to float
  %i.bnt = getelementptr inbounds nuw i8, ptr %.71452, i64 3
  %i.bnu = insertelement <2 x float> poison, float %i.bnr, i64 0
  %i.bnv = insertelement <2 x float> %i.bnu, float %i.bnd, i64 1
  %i.bnw = fmul <2 x float> %i.bls, %i.bnv
  %i.bnx = insertelement <2 x float> poison, float %i.bnq, i64 0
  %i.bny = insertelement <2 x float> %i.bnx, float %i.bnc, i64 1
  %i.bnz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.blt, <2 x float> %i.bny, <2 x float> %i.bnw)
  %i.boa = insertelement <2 x float> poison, float %i.bns, i64 0
  %i.bob = insertelement <2 x float> %i.boa, float %i.bng, i64 1
  %i.boc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.blu, <2 x float> %i.bob, <2 x float> %i.bnz)
  %i.bod = fadd <2 x float> %i.boc, splat (float 5.000000e-01) ; 2 uses
  %i.boe = extractelement <2 x float> %i.bod, i64 0
  %i.bof = fptosi float %i.boe to i32
  %i.bog = add nsw i32 %i.bip, %i.bof
  %i.boh = tail call i32 @llvm.smax.i32(i32 %i.bog, i32 0)
  %i.boi = tail call i32 @llvm.umin.i32(i32 %i.boh, i32 255)
  %i.boj = trunc nuw i32 %i.boi to i8
  store i8 %i.boj, ptr %i.bnp, align 1
  %i.bok = extractelement <2 x float> %i.bod, i64 1
  %i.bol = fptosi float %i.bok to i32             ; 3 uses
  %i.bom = icmp slt i32 %i.bol, -128
  br i1 %i.bom, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.bon = icmp sgt i32 %i.bol, 127
  br i1 %i.bon, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.boo = trunc nsw i32 %i.bol to i8
  %i.bop = xor i8 %i.boo, -128
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq, %bb.dp
  %i.boq = phi i8 [ 0, %bb.dp ], [ %i.bop, %bb.dr ], [ -1, %bb.dq ]
  %i.bor = getelementptr inbounds nuw i8, ptr %.71452, i64 4 ; 2 uses
  store i8 %i.boq, ptr %i.bnt, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !69

._crit_edge:                                      ; preds = %bb.ds, %middle.block, %.preheader1448
  %.9.lcssa.shrunk = phi i32 [ 0, %.preheader1448 ], [ %i.apt, %middle.block ], [ %i.apt, %bb.ds ]
  %.7.lcssa = phi ptr [ %.61456, %.preheader1448 ], [ %i.biz, %middle.block ], [ %i.bor, %bb.ds ] ; 6 uses
  br i1 %.not, label %bb.ea, label %bb.dt

bb.dt:                                            ; preds = %._crit_edge
  %.9.lcssa = zext nneg i32 %.9.lcssa.shrunk to i64
  %i.bos = getelementptr inbounds nuw [4 x i8], ptr %.213051455, i64 %.9.lcssa
  %i.bot = load i32, ptr %i.bos, align 4          ; 3 uses
  %i.bou = lshr i32 %i.bot, 16
  %i.bov = and i32 %i.bou, 255
  %i.bow = lshr i32 %i.bot, 8
  %i.box = and i32 %i.bow, 255
  %i.boy = and i32 %i.bot, 255
  %i.boz = load float, ptr %i.apk, align 4
  %i.bpa = load i32, ptr %i.l, align 8
  %i.bpb = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 1
  %i.bpc = load float, ptr %i.apn, align 4
  %i.bpd = uitofp nneg i32 %i.bov to float        ; 2 uses
  %i.bpe = load <2 x float>, ptr %i.api, align 4  ; 2 uses
  %i.bpf = uitofp nneg i32 %i.box to float        ; 2 uses
  %i.bpg = uitofp nneg i32 %i.boy to float        ; 2 uses
  %i.bph = load <2 x float>, ptr %i.apl, align 4  ; 2 uses
  %i.bpi = shufflevector <2 x float> %i.bpe, <2 x float> %i.bph, <2 x i32> <i32 1, i32 3>
  %i.bpj = insertelement <2 x float> poison, float %i.bpf, i64 0
  %i.bpk = shufflevector <2 x float> %i.bpj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bpl = fmul <2 x float> %i.bpi, %i.bpk
  %i.bpm = shufflevector <2 x float> %i.bpe, <2 x float> %i.bph, <2 x i32> <i32 0, i32 2>
  %i.bpn = insertelement <2 x float> poison, float %i.bpd, i64 0
  %i.bpo = shufflevector <2 x float> %i.bpn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bpp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bpm, <2 x float> %i.bpo, <2 x float> %i.bpl)
  %i.bpq = insertelement <2 x float> poison, float %i.boz, i64 0
  %i.bpr = insertelement <2 x float> %i.bpq, float %i.bpc, i64 1
  %i.bps = insertelement <2 x float> poison, float %i.bpg, i64 0
  %i.bpt = shufflevector <2 x float> %i.bps, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bpu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bpr, <2 x float> %i.bpt, <2 x float> %i.bpp)
  %i.bpv = fadd <2 x float> %i.bpu, splat (float 5.000000e-01) ; 2 uses
  %i.bpw = extractelement <2 x float> %i.bpv, i64 0
  %i.bpx = fptosi float %i.bpw to i32
  %i.bpy = add nsw i32 %i.bpa, %i.bpx
  %i.bpz = tail call i32 @llvm.smax.i32(i32 %i.bpy, i32 0)
  %i.bqa = tail call i32 @llvm.umin.i32(i32 %i.bpz, i32 255)
  %i.bqb = trunc nuw i32 %i.bqa to i8             ; 2 uses
  store i8 %i.bqb, ptr %.7.lcssa, align 1
  %i.bqc = extractelement <2 x float> %i.bpv, i64 1
  %i.bqd = fptosi float %i.bqc to i32             ; 3 uses
  %i.bqe = icmp slt i32 %i.bqd, -128
  br i1 %i.bqe, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.bqf = icmp sgt i32 %i.bqd, 127
  br i1 %i.bqf, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.bqg = trunc nsw i32 %i.bqd to i8
  %i.bqh = xor i8 %i.bqg, -128
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt
  %i.bqi = phi i8 [ 0, %bb.dt ], [ %i.bqh, %bb.dv ], [ -1, %bb.du ]
  %i.bqj = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 2
  store i8 %i.bqi, ptr %i.bpb, align 1
  %i.bqk = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 3
  store i8 %i.bqb, ptr %i.bqj, align 1
  %i.bql = load float, ptr %i.apo, align 8
  %i.bqm = load float, ptr %i.app, align 4
  %i.bqn = fmul float %i.bqm, %i.bpf
  %i.bqo = tail call float @llvm.fmuladd.f32(float %i.bql, float %i.bpd, float %i.bqn)
  %i.bqp = load float, ptr %i.apq, align 8
  %i.bqq = tail call float @llvm.fmuladd.f32(float %i.bqp, float %i.bpg, float %i.bqo)
  %i.bqr = fadd float %i.bqq, 5.000000e-01
  %i.bqs = fptosi float %i.bqr to i32             ; 3 uses
  %i.bqt = icmp slt i32 %i.bqs, -128
  br i1 %i.bqt, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.bqu = icmp sgt i32 %i.bqs, 127
  br i1 %i.bqu, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.bqv = trunc nsw i32 %i.bqs to i8
  %i.bqw = xor i8 %i.bqv, -128
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx, %bb.dw
  %i.bqx = phi i8 [ 0, %bb.dw ], [ %i.bqw, %bb.dy ], [ -1, %bb.dx ]
  %i.bqy = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 4
  store i8 %i.bqx, ptr %i.bqk, align 1
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %._crit_edge
  %.8 = phi ptr [ %i.bqy, %bb.dz ], [ %.7.lcssa, %._crit_edge ]
  %i.bqz = getelementptr inbounds i8, ptr %.8, i64 %i.apr
  %i.bra = getelementptr inbounds i8, ptr %.213051455, i64 %i.aps
  %i.brb = add nuw nsw i32 %.613291454, 1         ; 2 uses
  %exitcond1584.not = icmp eq i32 %i.brb, %1
  br i1 %exitcond1584.not, label %.thread1425, label %.preheader1448, !llvm.loop !70

bb.eb:                                            ; preds = %bb.a
  %i.brc = tail call ptr @SDL_GetPixelFormatName_REAL(i32 noundef %4) #6
  %i.brd = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.15, ptr noundef %i.brc) #6
  br label %.thread1425

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.thread1425

.thread1425:                                      ; preds = %bb.ea, %bb.dm, %bb.cy, %.preheader1449, %.preheader1446, %.preheader1444, %bb.ck, %._crit_edge1531._crit_edge, %.thread, %.critedge, %bb.eb
  %.21341 = phi i1 [ %i.brd, %bb.eb ], [ %i.ape, %.thread ], [ false, %.critedge ], [ true, %.preheader1446 ], [ true, %.preheader1444 ], [ true, %bb.ck ], [ true, %._crit_edge1531._crit_edge ], [ true, %.preheader1449 ], [ true, %bb.dm ], [ true, %bb.cy ], [ true, %bb.ea ]
  ret i1 %.21341
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @SDL_ConvertPixels_XBGR2101010_to_P010(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #3 {
bb.a:
  %i.a = shl i32 %3, 1                            ; 2 uses
  %i.b = sdiv i32 %1, 2                           ; 2 uses
  %i.c = and i32 %1, 1
  %i.d = sdiv i32 %0, 2                           ; 4 uses
  %i.e = and i32 %0, 1                            ; 2 uses
  %i.f = zext i32 %6 to i64
  %i.g = getelementptr inbounds nuw [40 x i8], ptr @RGB2YUVFactorTables, i64 %i.f ; 14 uses
  %i.h = add nsw i32 %0, 1                        ; 2 uses
  %i.i = sdiv i32 %i.h, 2
  %i.j = shl i32 %i.i, 2
  %i.k = tail call i32 @llvm.smax.i32(i32 %5, i32 %i.j)
  %i.l = lshr i32 %5, 1                           ; 2 uses
  %i.m = lshr i32 %i.k, 1
  %i.n = mul i32 %i.l, %1
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.o ; 3 uses
  %i.q = icmp sgt i32 %1, 0
  br i1 %i.q, label %.preheader185.lr.ph, label %._crit_edge201

.preheader185.lr.ph:                              ; preds = %bb.a
  %i.r = sub i32 %i.l, %0
  %i.s = icmp sgt i32 %0, 0
  %i.t = zext i32 %i.r to i64
  %i.u = sext i32 %3 to i64                       ; 3 uses
  br i1 %i.s, label %.preheader185.lr.ph.split, label %._crit_edge191.split

.preheader185.lr.ph.split:                        ; preds = %.preheader185.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.y = load float, ptr %i.x, align 4            ; 2 uses
  %i.z = load float, ptr %i.w, align 8            ; 2 uses
  %i.aa = load float, ptr %i.v, align 4           ; 2 uses
  %i.ab = load i32, ptr %i.g, align 8             ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64      ; 5 uses
  %i.ac = add nsw i32 %1, -1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = mul nsw i64 %i.u, %i.ad
  %i.af = shl nuw nsw i64 %wide.trip.count, 2
  %i.ag = getelementptr i8, ptr %2, i64 %i.ae
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.af
  %i.ah = shl nuw nsw i64 %wide.trip.count, 1
  %min.iters.check = icmp ult i32 %0, 4
  %stride.check = icmp slt i32 %3, 0
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 4 uses
  %i.ai = shl nuw nsw i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.z, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert6 = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat7 = shufflevector <4 x float> %broadcast.splatinsert6, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert8 = insertelement <4 x float> poison, float %i.aa, i64 0
  %broadcast.splat9 = shufflevector <4 x float> %broadcast.splatinsert8, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert10 = insertelement <4 x i32> poison, i32 %i.ab, i64 0
  %broadcast.splat11 = shufflevector <4 x i32> %broadcast.splatinsert10, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader185

.preheader185:                                    ; preds = %.preheader185.lr.ph.split, %._crit_edge
  %.0160190 = phi i32 [ 0, %.preheader185.lr.ph.split ], [ %i.bz, %._crit_edge ]
  %.0162189 = phi ptr [ %2, %.preheader185.lr.ph.split ], [ %i.by, %._crit_edge ] ; 3 uses
  %.0188 = phi ptr [ %4, %.preheader185.lr.ph.split ], [ %i.bx, %._crit_edge ] ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader185
  %i.aj = getelementptr i8, ptr %.0188, i64 %i.ah
  %bound0 = icmp ult ptr %.0188, %scevgep
  %bound1 = icmp ult ptr %2, %i.aj
  %found.conflict = and i1 %bound0, %bound1
  %i.ak = or i1 %found.conflict, %stride.check
  br i1 %i.ak, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.al = getelementptr i8, ptr %.0188, i64 %i.ai ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.0188, i64 %i.am
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.0162189, i64 %index
  %wide.load = load <4 x i32>, ptr %i.an, align 4, !alias.scope !123 ; 3 uses
  %i.ao = and <4 x i32> %wide.load, splat (i32 1023)
  %i.ap = lshr <4 x i32> %wide.load, splat (i32 10)
  %i.aq = and <4 x i32> %i.ap, splat (i32 1023)
  %i.ar = lshr <4 x i32> %wide.load, splat (i32 20)
  %i.as = and <4 x i32> %i.ar, splat (i32 1023)
  %i.at = uitofp nneg <4 x i32> %i.ao to <4 x float>
  %i.au = uitofp nneg <4 x i32> %i.aq to <4 x float>
  %i.av = fmul <4 x float> %broadcast.splat, %i.au
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat7, <4 x float> %i.at, <4 x float> %i.av)
  %i.ax = uitofp nneg <4 x i32> %i.as to <4 x float>
  %i.ay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat9, <4 x float> %i.ax, <4 x float> %i.aw)
  %i.az = fadd <4 x float> %i.ay, splat (float 5.000000e-01)
  %i.ba = fptosi <4 x float> %i.az to <4 x i32>
  %i.bb = add nsw <4 x i32> %broadcast.splat11, %i.ba
  %i.bc = trunc <4 x i32> %i.bb to <4 x i16>
  %i.bd = shl <4 x i16> %i.bc, splat (i16 6)
  store <4 x i16> %i.bd, ptr %next.gep, align 2, !alias.scope !124, !noalias !123
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader185, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader185 ], [ %n.vec, %middle.block ]
  %.1183186.ph = phi ptr [ %.0188, %vector.memcheck ], [ %.0188, %.preheader185 ], [ %i.al, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.1183186 = phi ptr [ %i.bw, %scalar.ph ], [ %.1183186.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.0162189, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4            ; 3 uses
  %i.bh = and i32 %i.bg, 1023
  %i.bi = lshr i32 %i.bg, 10
  %i.bj = and i32 %i.bi, 1023
  %i.bk = lshr i32 %i.bg, 20
  %i.bl = and i32 %i.bk, 1023
  %i.bm = uitofp nneg i32 %i.bh to float
  %i.bn = uitofp nneg i32 %i.bj to float
  %i.bo = fmul float %i.z, %i.bn
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.y, float %i.bm, float %i.bo)
  %i.bq = uitofp nneg i32 %i.bl to float
  %i.br = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.bq, float %i.bp)
  %i.bs = fadd float %i.br, 5.000000e-01
  %i.bt = fptosi float %i.bs to i32
  %i.bu = add nsw i32 %i.ab, %i.bt
  %.tr178 = trunc i32 %i.bu to i16
  %i.bv = shl i16 %.tr178, 6
  %i.bw = getelementptr inbounds nuw i8, ptr %.1183186, i64 2 ; 2 uses
  store i16 %i.bv, ptr %.1183186, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !109

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa4 = phi ptr [ %i.al, %middle.block ], [ %i.bw, %scalar.ph ]
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.lcssa4, i64 %i.t
  %i.by = getelementptr inbounds i8, ptr %.0162189, i64 %i.u
  %i.bz = add nuw nsw i32 %.0160190, 1            ; 2 uses
  %exitcond217.not = icmp eq i32 %i.bz, %1
  br i1 %exitcond217.not, label %._crit_edge191.split, label %.preheader185, !llvm.loop !110

._crit_edge191.split:                             ; preds = %._crit_edge, %.preheader185.lr.ph
  %.not236 = icmp eq i32 %1, 1
  br i1 %.not236, label %._crit_edge201, label %.preheader184.lr.ph

.preheader184.lr.ph:                              ; preds = %._crit_edge191.split
  %.neg = sdiv i32 %i.h, -2
  %.neg168 = shl nsw i32 %.neg, 1
  %i.ca = add i32 %i.m, %.neg168
  %i.cb = sext i32 %3 to i64
  %i.cc = getelementptr i8, ptr %2, i64 %i.cb     ; 2 uses
  %i.cd = icmp sgt i32 %0, 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %.not173 = icmp eq i32 %i.e, 0
  %i.cg = zext i32 %i.ca to i64
  %i.ch = sext i32 %i.a to i64                    ; 3 uses
  %wide.trip.count221 = zext i32 %i.d to i64      ; 6 uses
  %i.ci = shl nuw nsw i32 %i.d, 1                 ; 2 uses
  %7 = add nsw i64 %wide.trip.count221, -1        ; 2 uses
  %i.cj = add nsw i32 %i.b, -1
  %i.ck = zext i32 %i.cj to i64
  %i.cl = mul nsw i64 %i.ch, %i.ck
  %i.cm = shl nuw nsw i64 %wide.trip.count221, 3
  %i.cn = add i64 %i.cl, %i.cm                    ; 2 uses
  %scevgep24 = getelementptr i8, ptr %2, i64 %i.cn
  %i.co = getelementptr i8, ptr %2, i64 %i.cn
  %scevgep25 = getelementptr i8, ptr %i.co, i64 %i.u
  %i.cp = shl nuw nsw i64 %wide.trip.count221, 2
  %min.iters.check27 = icmp ult i32 %0, 8
  %mul.result = shl nsw i64 %7, 2
  %mul.overflow = icmp ugt i64 %7, 4611686018427387903
  %stride.check32 = icmp slt i32 %i.a, 0
  %n.vec37 = and i64 %wide.trip.count221, 1073741820 ; 4 uses
  %i.cq = shl nuw nsw i64 %n.vec37, 2
  %cmp.n59 = icmp eq i64 %n.vec37, %wide.trip.count221
  br label %.preheader184

.preheader184:                                    ; preds = %.preheader184.lr.ph, %bb.c
  %.1161200 = phi i32 [ 0, %.preheader184.lr.ph ], [ %i.ht, %bb.c ]
  %.1163199 = phi ptr [ %2, %.preheader184.lr.ph ], [ %i.hr, %bb.c ] ; 4 uses
  %.0164198 = phi ptr [ %i.cc, %.preheader184.lr.ph ], [ %i.hs, %bb.c ] ; 5 uses
  %.0165197 = phi ptr [ %i.p, %.preheader184.lr.ph ], [ %i.hq, %bb.c ] ; 10 uses
  br i1 %i.cd, label %.lr.ph, label %._crit_edge194

.lr.ph:                                           ; preds = %.preheader184
  %i.cr = load <4 x float>, ptr %i.ce, align 8    ; 7 uses
  %i.cs = load <2 x float>, ptr %i.cf, align 8    ; 4 uses
  %8 = getelementptr i8, ptr %.0165197, i64 %mul.result
  %9 = icmp ult ptr %8, %.0165197
  %10 = or i1 %9, %mul.overflow
  %or.cond = select i1 %min.iters.check27, i1 true, i1 %10
  br i1 %or.cond, label %scalar.ph26.preheader, label %vector.memcheck28

vector.memcheck28:                                ; preds = %.lr.ph
  %i.ct = getelementptr i8, ptr %.0165197, i64 %i.cp ; 2 uses
  %bound029 = icmp ult ptr %.0165197, %scevgep25
  %bound130 = icmp ult ptr %i.cc, %i.ct
  %found.conflict31 = and i1 %bound029, %bound130
  %i.cu = or i1 %found.conflict31, %stride.check32
  %bound033 = icmp ult ptr %.0165197, %scevgep24
  %bound134 = icmp ult ptr %2, %i.ct
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %i.cu, %found.conflict35
  br i1 %conflict.rdx, label %scalar.ph26.preheader, label %vector.ph36

vector.ph36:                                      ; preds = %vector.memcheck28
  %i.cv = getelementptr i8, ptr %.0165197, i64 %i.cq ; 2 uses
  %broadcast.splat39 = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat41 = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat43 = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat45 = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat47 = shufflevector <2 x float> %i.cs, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat49 = shufflevector <2 x float> %i.cs, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph36
  %index51 = phi i64 [ 0, %vector.ph36 ], [ %index.next57, %vector.body50 ] ; 3 uses
  %i.cw = shl i64 %index51, 2
  %next.gep52 = getelementptr i8, ptr %.0165197, i64 %i.cw
  %i.cx = shl nuw nsw i64 %index51, 1             ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.1163199, i64 %i.cx
  %wide.vec = load <8 x i32>, ptr %i.cy, align 4, !alias.scope !125 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec53 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.0164198, i64 %i.cx
  %wide.vec54 = load <8 x i32>, ptr %i.cz, align 4, !alias.scope !126 ; 2 uses
  %strided.vec55 = shufflevector <8 x i32> %wide.vec54, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec56 = shufflevector <8 x i32> %wide.vec54, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.da = and <4 x i32> %strided.vec, splat (i32 1023)
  %i.db = and <4 x i32> %strided.vec53, splat (i32 1023)
  %i.dc = add nuw nsw <4 x i32> %i.db, %i.da
  %i.dd = and <4 x i32> %strided.vec55, splat (i32 1023)
  %i.de = add nuw nsw <4 x i32> %i.dc, %i.dd
  %i.df = and <4 x i32> %strided.vec56, splat (i32 1023)
  %i.dg = add nuw nsw <4 x i32> %i.de, %i.df
  %i.dh = lshr <4 x i32> %i.dg, splat (i32 2)
  %i.di = and <4 x i32> %strided.vec, splat (i32 1047552)
  %i.dj = and <4 x i32> %strided.vec53, splat (i32 1047552)
  %i.dk = add nuw nsw <4 x i32> %i.dj, %i.di
  %i.dl = and <4 x i32> %strided.vec55, splat (i32 1047552)
  %i.dm = add nuw nsw <4 x i32> %i.dk, %i.dl
  %i.dn = and <4 x i32> %strided.vec56, splat (i32 1047552)
  %i.do = add nuw nsw <4 x i32> %i.dm, %i.dn
  %i.dp = lshr <4 x i32> %i.do, splat (i32 12)
  %i.dq = and <4 x i32> %strided.vec, splat (i32 1072693248)
  %i.dr = and <4 x i32> %strided.vec53, splat (i32 1072693248)
  %i.ds = add nuw nsw <4 x i32> %i.dr, %i.dq
  %i.dt = and <4 x i32> %strided.vec55, splat (i32 1072693248)
  %i.du = add nuw <4 x i32> %i.ds, %i.dt
  %i.dv = and <4 x i32> %strided.vec56, splat (i32 1072693248)
  %i.dw = add nuw <4 x i32> %i.du, %i.dv
  %i.dx = lshr <4 x i32> %i.dw, splat (i32 22)
  %i.dy = uitofp nneg <4 x i32> %i.dh to <4 x float> ; 2 uses
  %i.dz = uitofp nneg <4 x i32> %i.dp to <4 x float> ; 2 uses
  %i.ea = fmul <4 x float> %broadcast.splat41, %i.dz
  %i.eb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat39, <4 x float> %i.dy, <4 x float> %i.ea)
  %i.ec = uitofp nneg <4 x i32> %i.dx to <4 x float> ; 2 uses
  %i.ed = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat43, <4 x float> %i.ec, <4 x float> %i.eb)
  %i.ee = fmul <4 x float> %broadcast.splat47, %i.dz
  %i.ef = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat45, <4 x float> %i.dy, <4 x float> %i.ee)
  %i.eg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat49, <4 x float> %i.ec, <4 x float> %i.ef)
  %i.eh = shufflevector <4 x float> %i.ed, <4 x float> %i.eg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ei = fadd <8 x float> %i.eh, splat (float 5.000000e-01)
  %i.ej = fptosi <8 x float> %i.ei to <8 x i32>
  %i.ek = trunc <8 x i32> %i.ej to <8 x i16>
  %i.el = shl <8 x i16> %i.ek, splat (i16 6)
  %interleaved.vec = xor <8 x i16> %i.el, splat (i16 -32768)
  store <8 x i16> %interleaved.vec, ptr %next.gep52, align 2, !alias.scope !127, !noalias !128
  %index.next57 = add nuw i64 %index51, 4         ; 2 uses
  %i.em = icmp eq i64 %index.next57, %n.vec37
  br i1 %i.em, label %middle.block58, label %vector.body50, !llvm.loop !115

middle.block58:                                   ; preds = %vector.body50
  br i1 %cmp.n59, label %._crit_edge194, label %scalar.ph26.preheader

scalar.ph26.preheader:                            ; preds = %vector.memcheck28, %.lr.ph, %middle.block58
  %indvars.iv218.ph = phi i64 [ 0, %vector.memcheck28 ], [ %n.vec37, %middle.block58 ], [ 0, %.lr.ph ]
  %.1166192.ph = phi ptr [ %.0165197, %vector.memcheck28 ], [ %i.cv, %middle.block58 ], [ %.0165197, %.lr.ph ]
  %i.en = shufflevector <4 x float> %i.cr, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.eo = shufflevector <2 x float> %i.cs, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ep = shufflevector <4 x float> %i.cr, <4 x float> %i.eo, <2 x i32> <i32 1, i32 4>
  %i.eq = shufflevector <4 x float> %i.cr, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.er = shufflevector <2 x float> %i.en, <2 x float> %i.cs, <2 x i32> <i32 0, i32 3>
  br label %scalar.ph26

scalar.ph26:                                      ; preds = %scalar.ph26.preheader, %scalar.ph26
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %scalar.ph26 ], [ %indvars.iv218.ph, %scalar.ph26.preheader ] ; 2 uses
  %.1166192 = phi ptr [ %i.ez, %scalar.ph26 ], [ %.1166192.ph, %scalar.ph26.preheader ] ; 2 uses
  %i.es = shl nuw nsw i64 %indvars.iv218, 1       ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.1163199, i64 %i.es
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.0164198, i64 %i.es
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.0164198, i64 %i.es
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = getelementptr inbounds nuw i8, ptr %.1166192, i64 4 ; 2 uses
  %i.fa = load <2 x i32>, ptr %i.et, align 4      ; 2 uses
  %i.fb = shufflevector <2 x i32> %i.fa, <2 x i32> poison, <3 x i32> <i32 1, i32 0, i32 1>
  %i.fc = shufflevector <2 x i32> %i.fa, <2 x i32> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %i.fd = and <3 x i32> %i.fc, <i32 1072693248, i32 1023, i32 1047552>
  %i.fe = and <3 x i32> %i.fb, <i32 1072693248, i32 1023, i32 1047552>
  %i.ff = add nuw nsw <3 x i32> %i.fe, %i.fd
  %i.fg = insertelement <3 x i32> poison, i32 %i.ev, i64 0
  %i.fh = shufflevector <3 x i32> %i.fg, <3 x i32> poison, <3 x i32> zeroinitializer
  %i.fi = and <3 x i32> %i.fh, <i32 1072693248, i32 1023, i32 1047552>
  %i.fj = add nuw <3 x i32> %i.ff, %i.fi
  %i.fk = insertelement <3 x i32> poison, i32 %i.ey, i64 0
  %i.fl = shufflevector <3 x i32> %i.fk, <3 x i32> poison, <3 x i32> zeroinitializer
  %i.fm = and <3 x i32> %i.fl, <i32 1072693248, i32 1023, i32 1047552>
  %i.fn = add nuw <3 x i32> %i.fj, %i.fm
  %i.fo = lshr <3 x i32> %i.fn, <i32 22, i32 2, i32 12>
  %i.fp = uitofp nneg <3 x i32> %i.fo to <3 x float> ; 3 uses
  %i.fq = shufflevector <3 x float> %i.fp, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fr = fmul <2 x float> %i.ep, %i.fq
  %i.fs = shufflevector <3 x float> %i.fp, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ft = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.fs, <2 x float> %i.fr)
  %i.fu = shufflevector <3 x float> %i.fp, <3 x float> poison, <2 x i32> zeroinitializer
  %i.fv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.er, <2 x float> %i.fu, <2 x float> %i.ft)
  %i.fw = fadd <2 x float> %i.fv, splat (float 5.000000e-01)
  %i.fx = fptosi <2 x float> %i.fw to <2 x i32>
  %i.fy = trunc <2 x i32> %i.fx to <2 x i16>
  %i.fz = shl <2 x i16> %i.fy, splat (i16 6)
  %i.ga = xor <2 x i16> %i.fz, splat (i16 -32768)
  store <2 x i16> %i.ga, ptr %.1166192, align 2
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count221
  br i1 %exitcond222.not, label %._crit_edge194, label %scalar.ph26, !llvm.loop !116

._crit_edge194:                                   ; preds = %scalar.ph26, %middle.block58, %.preheader184
  %.1166.lcssa = phi ptr [ %.0165197, %.preheader184 ], [ %i.cv, %middle.block58 ], [ %i.ez, %scalar.ph26 ] ; 3 uses
  %.1.lcssa.shrunk = phi i32 [ 0, %.preheader184 ], [ %i.ci, %middle.block58 ], [ %i.ci, %scalar.ph26 ]
  br i1 %.not173, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge194
  %.1.lcssa = zext nneg i32 %.1.lcssa.shrunk to i64 ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.1163199, i64 %.1.lcssa
  %i.gc = load i32, ptr %i.gb, align 4            ; 3 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.0164198, i64 %.1.lcssa
  %i.ge = load i32, ptr %i.gd, align 4            ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.1166.lcssa, i64 4
  %i.gg = and i32 %i.gc, 1023
  %i.gh = and i32 %i.ge, 1023
  %i.gi = add nuw nsw i32 %i.gh, %i.gg
  %i.gj = lshr i32 %i.gi, 1
  %i.gk = and i32 %i.gc, 1047552
  %i.gl = and i32 %i.ge, 1047552
  %i.gm = add nuw nsw i32 %i.gl, %i.gk
  %i.gn = lshr i32 %i.gm, 11
  %i.go = and i32 %i.gc, 1072693248
  %i.gp = and i32 %i.ge, 1072693248
  %i.gq = add nuw nsw i32 %i.gp, %i.go
  %i.gr = lshr i32 %i.gq, 21
  %i.gs = uitofp nneg i32 %i.gj to float
  %i.gt = uitofp nneg i32 %i.gn to float
  %i.gu = uitofp nneg i32 %i.gr to float
  %i.gv = load <4 x float>, ptr %i.ce, align 8    ; 3 uses
  %i.gw = load <2 x float>, ptr %i.cf, align 8    ; 2 uses
  %i.gx = shufflevector <4 x float> %i.gv, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.gy = shufflevector <2 x float> %i.gw, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gz = shufflevector <4 x float> %i.gv, <4 x float> %i.gy, <2 x i32> <i32 1, i32 4>
  %i.ha = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = fmul <2 x float> %i.gz, %i.hb
  %i.hd = shufflevector <4 x float> %i.gv, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.he = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hd, <2 x float> %i.hf, <2 x float> %i.hc)
  %i.hh = shufflevector <2 x float> %i.gx, <2 x float> %i.gw, <2 x i32> <i32 0, i32 3>
  %i.hi = insertelement <2 x float> poison, float %i.gu, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hh, <2 x float> %i.hj, <2 x float> %i.hg)
  %i.hl = fadd <2 x float> %i.hk, splat (float 5.000000e-01)
  %i.hm = fptosi <2 x float> %i.hl to <2 x i32>
  %i.hn = trunc <2 x i32> %i.hm to <2 x i16>
  %i.ho = shl <2 x i16> %i.hn, splat (i16 6)
  %i.hp = xor <2 x i16> %i.ho, splat (i16 -32768)
  store <2 x i16> %i.hp, ptr %.1166.lcssa, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge194
  %.2167 = phi ptr [ %i.gf, %bb.b ], [ %.1166.lcssa, %._crit_edge194 ]
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %.2167, i64 %i.cg ; 2 uses
  %i.hr = getelementptr inbounds i8, ptr %.1163199, i64 %i.ch ; 2 uses
  %i.hs = getelementptr inbounds i8, ptr %.0164198, i64 %i.ch
  %i.ht = add nuw nsw i32 %.1161200, 1            ; 2 uses
  %exitcond223.not = icmp eq i32 %i.ht, %i.b
  br i1 %exitcond223.not, label %._crit_edge201, label %.preheader184, !llvm.loop !117

._crit_edge201:                                   ; preds = %bb.c, %bb.a, %._crit_edge191.split
  %.0165.lcssa = phi ptr [ %i.p, %._crit_edge191.split ], [ %i.p, %bb.a ], [ %i.hq, %bb.c ] ; 7 uses
  %.1163.lcssa = phi ptr [ %2, %._crit_edge191.split ], [ %2, %bb.a ], [ %i.hr, %bb.c ] ; 5 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %._crit_edge201
  %i.hu = icmp sgt i32 %0, 1
  br i1 %i.hu, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %.preheader
  %i.hv = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.hw = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.hx = load <4 x float>, ptr %i.hv, align 8    ; 7 uses
  %i.hy = load <2 x float>, ptr %i.hw, align 8    ; 4 uses
  %wide.trip.count227 = zext nneg i32 %i.d to i64 ; 5 uses
  %min.iters.check69 = icmp ult i32 %0, 8
  br i1 %min.iters.check69, label %scalar.ph68.preheader, label %vector.memcheck70

vector.memcheck70:                                ; preds = %.lr.ph206
  %i.hz = shl nuw nsw i64 %wide.trip.count227, 2
  %i.ia = getelementptr i8, ptr %.0165.lcssa, i64 %i.hz
  %i.ib = shl nuw nsw i64 %wide.trip.count227, 3
  %i.ic = getelementptr i8, ptr %.1163.lcssa, i64 %i.ib
  %bound071 = icmp ult ptr %.0165.lcssa, %i.ic
  %bound172 = icmp ult ptr %.1163.lcssa, %i.ia
  %found.conflict73 = and i1 %bound071, %bound172
  br i1 %found.conflict73, label %scalar.ph68.preheader, label %vector.ph74

vector.ph74:                                      ; preds = %vector.memcheck70
  %n.vec75 = and i64 %wide.trip.count227, 1073741820 ; 4 uses
  %i.id = shl nuw nsw i64 %n.vec75, 2
  %i.ie = getelementptr i8, ptr %.0165.lcssa, i64 %i.id ; 2 uses
  %broadcast.splat77 = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat79 = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat81 = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat83 = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat85 = shufflevector <2 x float> %i.hy, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat87 = shufflevector <2 x float> %i.hy, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph74
  %index89 = phi i64 [ 0, %vector.ph74 ], [ %index.next95, %vector.body88 ] ; 3 uses
  %i.if = shl i64 %index89, 2
  %next.gep90 = getelementptr i8, ptr %.0165.lcssa, i64 %i.if
  %i.ig = shl nuw nsw i64 %index89, 3
  %i.ih = getelementptr inbounds nuw i8, ptr %.1163.lcssa, i64 %i.ig
  %wide.vec91 = load <8 x i32>, ptr %i.ih, align 4, !alias.scope !129 ; 2 uses
  %strided.vec92 = shufflevector <8 x i32> %wide.vec91, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec93 = shufflevector <8 x i32> %wide.vec91, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.ii = and <4 x i32> %strided.vec92, splat (i32 1023)
  %i.ij = and <4 x i32> %strided.vec93, splat (i32 1023)
  %i.ik = add nuw nsw <4 x i32> %i.ij, %i.ii
  %i.il = lshr <4 x i32> %i.ik, splat (i32 1)
  %i.im = and <4 x i32> %strided.vec92, splat (i32 1047552)
  %i.in = and <4 x i32> %strided.vec93, splat (i32 1047552)
  %i.io = add nuw nsw <4 x i32> %i.in, %i.im
  %i.ip = lshr <4 x i32> %i.io, splat (i32 11)
  %i.iq = and <4 x i32> %strided.vec92, splat (i32 1072693248)
  %i.ir = and <4 x i32> %strided.vec93, splat (i32 1072693248)
  %i.is = add nuw nsw <4 x i32> %i.ir, %i.iq
  %i.it = lshr <4 x i32> %i.is, splat (i32 21)
  %i.iu = uitofp nneg <4 x i32> %i.il to <4 x float> ; 2 uses
  %i.iv = uitofp nneg <4 x i32> %i.ip to <4 x float> ; 2 uses
  %i.iw = fmul <4 x float> %broadcast.splat79, %i.iv
  %i.ix = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat77, <4 x float> %i.iu, <4 x float> %i.iw)
  %i.iy = uitofp nneg <4 x i32> %i.it to <4 x float> ; 2 uses
  %i.iz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat81, <4 x float> %i.iy, <4 x float> %i.ix)
  %i.ja = fmul <4 x float> %broadcast.splat85, %i.iv
  %i.jb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat83, <4 x float> %i.iu, <4 x float> %i.ja)
  %i.jc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat87, <4 x float> %i.iy, <4 x float> %i.jb)
  %i.jd = shufflevector <4 x float> %i.iz, <4 x float> %i.jc, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.je = fadd <8 x float> %i.jd, splat (float 5.000000e-01)
  %i.jf = fptosi <8 x float> %i.je to <8 x i32>
  %i.jg = trunc <8 x i32> %i.jf to <8 x i16>
  %i.jh = shl <8 x i16> %i.jg, splat (i16 6)
  %interleaved.vec94 = xor <8 x i16> %i.jh, splat (i16 -32768)
  store <8 x i16> %interleaved.vec94, ptr %next.gep90, align 2, !alias.scope !130, !noalias !129
  %index.next95 = add nuw i64 %index89, 4         ; 2 uses
  %i.ji = icmp eq i64 %index.next95, %n.vec75
  br i1 %i.ji, label %middle.block96, label %vector.body88, !llvm.loop !121

middle.block96:                                   ; preds = %vector.body88
  %cmp.n97 = icmp eq i64 %n.vec75, %wide.trip.count227
  br i1 %cmp.n97, label %._crit_edge207.loopexit, label %scalar.ph68.preheader

scalar.ph68.preheader:                            ; preds = %vector.memcheck70, %.lr.ph206, %middle.block96
  %indvars.iv224.ph = phi i64 [ 0, %vector.memcheck70 ], [ 0, %.lr.ph206 ], [ %n.vec75, %middle.block96 ]
  %.3204.ph = phi ptr [ %.0165.lcssa, %vector.memcheck70 ], [ %.0165.lcssa, %.lr.ph206 ], [ %i.ie, %middle.block96 ]
  %i.jj = shufflevector <4 x float> %i.hx, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
end_hunk_0
