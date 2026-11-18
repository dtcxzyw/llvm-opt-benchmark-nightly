Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_yuv?download=true
inline.NumInlined: 47
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@SDL_ConvertPixels_XRGB8888_to_YUV:bb.a
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.113201521, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4            ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.013161522, i64 %i.fj
  %i.fq = load i32, ptr %i.fp, align 4            ; 3 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.013161522, i64 %i.fm
  %i.fs = load i32, ptr %i.fr, align 4            ; 3 uses
  %i.ft = and i32 %i.fl, 16711680
  %i.fu = and i32 %i.fo, 16711680
  %i.fv = add nuw nsw i32 %i.fu, %i.ft
  %i.fw = and i32 %i.fq, 16711680
  %i.fx = add nuw nsw i32 %i.fv, %i.fw
  %i.fy = and i32 %i.fs, 16711680
  %i.fz = add nuw nsw i32 %i.fx, %i.fy
  %i.ga = lshr i32 %i.fz, 18
  %i.gb = and i32 %i.fl, 65280
  %i.gc = and i32 %i.fo, 65280
  %i.gd = add nuw nsw i32 %i.gc, %i.gb
  %i.ge = and i32 %i.fq, 65280
  %i.gf = add nuw nsw i32 %i.gd, %i.ge
  %i.gg = and i32 %i.fs, 65280
  %i.gh = add nuw nsw i32 %i.gf, %i.gg
  %i.gi = lshr i32 %i.gh, 10
  %i.gj = and i32 %i.fl, 255
  %i.gk = and i32 %i.fo, 255
  %i.gl = add nuw nsw i32 %i.gk, %i.gj
  %i.gm = and i32 %i.fq, 255
  %i.gn = add nuw nsw i32 %i.gl, %i.gm
  %i.go = and i32 %i.fs, 255
  %i.gp = add nuw nsw i32 %i.gn, %i.go
  %i.gq = lshr i32 %i.gp, 2
  %i.gr = uitofp nneg i32 %i.ga to float          ; 2 uses
  %i.gs = uitofp nneg i32 %i.gi to float          ; 2 uses
  %i.gt = fmul float %i.da, %i.gs
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.gr, float %i.gt)
  %i.gv = uitofp nneg i32 %i.gq to float          ; 2 uses
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.db, float %i.gv, float %i.gu)
  %i.gx = fadd float %i.gw, 5.000000e-01
  %i.gy = fptosi float %i.gx to i32               ; 3 uses
  %i.gz = icmp slt i32 %i.gy, -128
  br i1 %i.gz, label %bb.g, label %bb.e

bb.e:                                             ; preds = %scalar.ph2017
  %i.ha = icmp sgt i32 %i.gy, 127
  br i1 %i.ha, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hb = trunc nsw i32 %i.gy to i8
  %i.hc = xor i8 %i.hb, -128
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %scalar.ph2017
  %i.hd = phi i8 [ 0, %scalar.ph2017 ], [ %i.hc, %bb.f ], [ -1, %bb.e ]
  %i.he = getelementptr inbounds nuw i8, ptr %i.fh, i64 1 ; 2 uses
  store i8 %i.hd, ptr %i.fh, align 1
  %i.hf = fmul float %i.dd, %i.gs
  %i.hg = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.gr, float %i.hf)
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.de, float %i.gv, float %i.hg)
  %i.hi = fadd float %i.hh, 5.000000e-01
  %i.hj = fptosi float %i.hi to i32               ; 3 uses
  %i.hk = icmp slt i32 %i.hj, -128
  br i1 %i.hk, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hl = icmp sgt i32 %i.hj, 127
  br i1 %i.hl, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.hm = trunc nsw i32 %i.hj to i8
  %i.hn = xor i8 %i.hm, -128
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ho = phi i8 [ 0, %bb.g ], [ %i.hn, %bb.i ], [ -1, %bb.h ]
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fi, i64 1 ; 2 uses
  store i8 %i.ho, ptr %i.fi, align 1
  %indvars.iv.next1615 = add nuw nsw i64 %indvars.iv1614, 1 ; 2 uses
  %exitcond1618.not = icmp eq i64 %indvars.iv.next1615, %wide.trip.count1617
  br i1 %exitcond1618.not, label %._crit_edge1509, label %scalar.ph2017, !llvm.loop !19

._crit_edge1509:                                  ; preds = %bb.j, %middle.block2069, %.preheader1439
  %.lcssa1506 = phi ptr [ %.lcssa150615161518, %.preheader1439 ], [ %i.dj, %middle.block2069 ], [ %i.hp, %bb.j ] ; 3 uses
  %.lcssa = phi ptr [ %.lcssa15141519, %.preheader1439 ], [ %i.di, %middle.block2069 ], [ %i.he, %bb.j ] ; 3 uses
  %.11331.lcssa.shrunk = phi i32 [ 0, %.preheader1439 ], [ %i.cr, %middle.block2069 ], [ %i.cr, %bb.j ]
  br i1 %.not1411, label %bb.r, label %bb.k

bb.k:                                             ; preds = %._crit_edge1509
  %.11331.lcssa = zext nneg i32 %.11331.lcssa.shrunk to i64 ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.113201521, i64 %.11331.lcssa
  %i.hr = load i32, ptr %i.hq, align 4            ; 3 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.013161522, i64 %.11331.lcssa
  %i.ht = load i32, ptr %i.hs, align 4            ; 3 uses
  %i.hu = and i32 %i.hr, 16711680
  %i.hv = and i32 %i.ht, 16711680
  %i.hw = add nuw nsw i32 %i.hv, %i.hu
  %i.hx = lshr i32 %i.hw, 17
  %i.hy = and i32 %i.hr, 65280
  %i.hz = and i32 %i.ht, 65280
  %i.ia = add nuw nsw i32 %i.hz, %i.hy
  %i.ib = lshr i32 %i.ia, 9
  %i.ic = and i32 %i.hr, 255
  %i.id = and i32 %i.ht, 255
  %i.ie = add nuw nsw i32 %i.id, %i.ic
  %i.if = lshr i32 %i.ie, 1
  %i.ig = load float, ptr %i.cj, align 8
  %i.ih = uitofp nneg i32 %i.hx to float          ; 2 uses
  %i.ii = load float, ptr %i.ck, align 4
  %i.ij = uitofp nneg i32 %i.ib to float          ; 2 uses
  %i.ik = fmul float %i.ii, %i.ij
  %i.il = tail call float @llvm.fmuladd.f32(float %i.ig, float %i.ih, float %i.ik)
  %i.im = load float, ptr %i.cl, align 8
  %i.in = uitofp nneg i32 %i.if to float          ; 2 uses
  %i.io = tail call float @llvm.fmuladd.f32(float %i.im, float %i.in, float %i.il)
  %i.ip = fadd float %i.io, 5.000000e-01
  %i.iq = fptosi float %i.ip to i32               ; 3 uses
  %i.ir = icmp slt i32 %i.iq, -128
  br i1 %i.ir, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.is = icmp sgt i32 %i.iq, 127
  br i1 %i.is, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.it = trunc nsw i32 %i.iq to i8
  %i.iu = xor i8 %i.it, -128
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.iv = phi i8 [ 0, %bb.k ], [ %i.iu, %bb.m ], [ -1, %bb.l ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.lcssa, i64 1
  store i8 %i.iv, ptr %.lcssa, align 1
  %i.ix = load float, ptr %i.cm, align 4
  %i.iy = load float, ptr %i.cn, align 8
  %i.iz = fmul float %i.iy, %i.ij
  %i.ja = tail call float @llvm.fmuladd.f32(float %i.ix, float %i.ih, float %i.iz)
  %i.jb = load float, ptr %i.co, align 4
  %i.jc = tail call float @llvm.fmuladd.f32(float %i.jb, float %i.in, float %i.ja)
  %i.jd = fadd float %i.jc, 5.000000e-01
  %i.je = fptosi float %i.jd to i32               ; 3 uses
  %i.jf = icmp slt i32 %i.je, -128
  br i1 %i.jf, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jg = icmp sgt i32 %i.je, 127
  br i1 %i.jg, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.jh = trunc nsw i32 %i.je to i8
  %i.ji = xor i8 %i.jh, -128
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.jj = phi i8 [ 0, %bb.n ], [ %i.ji, %bb.p ], [ -1, %bb.o ]
  %i.jk = getelementptr inbounds nuw i8, ptr %.lcssa1506, i64 1
  store i8 %i.jj, ptr %.lcssa1506, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge1509
  %.lcssa15061517 = phi ptr [ %i.jk, %bb.q ], [ %.lcssa1506, %._crit_edge1509 ]
  %.lcssa1515 = phi ptr [ %i.iw, %bb.q ], [ %.lcssa, %._crit_edge1509 ]
  %i.jl = getelementptr inbounds nuw i8, ptr %.lcssa1515, i64 %i.cp ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.lcssa15061517, i64 %i.cp ; 2 uses
  %i.jn = getelementptr inbounds i8, ptr %.113201521, i64 %i.cq ; 2 uses
  %i.jo = getelementptr inbounds i8, ptr %.013161522, i64 %i.cq
  %i.jp = add nuw nsw i32 %.113241520, 1          ; 2 uses
  %exitcond1619.not = icmp eq i32 %i.jp, %i.g
  br i1 %exitcond1619.not, label %._crit_edge1523, label %.preheader1439, !llvm.loop !20

._crit_edge1523:                                  ; preds = %bb.r, %bb.d
  %.promoted1528 = phi ptr [ %.promoted, %bb.d ], [ %i.jm, %bb.r ] ; 11 uses
  %.promoted1527 = phi ptr [ %.promoted1513, %bb.d ], [ %i.jl, %bb.r ] ; 11 uses
  %.11320.lcssa = phi ptr [ %2, %bb.d ], [ %i.jn, %bb.r ] ; 8 uses
  store ptr %.promoted1527, ptr %i.b, align 8
  store ptr %.promoted1528, ptr %i.c, align 8
  %.not1409 = icmp eq i32 %i.h, 0
  br i1 %.not1409, label %._crit_edge1531._crit_edge, label %.preheader1438

.preheader1438:                                   ; preds = %._crit_edge1523
  %i.jq = icmp sgt i32 %0, 1
  br i1 %i.jq, label %.lr.ph1530, label %._crit_edge1531

.lr.ph1530:                                       ; preds = %.preheader1438
  %i.jr = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.js = load float, ptr %i.jr, align 8          ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.ju = load float, ptr %i.jt, align 4          ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.jw = load float, ptr %i.jv, align 8          ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.jy = load float, ptr %i.jx, align 4          ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ka = load float, ptr %i.jz, align 8          ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.kc = load float, ptr %i.kb, align 4          ; 2 uses
  %wide.trip.count1623 = zext nneg i32 %i.i to i64 ; 6 uses
  %min.iters.check2120 = icmp ult i32 %0, 16
  br i1 %min.iters.check2120, label %scalar.ph2119.preheader, label %vector.memcheck2121

vector.memcheck2121:                              ; preds = %.lr.ph1530
  %i.kd = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.ke = getelementptr i8, ptr %.promoted1527, i64 %wide.trip.count1623 ; 4 uses
  %bound02122 = icmp ult ptr %i.b, %i.ke
  %bound12123 = icmp ult ptr %.promoted1527, %i.kd
  %found.conflict2124 = and i1 %bound02122, %bound12123
  %i.kf = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %bound02122.a = icmp ult ptr %i.b, %i.kf
  %bound12123.a = icmp ult ptr %i.c, %i.kd
  %found.conflict2124.a = and i1 %bound02122.a, %bound12123.a
  %conflict.rdx2128 = or i1 %found.conflict2124, %found.conflict2124.a
  %8 = getelementptr i8, ptr %.promoted1528, i64 %wide.trip.count1623 ; 4 uses
  %bound02129 = icmp ult ptr %i.b, %8
  %bound12130 = icmp ult ptr %.promoted1528, %i.kd
  %found.conflict2131 = and i1 %bound02129, %bound12130
  %conflict.rdx2132 = or i1 %conflict.rdx2128, %found.conflict2131
  %9 = shl nuw nsw i64 %wide.trip.count1623, 3
  %10 = getelementptr i8, ptr %.11320.lcssa, i64 %9 ; 4 uses
  %bound02133 = icmp ult ptr %i.b, %10
  %bound12134 = icmp ult ptr %.11320.lcssa, %i.kd
  %found.conflict2135 = and i1 %bound02133, %bound12134
  %conflict.rdx2136 = or i1 %conflict.rdx2132, %found.conflict2135
  %bound02137 = icmp ult ptr %.promoted1527, %i.kf
  %bound12138 = icmp ult ptr %i.c, %i.ke
  %found.conflict2139 = and i1 %bound02137, %bound12138
  %conflict.rdx2140 = or i1 %conflict.rdx2136, %found.conflict2139
  %bound02141 = icmp ult ptr %.promoted1527, %8
  %bound12142 = icmp ult ptr %.promoted1528, %i.ke
  %found.conflict2143 = and i1 %bound02141, %bound12142
  %conflict.rdx2144 = or i1 %conflict.rdx2140, %found.conflict2143
  %bound02145 = icmp ult ptr %.promoted1527, %10
  %bound12146 = icmp ult ptr %.11320.lcssa, %i.ke
  %found.conflict2147 = and i1 %bound02145, %bound12146
  %conflict.rdx2148 = or i1 %conflict.rdx2144, %found.conflict2147
  %bound02149 = icmp ult ptr %i.c, %8
  %bound12150 = icmp ult ptr %.promoted1528, %i.kf
  %found.conflict2151 = and i1 %bound02149, %bound12150
  %conflict.rdx2152 = or i1 %conflict.rdx2148, %found.conflict2151
  %bound02153 = icmp ult ptr %i.c, %10
  %bound12154 = icmp ult ptr %.11320.lcssa, %i.kf
  %found.conflict2155 = and i1 %bound02153, %bound12154
  %conflict.rdx2156 = or i1 %conflict.rdx2152, %found.conflict2155
  %bound02157 = icmp ult ptr %.promoted1528, %10
  %bound12158 = icmp ult ptr %.11320.lcssa, %8
  %found.conflict2159 = and i1 %bound02157, %bound12158
  %conflict.rdx2160 = or i1 %conflict.rdx2156, %found.conflict2159
  br i1 %conflict.rdx2160, label %scalar.ph2119.preheader, label %vector.ph2161

vector.ph2161:                                    ; preds = %vector.memcheck2121
  %n.vec2162 = and i64 %wide.trip.count1623, 1073741822 ; 5 uses
  %i.kg = getelementptr i8, ptr %.promoted1527, i64 %n.vec2162
  %i.kh = getelementptr i8, ptr %.promoted1528, i64 %n.vec2162
  %broadcast.splatinsert2163 = insertelement <2 x float> poison, float %i.js, i64 0
  %broadcast.splat2164 = shufflevector <2 x float> %broadcast.splatinsert2163, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert2165 = insertelement <2 x float> poison, float %i.ju, i64 0
  %broadcast.splat2166 = shufflevector <2 x float> %broadcast.splatinsert2165, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert2167 = insertelement <2 x float> poison, float %i.jw, i64 0
  %broadcast.splat2168 = shufflevector <2 x float> %broadcast.splatinsert2167, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert2169 = insertelement <2 x float> poison, float %i.jy, i64 0
  %broadcast.splat2170 = shufflevector <2 x float> %broadcast.splatinsert2169, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert2171 = insertelement <2 x float> poison, float %i.ka, i64 0
  %broadcast.splat2172 = shufflevector <2 x float> %broadcast.splatinsert2171, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert2173 = insertelement <2 x float> poison, float %i.kc, i64 0
  %broadcast.splat2174 = shufflevector <2 x float> %broadcast.splatinsert2173, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body2175

vector.body2175:                                  ; preds = %vector.body2175, %vector.ph2161
  %index2176 = phi i64 [ 0, %vector.ph2161 ], [ %index.next2188, %vector.body2175 ] ; 5 uses
  %next.gep2177 = getelementptr i8, ptr %.promoted1527, i64 %index2176
  %next.gep2179 = getelementptr i8, ptr %.promoted1528, i64 %index2176
  %i.ki = shl nuw nsw i64 %index2176, 3
  %i.kj = getelementptr inbounds nuw i8, ptr %.11320.lcssa, i64 %i.ki
  %wide.vec2181 = load <4 x i32>, ptr %i.kj, align 4, !alias.scope !79 ; 2 uses
  %strided.vec2182 = shufflevector <4 x i32> %wide.vec2181, <4 x i32> poison, <2 x i32> <i32 0, i32 2> ; 3 uses
  %strided.vec2183 = shufflevector <4 x i32> %wide.vec2181, <4 x i32> poison, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.kk = and <2 x i32> %strided.vec2182, splat (i32 16711680)
  %i.kl = and <2 x i32> %strided.vec2183, splat (i32 16711680)
  %i.km = add nuw nsw <2 x i32> %i.kl, %i.kk
  %i.kn = lshr <2 x i32> %i.km, splat (i32 17)
  %i.ko = and <2 x i32> %strided.vec2182, splat (i32 65280)
  %i.kp = and <2 x i32> %strided.vec2183, splat (i32 65280)
  %i.kq = add nuw nsw <2 x i32> %i.kp, %i.ko
  %i.kr = lshr <2 x i32> %i.kq, splat (i32 9)
  %i.ks = and <2 x i32> %strided.vec2182, splat (i32 255)
  %i.kt = and <2 x i32> %strided.vec2183, splat (i32 255)
  %i.ku = add nuw nsw <2 x i32> %i.kt, %i.ks
  %i.kv = lshr <2 x i32> %i.ku, splat (i32 1)
  %i.kw = uitofp nneg <2 x i32> %i.kn to <2 x float> ; 2 uses
  %i.kx = uitofp nneg <2 x i32> %i.kr to <2 x float> ; 2 uses
  %i.ky = fmul <2 x float> %broadcast.splat2166, %i.kx
  %i.kz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat2164, <2 x float> %i.kw, <2 x float> %i.ky)
  %i.la = uitofp nneg <2 x i32> %i.kv to <2 x float> ; 2 uses
  %i.lb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat2168, <2 x float> %i.la, <2 x float> %i.kz)
  %i.lc = fadd <2 x float> %i.lb, splat (float 5.000000e-01)
  %i.ld = fptosi <2 x float> %i.lc to <2 x i32>   ; 3 uses
  %i.le = icmp sgt <2 x i32> %i.ld, splat (i32 -129)
  %i.lf = icmp sgt <2 x i32> %i.ld, splat (i32 127)
  %i.lg = trunc <2 x i32> %i.ld to <2 x i8>
  %i.lh = xor <2 x i8> %i.lg, splat (i8 -128)
  %predphi2184 = select <2 x i1> %i.lf, <2 x i8> splat (i8 -1), <2 x i8> %i.lh
  %predphi2185 = select <2 x i1> %i.le, <2 x i8> %predphi2184, <2 x i8> zeroinitializer
  store <2 x i8> %predphi2185, ptr %next.gep2177, align 1, !alias.scope !80, !noalias !81
  %i.li = fmul <2 x float> %broadcast.splat2172, %i.kx
  %i.lj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat2170, <2 x float> %i.kw, <2 x float> %i.li)
  %i.lk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %broadcast.splat2174, <2 x float> %i.la, <2 x float> %i.lj)
  %i.ll = fadd <2 x float> %i.lk, splat (float 5.000000e-01)
  %i.lm = fptosi <2 x float> %i.ll to <2 x i32>   ; 3 uses
  %i.ln = icmp sgt <2 x i32> %i.lm, splat (i32 -129)
  %i.lo = icmp sgt <2 x i32> %i.lm, splat (i32 127)
  %i.lp = trunc <2 x i32> %i.lm to <2 x i8>
  %i.lq = xor <2 x i8> %i.lp, splat (i8 -128)
  %predphi2186 = select <2 x i1> %i.lo, <2 x i8> splat (i8 -1), <2 x i8> %i.lq
  %predphi2187 = select <2 x i1> %i.ln, <2 x i8> %predphi2186, <2 x i8> zeroinitializer
  store <2 x i8> %predphi2187, ptr %next.gep2179, align 1, !alias.scope !82, !noalias !79
  %index.next2188 = add nuw i64 %index2176, 2     ; 2 uses
  %i.lr = icmp eq i64 %index.next2188, %n.vec2162
  br i1 %i.lr, label %middle.block2189, label %vector.body2175, !llvm.loop !26

middle.block2189:                                 ; preds = %vector.body2175
  %i.ls = or disjoint i64 %index2176, 1           ; 2 uses
  %next.gep2180 = getelementptr i8, ptr %.promoted1528, i64 %i.ls
  %i.lt = getelementptr inbounds nuw i8, ptr %next.gep2180, i64 1
  %next.gep2178 = getelementptr i8, ptr %.promoted1527, i64 %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %next.gep2178, i64 1
  store ptr %i.lu, ptr %i.b, align 8, !alias.scope !83, !noalias !84
  store ptr %i.lt, ptr %i.c, align 8, !alias.scope !85, !noalias !86
  %cmp.n2190 = icmp eq i64 %n.vec2162, %wide.trip.count1623
  br i1 %cmp.n2190, label %._crit_edge1531.loopexit, label %scalar.ph2119.preheader

scalar.ph2119.preheader:                          ; preds = %vector.memcheck2121, %.lr.ph1530, %middle.block2189
  %indvars.iv1620.ph = phi i64 [ 0, %vector.memcheck2121 ], [ 0, %.lr.ph1530 ], [ %n.vec2162, %middle.block2189 ]
  %.ph = phi ptr [ %.promoted1527, %vector.memcheck2121 ], [ %.promoted1527, %.lr.ph1530 ], [ %i.kg, %middle.block2189 ]
  %.ph2315 = phi ptr [ %.promoted1528, %vector.memcheck2121 ], [ %.promoted1528, %.lr.ph1530 ], [ %i.kh, %middle.block2189 ]
  br label %scalar.ph2119

scalar.ph2119:                                    ; preds = %scalar.ph2119.preheader, %bb.x
  %indvars.iv1620 = phi i64 [ %indvars.iv.next1621, %bb.x ], [ %indvars.iv1620.ph, %scalar.ph2119.preheader ] ; 2 uses
  %i.lv = phi ptr [ %i.na, %bb.x ], [ %.ph, %scalar.ph2119.preheader ] ; 2 uses
  %i.lw = phi ptr [ %i.nl, %bb.x ], [ %.ph2315, %scalar.ph2119.preheader ] ; 2 uses
  %.idx1689 = shl nuw nsw i64 %indvars.iv1620, 3
  %i.lx = getelementptr inbounds nuw i8, ptr %.11320.lcssa, i64 %.idx1689 ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 4            ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 4
  %i.ma = load i32, ptr %i.lz, align 4            ; 3 uses
  %i.mb = and i32 %i.ly, 16711680
  %i.mc = and i32 %i.ma, 16711680
  %i.md = add nuw nsw i32 %i.mc, %i.mb
  %i.me = lshr i32 %i.md, 17
  %i.mf = and i32 %i.ly, 65280
  %i.mg = and i32 %i.ma, 65280
  %i.mh = add nuw nsw i32 %i.mg, %i.mf
  %i.mi = lshr i32 %i.mh, 9
  %i.mj = and i32 %i.ly, 255
  %i.mk = and i32 %i.ma, 255
  %i.ml = add nuw nsw i32 %i.mk, %i.mj
  %i.mm = lshr i32 %i.ml, 1
  %i.mn = uitofp nneg i32 %i.me to float          ; 2 uses
  %i.mo = uitofp nneg i32 %i.mi to float          ; 2 uses
  %i.mp = fmul float %i.ju, %i.mo
  %i.mq = tail call float @llvm.fmuladd.f32(float %i.js, float %i.mn, float %i.mp)
  %i.mr = uitofp nneg i32 %i.mm to float          ; 2 uses
  %i.ms = tail call float @llvm.fmuladd.f32(float %i.jw, float %i.mr, float %i.mq)
  %i.mt = fadd float %i.ms, 5.000000e-01
  %i.mu = fptosi float %i.mt to i32               ; 3 uses
  %i.mv = icmp slt i32 %i.mu, -128
  br i1 %i.mv, label %bb.u, label %bb.s

bb.s:                                             ; preds = %scalar.ph2119
  %i.mw = icmp sgt i32 %i.mu, 127
  br i1 %i.mw, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.mx = trunc nsw i32 %i.mu to i8
  %i.my = xor i8 %i.mx, -128
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %scalar.ph2119
  %i.mz = phi i8 [ 0, %scalar.ph2119 ], [ %i.my, %bb.t ], [ -1, %bb.s ]
  %i.na = getelementptr inbounds nuw i8, ptr %i.lv, i64 1 ; 2 uses
  store ptr %i.na, ptr %i.b, align 8
  store i8 %i.mz, ptr %i.lv, align 1
  %i.nb = fmul float %i.ka, %i.mo
  %i.nc = tail call float @llvm.fmuladd.f32(float %i.jy, float %i.mn, float %i.nb)
  %i.nd = tail call float @llvm.fmuladd.f32(float %i.kc, float %i.mr, float %i.nc)
  %i.ne = fadd float %i.nd, 5.000000e-01
  %i.nf = fptosi float %i.ne to i32               ; 3 uses
  %i.ng = icmp slt i32 %i.nf, -128
  br i1 %i.ng, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.nh = icmp sgt i32 %i.nf, 127
  br i1 %i.nh, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ni = trunc nsw i32 %i.nf to i8
  %i.nj = xor i8 %i.ni, -128
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.nk = phi i8 [ 0, %bb.u ], [ %i.nj, %bb.w ], [ -1, %bb.v ]
  %i.nl = getelementptr inbounds nuw i8, ptr %i.lw, i64 1 ; 2 uses
  store ptr %i.nl, ptr %i.c, align 8
  store i8 %i.nk, ptr %i.lw, align 1
  %indvars.iv.next1621 = add nuw nsw i64 %indvars.iv1620, 1 ; 2 uses
  %exitcond1624.not = icmp eq i64 %indvars.iv.next1621, %wide.trip.count1623
  br i1 %exitcond1624.not, label %._crit_edge1531.loopexit, label %scalar.ph2119, !llvm.loop !28

._crit_edge1531.loopexit:                         ; preds = %bb.x, %middle.block2189
  %i.nm = shl nuw nsw i32 %i.i, 1
  %i.nn = zext nneg i32 %i.nm to i64
  br label %._crit_edge1531

._crit_edge1531:                                  ; preds = %._crit_edge1531.loopexit, %.preheader1438
  %.21332.lcssa = phi i64 [ 0, %.preheader1438 ], [ %i.nn, %._crit_edge1531.loopexit ]
  %.not1410 = icmp eq i32 %i.j, 0
  br i1 %.not1410, label %._crit_edge1531._crit_edge, label %bb.y

bb.y:                                             ; preds = %._crit_edge1531
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %.11320.lcssa, i64 %.21332.lcssa
  %i.np = load i32, ptr %i.no, align 4            ; 3 uses
  %i.nq = lshr i32 %i.np, 16
  %i.nr = and i32 %i.nq, 255
  %i.ns = lshr i32 %i.np, 8
  %i.nt = and i32 %i.ns, 255
  %i.nu = and i32 %i.np, 255
  %i.nv = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.nw = load float, ptr %i.nv, align 8
  %i.nx = uitofp nneg i32 %i.nr to float          ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.nz = load float, ptr %i.ny, align 4
  %i.oa = uitofp nneg i32 %i.nt to float          ; 2 uses
  %i.ob = fmul float %i.nz, %i.oa
  %i.oc = tail call float @llvm.fmuladd.f32(float %i.nw, float %i.nx, float %i.ob)
  %i.od = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.oe = load float, ptr %i.od, align 8
  %i.of = uitofp nneg i32 %i.nu to float          ; 2 uses
  %i.og = tail call float @llvm.fmuladd.f32(float %i.oe, float %i.of, float %i.oc)
  %i.oh = fadd float %i.og, 5.000000e-01
  %i.oi = fptosi float %i.oh to i32               ; 3 uses
  %i.oj = icmp slt i32 %i.oi, -128
  br i1 %i.oj, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ok = icmp sgt i32 %i.oi, 127
end_hunk_0
begin_hunk_1_@SDL_ConvertPixels_YUV_to_YUV:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.el, ptr align 1 %i.ek, i64 %i.ec, i1 false)
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 %i.ed ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %i.el, i64 %i.ee ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.en, ptr align 1 %i.em, i64 %i.ec, i1 false)
  %i.eo = getelementptr inbounds i8, ptr %i.em, i64 %i.ed ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 %i.ee ; 2 uses
  %i.eq = add nsw i32 %.491.i, -4                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ep, ptr align 1 %i.eo, i64 %i.ec, i1 false)
  %i.er = getelementptr inbounds i8, ptr %i.eo, i64 %i.ed
  %i.es = getelementptr inbounds i8, ptr %i.ep, i64 %i.ee
  %.not.i.3 = icmp eq i32 %i.eq, 0
  br i1 %.not.i.3, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.lr.ph.i.new, !llvm.loop !140

IsPacked4Format.exit.i:                           ; preds = %bb.e
  %i.et = tail call ptr @SDL_GetPixelFormatName_REAL(i32 noundef %2) #6
  %i.eu = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.16, ptr noundef %i.et) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.j:                                             ; preds = %bb.c
  switch i32 %2, label %IsPacked4Format.exit74 [
    i32 1448433993, label %bb.k
    i32 842094169, label %bb.k
    i32 842094158, label %bb.k
    i32 825382478, label %bb.k
    i32 808530000, label %bb.k
    i32 1498831189, label %bb.bf
    i32 844715353, label %bb.bf
    i32 1431918169, label %bb.bf
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j
  switch i32 %7, label %IsPlanar2x2Format.exit [
    i32 1448433993, label %bb.l
    i32 842094169, label %bb.l
    i32 842094158, label %bb.l
    i32 825382478, label %bb.l
    i32 808530000, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  %.not.i60 = icmp eq ptr %5, %10
  %.not97328.i = icmp eq i32 %1, 0
  %or.cond.i = or i1 %.not97328.i, %.not.i60
  br i1 %or.cond.i, label %.loopexit.i, label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %bb.l
  %i.ev = sext i32 %0 to i64                      ; 5 uses
  %i.ew = sext i32 %6 to i64                      ; 5 uses
  %i.ex = sext i32 %11 to i64                     ; 5 uses
  %i.ey = add i32 %1, -1
  %xtraiter = and i32 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i61, %.prol.preheader
  %.0331.i.prol = phi ptr [ %i.fb, %.prol.preheader ], [ %10, %.lr.ph.i61 ] ; 2 uses
  %.092330.i.prol = phi ptr [ %i.fa, %.prol.preheader ], [ %5, %.lr.ph.i61 ] ; 2 uses
  %.093329.i.prol = phi i32 [ %i.ez, %.prol.preheader ], [ %1, %.lr.ph.i61 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i61 ]
  %i.ez = add nsw i32 %.093329.i.prol, -1         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0331.i.prol, ptr align 1 %.092330.i.prol, i64 %i.ev, i1 false)
  %i.fa = getelementptr inbounds i8, ptr %.092330.i.prol, i64 %i.ew ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %.0331.i.prol, i64 %i.ex ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !141

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i61
  %.0331.i.unr = phi ptr [ %10, %.lr.ph.i61 ], [ %i.fb, %.prol.preheader ]
  %.092330.i.unr = phi ptr [ %5, %.lr.ph.i61 ], [ %i.fa, %.prol.preheader ]
  %.093329.i.unr = phi i32 [ %1, %.lr.ph.i61 ], [ %i.ez, %.prol.preheader ]
  %i.fc = icmp ult i32 %i.ey, 3
  br i1 %i.fc, label %.loopexit.i, label %.lr.ph.i61.new

.lr.ph.i61.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i61.new
  %.0331.i = phi ptr [ %i.fl, %.lr.ph.i61.new ], [ %.0331.i.unr, %.prol.loopexit ] ; 2 uses
  %.092330.i = phi ptr [ %i.fk, %.lr.ph.i61.new ], [ %.092330.i.unr, %.prol.loopexit ] ; 2 uses
  %.093329.i = phi i32 [ %i.fj, %.lr.ph.i61.new ], [ %.093329.i.unr, %.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0331.i, ptr align 1 %.092330.i, i64 %i.ev, i1 false)
  %i.fd = getelementptr inbounds i8, ptr %.092330.i, i64 %i.ew ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %.0331.i, i64 %i.ex ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fe, ptr align 1 %i.fd, i64 %i.ev, i1 false)
  %i.ff = getelementptr inbounds i8, ptr %i.fd, i64 %i.ew ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %i.fe, i64 %i.ex ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fg, ptr align 1 %i.ff, i64 %i.ev, i1 false)
  %i.fh = getelementptr inbounds i8, ptr %i.ff, i64 %i.ew ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %i.fg, i64 %i.ex ; 2 uses
  %i.fj = add nsw i32 %.093329.i, -4              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fi, ptr align 1 %i.fh, i64 %i.ev, i1 false)
  %i.fk = getelementptr inbounds i8, ptr %i.fh, i64 %i.ew
  %i.fl = getelementptr inbounds i8, ptr %i.fi, i64 %i.ex
  %.not97.i.3 = icmp eq i32 %i.fj, 0
  br i1 %.not97.i.3, label %.loopexit.i, label %.lr.ph.i61.new, !llvm.loop !142

.loopexit.i:                                      ; preds = %.prol.loopexit, %.lr.ph.i61.new, %bb.l
  switch i32 %2, label %bb.be [
    i32 842094169, label %bb.m
    i32 1448433993, label %bb.w
    i32 842094158, label %bb.ag
    i32 825382478, label %bb.as
  ]

bb.m:                                             ; preds = %.loopexit.i
  switch i32 %7, label %bb.be [
    i32 1448433993, label %bb.n
    i32 842094158, label %bb.o
    i32 825382478, label %bb.s
  ]

bb.n:                                             ; preds = %bb.m
  %i.fm = tail call fastcc zeroext i1 @SDL_ConvertPixels_SwapUVPlanes(i32 noundef %0, i32 noundef %1, ptr noundef %5, i32 noundef %6, ptr noundef %10, i32 noundef %11)
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.o:                                             ; preds = %bb.m
  %i.fn = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.fo = insertelement <4 x i32> %i.fn, i32 %1, i64 1
  %i.fp = insertelement <4 x i32> %i.fo, i32 %6, i64 2
  %i.fq = insertelement <4 x i32> %i.fp, i32 %11, i64 3
  %i.fr = add nsw <4 x i32> %i.fq, splat (i32 1)
  %i.fs = sdiv <4 x i32> %i.fr, splat (i32 2)     ; 6 uses
  %i.ft = extractelement <4 x i32> %i.fs, i64 0   ; 6 uses
  %i.fu = extractelement <4 x i32> %i.fs, i64 2   ; 3 uses
  %i.fv = sub nsw i32 %i.fu, %i.ft
  %shift = shufflevector <4 x i32> %i.fs, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = sub nsw <4 x i32> %shift, %i.fs
  %i.fw = extractelement <4 x i32> %foldExtExtBinop, i64 0
  %i.fx = shl nsw i32 %i.fw, 1
  %i.fy = mul nsw i32 %6, %1
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds i8, ptr %5, i64 %i.fz ; 3 uses
  %i.gb = mul nsw i32 %11, %1
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds i8, ptr %10, i64 %i.gc ; 2 uses
  %i.ge = icmp eq ptr %i.ga, %i.gd
  br i1 %i.ge, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.gf = extractelement <4 x i32> %i.fs, i64 1
  %i.gg = sext i32 %i.gf to i64
  %i.gh = shl nsw i64 %i.gg, 1
  %i.gi = sext i32 %i.fu to i64
  %i.gj = mul nsw i64 %i.gh, %i.gi                ; 2 uses
  %i.gk = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.gj) #6 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gk, ptr readonly align 1 %i.ga, i64 %i.gj, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.058.i.i.i = phi ptr [ %i.gk, %bb.q ], [ %i.ga, %bb.o ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.gk, %bb.q ], [ null, %bb.o ]
  %.off.i.i.i = add i32 %1, 2
  %.not6271.i.i.i = icmp ult i32 %.off.i.i.i, 3
  br i1 %.not6271.i.i.i, label %._crit_edge75.split.i.i.i, label %.preheader.lr.ph.i.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %bb.r
  %.off76.i.i.i = add i32 %0, 2
  %.not6364.i.i.i = icmp ult i32 %.off76.i.i.i, 3
  %i.gl = sext i32 %i.fv to i64                   ; 2 uses
  %i.gm = sext i32 %i.fx to i64
  br i1 %.not6364.i.i.i, label %._crit_edge75.split.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.preheader.lr.ph.i.i.i
  %i.gn = extractelement <4 x i32> %i.fs, i64 1   ; 2 uses
  %i.go = mul nsw i32 %i.fu, %i.gn
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds i8, ptr %.058.i.i.i, i64 %i.gp
  %i.gr = add nsw i32 %i.ft, -1                   ; 3 uses
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = add nuw nsw i64 %i.gs, 1                ; 7 uses
  %i.gu = shl nuw nsw i64 %i.gs, 1
  %min.iters.check742 = icmp ult i32 %i.gr, 3
  %min.iters.check752 = icmp ult i32 %i.gr, 15
  %i.gv = and i64 %i.gt, 12
  %n.vec754 = and i64 %i.gt, 8589934576           ; 7 uses
  %i.gw = shl nuw nsw i64 %n.vec754, 1
  %i.gx = trunc i64 %n.vec754 to i32
  %i.gy = sub i32 %i.ft, %i.gx
  %cmp.n769 = icmp eq i64 %i.gt, %n.vec754
  %min.epilog.iters.check773 = icmp eq i64 %i.gv, 0
  %n.vec776 = and i64 %i.gt, 8589934588           ; 6 uses
  %i.gz = shl nuw nsw i64 %n.vec776, 1
  %i.ha = trunc i64 %n.vec776 to i32
  %i.hb = sub i32 %i.ft, %i.ha
  %cmp.n787 = icmp eq i64 %i.gt, %n.vec776
  br label %iter.check770

iter.check770:                                    ; preds = %._crit_edge.i.i.i, %.preheader.preheader.i.i.i
  %.in.i.i.i = phi i32 [ %i.ja, %._crit_edge.i.i.i ], [ %i.gn, %.preheader.preheader.i.i.i ]
  %.04974.i.i.i = phi ptr [ %i.jd, %._crit_edge.i.i.i ], [ %i.gd, %.preheader.preheader.i.i.i ] ; 10 uses
  %.15173.i.i.i = phi ptr [ %i.jc, %._crit_edge.i.i.i ], [ %.058.i.i.i, %.preheader.preheader.i.i.i ] ; 8 uses
  %.15372.i.i.i = phi ptr [ %i.jb, %._crit_edge.i.i.i ], [ %i.gq, %.preheader.preheader.i.i.i ] ; 8 uses
  br i1 %min.iters.check742, label %vec.epilog.scalar.ph772.preheader, label %vector.memcheck743

vector.memcheck743:                               ; preds = %iter.check770
  %i.hc = getelementptr i8, ptr %.04974.i.i.i, i64 %i.gu
  %i.hd = getelementptr i8, ptr %i.hc, i64 2      ; 2 uses
  %i.he = getelementptr i8, ptr %.15173.i.i.i, i64 %i.gt
  %bound0744 = icmp ult ptr %.04974.i.i.i, %i.he
  %bound0744.a = icmp ult ptr %.15173.i.i.i, %i.hd
  %found.conflict746 = and i1 %bound0744, %bound0744.a
  %12 = getelementptr i8, ptr %.15372.i.i.i, i64 %i.gt
  %bound0747 = icmp ult ptr %.04974.i.i.i, %12
  %bound1748 = icmp ult ptr %.15372.i.i.i, %i.hd
  %found.conflict749 = and i1 %bound0747, %bound1748
  %conflict.rdx750 = or i1 %found.conflict746, %found.conflict749
  br i1 %conflict.rdx750, label %vec.epilog.scalar.ph772.preheader, label %vector.main.loop.iter.check751

vector.main.loop.iter.check751:                   ; preds = %vector.memcheck743
  br i1 %min.iters.check752, label %vec.epilog.ph774, label %vector.ph753

vector.ph753:                                     ; preds = %vector.main.loop.iter.check751
  %i.hf = getelementptr i8, ptr %.04974.i.i.i, i64 %i.gw ; 2 uses
  %i.hg = getelementptr i8, ptr %.15173.i.i.i, i64 %n.vec754 ; 2 uses
  %i.hh = getelementptr i8, ptr %.15372.i.i.i, i64 %n.vec754 ; 2 uses
  br label %vector.body755

vector.body755:                                   ; preds = %vector.ph753, %vector.body755
  %index756 = phi i64 [ 0, %vector.ph753 ], [ %index.next767, %vector.body755 ] ; 4 uses
  %i.hi = shl i64 %index756, 1                    ; 2 uses
  %next.gep757 = getelementptr i8, ptr %.04974.i.i.i, i64 %i.hi
  %i.hj = getelementptr i8, ptr %.04974.i.i.i, i64 %i.hi
  %next.gep758 = getelementptr i8, ptr %i.hj, i64 16
  %next.gep759 = getelementptr i8, ptr %.15173.i.i.i, i64 %index756 ; 2 uses
  %next.gep760 = getelementptr i8, ptr %.15372.i.i.i, i64 %index756 ; 2 uses
  %i.hk = getelementptr i8, ptr %next.gep760, i64 8
  %wide.load761 = load <8 x i8>, ptr %next.gep760, align 1, !alias.scope !219
  %wide.load762 = load <8 x i8>, ptr %i.hk, align 1, !alias.scope !219
  %i.hl = getelementptr i8, ptr %next.gep759, i64 8
  %wide.load763 = load <8 x i8>, ptr %next.gep759, align 1, !alias.scope !220
  %wide.load764 = load <8 x i8>, ptr %i.hl, align 1, !alias.scope !220
  %interleaved.vec765 = shufflevector <8 x i8> %wide.load761, <8 x i8> %wide.load763, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec765, ptr %next.gep757, align 1, !alias.scope !221, !noalias !222
  %interleaved.vec766 = shufflevector <8 x i8> %wide.load762, <8 x i8> %wide.load764, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec766, ptr %next.gep758, align 1, !alias.scope !221, !noalias !222
  %index.next767 = add nuw i64 %index756, 16      ; 2 uses
  %i.hm = icmp eq i64 %index.next767, %n.vec754
  br i1 %i.hm, label %middle.block768, label %vector.body755, !llvm.loop !147

middle.block768:                                  ; preds = %vector.body755
  br i1 %cmp.n769, label %._crit_edge.i.i.i, label %vec.epilog.iter.check771

vec.epilog.iter.check771:                         ; preds = %middle.block768
  br i1 %min.epilog.iters.check773, label %vec.epilog.scalar.ph772.preheader, label %vec.epilog.ph774, !prof !223

vec.epilog.ph774:                                 ; preds = %vector.main.loop.iter.check751, %vec.epilog.iter.check771
  %vec.epilog.resume.val775 = phi i64 [ %n.vec754, %vec.epilog.iter.check771 ], [ 0, %vector.main.loop.iter.check751 ]
  %i.hn = getelementptr i8, ptr %.04974.i.i.i, i64 %i.gz ; 2 uses
  %i.ho = getelementptr i8, ptr %.15173.i.i.i, i64 %n.vec776 ; 2 uses
  %i.hp = getelementptr i8, ptr %.15372.i.i.i, i64 %n.vec776 ; 2 uses
  br label %vec.epilog.vector.body777

vec.epilog.vector.body777:                        ; preds = %vec.epilog.vector.body777, %vec.epilog.ph774
  %index778 = phi i64 [ %vec.epilog.resume.val775, %vec.epilog.ph774 ], [ %index.next785, %vec.epilog.vector.body777 ] ; 4 uses
  %i.hq = shl i64 %index778, 1
  %next.gep779 = getelementptr i8, ptr %.04974.i.i.i, i64 %i.hq
  %next.gep780 = getelementptr i8, ptr %.15173.i.i.i, i64 %index778
  %next.gep781 = getelementptr i8, ptr %.15372.i.i.i, i64 %index778
  %wide.load782 = load <4 x i8>, ptr %next.gep781, align 1, !alias.scope !219
  %wide.load783 = load <4 x i8>, ptr %next.gep780, align 1, !alias.scope !220
  %interleaved.vec784 = shufflevector <4 x i8> %wide.load782, <4 x i8> %wide.load783, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec784, ptr %next.gep779, align 1, !alias.scope !221, !noalias !222
  %index.next785 = add nuw i64 %index778, 4       ; 2 uses
  %i.hr = icmp eq i64 %index.next785, %n.vec776
  br i1 %i.hr, label %vec.epilog.middle.block786, label %vec.epilog.vector.body777, !llvm.loop !148

vec.epilog.middle.block786:                       ; preds = %vec.epilog.vector.body777
  br i1 %cmp.n787, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph772.preheader

vec.epilog.scalar.ph772.preheader:                ; preds = %iter.check770, %vector.memcheck743, %vec.epilog.iter.check771, %vec.epilog.middle.block786
  %.168.i.i.i.ph = phi ptr [ %.04974.i.i.i, %iter.check770 ], [ %.04974.i.i.i, %vector.memcheck743 ], [ %i.hf, %vec.epilog.iter.check771 ], [ %i.hn, %vec.epilog.middle.block786 ] ; 2 uses
  %.267.i.i.i.ph = phi ptr [ %.15173.i.i.i, %iter.check770 ], [ %.15173.i.i.i, %vector.memcheck743 ], [ %i.hg, %vec.epilog.iter.check771 ], [ %i.ho, %vec.epilog.middle.block786 ] ; 2 uses
  %.25466.i.i.i.ph = phi ptr [ %.15372.i.i.i, %iter.check770 ], [ %.15372.i.i.i, %vector.memcheck743 ], [ %i.hh, %vec.epilog.iter.check771 ], [ %i.hp, %vec.epilog.middle.block786 ] ; 2 uses
  %.05665.i.i.i.ph = phi i32 [ %i.ft, %iter.check770 ], [ %i.ft, %vector.memcheck743 ], [ %i.gy, %vec.epilog.iter.check771 ], [ %i.hb, %vec.epilog.middle.block786 ] ; 4 uses
  %i.hs = add nsw i32 %.05665.i.i.i.ph, -1
  %xtraiter936 = and i32 %.05665.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod937.not = icmp eq i32 %xtraiter936, 0
  br i1 %lcmp.mod937.not, label %vec.epilog.scalar.ph772.prol.loopexit, label %vec.epilog.scalar.ph772.prol

vec.epilog.scalar.ph772.prol:                     ; preds = %vec.epilog.scalar.ph772.preheader, %vec.epilog.scalar.ph772.prol
  %.168.i.i.i.prol = phi ptr [ %i.hz, %vec.epilog.scalar.ph772.prol ], [ %.168.i.i.i.ph, %vec.epilog.scalar.ph772.preheader ] ; 3 uses
  %.267.i.i.i.prol = phi ptr [ %i.hx, %vec.epilog.scalar.ph772.prol ], [ %.267.i.i.i.ph, %vec.epilog.scalar.ph772.preheader ] ; 2 uses
  %.25466.i.i.i.prol = phi ptr [ %i.hu, %vec.epilog.scalar.ph772.prol ], [ %.25466.i.i.i.ph, %vec.epilog.scalar.ph772.preheader ] ; 2 uses
  %.05665.i.i.i.prol = phi i32 [ %i.ht, %vec.epilog.scalar.ph772.prol ], [ %.05665.i.i.i.ph, %vec.epilog.scalar.ph772.preheader ]
  %prol.iter938 = phi i32 [ %prol.iter938.next, %vec.epilog.scalar.ph772.prol ], [ 0, %vec.epilog.scalar.ph772.preheader ]
  %i.ht = add nsw i32 %.05665.i.i.i.prol, -1      ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.25466.i.i.i.prol, i64 1 ; 3 uses
  %i.hv = load i8, ptr %.25466.i.i.i.prol, align 1
  %i.hw = getelementptr inbounds nuw i8, ptr %.168.i.i.i.prol, i64 1
  store i8 %i.hv, ptr %.168.i.i.i.prol, align 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.267.i.i.i.prol, i64 1 ; 3 uses
  %i.hy = load i8, ptr %.267.i.i.i.prol, align 1
  %i.hz = getelementptr inbounds nuw i8, ptr %.168.i.i.i.prol, i64 2 ; 3 uses
  store i8 %i.hy, ptr %i.hw, align 1
  %prol.iter938.next = add i32 %prol.iter938, 1   ; 2 uses
  %prol.iter938.cmp.not = icmp eq i32 %prol.iter938.next, %xtraiter936
  br i1 %prol.iter938.cmp.not, label %vec.epilog.scalar.ph772.prol.loopexit, label %vec.epilog.scalar.ph772.prol, !llvm.loop !149

vec.epilog.scalar.ph772.prol.loopexit:            ; preds = %vec.epilog.scalar.ph772.prol, %vec.epilog.scalar.ph772.preheader
  %.lcssa857.unr = phi ptr [ poison, %vec.epilog.scalar.ph772.preheader ], [ %i.hu, %vec.epilog.scalar.ph772.prol ]
  %.lcssa856.unr = phi ptr [ poison, %vec.epilog.scalar.ph772.preheader ], [ %i.hx, %vec.epilog.scalar.ph772.prol ]
  %.lcssa855.unr = phi ptr [ poison, %vec.epilog.scalar.ph772.preheader ], [ %i.hz, %vec.epilog.scalar.ph772.prol ]
  %.168.i.i.i.unr = phi ptr [ %.168.i.i.i.ph, %vec.epilog.scalar.ph772.preheader ], [ %i.hz, %vec.epilog.scalar.ph772.prol ]
  %.267.i.i.i.unr = phi ptr [ %.267.i.i.i.ph, %vec.epilog.scalar.ph772.preheader ], [ %i.hx, %vec.epilog.scalar.ph772.prol ]
  %.25466.i.i.i.unr = phi ptr [ %.25466.i.i.i.ph, %vec.epilog.scalar.ph772.preheader ], [ %i.hu, %vec.epilog.scalar.ph772.prol ]
  %.05665.i.i.i.unr = phi i32 [ %.05665.i.i.i.ph, %vec.epilog.scalar.ph772.preheader ], [ %i.ht, %vec.epilog.scalar.ph772.prol ]
  %i.ia = icmp ult i32 %i.hs, 3
  br i1 %i.ia, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph772

vec.epilog.scalar.ph772:                          ; preds = %vec.epilog.scalar.ph772.prol.loopexit, %vec.epilog.scalar.ph772
  %.168.i.i.i = phi ptr [ %i.iz, %vec.epilog.scalar.ph772 ], [ %.168.i.i.i.unr, %vec.epilog.scalar.ph772.prol.loopexit ] ; 9 uses
  %.267.i.i.i = phi ptr [ %i.ix, %vec.epilog.scalar.ph772 ], [ %.267.i.i.i.unr, %vec.epilog.scalar.ph772.prol.loopexit ] ; 5 uses
  %.25466.i.i.i = phi ptr [ %i.iu, %vec.epilog.scalar.ph772 ], [ %.25466.i.i.i.unr, %vec.epilog.scalar.ph772.prol.loopexit ] ; 5 uses
  %.05665.i.i.i = phi i32 [ %i.it, %vec.epilog.scalar.ph772 ], [ %.05665.i.i.i.unr, %vec.epilog.scalar.ph772.prol.loopexit ]
  %i.ib = getelementptr inbounds nuw i8, ptr %.25466.i.i.i, i64 1
  %i.ic = load i8, ptr %.25466.i.i.i, align 1
  %i.id = getelementptr inbounds nuw i8, ptr %.168.i.i.i, i64 1
  store i8 %i.ic, ptr %.168.i.i.i, align 1
  %i.ie = getelementptr inbounds nuw i8, ptr %.267.i.i.i, i64 1
  %i.if = load i8, ptr %.267.i.i.i, align 1
  %i.ig = getelementptr inbounds nuw i8, ptr %.168.i.i.i, i64 2
  store i8 %i.if, ptr %i.id, align 1
  %i.ih = getelementptr inbounds nuw i8, ptr %.25466.i.i.i, i64 2
  %i.ii = load i8, ptr %i.ib, align 1
  %i.ij = getelementptr inbounds nuw i8, ptr %.168.i.i.i, i64 3
  store i8 %i.ii, ptr %i.ig, align 1
  %i.ik = getelementptr inbounds nuw i8, ptr %.267.i.i.i, i64 2
  %i.il = load i8, ptr %i.ie, align 1
  %i.im = getelementptr inbounds nuw i8, ptr %.168.i.i.i, i64 4
  store i8 %i.il, ptr %i.ij, align 1
  %i.in = getelementptr inbounds nuw i8, ptr %.25466.i.i.i, i64 3
  %i.io = load i8, ptr %i.ih, align 1
  %i.ip = getelementptr inbounds nuw i8, ptr %.168.i.i.i, i64 5
  store i8 %i.io, ptr %i.im, align 1
  %i.iq = getelementptr inbounds nuw i8, ptr %.267.i.i.i, i64 3
  %i.ir = load i8, ptr %i.ik, align 1
  %i.is = getelementptr inbounds nuw i8, ptr %.168.i.i.i, i64 6
  store i8 %i.ir, ptr %i.ip, align 1
  %i.it = add nsw i32 %.05665.i.i.i, -4           ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.25466.i.i.i, i64 4 ; 2 uses
  %i.iv = load i8, ptr %i.in, align 1
  %i.iw = getelementptr inbounds nuw i8, ptr %.168.i.i.i, i64 7
  store i8 %i.iv, ptr %i.is, align 1
  %i.ix = getelementptr inbounds nuw i8, ptr %.267.i.i.i, i64 4 ; 2 uses
  %i.iy = load i8, ptr %i.iq, align 1
  %i.iz = getelementptr inbounds nuw i8, ptr %.168.i.i.i, i64 8 ; 2 uses
  store i8 %i.iy, ptr %i.iw, align 1
  %.not63.i.i.i.3 = icmp eq i32 %i.it, 0
  br i1 %.not63.i.i.i.3, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph772, !llvm.loop !150

._crit_edge.i.i.i:                                ; preds = %vec.epilog.scalar.ph772.prol.loopexit, %vec.epilog.scalar.ph772, %vec.epilog.middle.block786, %middle.block768
  %.lcssa475 = phi ptr [ %i.hp, %vec.epilog.middle.block786 ], [ %i.hh, %middle.block768 ], [ %.lcssa857.unr, %vec.epilog.scalar.ph772.prol.loopexit ], [ %i.iu, %vec.epilog.scalar.ph772 ]
  %.lcssa474 = phi ptr [ %i.ho, %vec.epilog.middle.block786 ], [ %i.hg, %middle.block768 ], [ %.lcssa856.unr, %vec.epilog.scalar.ph772.prol.loopexit ], [ %i.ix, %vec.epilog.scalar.ph772 ]
  %.lcssa473 = phi ptr [ %i.hn, %vec.epilog.middle.block786 ], [ %i.hf, %middle.block768 ], [ %.lcssa855.unr, %vec.epilog.scalar.ph772.prol.loopexit ], [ %i.iz, %vec.epilog.scalar.ph772 ]
  %i.ja = add nsw i32 %.in.i.i.i, -1              ; 2 uses
  %i.jb = getelementptr inbounds i8, ptr %.lcssa475, i64 %i.gl
  %i.jc = getelementptr inbounds i8, ptr %.lcssa474, i64 %i.gl
  %i.jd = getelementptr inbounds i8, ptr %.lcssa473, i64 %i.gm
  %.not62.i.i.i = icmp eq i32 %i.ja, 0
  br i1 %.not62.i.i.i, label %._crit_edge75.split.i.i.i, label %iter.check770, !llvm.loop !151

._crit_edge75.split.i.i.i:                        ; preds = %._crit_edge.i.i.i, %.preheader.lr.ph.i.i.i, %bb.r
  tail call void @SDL_free_REAL(ptr noundef %.0.i.i.i) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.s:                                             ; preds = %bb.m
  %i.je = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.jf = insertelement <4 x i32> %i.je, i32 %1, i64 1
  %i.jg = insertelement <4 x i32> %i.jf, i32 %6, i64 2
  %i.jh = insertelement <4 x i32> %i.jg, i32 %11, i64 3
  %i.ji = add nsw <4 x i32> %i.jh, splat (i32 1)
  %i.jj = sdiv <4 x i32> %i.ji, splat (i32 2)     ; 6 uses
  %i.jk = extractelement <4 x i32> %i.jj, i64 0   ; 6 uses
  %i.jl = extractelement <4 x i32> %i.jj, i64 2   ; 3 uses
  %i.jm = sub nsw i32 %i.jl, %i.jk
  %shift794 = shufflevector <4 x i32> %i.jj, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop795 = sub nsw <4 x i32> %shift794, %i.jj
  %i.jn = extractelement <4 x i32> %foldExtExtBinop795, i64 0
  %i.jo = shl nsw i32 %i.jn, 1
  %i.jp = mul nsw i32 %6, %1
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds i8, ptr %5, i64 %i.jq ; 3 uses
  %i.js = mul nsw i32 %11, %1
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds i8, ptr %10, i64 %i.jt ; 2 uses
  %i.jv = icmp eq ptr %i.jr, %i.ju
  br i1 %i.jv, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.jw = extractelement <4 x i32> %i.jj, i64 1
  %i.jx = sext i32 %i.jw to i64
  %i.jy = shl nsw i64 %i.jx, 1
  %i.jz = sext i32 %i.jl to i64
  %i.ka = mul nsw i64 %i.jy, %i.jz                ; 2 uses
  %i.kb = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.ka) #6 ; 4 uses
  %.not.i.i120.i = icmp eq ptr %i.kb, null
  br i1 %.not.i.i120.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kb, ptr readonly align 1 %i.jr, i64 %i.ka, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.058.i.i98.i = phi ptr [ %i.kb, %bb.u ], [ %i.jr, %bb.s ] ; 2 uses
  %.0.i.i99.i = phi ptr [ %i.kb, %bb.u ], [ null, %bb.s ]
  %.off.i.i100.i = add i32 %1, 2
  %.not6271.i.i101.i = icmp ult i32 %.off.i.i100.i, 3
  br i1 %.not6271.i.i101.i, label %._crit_edge75.split.i.i118.i, label %.preheader.lr.ph.i.i102.i

.preheader.lr.ph.i.i102.i:                        ; preds = %bb.v
  %.off76.i.i103.i = add i32 %0, 2
  %.not6364.i.i104.i = icmp ult i32 %.off76.i.i103.i, 3
  %i.kc = sext i32 %i.jm to i64                   ; 2 uses
  %i.kd = sext i32 %i.jo to i64
  br i1 %.not6364.i.i104.i, label %._crit_edge75.split.i.i118.i, label %.preheader.preheader.i.i105.i

.preheader.preheader.i.i105.i:                    ; preds = %.preheader.lr.ph.i.i102.i
  %i.ke = extractelement <4 x i32> %i.jj, i64 1   ; 2 uses
  %i.kf = mul nsw i32 %i.jl, %i.ke
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds i8, ptr %.058.i.i98.i, i64 %i.kg
  %i.ki = add nsw i32 %i.jk, -1                   ; 3 uses
  %i.kj = zext i32 %i.ki to i64                   ; 2 uses
  %i.kk = add nuw nsw i64 %i.kj, 1                ; 7 uses
  %i.kl = shl nuw nsw i64 %i.kj, 1
  %min.iters.check682 = icmp ult i32 %i.ki, 3
  %min.iters.check692 = icmp ult i32 %i.ki, 15
  %i.km = and i64 %i.kk, 12
  %n.vec694 = and i64 %i.kk, 8589934576           ; 7 uses
  %i.kn = shl nuw nsw i64 %n.vec694, 1
  %i.ko = trunc i64 %n.vec694 to i32
  %i.kp = sub i32 %i.jk, %i.ko
  %cmp.n709 = icmp eq i64 %i.kk, %n.vec694
  %min.epilog.iters.check713 = icmp eq i64 %i.km, 0
  %n.vec716 = and i64 %i.kk, 8589934588           ; 6 uses
  %i.kq = shl nuw nsw i64 %n.vec716, 1
  %i.kr = trunc i64 %n.vec716 to i32
  %i.ks = sub i32 %i.jk, %i.kr
  %cmp.n727 = icmp eq i64 %i.kk, %n.vec716
  br label %iter.check710

iter.check710:                                    ; preds = %._crit_edge.i.i116.i, %.preheader.preheader.i.i105.i
  %.in.i.i107.i = phi i32 [ %i.mr, %._crit_edge.i.i116.i ], [ %i.ke, %.preheader.preheader.i.i105.i ]
  %.04974.i.i108.i = phi ptr [ %i.mu, %._crit_edge.i.i116.i ], [ %i.ju, %.preheader.preheader.i.i105.i ] ; 10 uses
  %.15173.i.i109.i = phi ptr [ %i.mt, %._crit_edge.i.i116.i ], [ %i.kh, %.preheader.preheader.i.i105.i ] ; 8 uses
  %.15372.i.i110.i = phi ptr [ %i.ms, %._crit_edge.i.i116.i ], [ %.058.i.i98.i, %.preheader.preheader.i.i105.i ] ; 8 uses
  br i1 %min.iters.check682, label %vec.epilog.scalar.ph712.preheader, label %vector.memcheck683

vector.memcheck683:                               ; preds = %iter.check710
  %i.kt = getelementptr i8, ptr %.04974.i.i108.i, i64 %i.kl
  %i.ku = getelementptr i8, ptr %i.kt, i64 2      ; 2 uses
  %i.kv = getelementptr i8, ptr %.15173.i.i109.i, i64 %i.kk
  %bound0684 = icmp ult ptr %.04974.i.i108.i, %i.kv
  %bound0684.a = icmp ult ptr %.15173.i.i109.i, %i.ku
  %found.conflict686 = and i1 %bound0684, %bound0684.a
  %13 = getelementptr i8, ptr %.15372.i.i110.i, i64 %i.kk
  %bound0687 = icmp ult ptr %.04974.i.i108.i, %13
  %bound1688 = icmp ult ptr %.15372.i.i110.i, %i.ku
  %found.conflict689 = and i1 %bound0687, %bound1688
  %conflict.rdx690 = or i1 %found.conflict686, %found.conflict689
  br i1 %conflict.rdx690, label %vec.epilog.scalar.ph712.preheader, label %vector.main.loop.iter.check691

vector.main.loop.iter.check691:                   ; preds = %vector.memcheck683
  br i1 %min.iters.check692, label %vec.epilog.ph714, label %vector.ph693

vector.ph693:                                     ; preds = %vector.main.loop.iter.check691
  %i.kw = getelementptr i8, ptr %.04974.i.i108.i, i64 %i.kn ; 2 uses
  %i.kx = getelementptr i8, ptr %.15173.i.i109.i, i64 %n.vec694 ; 2 uses
  %i.ky = getelementptr i8, ptr %.15372.i.i110.i, i64 %n.vec694 ; 2 uses
  br label %vector.body695

vector.body695:                                   ; preds = %vector.ph693, %vector.body695
  %index696 = phi i64 [ 0, %vector.ph693 ], [ %index.next707, %vector.body695 ] ; 4 uses
  %i.kz = shl i64 %index696, 1                    ; 2 uses
  %next.gep697 = getelementptr i8, ptr %.04974.i.i108.i, i64 %i.kz
  %i.la = getelementptr i8, ptr %.04974.i.i108.i, i64 %i.kz
  %next.gep698 = getelementptr i8, ptr %i.la, i64 16
  %next.gep699 = getelementptr i8, ptr %.15173.i.i109.i, i64 %index696 ; 2 uses
  %next.gep700 = getelementptr i8, ptr %.15372.i.i110.i, i64 %index696 ; 2 uses
  %i.lb = getelementptr i8, ptr %next.gep700, i64 8
  %wide.load701 = load <8 x i8>, ptr %next.gep700, align 1, !alias.scope !224
  %wide.load702 = load <8 x i8>, ptr %i.lb, align 1, !alias.scope !224
  %i.lc = getelementptr i8, ptr %next.gep699, i64 8
  %wide.load703 = load <8 x i8>, ptr %next.gep699, align 1, !alias.scope !225
  %wide.load704 = load <8 x i8>, ptr %i.lc, align 1, !alias.scope !225
  %interleaved.vec705 = shufflevector <8 x i8> %wide.load701, <8 x i8> %wide.load703, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec705, ptr %next.gep697, align 1, !alias.scope !226, !noalias !227
  %interleaved.vec706 = shufflevector <8 x i8> %wide.load702, <8 x i8> %wide.load704, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec706, ptr %next.gep698, align 1, !alias.scope !226, !noalias !227
  %index.next707 = add nuw i64 %index696, 16      ; 2 uses
  %i.ld = icmp eq i64 %index.next707, %n.vec694
  br i1 %i.ld, label %middle.block708, label %vector.body695, !llvm.loop !156

middle.block708:                                  ; preds = %vector.body695
  br i1 %cmp.n709, label %._crit_edge.i.i116.i, label %vec.epilog.iter.check711

vec.epilog.iter.check711:                         ; preds = %middle.block708
  br i1 %min.epilog.iters.check713, label %vec.epilog.scalar.ph712.preheader, label %vec.epilog.ph714, !prof !223

vec.epilog.ph714:                                 ; preds = %vector.main.loop.iter.check691, %vec.epilog.iter.check711
  %vec.epilog.resume.val715 = phi i64 [ %n.vec694, %vec.epilog.iter.check711 ], [ 0, %vector.main.loop.iter.check691 ]
  %i.le = getelementptr i8, ptr %.04974.i.i108.i, i64 %i.kq ; 2 uses
  %i.lf = getelementptr i8, ptr %.15173.i.i109.i, i64 %n.vec716 ; 2 uses
  %i.lg = getelementptr i8, ptr %.15372.i.i110.i, i64 %n.vec716 ; 2 uses
  br label %vec.epilog.vector.body717

vec.epilog.vector.body717:                        ; preds = %vec.epilog.vector.body717, %vec.epilog.ph714
  %index718 = phi i64 [ %vec.epilog.resume.val715, %vec.epilog.ph714 ], [ %index.next725, %vec.epilog.vector.body717 ] ; 4 uses
  %i.lh = shl i64 %index718, 1
  %next.gep719 = getelementptr i8, ptr %.04974.i.i108.i, i64 %i.lh
  %next.gep720 = getelementptr i8, ptr %.15173.i.i109.i, i64 %index718
  %next.gep721 = getelementptr i8, ptr %.15372.i.i110.i, i64 %index718
  %wide.load722 = load <4 x i8>, ptr %next.gep721, align 1, !alias.scope !224
  %wide.load723 = load <4 x i8>, ptr %next.gep720, align 1, !alias.scope !225
  %interleaved.vec724 = shufflevector <4 x i8> %wide.load722, <4 x i8> %wide.load723, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec724, ptr %next.gep719, align 1, !alias.scope !226, !noalias !227
  %index.next725 = add nuw i64 %index718, 4       ; 2 uses
  %i.li = icmp eq i64 %index.next725, %n.vec716
  br i1 %i.li, label %vec.epilog.middle.block726, label %vec.epilog.vector.body717, !llvm.loop !157

vec.epilog.middle.block726:                       ; preds = %vec.epilog.vector.body717
  br i1 %cmp.n727, label %._crit_edge.i.i116.i, label %vec.epilog.scalar.ph712.preheader

vec.epilog.scalar.ph712.preheader:                ; preds = %iter.check710, %vector.memcheck683, %vec.epilog.iter.check711, %vec.epilog.middle.block726
  %.168.i.i111.i.ph = phi ptr [ %.04974.i.i108.i, %iter.check710 ], [ %.04974.i.i108.i, %vector.memcheck683 ], [ %i.kw, %vec.epilog.iter.check711 ], [ %i.le, %vec.epilog.middle.block726 ] ; 2 uses
  %.267.i.i112.i.ph = phi ptr [ %.15173.i.i109.i, %iter.check710 ], [ %.15173.i.i109.i, %vector.memcheck683 ], [ %i.kx, %vec.epilog.iter.check711 ], [ %i.lf, %vec.epilog.middle.block726 ] ; 2 uses
  %.25466.i.i113.i.ph = phi ptr [ %.15372.i.i110.i, %iter.check710 ], [ %.15372.i.i110.i, %vector.memcheck683 ], [ %i.ky, %vec.epilog.iter.check711 ], [ %i.lg, %vec.epilog.middle.block726 ] ; 2 uses
  %.05665.i.i114.i.ph = phi i32 [ %i.jk, %iter.check710 ], [ %i.jk, %vector.memcheck683 ], [ %i.kp, %vec.epilog.iter.check711 ], [ %i.ks, %vec.epilog.middle.block726 ] ; 4 uses
  %i.lj = add nsw i32 %.05665.i.i114.i.ph, -1
  %xtraiter933 = and i32 %.05665.i.i114.i.ph, 3   ; 2 uses
  %lcmp.mod934.not = icmp eq i32 %xtraiter933, 0
  br i1 %lcmp.mod934.not, label %vec.epilog.scalar.ph712.prol.loopexit, label %vec.epilog.scalar.ph712.prol

vec.epilog.scalar.ph712.prol:                     ; preds = %vec.epilog.scalar.ph712.preheader, %vec.epilog.scalar.ph712.prol
  %.168.i.i111.i.prol = phi ptr [ %i.lq, %vec.epilog.scalar.ph712.prol ], [ %.168.i.i111.i.ph, %vec.epilog.scalar.ph712.preheader ] ; 3 uses
  %.267.i.i112.i.prol = phi ptr [ %i.lo, %vec.epilog.scalar.ph712.prol ], [ %.267.i.i112.i.ph, %vec.epilog.scalar.ph712.preheader ] ; 2 uses
  %.25466.i.i113.i.prol = phi ptr [ %i.ll, %vec.epilog.scalar.ph712.prol ], [ %.25466.i.i113.i.ph, %vec.epilog.scalar.ph712.preheader ] ; 2 uses
  %.05665.i.i114.i.prol = phi i32 [ %i.lk, %vec.epilog.scalar.ph712.prol ], [ %.05665.i.i114.i.ph, %vec.epilog.scalar.ph712.preheader ]
  %prol.iter935 = phi i32 [ %prol.iter935.next, %vec.epilog.scalar.ph712.prol ], [ 0, %vec.epilog.scalar.ph712.preheader ]
  %i.lk = add nsw i32 %.05665.i.i114.i.prol, -1   ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.25466.i.i113.i.prol, i64 1 ; 3 uses
  %i.lm = load i8, ptr %.25466.i.i113.i.prol, align 1
  %i.ln = getelementptr inbounds nuw i8, ptr %.168.i.i111.i.prol, i64 1
  store i8 %i.lm, ptr %.168.i.i111.i.prol, align 1
  %i.lo = getelementptr inbounds nuw i8, ptr %.267.i.i112.i.prol, i64 1 ; 3 uses
  %i.lp = load i8, ptr %.267.i.i112.i.prol, align 1
  %i.lq = getelementptr inbounds nuw i8, ptr %.168.i.i111.i.prol, i64 2 ; 3 uses
  store i8 %i.lp, ptr %i.ln, align 1
  %prol.iter935.next = add i32 %prol.iter935, 1   ; 2 uses
  %prol.iter935.cmp.not = icmp eq i32 %prol.iter935.next, %xtraiter933
  br i1 %prol.iter935.cmp.not, label %vec.epilog.scalar.ph712.prol.loopexit, label %vec.epilog.scalar.ph712.prol, !llvm.loop !158

vec.epilog.scalar.ph712.prol.loopexit:            ; preds = %vec.epilog.scalar.ph712.prol, %vec.epilog.scalar.ph712.preheader
  %.lcssa860.unr = phi ptr [ poison, %vec.epilog.scalar.ph712.preheader ], [ %i.ll, %vec.epilog.scalar.ph712.prol ]
  %.lcssa859.unr = phi ptr [ poison, %vec.epilog.scalar.ph712.preheader ], [ %i.lo, %vec.epilog.scalar.ph712.prol ]
  %.lcssa858.unr = phi ptr [ poison, %vec.epilog.scalar.ph712.preheader ], [ %i.lq, %vec.epilog.scalar.ph712.prol ]
  %.168.i.i111.i.unr = phi ptr [ %.168.i.i111.i.ph, %vec.epilog.scalar.ph712.preheader ], [ %i.lq, %vec.epilog.scalar.ph712.prol ]
  %.267.i.i112.i.unr = phi ptr [ %.267.i.i112.i.ph, %vec.epilog.scalar.ph712.preheader ], [ %i.lo, %vec.epilog.scalar.ph712.prol ]
  %.25466.i.i113.i.unr = phi ptr [ %.25466.i.i113.i.ph, %vec.epilog.scalar.ph712.preheader ], [ %i.ll, %vec.epilog.scalar.ph712.prol ]
  %.05665.i.i114.i.unr = phi i32 [ %.05665.i.i114.i.ph, %vec.epilog.scalar.ph712.preheader ], [ %i.lk, %vec.epilog.scalar.ph712.prol ]
  %i.lr = icmp ult i32 %i.lj, 3
  br i1 %i.lr, label %._crit_edge.i.i116.i, label %vec.epilog.scalar.ph712

vec.epilog.scalar.ph712:                          ; preds = %vec.epilog.scalar.ph712.prol.loopexit, %vec.epilog.scalar.ph712
  %.168.i.i111.i = phi ptr [ %i.mq, %vec.epilog.scalar.ph712 ], [ %.168.i.i111.i.unr, %vec.epilog.scalar.ph712.prol.loopexit ] ; 9 uses
  %.267.i.i112.i = phi ptr [ %i.mo, %vec.epilog.scalar.ph712 ], [ %.267.i.i112.i.unr, %vec.epilog.scalar.ph712.prol.loopexit ] ; 5 uses
  %.25466.i.i113.i = phi ptr [ %i.ml, %vec.epilog.scalar.ph712 ], [ %.25466.i.i113.i.unr, %vec.epilog.scalar.ph712.prol.loopexit ] ; 5 uses
  %.05665.i.i114.i = phi i32 [ %i.mk, %vec.epilog.scalar.ph712 ], [ %.05665.i.i114.i.unr, %vec.epilog.scalar.ph712.prol.loopexit ]
  %i.ls = getelementptr inbounds nuw i8, ptr %.25466.i.i113.i, i64 1
  %i.lt = load i8, ptr %.25466.i.i113.i, align 1
  %i.lu = getelementptr inbounds nuw i8, ptr %.168.i.i111.i, i64 1
  store i8 %i.lt, ptr %.168.i.i111.i, align 1
  %i.lv = getelementptr inbounds nuw i8, ptr %.267.i.i112.i, i64 1
  %i.lw = load i8, ptr %.267.i.i112.i, align 1
  %i.lx = getelementptr inbounds nuw i8, ptr %.168.i.i111.i, i64 2
  store i8 %i.lw, ptr %i.lu, align 1
  %i.ly = getelementptr inbounds nuw i8, ptr %.25466.i.i113.i, i64 2
  %i.lz = load i8, ptr %i.ls, align 1
  %i.ma = getelementptr inbounds nuw i8, ptr %.168.i.i111.i, i64 3
  store i8 %i.lz, ptr %i.lx, align 1
  %i.mb = getelementptr inbounds nuw i8, ptr %.267.i.i112.i, i64 2
  %i.mc = load i8, ptr %i.lv, align 1
  %i.md = getelementptr inbounds nuw i8, ptr %.168.i.i111.i, i64 4
  store i8 %i.mc, ptr %i.ma, align 1
  %i.me = getelementptr inbounds nuw i8, ptr %.25466.i.i113.i, i64 3
  %i.mf = load i8, ptr %i.ly, align 1
  %i.mg = getelementptr inbounds nuw i8, ptr %.168.i.i111.i, i64 5
  store i8 %i.mf, ptr %i.md, align 1
  %i.mh = getelementptr inbounds nuw i8, ptr %.267.i.i112.i, i64 3
  %i.mi = load i8, ptr %i.mb, align 1
  %i.mj = getelementptr inbounds nuw i8, ptr %.168.i.i111.i, i64 6
  store i8 %i.mi, ptr %i.mg, align 1
  %i.mk = add nsw i32 %.05665.i.i114.i, -4        ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.25466.i.i113.i, i64 4 ; 2 uses
  %i.mm = load i8, ptr %i.me, align 1
  %i.mn = getelementptr inbounds nuw i8, ptr %.168.i.i111.i, i64 7
  store i8 %i.mm, ptr %i.mj, align 1
  %i.mo = getelementptr inbounds nuw i8, ptr %.267.i.i112.i, i64 4 ; 2 uses
  %i.mp = load i8, ptr %i.mh, align 1
  %i.mq = getelementptr inbounds nuw i8, ptr %.168.i.i111.i, i64 8 ; 2 uses
  store i8 %i.mp, ptr %i.mn, align 1
  %.not63.i.i115.i.3 = icmp eq i32 %i.mk, 0
  br i1 %.not63.i.i115.i.3, label %._crit_edge.i.i116.i, label %vec.epilog.scalar.ph712, !llvm.loop !159

._crit_edge.i.i116.i:                             ; preds = %vec.epilog.scalar.ph712.prol.loopexit, %vec.epilog.scalar.ph712, %vec.epilog.middle.block726, %middle.block708
  %.lcssa478 = phi ptr [ %i.lg, %vec.epilog.middle.block726 ], [ %i.ky, %middle.block708 ], [ %.lcssa860.unr, %vec.epilog.scalar.ph712.prol.loopexit ], [ %i.ml, %vec.epilog.scalar.ph712 ]
  %.lcssa477 = phi ptr [ %i.lf, %vec.epilog.middle.block726 ], [ %i.kx, %middle.block708 ], [ %.lcssa859.unr, %vec.epilog.scalar.ph712.prol.loopexit ], [ %i.mo, %vec.epilog.scalar.ph712 ]
  %.lcssa476 = phi ptr [ %i.le, %vec.epilog.middle.block726 ], [ %i.kw, %middle.block708 ], [ %.lcssa858.unr, %vec.epilog.scalar.ph712.prol.loopexit ], [ %i.mq, %vec.epilog.scalar.ph712 ]
  %i.mr = add nsw i32 %.in.i.i107.i, -1           ; 2 uses
  %i.ms = getelementptr inbounds i8, ptr %.lcssa478, i64 %i.kc
  %i.mt = getelementptr inbounds i8, ptr %.lcssa477, i64 %i.kc
  %i.mu = getelementptr inbounds i8, ptr %.lcssa476, i64 %i.kd
  %.not62.i.i117.i = icmp eq i32 %i.mr, 0
  br i1 %.not62.i.i117.i, label %._crit_edge75.split.i.i118.i, label %iter.check710, !llvm.loop !151

._crit_edge75.split.i.i118.i:                     ; preds = %._crit_edge.i.i116.i, %.preheader.lr.ph.i.i102.i, %bb.v
  tail call void @SDL_free_REAL(ptr noundef %.0.i.i99.i) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.w:                                             ; preds = %.loopexit.i
  switch i32 %7, label %bb.be [
    i32 842094169, label %bb.x
    i32 842094158, label %bb.y
    i32 825382478, label %bb.ac
  ]

bb.x:                                             ; preds = %bb.w
  %i.mv = tail call fastcc zeroext i1 @SDL_ConvertPixels_SwapUVPlanes(i32 noundef %0, i32 noundef %1, ptr noundef %5, i32 noundef %6, ptr noundef %10, i32 noundef %11)
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.y:                                             ; preds = %bb.w
  %i.mw = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.mx = insertelement <4 x i32> %i.mw, i32 %1, i64 1
  %i.my = insertelement <4 x i32> %i.mx, i32 %6, i64 2
  %i.mz = insertelement <4 x i32> %i.my, i32 %11, i64 3
  %i.na = add nsw <4 x i32> %i.mz, splat (i32 1)
  %i.nb = sdiv <4 x i32> %i.na, splat (i32 2)     ; 6 uses
  %i.nc = extractelement <4 x i32> %i.nb, i64 0   ; 6 uses
  %i.nd = extractelement <4 x i32> %i.nb, i64 2   ; 3 uses
  %i.ne = sub nsw i32 %i.nd, %i.nc
  %shift797 = shufflevector <4 x i32> %i.nb, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop798 = sub nsw <4 x i32> %shift797, %i.nb
  %i.nf = extractelement <4 x i32> %foldExtExtBinop798, i64 0
  %i.ng = shl nsw i32 %i.nf, 1
  %i.nh = mul nsw i32 %6, %1
  %i.ni = sext i32 %i.nh to i64
  %i.nj = getelementptr inbounds i8, ptr %5, i64 %i.ni ; 3 uses
  %i.nk = mul nsw i32 %11, %1
  %i.nl = sext i32 %i.nk to i64
  %i.nm = getelementptr inbounds i8, ptr %10, i64 %i.nl ; 2 uses
  %i.nn = icmp eq ptr %i.nj, %i.nm
  br i1 %i.nn, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.no = extractelement <4 x i32> %i.nb, i64 1
  %i.np = sext i32 %i.no to i64
  %i.nq = shl nsw i64 %i.np, 1
  %i.nr = sext i32 %i.nd to i64
  %i.ns = mul nsw i64 %i.nq, %i.nr                ; 2 uses
  %i.nt = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.ns) #6 ; 4 uses
  %.not.i.i144.i = icmp eq ptr %i.nt, null
  br i1 %.not.i.i144.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nt, ptr readonly align 1 %i.nj, i64 %i.ns, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.058.i.i122.i = phi ptr [ %i.nt, %bb.aa ], [ %i.nj, %bb.y ] ; 2 uses
  %.0.i.i123.i = phi ptr [ %i.nt, %bb.aa ], [ null, %bb.y ]
  %.off.i.i124.i = add i32 %1, 2
  %.not6271.i.i125.i = icmp ult i32 %.off.i.i124.i, 3
  br i1 %.not6271.i.i125.i, label %._crit_edge75.split.i.i142.i, label %.preheader.lr.ph.i.i126.i

.preheader.lr.ph.i.i126.i:                        ; preds = %bb.ab
  %.off76.i.i127.i = add i32 %0, 2
  %.not6364.i.i128.i = icmp ult i32 %.off76.i.i127.i, 3
  %i.nu = sext i32 %i.ne to i64                   ; 2 uses
  %i.nv = sext i32 %i.ng to i64
  br i1 %.not6364.i.i128.i, label %._crit_edge75.split.i.i142.i, label %.preheader.preheader.i.i129.i

.preheader.preheader.i.i129.i:                    ; preds = %.preheader.lr.ph.i.i126.i
  %i.nw = extractelement <4 x i32> %i.nb, i64 1   ; 2 uses
  %i.nx = mul nsw i32 %i.nd, %i.nw
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr inbounds i8, ptr %.058.i.i122.i, i64 %i.ny
  %i.oa = add nsw i32 %i.nc, -1                   ; 3 uses
  %i.ob = zext i32 %i.oa to i64                   ; 2 uses
  %i.oc = add nuw nsw i64 %i.ob, 1                ; 7 uses
  %i.od = shl nuw nsw i64 %i.ob, 1
  %min.iters.check622 = icmp ult i32 %i.oa, 3
  %min.iters.check632 = icmp ult i32 %i.oa, 15
  %i.oe = and i64 %i.oc, 12
  %n.vec634 = and i64 %i.oc, 8589934576           ; 7 uses
  %i.of = shl nuw nsw i64 %n.vec634, 1
  %i.og = trunc i64 %n.vec634 to i32
  %i.oh = sub i32 %i.nc, %i.og
  %cmp.n649 = icmp eq i64 %i.oc, %n.vec634
  %min.epilog.iters.check653 = icmp eq i64 %i.oe, 0
  %n.vec656 = and i64 %i.oc, 8589934588           ; 6 uses
  %i.oi = shl nuw nsw i64 %n.vec656, 1
  %i.oj = trunc i64 %n.vec656 to i32
  %i.ok = sub i32 %i.nc, %i.oj
  %cmp.n667 = icmp eq i64 %i.oc, %n.vec656
  br label %iter.check650

iter.check650:                                    ; preds = %._crit_edge.i.i140.i, %.preheader.preheader.i.i129.i
  %.in.i.i131.i = phi i32 [ %i.qj, %._crit_edge.i.i140.i ], [ %i.nw, %.preheader.preheader.i.i129.i ]
  %.04974.i.i132.i = phi ptr [ %i.qm, %._crit_edge.i.i140.i ], [ %i.nm, %.preheader.preheader.i.i129.i ] ; 10 uses
  %.15173.i.i133.i = phi ptr [ %i.ql, %._crit_edge.i.i140.i ], [ %i.nz, %.preheader.preheader.i.i129.i ] ; 8 uses
  %.15372.i.i134.i = phi ptr [ %i.qk, %._crit_edge.i.i140.i ], [ %.058.i.i122.i, %.preheader.preheader.i.i129.i ] ; 8 uses
  br i1 %min.iters.check622, label %vec.epilog.scalar.ph652.preheader, label %vector.memcheck623

vector.memcheck623:                               ; preds = %iter.check650
  %i.ol = getelementptr i8, ptr %.04974.i.i132.i, i64 %i.od
  %i.om = getelementptr i8, ptr %i.ol, i64 2      ; 2 uses
  %i.on = getelementptr i8, ptr %.15173.i.i133.i, i64 %i.oc
  %bound0624 = icmp ult ptr %.04974.i.i132.i, %i.on
  %bound0624.a = icmp ult ptr %.15173.i.i133.i, %i.om
  %found.conflict626 = and i1 %bound0624, %bound0624.a
  %14 = getelementptr i8, ptr %.15372.i.i134.i, i64 %i.oc
  %bound0627 = icmp ult ptr %.04974.i.i132.i, %14
  %bound1628 = icmp ult ptr %.15372.i.i134.i, %i.om
  %found.conflict629 = and i1 %bound0627, %bound1628
  %conflict.rdx630 = or i1 %found.conflict626, %found.conflict629
  br i1 %conflict.rdx630, label %vec.epilog.scalar.ph652.preheader, label %vector.main.loop.iter.check631

vector.main.loop.iter.check631:                   ; preds = %vector.memcheck623
  br i1 %min.iters.check632, label %vec.epilog.ph654, label %vector.ph633

vector.ph633:                                     ; preds = %vector.main.loop.iter.check631
  %i.oo = getelementptr i8, ptr %.04974.i.i132.i, i64 %i.of ; 2 uses
  %i.op = getelementptr i8, ptr %.15173.i.i133.i, i64 %n.vec634 ; 2 uses
  %i.oq = getelementptr i8, ptr %.15372.i.i134.i, i64 %n.vec634 ; 2 uses
  br label %vector.body635

vector.body635:                                   ; preds = %vector.ph633, %vector.body635
  %index636 = phi i64 [ 0, %vector.ph633 ], [ %index.next647, %vector.body635 ] ; 4 uses
  %i.or = shl i64 %index636, 1                    ; 2 uses
  %next.gep637 = getelementptr i8, ptr %.04974.i.i132.i, i64 %i.or
  %i.os = getelementptr i8, ptr %.04974.i.i132.i, i64 %i.or
  %next.gep638 = getelementptr i8, ptr %i.os, i64 16
  %next.gep639 = getelementptr i8, ptr %.15173.i.i133.i, i64 %index636 ; 2 uses
  %next.gep640 = getelementptr i8, ptr %.15372.i.i134.i, i64 %index636 ; 2 uses
  %i.ot = getelementptr i8, ptr %next.gep640, i64 8
  %wide.load641 = load <8 x i8>, ptr %next.gep640, align 1, !alias.scope !228
  %wide.load642 = load <8 x i8>, ptr %i.ot, align 1, !alias.scope !228
  %i.ou = getelementptr i8, ptr %next.gep639, i64 8
  %wide.load643 = load <8 x i8>, ptr %next.gep639, align 1, !alias.scope !229
  %wide.load644 = load <8 x i8>, ptr %i.ou, align 1, !alias.scope !229
  %interleaved.vec645 = shufflevector <8 x i8> %wide.load641, <8 x i8> %wide.load643, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec645, ptr %next.gep637, align 1, !alias.scope !230, !noalias !231
  %interleaved.vec646 = shufflevector <8 x i8> %wide.load642, <8 x i8> %wide.load644, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec646, ptr %next.gep638, align 1, !alias.scope !230, !noalias !231
  %index.next647 = add nuw i64 %index636, 16      ; 2 uses
  %i.ov = icmp eq i64 %index.next647, %n.vec634
  br i1 %i.ov, label %middle.block648, label %vector.body635, !llvm.loop !164

middle.block648:                                  ; preds = %vector.body635
  br i1 %cmp.n649, label %._crit_edge.i.i140.i, label %vec.epilog.iter.check651

vec.epilog.iter.check651:                         ; preds = %middle.block648
  br i1 %min.epilog.iters.check653, label %vec.epilog.scalar.ph652.preheader, label %vec.epilog.ph654, !prof !223

vec.epilog.ph654:                                 ; preds = %vector.main.loop.iter.check631, %vec.epilog.iter.check651
  %vec.epilog.resume.val655 = phi i64 [ %n.vec634, %vec.epilog.iter.check651 ], [ 0, %vector.main.loop.iter.check631 ]
  %i.ow = getelementptr i8, ptr %.04974.i.i132.i, i64 %i.oi ; 2 uses
  %i.ox = getelementptr i8, ptr %.15173.i.i133.i, i64 %n.vec656 ; 2 uses
  %i.oy = getelementptr i8, ptr %.15372.i.i134.i, i64 %n.vec656 ; 2 uses
  br label %vec.epilog.vector.body657

vec.epilog.vector.body657:                        ; preds = %vec.epilog.vector.body657, %vec.epilog.ph654
  %index658 = phi i64 [ %vec.epilog.resume.val655, %vec.epilog.ph654 ], [ %index.next665, %vec.epilog.vector.body657 ] ; 4 uses
  %i.oz = shl i64 %index658, 1
  %next.gep659 = getelementptr i8, ptr %.04974.i.i132.i, i64 %i.oz
  %next.gep660 = getelementptr i8, ptr %.15173.i.i133.i, i64 %index658
  %next.gep661 = getelementptr i8, ptr %.15372.i.i134.i, i64 %index658
  %wide.load662 = load <4 x i8>, ptr %next.gep661, align 1, !alias.scope !228
  %wide.load663 = load <4 x i8>, ptr %next.gep660, align 1, !alias.scope !229
  %interleaved.vec664 = shufflevector <4 x i8> %wide.load662, <4 x i8> %wide.load663, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec664, ptr %next.gep659, align 1, !alias.scope !230, !noalias !231
  %index.next665 = add nuw i64 %index658, 4       ; 2 uses
  %i.pa = icmp eq i64 %index.next665, %n.vec656
  br i1 %i.pa, label %vec.epilog.middle.block666, label %vec.epilog.vector.body657, !llvm.loop !165

vec.epilog.middle.block666:                       ; preds = %vec.epilog.vector.body657
  br i1 %cmp.n667, label %._crit_edge.i.i140.i, label %vec.epilog.scalar.ph652.preheader

vec.epilog.scalar.ph652.preheader:                ; preds = %iter.check650, %vector.memcheck623, %vec.epilog.iter.check651, %vec.epilog.middle.block666
  %.168.i.i135.i.ph = phi ptr [ %.04974.i.i132.i, %iter.check650 ], [ %.04974.i.i132.i, %vector.memcheck623 ], [ %i.oo, %vec.epilog.iter.check651 ], [ %i.ow, %vec.epilog.middle.block666 ] ; 2 uses
  %.267.i.i136.i.ph = phi ptr [ %.15173.i.i133.i, %iter.check650 ], [ %.15173.i.i133.i, %vector.memcheck623 ], [ %i.op, %vec.epilog.iter.check651 ], [ %i.ox, %vec.epilog.middle.block666 ] ; 2 uses
  %.25466.i.i137.i.ph = phi ptr [ %.15372.i.i134.i, %iter.check650 ], [ %.15372.i.i134.i, %vector.memcheck623 ], [ %i.oq, %vec.epilog.iter.check651 ], [ %i.oy, %vec.epilog.middle.block666 ] ; 2 uses
  %.05665.i.i138.i.ph = phi i32 [ %i.nc, %iter.check650 ], [ %i.nc, %vector.memcheck623 ], [ %i.oh, %vec.epilog.iter.check651 ], [ %i.ok, %vec.epilog.middle.block666 ] ; 4 uses
  %i.pb = add nsw i32 %.05665.i.i138.i.ph, -1
  %xtraiter930 = and i32 %.05665.i.i138.i.ph, 3   ; 2 uses
  %lcmp.mod931.not = icmp eq i32 %xtraiter930, 0
  br i1 %lcmp.mod931.not, label %vec.epilog.scalar.ph652.prol.loopexit, label %vec.epilog.scalar.ph652.prol

vec.epilog.scalar.ph652.prol:                     ; preds = %vec.epilog.scalar.ph652.preheader, %vec.epilog.scalar.ph652.prol
  %.168.i.i135.i.prol = phi ptr [ %i.pi, %vec.epilog.scalar.ph652.prol ], [ %.168.i.i135.i.ph, %vec.epilog.scalar.ph652.preheader ] ; 3 uses
  %.267.i.i136.i.prol = phi ptr [ %i.pg, %vec.epilog.scalar.ph652.prol ], [ %.267.i.i136.i.ph, %vec.epilog.scalar.ph652.preheader ] ; 2 uses
  %.25466.i.i137.i.prol = phi ptr [ %i.pd, %vec.epilog.scalar.ph652.prol ], [ %.25466.i.i137.i.ph, %vec.epilog.scalar.ph652.preheader ] ; 2 uses
  %.05665.i.i138.i.prol = phi i32 [ %i.pc, %vec.epilog.scalar.ph652.prol ], [ %.05665.i.i138.i.ph, %vec.epilog.scalar.ph652.preheader ]
  %prol.iter932 = phi i32 [ %prol.iter932.next, %vec.epilog.scalar.ph652.prol ], [ 0, %vec.epilog.scalar.ph652.preheader ]
  %i.pc = add nsw i32 %.05665.i.i138.i.prol, -1   ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.25466.i.i137.i.prol, i64 1 ; 3 uses
  %i.pe = load i8, ptr %.25466.i.i137.i.prol, align 1
  %i.pf = getelementptr inbounds nuw i8, ptr %.168.i.i135.i.prol, i64 1
  store i8 %i.pe, ptr %.168.i.i135.i.prol, align 1
  %i.pg = getelementptr inbounds nuw i8, ptr %.267.i.i136.i.prol, i64 1 ; 3 uses
  %i.ph = load i8, ptr %.267.i.i136.i.prol, align 1
  %i.pi = getelementptr inbounds nuw i8, ptr %.168.i.i135.i.prol, i64 2 ; 3 uses
  store i8 %i.ph, ptr %i.pf, align 1
  %prol.iter932.next = add i32 %prol.iter932, 1   ; 2 uses
  %prol.iter932.cmp.not = icmp eq i32 %prol.iter932.next, %xtraiter930
  br i1 %prol.iter932.cmp.not, label %vec.epilog.scalar.ph652.prol.loopexit, label %vec.epilog.scalar.ph652.prol, !llvm.loop !166

vec.epilog.scalar.ph652.prol.loopexit:            ; preds = %vec.epilog.scalar.ph652.prol, %vec.epilog.scalar.ph652.preheader
  %.lcssa863.unr = phi ptr [ poison, %vec.epilog.scalar.ph652.preheader ], [ %i.pd, %vec.epilog.scalar.ph652.prol ]
  %.lcssa862.unr = phi ptr [ poison, %vec.epilog.scalar.ph652.preheader ], [ %i.pg, %vec.epilog.scalar.ph652.prol ]
  %.lcssa861.unr = phi ptr [ poison, %vec.epilog.scalar.ph652.preheader ], [ %i.pi, %vec.epilog.scalar.ph652.prol ]
  %.168.i.i135.i.unr = phi ptr [ %.168.i.i135.i.ph, %vec.epilog.scalar.ph652.preheader ], [ %i.pi, %vec.epilog.scalar.ph652.prol ]
  %.267.i.i136.i.unr = phi ptr [ %.267.i.i136.i.ph, %vec.epilog.scalar.ph652.preheader ], [ %i.pg, %vec.epilog.scalar.ph652.prol ]
  %.25466.i.i137.i.unr = phi ptr [ %.25466.i.i137.i.ph, %vec.epilog.scalar.ph652.preheader ], [ %i.pd, %vec.epilog.scalar.ph652.prol ]
  %.05665.i.i138.i.unr = phi i32 [ %.05665.i.i138.i.ph, %vec.epilog.scalar.ph652.preheader ], [ %i.pc, %vec.epilog.scalar.ph652.prol ]
  %i.pj = icmp ult i32 %i.pb, 3
  br i1 %i.pj, label %._crit_edge.i.i140.i, label %vec.epilog.scalar.ph652

vec.epilog.scalar.ph652:                          ; preds = %vec.epilog.scalar.ph652.prol.loopexit, %vec.epilog.scalar.ph652
  %.168.i.i135.i = phi ptr [ %i.qi, %vec.epilog.scalar.ph652 ], [ %.168.i.i135.i.unr, %vec.epilog.scalar.ph652.prol.loopexit ] ; 9 uses
  %.267.i.i136.i = phi ptr [ %i.qg, %vec.epilog.scalar.ph652 ], [ %.267.i.i136.i.unr, %vec.epilog.scalar.ph652.prol.loopexit ] ; 5 uses
  %.25466.i.i137.i = phi ptr [ %i.qd, %vec.epilog.scalar.ph652 ], [ %.25466.i.i137.i.unr, %vec.epilog.scalar.ph652.prol.loopexit ] ; 5 uses
  %.05665.i.i138.i = phi i32 [ %i.qc, %vec.epilog.scalar.ph652 ], [ %.05665.i.i138.i.unr, %vec.epilog.scalar.ph652.prol.loopexit ]
  %i.pk = getelementptr inbounds nuw i8, ptr %.25466.i.i137.i, i64 1
  %i.pl = load i8, ptr %.25466.i.i137.i, align 1
  %i.pm = getelementptr inbounds nuw i8, ptr %.168.i.i135.i, i64 1
  store i8 %i.pl, ptr %.168.i.i135.i, align 1
  %i.pn = getelementptr inbounds nuw i8, ptr %.267.i.i136.i, i64 1
  %i.po = load i8, ptr %.267.i.i136.i, align 1
  %i.pp = getelementptr inbounds nuw i8, ptr %.168.i.i135.i, i64 2
  store i8 %i.po, ptr %i.pm, align 1
  %i.pq = getelementptr inbounds nuw i8, ptr %.25466.i.i137.i, i64 2
  %i.pr = load i8, ptr %i.pk, align 1
  %i.ps = getelementptr inbounds nuw i8, ptr %.168.i.i135.i, i64 3
  store i8 %i.pr, ptr %i.pp, align 1
  %i.pt = getelementptr inbounds nuw i8, ptr %.267.i.i136.i, i64 2
  %i.pu = load i8, ptr %i.pn, align 1
  %i.pv = getelementptr inbounds nuw i8, ptr %.168.i.i135.i, i64 4
  store i8 %i.pu, ptr %i.ps, align 1
  %i.pw = getelementptr inbounds nuw i8, ptr %.25466.i.i137.i, i64 3
  %i.px = load i8, ptr %i.pq, align 1
  %i.py = getelementptr inbounds nuw i8, ptr %.168.i.i135.i, i64 5
  store i8 %i.px, ptr %i.pv, align 1
  %i.pz = getelementptr inbounds nuw i8, ptr %.267.i.i136.i, i64 3
  %i.qa = load i8, ptr %i.pt, align 1
  %i.qb = getelementptr inbounds nuw i8, ptr %.168.i.i135.i, i64 6
  store i8 %i.qa, ptr %i.py, align 1
  %i.qc = add nsw i32 %.05665.i.i138.i, -4        ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.25466.i.i137.i, i64 4 ; 2 uses
  %i.qe = load i8, ptr %i.pw, align 1
  %i.qf = getelementptr inbounds nuw i8, ptr %.168.i.i135.i, i64 7
  store i8 %i.qe, ptr %i.qb, align 1
  %i.qg = getelementptr inbounds nuw i8, ptr %.267.i.i136.i, i64 4 ; 2 uses
  %i.qh = load i8, ptr %i.pz, align 1
  %i.qi = getelementptr inbounds nuw i8, ptr %.168.i.i135.i, i64 8 ; 2 uses
  store i8 %i.qh, ptr %i.qf, align 1
  %.not63.i.i139.i.3 = icmp eq i32 %i.qc, 0
  br i1 %.not63.i.i139.i.3, label %._crit_edge.i.i140.i, label %vec.epilog.scalar.ph652, !llvm.loop !167

._crit_edge.i.i140.i:                             ; preds = %vec.epilog.scalar.ph652.prol.loopexit, %vec.epilog.scalar.ph652, %vec.epilog.middle.block666, %middle.block648
  %.lcssa481 = phi ptr [ %i.oy, %vec.epilog.middle.block666 ], [ %i.oq, %middle.block648 ], [ %.lcssa863.unr, %vec.epilog.scalar.ph652.prol.loopexit ], [ %i.qd, %vec.epilog.scalar.ph652 ]
  %.lcssa480 = phi ptr [ %i.ox, %vec.epilog.middle.block666 ], [ %i.op, %middle.block648 ], [ %.lcssa862.unr, %vec.epilog.scalar.ph652.prol.loopexit ], [ %i.qg, %vec.epilog.scalar.ph652 ]
  %.lcssa479 = phi ptr [ %i.ow, %vec.epilog.middle.block666 ], [ %i.oo, %middle.block648 ], [ %.lcssa861.unr, %vec.epilog.scalar.ph652.prol.loopexit ], [ %i.qi, %vec.epilog.scalar.ph652 ]
  %i.qj = add nsw i32 %.in.i.i131.i, -1           ; 2 uses
  %i.qk = getelementptr inbounds i8, ptr %.lcssa481, i64 %i.nu
  %i.ql = getelementptr inbounds i8, ptr %.lcssa480, i64 %i.nu
  %i.qm = getelementptr inbounds i8, ptr %.lcssa479, i64 %i.nv
  %.not62.i.i141.i = icmp eq i32 %i.qj, 0
  br i1 %.not62.i.i141.i, label %._crit_edge75.split.i.i142.i, label %iter.check650, !llvm.loop !151

._crit_edge75.split.i.i142.i:                     ; preds = %._crit_edge.i.i140.i, %.preheader.lr.ph.i.i126.i, %bb.ab
  tail call void @SDL_free_REAL(ptr noundef %.0.i.i123.i) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.ac:                                            ; preds = %bb.w
  %i.qn = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.qo = insertelement <4 x i32> %i.qn, i32 %1, i64 1
  %i.qp = insertelement <4 x i32> %i.qo, i32 %6, i64 2
  %i.qq = insertelement <4 x i32> %i.qp, i32 %11, i64 3
  %i.qr = add nsw <4 x i32> %i.qq, splat (i32 1)
  %i.qs = sdiv <4 x i32> %i.qr, splat (i32 2)     ; 6 uses
  %i.qt = extractelement <4 x i32> %i.qs, i64 0   ; 6 uses
  %i.qu = extractelement <4 x i32> %i.qs, i64 2   ; 3 uses
  %i.qv = sub nsw i32 %i.qu, %i.qt
  %shift800 = shufflevector <4 x i32> %i.qs, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop801 = sub nsw <4 x i32> %shift800, %i.qs
  %i.qw = extractelement <4 x i32> %foldExtExtBinop801, i64 0
  %i.qx = shl nsw i32 %i.qw, 1
  %i.qy = mul nsw i32 %6, %1
  %i.qz = sext i32 %i.qy to i64
  %i.ra = getelementptr inbounds i8, ptr %5, i64 %i.qz ; 3 uses
  %i.rb = mul nsw i32 %11, %1
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds i8, ptr %10, i64 %i.rc ; 2 uses
  %i.re = icmp eq ptr %i.ra, %i.rd
  br i1 %i.re, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.rf = extractelement <4 x i32> %i.qs, i64 1
  %i.rg = sext i32 %i.rf to i64
  %i.rh = shl nsw i64 %i.rg, 1
  %i.ri = sext i32 %i.qu to i64
  %i.rj = mul nsw i64 %i.rh, %i.ri                ; 2 uses
  %i.rk = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.rj) #6 ; 4 uses
  %.not.i.i168.i = icmp eq ptr %i.rk, null
  br i1 %.not.i.i168.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rk, ptr readonly align 1 %i.ra, i64 %i.rj, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %.058.i.i146.i = phi ptr [ %i.rk, %bb.ae ], [ %i.ra, %bb.ac ] ; 2 uses
  %.0.i.i147.i = phi ptr [ %i.rk, %bb.ae ], [ null, %bb.ac ]
  %.off.i.i148.i = add i32 %1, 2
  %.not6271.i.i149.i = icmp ult i32 %.off.i.i148.i, 3
  br i1 %.not6271.i.i149.i, label %._crit_edge75.split.i.i166.i, label %.preheader.lr.ph.i.i150.i

.preheader.lr.ph.i.i150.i:                        ; preds = %bb.af
  %.off76.i.i151.i = add i32 %0, 2
  %.not6364.i.i152.i = icmp ult i32 %.off76.i.i151.i, 3
  %i.rl = sext i32 %i.qv to i64                   ; 2 uses
  %i.rm = sext i32 %i.qx to i64
  br i1 %.not6364.i.i152.i, label %._crit_edge75.split.i.i166.i, label %.preheader.preheader.i.i153.i

.preheader.preheader.i.i153.i:                    ; preds = %.preheader.lr.ph.i.i150.i
  %i.rn = extractelement <4 x i32> %i.qs, i64 1   ; 2 uses
  %i.ro = mul nsw i32 %i.qu, %i.rn
  %i.rp = sext i32 %i.ro to i64
  %i.rq = getelementptr inbounds i8, ptr %.058.i.i146.i, i64 %i.rp
  %i.rr = add nsw i32 %i.qt, -1                   ; 3 uses
  %i.rs = zext i32 %i.rr to i64                   ; 2 uses
  %i.rt = add nuw nsw i64 %i.rs, 1                ; 7 uses
  %i.ru = shl nuw nsw i64 %i.rs, 1
  %min.iters.check567 = icmp ult i32 %i.rr, 3
  %min.iters.check573 = icmp ult i32 %i.rr, 15
  %i.rv = and i64 %i.rt, 12
  %n.vec575 = and i64 %i.rt, 8589934576           ; 7 uses
  %i.rw = shl nuw nsw i64 %n.vec575, 1
  %i.rx = trunc i64 %n.vec575 to i32
  %i.ry = sub i32 %i.qt, %i.rx
  %cmp.n589 = icmp eq i64 %i.rt, %n.vec575
  %min.epilog.iters.check593 = icmp eq i64 %i.rv, 0
  %n.vec596 = and i64 %i.rt, 8589934588           ; 6 uses
  %i.rz = shl nuw nsw i64 %n.vec596, 1
  %i.sa = trunc i64 %n.vec596 to i32
  %i.sb = sub i32 %i.qt, %i.sa
  %cmp.n607 = icmp eq i64 %i.rt, %n.vec596
  br label %iter.check590

iter.check590:                                    ; preds = %._crit_edge.i.i164.i, %.preheader.preheader.i.i153.i
  %.in.i.i155.i = phi i32 [ %i.ua, %._crit_edge.i.i164.i ], [ %i.rn, %.preheader.preheader.i.i153.i ]
  %.04974.i.i156.i = phi ptr [ %i.ud, %._crit_edge.i.i164.i ], [ %i.rd, %.preheader.preheader.i.i153.i ] ; 10 uses
  %.15173.i.i157.i = phi ptr [ %i.uc, %._crit_edge.i.i164.i ], [ %.058.i.i146.i, %.preheader.preheader.i.i153.i ] ; 8 uses
  %.15372.i.i158.i = phi ptr [ %i.ub, %._crit_edge.i.i164.i ], [ %i.rq, %.preheader.preheader.i.i153.i ] ; 8 uses
  br i1 %min.iters.check567, label %vec.epilog.scalar.ph592.preheader, label %vector.memcheck568

vector.memcheck568:                               ; preds = %iter.check590
  %i.sc = getelementptr i8, ptr %.04974.i.i156.i, i64 %i.ru
  %i.sd = getelementptr i8, ptr %i.sc, i64 2      ; 2 uses
  %i.se = getelementptr i8, ptr %.15173.i.i157.i, i64 %i.rt
  %bound0 = icmp ult ptr %.04974.i.i156.i, %i.se
  %bound0.a = icmp ult ptr %.15173.i.i157.i, %i.sd
  %found.conflict = and i1 %bound0, %bound0.a
  %15 = getelementptr i8, ptr %.15372.i.i158.i, i64 %i.rt
  %bound0569 = icmp ult ptr %.04974.i.i156.i, %15
  %bound1570 = icmp ult ptr %.15372.i.i158.i, %i.sd
  %found.conflict571 = and i1 %bound0569, %bound1570
  %conflict.rdx = or i1 %found.conflict, %found.conflict571
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph592.preheader, label %vector.main.loop.iter.check572

vector.main.loop.iter.check572:                   ; preds = %vector.memcheck568
  br i1 %min.iters.check573, label %vec.epilog.ph594, label %vector.ph574

vector.ph574:                                     ; preds = %vector.main.loop.iter.check572
  %i.sf = getelementptr i8, ptr %.04974.i.i156.i, i64 %i.rw ; 2 uses
  %i.sg = getelementptr i8, ptr %.15173.i.i157.i, i64 %n.vec575 ; 2 uses
  %i.sh = getelementptr i8, ptr %.15372.i.i158.i, i64 %n.vec575 ; 2 uses
  br label %vector.body576

vector.body576:                                   ; preds = %vector.ph574, %vector.body576
  %index577 = phi i64 [ 0, %vector.ph574 ], [ %index.next587, %vector.body576 ] ; 4 uses
  %i.si = shl i64 %index577, 1                    ; 2 uses
  %next.gep578 = getelementptr i8, ptr %.04974.i.i156.i, i64 %i.si
  %i.sj = getelementptr i8, ptr %.04974.i.i156.i, i64 %i.si
  %next.gep579 = getelementptr i8, ptr %i.sj, i64 16
  %next.gep580 = getelementptr i8, ptr %.15173.i.i157.i, i64 %index577 ; 2 uses
  %next.gep581 = getelementptr i8, ptr %.15372.i.i158.i, i64 %index577 ; 2 uses
  %i.sk = getelementptr i8, ptr %next.gep581, i64 8
  %wide.load582 = load <8 x i8>, ptr %next.gep581, align 1, !alias.scope !232
  %wide.load583 = load <8 x i8>, ptr %i.sk, align 1, !alias.scope !232
  %i.sl = getelementptr i8, ptr %next.gep580, i64 8
  %wide.load584 = load <8 x i8>, ptr %next.gep580, align 1, !alias.scope !233
  %wide.load585 = load <8 x i8>, ptr %i.sl, align 1, !alias.scope !233
  %interleaved.vec = shufflevector <8 x i8> %wide.load582, <8 x i8> %wide.load584, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %next.gep578, align 1, !alias.scope !234, !noalias !235
  %interleaved.vec586 = shufflevector <8 x i8> %wide.load583, <8 x i8> %wide.load585, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec586, ptr %next.gep579, align 1, !alias.scope !234, !noalias !235
  %index.next587 = add nuw i64 %index577, 16      ; 2 uses
  %i.sm = icmp eq i64 %index.next587, %n.vec575
  br i1 %i.sm, label %middle.block588, label %vector.body576, !llvm.loop !172

middle.block588:                                  ; preds = %vector.body576
  br i1 %cmp.n589, label %._crit_edge.i.i164.i, label %vec.epilog.iter.check591

vec.epilog.iter.check591:                         ; preds = %middle.block588
  br i1 %min.epilog.iters.check593, label %vec.epilog.scalar.ph592.preheader, label %vec.epilog.ph594, !prof !223

vec.epilog.ph594:                                 ; preds = %vector.main.loop.iter.check572, %vec.epilog.iter.check591
  %vec.epilog.resume.val595 = phi i64 [ %n.vec575, %vec.epilog.iter.check591 ], [ 0, %vector.main.loop.iter.check572 ]
  %i.sn = getelementptr i8, ptr %.04974.i.i156.i, i64 %i.rz ; 2 uses
  %i.so = getelementptr i8, ptr %.15173.i.i157.i, i64 %n.vec596 ; 2 uses
  %i.sp = getelementptr i8, ptr %.15372.i.i158.i, i64 %n.vec596 ; 2 uses
  br label %vec.epilog.vector.body597

vec.epilog.vector.body597:                        ; preds = %vec.epilog.vector.body597, %vec.epilog.ph594
  %index598 = phi i64 [ %vec.epilog.resume.val595, %vec.epilog.ph594 ], [ %index.next605, %vec.epilog.vector.body597 ] ; 4 uses
  %i.sq = shl i64 %index598, 1
  %next.gep599 = getelementptr i8, ptr %.04974.i.i156.i, i64 %i.sq
  %next.gep600 = getelementptr i8, ptr %.15173.i.i157.i, i64 %index598
  %next.gep601 = getelementptr i8, ptr %.15372.i.i158.i, i64 %index598
  %wide.load602 = load <4 x i8>, ptr %next.gep601, align 1, !alias.scope !232
  %wide.load603 = load <4 x i8>, ptr %next.gep600, align 1, !alias.scope !233
  %interleaved.vec604 = shufflevector <4 x i8> %wide.load602, <4 x i8> %wide.load603, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec604, ptr %next.gep599, align 1, !alias.scope !234, !noalias !235
  %index.next605 = add nuw i64 %index598, 4       ; 2 uses
  %i.sr = icmp eq i64 %index.next605, %n.vec596
  br i1 %i.sr, label %vec.epilog.middle.block606, label %vec.epilog.vector.body597, !llvm.loop !173

vec.epilog.middle.block606:                       ; preds = %vec.epilog.vector.body597
  br i1 %cmp.n607, label %._crit_edge.i.i164.i, label %vec.epilog.scalar.ph592.preheader

vec.epilog.scalar.ph592.preheader:                ; preds = %iter.check590, %vector.memcheck568, %vec.epilog.iter.check591, %vec.epilog.middle.block606
  %.168.i.i159.i.ph = phi ptr [ %.04974.i.i156.i, %iter.check590 ], [ %.04974.i.i156.i, %vector.memcheck568 ], [ %i.sf, %vec.epilog.iter.check591 ], [ %i.sn, %vec.epilog.middle.block606 ] ; 2 uses
  %.267.i.i160.i.ph = phi ptr [ %.15173.i.i157.i, %iter.check590 ], [ %.15173.i.i157.i, %vector.memcheck568 ], [ %i.sg, %vec.epilog.iter.check591 ], [ %i.so, %vec.epilog.middle.block606 ] ; 2 uses
  %.25466.i.i161.i.ph = phi ptr [ %.15372.i.i158.i, %iter.check590 ], [ %.15372.i.i158.i, %vector.memcheck568 ], [ %i.sh, %vec.epilog.iter.check591 ], [ %i.sp, %vec.epilog.middle.block606 ] ; 2 uses
  %.05665.i.i162.i.ph = phi i32 [ %i.qt, %iter.check590 ], [ %i.qt, %vector.memcheck568 ], [ %i.ry, %vec.epilog.iter.check591 ], [ %i.sb, %vec.epilog.middle.block606 ] ; 4 uses
  %i.ss = add nsw i32 %.05665.i.i162.i.ph, -1
  %xtraiter927 = and i32 %.05665.i.i162.i.ph, 3   ; 2 uses
  %lcmp.mod928.not = icmp eq i32 %xtraiter927, 0
  br i1 %lcmp.mod928.not, label %vec.epilog.scalar.ph592.prol.loopexit, label %vec.epilog.scalar.ph592.prol

vec.epilog.scalar.ph592.prol:                     ; preds = %vec.epilog.scalar.ph592.preheader, %vec.epilog.scalar.ph592.prol
  %.168.i.i159.i.prol = phi ptr [ %i.sz, %vec.epilog.scalar.ph592.prol ], [ %.168.i.i159.i.ph, %vec.epilog.scalar.ph592.preheader ] ; 3 uses
  %.267.i.i160.i.prol = phi ptr [ %i.sx, %vec.epilog.scalar.ph592.prol ], [ %.267.i.i160.i.ph, %vec.epilog.scalar.ph592.preheader ] ; 2 uses
  %.25466.i.i161.i.prol = phi ptr [ %i.su, %vec.epilog.scalar.ph592.prol ], [ %.25466.i.i161.i.ph, %vec.epilog.scalar.ph592.preheader ] ; 2 uses
  %.05665.i.i162.i.prol = phi i32 [ %i.st, %vec.epilog.scalar.ph592.prol ], [ %.05665.i.i162.i.ph, %vec.epilog.scalar.ph592.preheader ]
  %prol.iter929 = phi i32 [ %prol.iter929.next, %vec.epilog.scalar.ph592.prol ], [ 0, %vec.epilog.scalar.ph592.preheader ]
  %i.st = add nsw i32 %.05665.i.i162.i.prol, -1   ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.25466.i.i161.i.prol, i64 1 ; 3 uses
  %i.sv = load i8, ptr %.25466.i.i161.i.prol, align 1
  %i.sw = getelementptr inbounds nuw i8, ptr %.168.i.i159.i.prol, i64 1
  store i8 %i.sv, ptr %.168.i.i159.i.prol, align 1
  %i.sx = getelementptr inbounds nuw i8, ptr %.267.i.i160.i.prol, i64 1 ; 3 uses
  %i.sy = load i8, ptr %.267.i.i160.i.prol, align 1
  %i.sz = getelementptr inbounds nuw i8, ptr %.168.i.i159.i.prol, i64 2 ; 3 uses
  store i8 %i.sy, ptr %i.sw, align 1
  %prol.iter929.next = add i32 %prol.iter929, 1   ; 2 uses
  %prol.iter929.cmp.not = icmp eq i32 %prol.iter929.next, %xtraiter927
  br i1 %prol.iter929.cmp.not, label %vec.epilog.scalar.ph592.prol.loopexit, label %vec.epilog.scalar.ph592.prol, !llvm.loop !174

vec.epilog.scalar.ph592.prol.loopexit:            ; preds = %vec.epilog.scalar.ph592.prol, %vec.epilog.scalar.ph592.preheader
  %.lcssa866.unr = phi ptr [ poison, %vec.epilog.scalar.ph592.preheader ], [ %i.su, %vec.epilog.scalar.ph592.prol ]
  %.lcssa865.unr = phi ptr [ poison, %vec.epilog.scalar.ph592.preheader ], [ %i.sx, %vec.epilog.scalar.ph592.prol ]
  %.lcssa864.unr = phi ptr [ poison, %vec.epilog.scalar.ph592.preheader ], [ %i.sz, %vec.epilog.scalar.ph592.prol ]
  %.168.i.i159.i.unr = phi ptr [ %.168.i.i159.i.ph, %vec.epilog.scalar.ph592.preheader ], [ %i.sz, %vec.epilog.scalar.ph592.prol ]
  %.267.i.i160.i.unr = phi ptr [ %.267.i.i160.i.ph, %vec.epilog.scalar.ph592.preheader ], [ %i.sx, %vec.epilog.scalar.ph592.prol ]
  %.25466.i.i161.i.unr = phi ptr [ %.25466.i.i161.i.ph, %vec.epilog.scalar.ph592.preheader ], [ %i.su, %vec.epilog.scalar.ph592.prol ]
  %.05665.i.i162.i.unr = phi i32 [ %.05665.i.i162.i.ph, %vec.epilog.scalar.ph592.preheader ], [ %i.st, %vec.epilog.scalar.ph592.prol ]
  %i.ta = icmp ult i32 %i.ss, 3
  br i1 %i.ta, label %._crit_edge.i.i164.i, label %vec.epilog.scalar.ph592

vec.epilog.scalar.ph592:                          ; preds = %vec.epilog.scalar.ph592.prol.loopexit, %vec.epilog.scalar.ph592
  %.168.i.i159.i = phi ptr [ %i.tz, %vec.epilog.scalar.ph592 ], [ %.168.i.i159.i.unr, %vec.epilog.scalar.ph592.prol.loopexit ] ; 9 uses
  %.267.i.i160.i = phi ptr [ %i.tx, %vec.epilog.scalar.ph592 ], [ %.267.i.i160.i.unr, %vec.epilog.scalar.ph592.prol.loopexit ] ; 5 uses
  %.25466.i.i161.i = phi ptr [ %i.tu, %vec.epilog.scalar.ph592 ], [ %.25466.i.i161.i.unr, %vec.epilog.scalar.ph592.prol.loopexit ] ; 5 uses
  %.05665.i.i162.i = phi i32 [ %i.tt, %vec.epilog.scalar.ph592 ], [ %.05665.i.i162.i.unr, %vec.epilog.scalar.ph592.prol.loopexit ]
  %i.tb = getelementptr inbounds nuw i8, ptr %.25466.i.i161.i, i64 1
  %i.tc = load i8, ptr %.25466.i.i161.i, align 1
  %i.td = getelementptr inbounds nuw i8, ptr %.168.i.i159.i, i64 1
  store i8 %i.tc, ptr %.168.i.i159.i, align 1
  %i.te = getelementptr inbounds nuw i8, ptr %.267.i.i160.i, i64 1
  %i.tf = load i8, ptr %.267.i.i160.i, align 1
  %i.tg = getelementptr inbounds nuw i8, ptr %.168.i.i159.i, i64 2
  store i8 %i.tf, ptr %i.td, align 1
  %i.th = getelementptr inbounds nuw i8, ptr %.25466.i.i161.i, i64 2
  %i.ti = load i8, ptr %i.tb, align 1
  %i.tj = getelementptr inbounds nuw i8, ptr %.168.i.i159.i, i64 3
  store i8 %i.ti, ptr %i.tg, align 1
  %i.tk = getelementptr inbounds nuw i8, ptr %.267.i.i160.i, i64 2
  %i.tl = load i8, ptr %i.te, align 1
  %i.tm = getelementptr inbounds nuw i8, ptr %.168.i.i159.i, i64 4
  store i8 %i.tl, ptr %i.tj, align 1
  %i.tn = getelementptr inbounds nuw i8, ptr %.25466.i.i161.i, i64 3
  %i.to = load i8, ptr %i.th, align 1
  %i.tp = getelementptr inbounds nuw i8, ptr %.168.i.i159.i, i64 5
  store i8 %i.to, ptr %i.tm, align 1
  %i.tq = getelementptr inbounds nuw i8, ptr %.267.i.i160.i, i64 3
  %i.tr = load i8, ptr %i.tk, align 1
  %i.ts = getelementptr inbounds nuw i8, ptr %.168.i.i159.i, i64 6
  store i8 %i.tr, ptr %i.tp, align 1
  %i.tt = add nsw i32 %.05665.i.i162.i, -4        ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.25466.i.i161.i, i64 4 ; 2 uses
  %i.tv = load i8, ptr %i.tn, align 1
  %i.tw = getelementptr inbounds nuw i8, ptr %.168.i.i159.i, i64 7
  store i8 %i.tv, ptr %i.ts, align 1
  %i.tx = getelementptr inbounds nuw i8, ptr %.267.i.i160.i, i64 4 ; 2 uses
  %i.ty = load i8, ptr %i.tq, align 1
  %i.tz = getelementptr inbounds nuw i8, ptr %.168.i.i159.i, i64 8 ; 2 uses
  store i8 %i.ty, ptr %i.tw, align 1
  %.not63.i.i163.i.3 = icmp eq i32 %i.tt, 0
  br i1 %.not63.i.i163.i.3, label %._crit_edge.i.i164.i, label %vec.epilog.scalar.ph592, !llvm.loop !175

._crit_edge.i.i164.i:                             ; preds = %vec.epilog.scalar.ph592.prol.loopexit, %vec.epilog.scalar.ph592, %vec.epilog.middle.block606, %middle.block588
  %.lcssa484 = phi ptr [ %i.sp, %vec.epilog.middle.block606 ], [ %i.sh, %middle.block588 ], [ %.lcssa866.unr, %vec.epilog.scalar.ph592.prol.loopexit ], [ %i.tu, %vec.epilog.scalar.ph592 ]
  %.lcssa483 = phi ptr [ %i.so, %vec.epilog.middle.block606 ], [ %i.sg, %middle.block588 ], [ %.lcssa865.unr, %vec.epilog.scalar.ph592.prol.loopexit ], [ %i.tx, %vec.epilog.scalar.ph592 ]
  %.lcssa482 = phi ptr [ %i.sn, %vec.epilog.middle.block606 ], [ %i.sf, %middle.block588 ], [ %.lcssa864.unr, %vec.epilog.scalar.ph592.prol.loopexit ], [ %i.tz, %vec.epilog.scalar.ph592 ]
  %i.ua = add nsw i32 %.in.i.i155.i, -1           ; 2 uses
  %i.ub = getelementptr inbounds i8, ptr %.lcssa484, i64 %i.rl
  %i.uc = getelementptr inbounds i8, ptr %.lcssa483, i64 %i.rl
  %i.ud = getelementptr inbounds i8, ptr %.lcssa482, i64 %i.rm
  %.not62.i.i165.i = icmp eq i32 %i.ua, 0
  br i1 %.not62.i.i165.i, label %._crit_edge75.split.i.i166.i, label %iter.check590, !llvm.loop !151

._crit_edge75.split.i.i166.i:                     ; preds = %._crit_edge.i.i164.i, %.preheader.lr.ph.i.i150.i, %bb.af
  tail call void @SDL_free_REAL(ptr noundef %.0.i.i147.i) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.ag:                                            ; preds = %.loopexit.i
  switch i32 %7, label %bb.be [
    i32 842094169, label %bb.ah
    i32 1448433993, label %bb.al
    i32 825382478, label %bb.ap
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.ue = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.uf = insertelement <4 x i32> %i.ue, i32 %1, i64 1
  %i.ug = insertelement <4 x i32> %i.uf, i32 %6, i64 2
  %i.uh = insertelement <4 x i32> %i.ug, i32 %11, i64 3
  %i.ui = add nsw <4 x i32> %i.uh, splat (i32 1)
  %i.uj = sdiv <4 x i32> %i.ui, splat (i32 2)     ; 5 uses
  %i.uk = extractelement <4 x i32> %i.uj, i64 0   ; 6 uses
  %i.ul = extractelement <4 x i32> %i.uj, i64 2   ; 2 uses
  %i.um = sub nsw i32 %i.ul, %i.uk
  %i.un = shl nsw i32 %i.um, 1
  %i.uo = extractelement <4 x i32> %i.uj, i64 3   ; 2 uses
  %i.up = sub nsw i32 %i.uo, %i.uk
  %i.uq = mul nsw i32 %6, %1
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds i8, ptr %5, i64 %i.ur ; 3 uses
  %i.ut = mul nsw i32 %11, %1
  %i.uu = sext i32 %i.ut to i64
  %i.uv = getelementptr inbounds i8, ptr %10, i64 %i.uu ; 3 uses
  %i.uw = icmp eq ptr %i.us, %i.uv
  br i1 %i.uw, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ux = shl nsw i32 %i.ul, 1
  %i.uy = extractelement <4 x i32> %i.uj, i64 1
  %i.uz = sext i32 %i.uy to i64
  %i.va = sext i32 %i.ux to i64
  %i.vb = mul nsw i64 %i.va, %i.uz                ; 2 uses
  %i.vc = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.vb) #6 ; 4 uses
  %.not.i.i187.i = icmp eq ptr %i.vc, null
end_hunk_1
