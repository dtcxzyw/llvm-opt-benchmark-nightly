Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaqr5?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dlaqr5_:bb.a
  %i.dn = mul i32 %i.cw, %indvar1803
  %i.do = add i32 %reass.sub, %i.dn
  %i.dp = mul i32 %i.cp, %indvar1803
  %i.dq = add i32 %i.co, %i.dp
  %i.dr = mul i32 %i.cf, %indvar1803
  %i.ds = add i32 %reass.sub, %i.dr
  br i1 %i.bn, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dt = load i32, ptr %0, align 4, !tbaa !70
  %.not1422 = icmp eq i32 %i.dt, 0
  br i1 %.not1422, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.du = load i32, ptr %4, align 4, !tbaa !70
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.j
  %.01385.ph = phi i32 [ 1, %bb.i ], [ %i.du, %bb.j ]
  %i.dv = load i32, ptr %i.h, align 4, !tbaa !70
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.dw = load i32, ptr %4, align 4, !tbaa !70
  %.01369. = call i32 @llvm.smax.i32(i32 %i.dw, i32 %.013691572)
  %i.dx = load i32, ptr %i.h, align 4, !tbaa !70
  call void @dlaset_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.h, ptr noundef nonnull %i.h, ptr noundef nonnull @c_b7, ptr noundef nonnull @c_b8, ptr noundef %17, ptr noundef nonnull %18) #4
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %.pn = phi i32 [ %i.dv, %.thread ], [ %i.dx, %bb.k ]
  %.013851482 = phi i32 [ %.01385.ph, %.thread ], [ %.01369., %bb.k ] ; 3 uses
  %i.dy = add i32 %.pn, %.013691572               ; 4 uses
  %i.dz = add nsw i32 %.013691572, %i.bk          ; 3 uses
  %i.ea = add nsw i32 %i.dz, -1
  %i.eb = load i32, ptr %5, align 4, !tbaa !70    ; 5 uses
  %i.ec = add nsw i32 %i.eb, -2                   ; 2 uses
  %i.ed = call i32 @llvm.smin.i32(i32 %i.ea, i32 %i.ec)
  %.not14261549 = icmp sgt i32 %.013691572, %i.ed
  br i1 %.not14261549, label %._crit_edge1555, label %.lr.ph1554

.lr.ph1554:                                       ; preds = %bb.l
  %i.ee = add i32 %indvars.iv1594, -2
  %i.ef = add i32 %indvars.iv1594, 3
  %i.eg = sext i32 %.013851482 to i64             ; 13 uses
  %smin1632 = call i32 @llvm.smin.i32(i32 %indvars.iv1630, i32 %i.ec)
  %.pre = load i32, ptr %4, align 4, !tbaa !70    ; 3 uses
  %i.eh = shl nsw i64 %i.eg, 3                    ; 5 uses
  %scevgep1950 = getelementptr i8, ptr %scevgep1949.a, i64 %i.eh
  %scevgep1958.a = getelementptr i8, ptr %scevgep1957.a, i64 %i.eh
  %scevgep1963 = getelementptr i8, ptr %scevgep1962, i64 %i.eh
  %scevgep2155 = getelementptr i8, ptr %scevgep2154, i64 %i.eh
  %scevgep2161 = getelementptr i8, ptr %scevgep2160, i64 %i.eh
  %invariant.op2211 = sub i64 1, %i.eg
  %invariant.op = sub i64 1, %i.eg
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph1554, %.loopexit
  %indvar = phi i32 [ 0, %.lr.ph1554 ], [ %indvar.next, %.loopexit ] ; 7 uses
  %i.ei = phi i32 [ %.pre, %.lr.ph1554 ], [ %i.auu, %.loopexit ]
  %i.ej = phi i32 [ %.pre, %.lr.ph1554 ], [ %i.aux, %.loopexit ]
  %i.ek = phi i32 [ %i.eb, %.lr.ph1554 ], [ %i.aut, %.loopexit ]
  %i.el = phi i32 [ %i.eb, %.lr.ph1554 ], [ %i.auw, %.loopexit ]
  %i.em = phi i32 [ %i.eb, %.lr.ph1554 ], [ %i.auv, %.loopexit ] ; 3 uses
  %i.en = phi i32 [ %.pre, %.lr.ph1554 ], [ %i.auy, %.loopexit ] ; 3 uses
  %indvars.iv1586 = phi i32 [ %indvars.iv1584, %.lr.ph1554 ], [ %indvars.iv.next1587, %.loopexit ] ; 4 uses
  %.013681550 = phi i32 [ %.013691572, %.lr.ph1554 ], [ %i.auz, %.loopexit ] ; 17 uses
  %i.eo = add i32 %i.do, %indvar
  %i.ep = add i32 %i.dq, %indvar
  %i.eq = add i32 %i.ds, %indvar
  %i.er = add i32 %indvar, -1
  %i.es = add i32 %indvar, 1
  %i.et = sub nsw i32 %i.en, %.013681550          ; 2 uses
  %i.eu = sdiv i32 %i.et, 2
  %i.ev = add nsw i32 %i.eu, 1
  %.inv = icmp sgt i32 %i.et, 1
  %i.ew = select i1 %.inv, i32 %i.ev, i32 1       ; 5 uses
  %i.ex = xor i32 %.013681550, -1
  %i.ey = add i32 %i.em, %i.ex
  %i.ez = sdiv i32 %i.ey, 2                       ; 6 uses
  %i.fa = call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.ez) ; 3 uses
  %i.fb = add nsw i32 %i.fa, 1                    ; 6 uses
  %i.fc = icmp slt i32 %i.ez, %i.bh
  %i.fd = shl i32 %i.fa, 1                        ; 3 uses
  %i.fe = add i32 %i.fd, %.013681550              ; 33 uses
  %i.ff = add nsw i32 %i.em, -2
  %i.fg = icmp eq i32 %i.fe, %i.ff
  %i.fh = select i1 %i.fc, i1 %i.fg, i1 false
  br i1 %i.fh, label %bb.n, label %.loopexit1489

bb.n:                                             ; preds = %bb.m
  %i.fi = add nsw i32 %i.en, -1
  %i.fj = icmp eq i32 %i.fe, %i.fi
  %i.fk = add nsw i32 %i.fe, 1                    ; 2 uses
  %i.fl = mul nsw i32 %i.fb, %i.q
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr [8 x i8], ptr %i.s, i64 %i.fm ; 4 uses
  br i1 %i.fj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fo = mul i32 %i.fk, %i.bo
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fp
  %i.fr = shl i32 %i.fb, 1                        ; 2 uses
  %i.fs = add nsw i32 %i.fr, -1
  %i.ft = sext i32 %i.fs to i64                   ; 2 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ft
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ft
  %i.fw = sext i32 %i.fr to i64                   ; 2 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.fw
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.fw
  %i.fz = getelementptr i8, ptr %i.fn, i64 8      ; 3 uses
  call void @dlaqr1_(ptr noundef nonnull @c__2, ptr noundef %i.fq, ptr noundef nonnull %10, ptr noundef nonnull %i.fu, ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fx, ptr noundef nonnull %i.fy, ptr noundef %i.fz) #4
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !72
  store double %i.ga, ptr %i.a, align 8, !tbaa !72
  %i.gb = getelementptr i8, ptr %i.fn, i64 16
  call void @dlarfg_(ptr noundef nonnull @c__2, ptr noundef nonnull %i.a, ptr noundef %i.gb, ptr noundef nonnull @c__1, ptr noundef nonnull %i.fz) #4
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.gc = mul nsw i32 %i.fe, %i.k                 ; 2 uses
  %i.gd = add nsw i32 %i.fk, %i.gc
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ge ; 2 uses
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !72
  store double %i.gg, ptr %i.a, align 8, !tbaa !72
  %i.gh = add nsw i32 %i.fe, 2
  %i.gi = add nsw i32 %i.gh, %i.gc
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.gj ; 2 uses
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !72
  %i.gm = getelementptr i8, ptr %i.fn, i64 16     ; 2 uses
  store double %i.gl, ptr %i.gm, align 8, !tbaa !72
  %i.gn = getelementptr i8, ptr %i.fn, i64 8
  call void @dlarfg_(ptr noundef nonnull @c__2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.gm, ptr noundef nonnull @c__1, ptr noundef %i.gn) #4
  %i.go = load double, ptr %i.a, align 8, !tbaa !72
  store double %i.go, ptr %i.gf, align 8, !tbaa !72
  store double 0.000000e+00, ptr %i.gk, align 8, !tbaa !72
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.gp = load i32, ptr %5, align 4, !tbaa !70    ; 30 uses
  %i.gq = add nsw i32 %i.fe, 3                    ; 2 uses
  %i.gr = call i32 @llvm.smin.i32(i32 %i.gp, i32 %i.gq) ; 2 uses
  %.not14401495 = icmp sgt i32 %.013851482, %i.gr
  br i1 %.not14401495, label %._crit_edge1499, label %.lr.ph1498

.lr.ph1498:                                       ; preds = %bb.q
  %i.gs = mul nsw i32 %i.fb, %i.q
  %i.gt = sext i32 %i.gs to i64                   ; 2 uses
  %i.gu = getelementptr [8 x i8], ptr %i.s, i64 %i.gt ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 8      ; 4 uses
  %i.gw = add nsw i32 %i.fe, 1
  %i.gx = mul nsw i32 %i.gw, %i.k
  %i.gy = getelementptr i8, ptr %i.gu, i64 16     ; 3 uses
  %i.gz = add nsw i32 %i.fe, 2
  %i.ha = mul nsw i32 %i.gz, %i.k
  %i.hb = sext i32 %i.gx to i64                   ; 3 uses
  %i.hc = sext i32 %i.ha to i64                   ; 3 uses
  %i.hd = sext i32 %i.gr to i64                   ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.m, i64 %i.hb ; 2 uses
  %invariant.gep1701 = getelementptr [8 x i8], ptr %i.m, i64 %i.hc ; 2 uses
  %.reass2212 = add i64 %i.hd, %invariant.op2211  ; 3 uses
  %min.iters.check2179 = icmp ult i64 %.reass2212, 8
  br i1 %min.iters.check2179, label %scalar.ph2178.preheader, label %vector.memcheck2153

vector.memcheck2153:                              ; preds = %.lr.ph1498
  %i.he = shl nsw i64 %i.hb, 3
  %scevgep2156 = getelementptr i8, ptr %scevgep2155, i64 %i.he ; 2 uses
  %smax2158 = call i64 @llvm.smax.i64(i64 %i.hd, i64 %i.eg)
  %i.hf = add i64 %smax2158, %i.l                 ; 2 uses
  %i.hg = add i64 %i.hf, %i.hb
  %i.hh = shl nsw i64 %i.hg, 3
  %scevgep2159 = getelementptr i8, ptr %scevgep2157, i64 %i.hh ; 2 uses
  %i.hi = shl nsw i64 %i.hc, 3
  %scevgep2162 = getelementptr i8, ptr %scevgep2161, i64 %i.hi ; 2 uses
  %i.hj = add i64 %i.hf, %i.hc
  %i.hk = shl nsw i64 %i.hj, 3
  %scevgep2164 = getelementptr i8, ptr %scevgep2163, i64 %i.hk ; 2 uses
  %i.hl = shl nsw i64 %i.gt, 3
  %scevgep2166 = getelementptr i8, ptr %scevgep2165, i64 %i.hl ; 2 uses
  %bound02167 = icmp ult ptr %scevgep2156, %scevgep2164
  %bound12168 = icmp ult ptr %scevgep2162, %scevgep2159
  %found.conflict2169 = and i1 %bound02167, %bound12168
  %bound02170 = icmp ult ptr %scevgep2156, %scevgep2166
  %bound12171 = icmp ult ptr %i.gv, %scevgep2159
  %found.conflict2172 = and i1 %bound02170, %bound12171
  %conflict.rdx2173 = or i1 %found.conflict2169, %found.conflict2172
  %bound02174 = icmp ult ptr %scevgep2162, %scevgep2166
  %bound12175 = icmp ult ptr %i.gv, %scevgep2164
  %found.conflict2176 = and i1 %bound02174, %bound12175
  %conflict.rdx2177 = or i1 %conflict.rdx2173, %found.conflict2176
  br i1 %conflict.rdx2177, label %scalar.ph2178.preheader, label %vector.ph2180

vector.ph2180:                                    ; preds = %vector.memcheck2153
  %n.vec2181 = and i64 %.reass2212, -8            ; 3 uses
  %i.hm = add nsw i64 %n.vec2181, %i.eg
  %i.hn = load double, ptr %i.gv, align 8, !tbaa !72, !alias.scope !74
  %broadcast.splatinsert2190 = insertelement <4 x double> poison, double %i.hn, i64 0
  %broadcast.splat2191 = shufflevector <4 x double> %broadcast.splatinsert2190, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ho = load double, ptr %i.gy, align 8, !tbaa !72, !alias.scope !74 ; 2 uses
  %broadcast.splatinsert2188 = insertelement <4 x double> poison, double %i.ho, i64 0
  %broadcast.splat2189 = shufflevector <4 x double> %broadcast.splatinsert2188, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2194 = insertelement <4 x double> poison, double %i.ho, i64 0
  %broadcast.splat2195 = shufflevector <4 x double> %broadcast.splatinsert2194, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2182

vector.body2182:                                  ; preds = %vector.body2182, %vector.ph2180
  %index2183 = phi i64 [ 0, %vector.ph2180 ], [ %index.next2196, %vector.body2182 ] ; 2 uses
  %i.hp = add i64 %index2183, %i.eg               ; 2 uses
  %i.hq = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.hp ; 3 uses
  %i.hr = getelementptr i8, ptr %i.hq, i64 32     ; 2 uses
  %wide.load2184 = load <4 x double>, ptr %i.hq, align 8, !tbaa !72, !alias.scope !75, !noalias !76 ; 2 uses
  %wide.load2185 = load <4 x double>, ptr %i.hr, align 8, !tbaa !72, !alias.scope !75, !noalias !76 ; 2 uses
  %i.hs = getelementptr [8 x i8], ptr %invariant.gep1701, i64 %i.hp ; 4 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 32     ; 3 uses
  %wide.load2186 = load <4 x double>, ptr %i.hs, align 8, !tbaa !72, !alias.scope !77, !noalias !74
  %wide.load2187 = load <4 x double>, ptr %i.ht, align 8, !tbaa !72, !alias.scope !77, !noalias !74
  %i.hu = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2189, <4 x double> %wide.load2186, <4 x double> %wide.load2184)
  %i.hv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2189, <4 x double> %wide.load2187, <4 x double> %wide.load2185)
  %i.hw = fmul <4 x double> %broadcast.splat2191, %i.hu ; 2 uses
  %i.hx = fmul <4 x double> %broadcast.splat2191, %i.hv ; 2 uses
  %i.hy = fsub <4 x double> %wide.load2184, %i.hw
  %i.hz = fsub <4 x double> %wide.load2185, %i.hx
  store <4 x double> %i.hy, ptr %i.hq, align 8, !tbaa !72, !alias.scope !75, !noalias !76
  store <4 x double> %i.hz, ptr %i.hr, align 8, !tbaa !72, !alias.scope !75, !noalias !76
  %wide.load2192 = load <4 x double>, ptr %i.hs, align 8, !tbaa !72, !alias.scope !77, !noalias !74
  %wide.load2193 = load <4 x double>, ptr %i.ht, align 8, !tbaa !72, !alias.scope !77, !noalias !74
  %i.ia = fneg <4 x double> %i.hw
  %i.ib = fneg <4 x double> %i.hx
  %i.ic = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ia, <4 x double> %broadcast.splat2195, <4 x double> %wide.load2192)
  %i.id = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ib, <4 x double> %broadcast.splat2195, <4 x double> %wide.load2193)
  store <4 x double> %i.ic, ptr %i.hs, align 8, !tbaa !72, !alias.scope !77, !noalias !74
  store <4 x double> %i.id, ptr %i.ht, align 8, !tbaa !72, !alias.scope !77, !noalias !74
  %index.next2196 = add nuw i64 %index2183, 8     ; 2 uses
  %i.ie = icmp eq i64 %index.next2196, %n.vec2181
  br i1 %i.ie, label %middle.block2197, label %vector.body2182, !llvm.loop !13

middle.block2197:                                 ; preds = %vector.body2182
  %cmp.n2198 = icmp eq i64 %.reass2212, %n.vec2181
  br i1 %cmp.n2198, label %._crit_edge1499, label %scalar.ph2178.preheader

scalar.ph2178.preheader:                          ; preds = %vector.memcheck2153, %.lr.ph1498, %middle.block2197
  %indvars.iv1581.ph = phi i64 [ %i.eg, %vector.memcheck2153 ], [ %i.eg, %.lr.ph1498 ], [ %i.hm, %middle.block2197 ]
  br label %scalar.ph2178

scalar.ph2178:                                    ; preds = %scalar.ph2178.preheader, %scalar.ph2178
  %indvars.iv1581 = phi i64 [ %indvars.iv.next1582, %scalar.ph2178 ], [ %indvars.iv1581.ph, %scalar.ph2178.preheader ] ; 4 uses
  %i.if = load double, ptr %i.gv, align 8, !tbaa !72
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv1581 ; 2 uses
  %i.ig = load double, ptr %gep, align 8, !tbaa !72 ; 2 uses
  %i.ih = load double, ptr %i.gy, align 8, !tbaa !72
  %gep1702 = getelementptr [8 x i8], ptr %invariant.gep1701, i64 %indvars.iv1581 ; 3 uses
  %i.ii = load double, ptr %gep1702, align 8, !tbaa !72
  %i.ij = call double @llvm.fmuladd.f64(double %i.ih, double %i.ii, double %i.ig)
  %i.ik = fmul double %i.if, %i.ij                ; 2 uses
  %i.il = fsub double %i.ig, %i.ik
  store double %i.il, ptr %gep, align 8, !tbaa !72
  %i.im = load double, ptr %i.gy, align 8, !tbaa !72
  %i.in = load double, ptr %gep1702, align 8, !tbaa !72
  %i.io = fneg double %i.ik
  %i.ip = call double @llvm.fmuladd.f64(double %i.io, double %i.im, double %i.in)
  store double %i.ip, ptr %gep1702, align 8, !tbaa !72
  %indvars.iv.next1582 = add nsw i64 %indvars.iv1581, 1
  %.not1440.not = icmp slt i64 %indvars.iv1581, %i.hd
  br i1 %.not1440.not, label %scalar.ph2178, label %._crit_edge1499, !llvm.loop !14

._crit_edge1499:                                  ; preds = %scalar.ph2178, %middle.block2197, %bb.q
  br i1 %i.bn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge1499
  %. = call i32 @llvm.smin.i32(i32 %i.dy, i32 %i.gp)
  br label %bb.u

bb.s:                                             ; preds = %._crit_edge1499
  %i.iq = load i32, ptr %0, align 4, !tbaa !70
  %.not1441 = icmp eq i32 %i.iq, 0
  br i1 %.not1441, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ir = load i32, ptr %3, align 4, !tbaa !70
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r
  %.01387 = phi i32 [ %., %bb.r ], [ %i.ir, %bb.t ], [ %i.gp, %bb.s ] ; 2 uses
  %i.is = add nsw i32 %i.fe, 1                    ; 5 uses
  %.not14431500.not = icmp slt i32 %i.fe, %.01387
  br i1 %.not14431500.not, label %.lr.ph1503, label %._crit_edge1504

.lr.ph1503:                                       ; preds = %bb.u
  %i.it = mul nsw i32 %i.fb, %i.q
  %i.iu = sext i32 %i.it to i64                   ; 2 uses
  %i.iv = getelementptr [8 x i8], ptr %i.s, i64 %i.iu ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 8      ; 4 uses
  %i.ix = getelementptr i8, ptr %i.iv, i64 16     ; 3 uses
  %i.iy = add i32 %indvars.iv1586, %i.fd
  %i.iz = sext i32 %i.iy to i64                   ; 10 uses
  %i.ja = sext i32 %i.is to i64
  %i.jb = sext i32 %.01387 to i64                 ; 3 uses
  %invariant.gep1703 = getelementptr [8 x i8], ptr %i.m, i64 %i.ja ; 2 uses
  %i.jc = sext i32 %i.fe to i64                   ; 3 uses
  %invariant.gep1705 = getelementptr [8 x i8], ptr %i.m, i64 %i.jc ; 2 uses
  %i.jd = call i64 @llvm.smax.i64(i64 %i.jb, i64 %i.iz)
  %i.je = add i64 %i.jd, 1
  %i.jf = sub i64 %i.je, %i.iz                    ; 3 uses
  %min.iters.check2134 = icmp ugt i64 %i.jf, 7
  %or.cond2200 = select i1 %min.iters.check2134, i1 %ident.check2110.not, i1 false
  br i1 %or.cond2200, label %vector.memcheck2111, label %scalar.ph2133.preheader

vector.memcheck2111:                              ; preds = %.lr.ph1503
  %i.jg = shl nsw i64 %i.iz, 4
  %scevgep2113 = getelementptr i8, ptr %scevgep2112, i64 %i.jg ; 2 uses
  %smax2115 = call i64 @llvm.smax.i64(i64 %i.jb, i64 %i.iz) ; 2 uses
  %i.jh = add i64 %smax2115, %i.iz
  %i.ji = shl nsw i64 %i.jh, 3
  %scevgep2116 = getelementptr i8, ptr %scevgep2114, i64 %i.ji ; 2 uses
  %i.jj = add nsw i64 %i.iz, %i.jc
  %i.jk = shl nsw i64 %i.jj, 3
  %scevgep2117 = getelementptr i8, ptr %9, i64 %i.jk ; 2 uses
  %i.jl = add i64 %smax2115, %i.jc
  %i.jm = shl nsw i64 %i.jl, 3
  %scevgep2119 = getelementptr i8, ptr %scevgep2118, i64 %i.jm ; 2 uses
  %i.jn = shl nsw i64 %i.iu, 3
  %scevgep2121 = getelementptr i8, ptr %scevgep2120, i64 %i.jn ; 2 uses
  %bound02122 = icmp ult ptr %scevgep2113, %scevgep2119
  %bound12123 = icmp ult ptr %scevgep2117, %scevgep2116
  %found.conflict2124 = and i1 %bound02122, %bound12123
  %bound02125 = icmp ult ptr %scevgep2113, %scevgep2121
  %bound12126 = icmp ult ptr %i.iw, %scevgep2116
  %found.conflict2127 = and i1 %bound02125, %bound12126
  %conflict.rdx2128 = or i1 %found.conflict2124, %found.conflict2127
  %bound02129 = icmp ult ptr %scevgep2117, %scevgep2121
  %bound12130 = icmp ult ptr %i.iw, %scevgep2119
  %found.conflict2131 = and i1 %bound02129, %bound12130
  %conflict.rdx2132 = or i1 %conflict.rdx2128, %found.conflict2131
  br i1 %conflict.rdx2132, label %scalar.ph2133.preheader, label %vector.ph2135

vector.ph2135:                                    ; preds = %vector.memcheck2111
  %n.vec2136 = and i64 %i.jf, -8                  ; 3 uses
  %i.jo = add i64 %n.vec2136, %i.iz
  %i.jp = load double, ptr %i.iw, align 8, !tbaa !72, !alias.scope !80
  %broadcast.splatinsert2145 = insertelement <4 x double> poison, double %i.jp, i64 0
  %broadcast.splat2146 = shufflevector <4 x double> %broadcast.splatinsert2145, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jq = load double, ptr %i.ix, align 8, !tbaa !72, !alias.scope !80 ; 2 uses
  %broadcast.splatinsert2143 = insertelement <4 x double> poison, double %i.jq, i64 0
  %broadcast.splat2144 = shufflevector <4 x double> %broadcast.splatinsert2143, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2147 = insertelement <4 x double> poison, double %i.jq, i64 0
  %broadcast.splat2148 = shufflevector <4 x double> %broadcast.splatinsert2147, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2137

vector.body2137:                                  ; preds = %vector.body2137, %vector.ph2135
  %index2138 = phi i64 [ 0, %vector.ph2135 ], [ %index.next2149, %vector.body2137 ] ; 2 uses
  %i.jr = add i64 %index2138, %i.iz               ; 2 uses
  %i.js = getelementptr [8 x i8], ptr %invariant.gep1703, i64 %i.jr ; 3 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 32     ; 2 uses
  %wide.load2139 = load <4 x double>, ptr %i.js, align 8, !tbaa !72, !alias.scope !81, !noalias !82 ; 2 uses
  %wide.load2140 = load <4 x double>, ptr %i.jt, align 8, !tbaa !72, !alias.scope !81, !noalias !82 ; 2 uses
  %i.ju = getelementptr [8 x i8], ptr %invariant.gep1705, i64 %i.jr ; 2 uses
  %i.jv = getelementptr i8, ptr %i.ju, i64 16     ; 2 uses
  %i.jw = getelementptr i8, ptr %i.ju, i64 48     ; 2 uses
  %wide.load2141 = load <4 x double>, ptr %i.jv, align 8, !tbaa !72, !alias.scope !83, !noalias !80 ; 2 uses
  %wide.load2142 = load <4 x double>, ptr %i.jw, align 8, !tbaa !72, !alias.scope !83, !noalias !80 ; 2 uses
  %i.jx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2144, <4 x double> %wide.load2141, <4 x double> %wide.load2139)
  %i.jy = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2144, <4 x double> %wide.load2142, <4 x double> %wide.load2140)
  %i.jz = fmul <4 x double> %broadcast.splat2146, %i.jx ; 2 uses
  %i.ka = fmul <4 x double> %broadcast.splat2146, %i.jy ; 2 uses
  %i.kb = fsub <4 x double> %wide.load2139, %i.jz
  %i.kc = fsub <4 x double> %wide.load2140, %i.ka
  store <4 x double> %i.kb, ptr %i.js, align 8, !tbaa !72, !alias.scope !81, !noalias !82
  store <4 x double> %i.kc, ptr %i.jt, align 8, !tbaa !72, !alias.scope !81, !noalias !82
  %i.kd = fneg <4 x double> %i.jz
  %i.ke = fneg <4 x double> %i.ka
  %i.kf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kd, <4 x double> %broadcast.splat2148, <4 x double> %wide.load2141)
  %i.kg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ke, <4 x double> %broadcast.splat2148, <4 x double> %wide.load2142)
  store <4 x double> %i.kf, ptr %i.jv, align 8, !tbaa !72, !alias.scope !83, !noalias !80
  store <4 x double> %i.kg, ptr %i.jw, align 8, !tbaa !72, !alias.scope !83, !noalias !80
  %index.next2149 = add nuw i64 %index2138, 8     ; 2 uses
  %i.kh = icmp eq i64 %index.next2149, %n.vec2136
  br i1 %i.kh, label %middle.block2150, label %vector.body2137, !llvm.loop !19

middle.block2150:                                 ; preds = %vector.body2137
  %cmp.n2151 = icmp eq i64 %i.jf, %n.vec2136
  br i1 %cmp.n2151, label %._crit_edge1504, label %scalar.ph2133.preheader

scalar.ph2133.preheader:                          ; preds = %vector.memcheck2111, %.lr.ph1503, %middle.block2150
  %indvars.iv1588.ph = phi i64 [ %i.iz, %vector.memcheck2111 ], [ %i.iz, %.lr.ph1503 ], [ %i.jo, %middle.block2150 ]
  br label %scalar.ph2133

scalar.ph2133:                                    ; preds = %scalar.ph2133.preheader, %scalar.ph2133
  %indvars.iv1588 = phi i64 [ %indvars.iv.next1589, %scalar.ph2133 ], [ %indvars.iv1588.ph, %scalar.ph2133.preheader ] ; 3 uses
  %i.ki = load double, ptr %i.iw, align 8, !tbaa !72
  %i.kj = mul nsw i64 %indvars.iv1588, %i.bt      ; 2 uses
  %gep1704 = getelementptr [8 x i8], ptr %invariant.gep1703, i64 %i.kj ; 2 uses
  %i.kk = load double, ptr %gep1704, align 8, !tbaa !72 ; 2 uses
  %i.kl = load double, ptr %i.ix, align 8, !tbaa !72
  %gep1706 = getelementptr [8 x i8], ptr %invariant.gep1705, i64 %i.kj
  %i.km = getelementptr i8, ptr %gep1706, i64 16  ; 2 uses
  %i.kn = load double, ptr %i.km, align 8, !tbaa !72 ; 2 uses
  %i.ko = call double @llvm.fmuladd.f64(double %i.kl, double %i.kn, double %i.kk)
  %i.kp = fmul double %i.ki, %i.ko                ; 2 uses
  %i.kq = fsub double %i.kk, %i.kp
  store double %i.kq, ptr %gep1704, align 8, !tbaa !72
  %i.kr = load double, ptr %i.ix, align 8, !tbaa !72
  %i.ks = fneg double %i.kp
  %i.kt = call double @llvm.fmuladd.f64(double %i.ks, double %i.kr, double %i.kn)
  store double %i.kt, ptr %i.km, align 8, !tbaa !72
  %indvars.iv.next1589 = add nsw i64 %indvars.iv1588, 1
  %.not1443.not = icmp slt i64 %indvars.iv1588, %i.jb
  br i1 %.not1443.not, label %scalar.ph2133, label %._crit_edge1504, !llvm.loop !20

._crit_edge1504:                                  ; preds = %scalar.ph2133, %middle.block2150, %bb.u
  %i.ku = load i32, ptr %4, align 4, !tbaa !70    ; 30 uses
  %.not1444 = icmp slt i32 %i.fe, %i.ku
  br i1 %.not1444, label %bb.an, label %bb.v

bb.v:                                             ; preds = %._crit_edge1504
  %i.kv = mul nsw i32 %i.fe, %i.k                 ; 2 uses
  %i.kw = add nsw i32 %i.is, %i.kv
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.kx ; 2 uses
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !72 ; 4 uses
  %i.la = fcmp une double %i.kz, 0.000000e+00
  br i1 %i.la, label %bb.w, label %bb.an

bb.w:                                             ; preds = %bb.v
  %i.lb = add nsw i32 %i.kv, %i.fe
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.lc
  %i.le = load double, ptr %i.ld, align 8, !tbaa !72 ; 4 uses
  %i.lf = fcmp oge double %i.le, 0.000000e+00
  %i.lg = fneg double %i.le
  %i.lh = select i1 %i.lf, double %i.le, double %i.lg
  %i.li = mul nsw i32 %i.is, %i.k                 ; 5 uses
  %i.lj = add nsw i32 %i.li, %i.is
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.lk
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !72 ; 4 uses
  %i.ln = fcmp oge double %i.lm, 0.000000e+00
  %i.lo = fneg double %i.lm
  %i.lp = select i1 %i.ln, double %i.lm, double %i.lo ; 5 uses
  %i.lq = fadd double %i.lh, %i.lp                ; 4 uses
  %i.lr = fcmp oeq double %i.lq, 0.000000e+00
  br i1 %i.lr, label %bb.x, label %bb.aj

bb.x:                                             ; preds = %bb.w
  %.not1445.not = icmp sgt i32 %i.fe, %i.ku
  br i1 %.not1445.not, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ls = add nsw i32 %i.fe, -1
  %i.lt = mul nsw i32 %i.ls, %i.k
  %i.lu = add nsw i32 %i.lt, %i.fe
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.lv
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !72 ; 3 uses
  %i.ly = fcmp oge double %i.lx, 0.000000e+00
  %i.lz = fneg double %i.lx
  %i.ma = select i1 %i.ly, double %i.lx, double %i.lz
  %i.mb = fadd double %i.lq, %i.ma
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0 = phi double [ %i.mb, %bb.y ], [ %i.lq, %bb.x ] ; 2 uses
  %i.mc = add nsw i32 %i.ku, 2
  %.not1446 = icmp slt i32 %i.fe, %i.mc
  br i1 %.not1446, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.md = add nsw i32 %i.fe, -2
  %i.me = mul nsw i32 %i.md, %i.k
  %i.mf = add nsw i32 %i.me, %i.fe
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.mg
  %i.mi = load double, ptr %i.mh, align 8, !tbaa !72 ; 3 uses
  %i.mj = fcmp oge double %i.mi, 0.000000e+00
  %i.mk = fneg double %i.mi
  %i.ml = select i1 %i.mj, double %i.mi, double %i.mk
  %i.mm = fadd double %.0, %i.ml
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.1 = phi double [ %i.mm, %bb.aa ], [ %.0, %bb.z ] ; 2 uses
  %i.mn = add nsw i32 %i.ku, 3
  %.not1447 = icmp slt i32 %i.fe, %i.mn
  br i1 %.not1447, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.mo = add nsw i32 %i.fe, -3
  %i.mp = mul nsw i32 %i.mo, %i.k
  %i.mq = add nsw i32 %i.mp, %i.fe
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.mr
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !72 ; 3 uses
  %i.mu = fcmp oge double %i.mt, 0.000000e+00
  %i.mv = fneg double %i.mt
  %i.mw = select i1 %i.mu, double %i.mt, double %i.mv
  %i.mx = fadd double %.1, %i.mw
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.2 = phi double [ %i.mx, %bb.ac ], [ %.1, %bb.ab ] ; 2 uses
  %i.my = add nsw i32 %i.gp, -2
  %.not1448 = icmp sgt i32 %i.fe, %i.my
  br i1 %.not1448, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.mz = add nsw i32 %i.fe, 2
  %i.na = add nsw i32 %i.mz, %i.li
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.nb
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !72 ; 3 uses
  %i.ne = fcmp oge double %i.nd, 0.000000e+00
  %i.nf = fneg double %i.nd
  %i.ng = select i1 %i.ne, double %i.nd, double %i.nf
  %i.nh = fadd double %.2, %i.ng
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.3 = phi double [ %i.nh, %bb.ae ], [ %.2, %bb.ad ] ; 2 uses
  %i.ni = add nsw i32 %i.gp, -3
  %.not1449 = icmp sgt i32 %i.fe, %i.ni
  br i1 %.not1449, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.nj = add nsw i32 %i.li, %i.gq
  %i.nk = sext i32 %i.nj to i64
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.nk
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !72 ; 3 uses
  %i.nn = fcmp oge double %i.nm, 0.000000e+00
  %i.no = fneg double %i.nm
  %i.np = select i1 %i.nn, double %i.nm, double %i.no
  %i.nq = fadd double %.3, %i.np
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.4 = phi double [ %i.nq, %bb.ag ], [ %.3, %bb.af ] ; 2 uses
  %i.nr = add nsw i32 %i.gp, -4
  %.not1450 = icmp sgt i32 %i.fe, %i.nr
  br i1 %.not1450, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ns = add nsw i32 %i.fe, 4
  %i.nt = add nsw i32 %i.ns, %i.li
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.nu
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !72 ; 3 uses
  %i.nx = fcmp oge double %i.nw, 0.000000e+00
  %i.ny = fneg double %i.nw
  %i.nz = select i1 %i.nx, double %i.nw, double %i.ny
  %i.oa = fadd double %.4, %i.nz
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.w
  %.5 = phi double [ %i.oa, %bb.ai ], [ %.4, %bb.ah ], [ %i.lq, %bb.w ]
  %i.ob = fmul double %i.at, %.5                  ; 2 uses
  %i.oc = fcmp oge double %i.kz, 0.000000e+00
  %i.od = fneg double %i.kz
  %i.oe = select i1 %i.oc, double %i.kz, double %i.od ; 5 uses
  %i.of = fcmp oge double %i.ay, %i.ob
  %i.og = select i1 %i.of, double %i.ay, double %i.ob
  %i.oh = fcmp ugt double %i.oe, %i.og
  br i1 %i.oh, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.oi = add nsw i32 %i.li, %i.fe
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.oj
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !72 ; 3 uses
  %i.om = fcmp oge double %i.ol, 0.000000e+00
  %i.on = fneg double %i.ol
  %i.oo = select i1 %i.om, double %i.ol, double %i.on ; 4 uses
  %i.op = fcmp oge double %i.oe, %i.oo
  %i.oq = select i1 %i.op, double %i.oe, double %i.oo ; 2 uses
  %i.or = fsub double %i.le, %i.lm                ; 3 uses
  %i.os = fcmp oge double %i.or, 0.000000e+00
  %i.ot = fneg double %i.or
  %i.ou = select i1 %i.os, double %i.or, double %i.ot ; 4 uses
  %i.ov = fcmp oge double %i.lp, %i.ou
  %i.ow = select i1 %i.ov, double %i.lp, double %i.ou ; 2 uses
  %i.ox = fcmp ole double %i.lp, %i.ou
  %i.oy = select i1 %i.ox, double %i.lp, double %i.ou
  %i.oz = fadd double %i.ow, %i.oq                ; 2 uses
  %i.pa = fdiv double %i.ow, %i.oz
  %i.pb = fmul double %i.oy, %i.pa                ; 2 uses
  %i.pc = fcmp oeq double %i.pb, 0.000000e+00
  br i1 %i.pc, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.pd = fmul double %i.at, %i.pb                ; 2 uses
  %i.pe = fcmp ole double %i.oe, %i.oo
  %i.pf = select i1 %i.pe, double %i.oe, double %i.oo
  %i.pg = fdiv double %i.oq, %i.oz
  %i.ph = fmul double %i.pf, %i.pg
  %i.pi = fcmp oge double %i.ay, %i.pd
  %i.pj = select i1 %i.pi, double %i.ay, double %i.pd
  %i.pk = fcmp ugt double %i.ph, %i.pj
  br i1 %i.pk, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  store double 0.000000e+00, ptr %i.ky, align 8, !tbaa !72
  br label %bb.an

bb.an:                                            ; preds = %bb.v, %bb.al, %bb.am, %bb.aj, %._crit_edge1504
  br i1 %i.bn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.pl = sub nsw i32 %i.ku, %.013691572
  %i.pm = load i32, ptr %i.h, align 4, !tbaa !70  ; 2 uses
  %i.pn = call i32 @llvm.smax.i32(i32 %i.pl, i32 1)
  %.not14541509 = icmp sgt i32 %i.pn, %i.pm
  br i1 %.not14541509, label %.loopexit1489, label %.lr.ph1512

.lr.ph1512:                                       ; preds = %bb.ao
  %i.po = sub nsw i32 %i.fe, %.013691572          ; 2 uses
  %i.pp = mul i32 %i.fb, %i.q
  %i.pq = sext i32 %i.pp to i64                   ; 2 uses
  %i.pr = getelementptr [8 x i8], ptr %i.s, i64 %i.pq ; 2 uses
  %i.ps = getelementptr i8, ptr %i.pr, i64 8      ; 4 uses
  %i.pt = add nsw i32 %i.po, 1
  %i.pu = mul nsw i32 %i.pt, %i.t
  %i.pv = getelementptr i8, ptr %i.pr, i64 16     ; 3 uses
  %i.pw = add nsw i32 %i.po, 2
  %i.px = mul nsw i32 %i.pw, %i.t
  %i.py = add i32 %indvars.iv1594, %i.ku
  %smax = call i32 @llvm.smax.i32(i32 %i.py, i32 1)
  %i.pz = zext nneg i32 %smax to i64              ; 9 uses
  %i.qa = sext i32 %i.pu to i64                   ; 3 uses
  %i.qb = sext i32 %i.px to i64                   ; 3 uses
  %i.qc = zext nneg i32 %i.pm to i64              ; 3 uses
  %invariant.gep1711 = getelementptr [8 x i8], ptr %i.v, i64 %i.qa ; 2 uses
  %invariant.gep1713 = getelementptr [8 x i8], ptr %i.v, i64 %i.qb ; 2 uses
  %i.qd = call i64 @llvm.umax.i64(i64 %i.qc, i64 %i.pz)
  %i.qe = add nuw nsw i64 %i.qd, 1
  %i.qf = sub nsw i64 %i.qe, %i.pz                ; 3 uses
  %min.iters.check2044 = icmp ult i64 %i.qf, 8
  br i1 %min.iters.check2044, label %scalar.ph2043.preheader, label %vector.memcheck2020

vector.memcheck2020:                              ; preds = %.lr.ph1512
  %i.qg = add nsw i64 %i.qa, %i.pz
  %i.qh = shl nsw i64 %i.qg, 3
  %scevgep2022 = getelementptr i8, ptr %scevgep2021, i64 %i.qh ; 2 uses
  %umax2024 = call i64 @llvm.umax.i64(i64 %i.qc, i64 %i.pz) ; 2 uses
  %i.qi = add nsw i64 %umax2024, %i.u
  %i.qj = add nsw i64 %i.qi, %i.qa
  %i.qk = shl nsw i64 %i.qj, 3
  %scevgep2025 = getelementptr i8, ptr %scevgep2023, i64 %i.qk ; 2 uses
  %i.ql = add nsw i64 %i.qb, %i.pz
  %i.qm = shl nsw i64 %i.ql, 3
  %scevgep2027 = getelementptr i8, ptr %scevgep2026, i64 %i.qm ; 2 uses
  %i.qn = add nsw i64 %umax2024, %i.u
  %i.qo = add nsw i64 %i.qn, %i.qb
  %i.qp = shl nsw i64 %i.qo, 3
  %scevgep2029 = getelementptr i8, ptr %scevgep2028, i64 %i.qp ; 2 uses
  %i.qq = shl nsw i64 %i.pq, 3
  %scevgep2031 = getelementptr i8, ptr %scevgep2030, i64 %i.qq ; 2 uses
  %bound02032 = icmp ult ptr %scevgep2022, %scevgep2029
  %bound12033 = icmp ult ptr %scevgep2027, %scevgep2025
  %found.conflict2034 = and i1 %bound02032, %bound12033
  %bound02035 = icmp ult ptr %scevgep2022, %scevgep2031
  %bound12036 = icmp ult ptr %i.ps, %scevgep2025
  %found.conflict2037 = and i1 %bound02035, %bound12036
  %conflict.rdx2038 = or i1 %found.conflict2034, %found.conflict2037
  %bound02039 = icmp ult ptr %scevgep2027, %scevgep2031
  %bound12040 = icmp ult ptr %i.ps, %scevgep2029
  %found.conflict2041 = and i1 %bound02039, %bound12040
  %conflict.rdx2042 = or i1 %conflict.rdx2038, %found.conflict2041
  br i1 %conflict.rdx2042, label %scalar.ph2043.preheader, label %vector.ph2045

vector.ph2045:                                    ; preds = %vector.memcheck2020
  %n.vec2046 = and i64 %i.qf, -8                  ; 3 uses
  %i.qr = add nsw i64 %n.vec2046, %i.pz
  %i.qs = load double, ptr %i.ps, align 8, !tbaa !72, !alias.scope !84
  %broadcast.splatinsert2055 = insertelement <4 x double> poison, double %i.qs, i64 0
  %broadcast.splat2056 = shufflevector <4 x double> %broadcast.splatinsert2055, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.qt = load double, ptr %i.pv, align 8, !tbaa !72, !alias.scope !84 ; 2 uses
  %broadcast.splatinsert2053 = insertelement <4 x double> poison, double %i.qt, i64 0
  %broadcast.splat2054 = shufflevector <4 x double> %broadcast.splatinsert2053, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2059 = insertelement <4 x double> poison, double %i.qt, i64 0
  %broadcast.splat2060 = shufflevector <4 x double> %broadcast.splatinsert2059, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2047

vector.body2047:                                  ; preds = %vector.body2047, %vector.ph2045
  %index2048 = phi i64 [ 0, %vector.ph2045 ], [ %index.next2061, %vector.body2047 ] ; 2 uses
  %i.qu = add nuw i64 %index2048, %i.pz           ; 2 uses
  %i.qv = getelementptr [8 x i8], ptr %invariant.gep1711, i64 %i.qu ; 3 uses
  %i.qw = getelementptr i8, ptr %i.qv, i64 32     ; 2 uses
  %wide.load2049 = load <4 x double>, ptr %i.qv, align 8, !tbaa !72, !alias.scope !85, !noalias !86 ; 2 uses
  %wide.load2050 = load <4 x double>, ptr %i.qw, align 8, !tbaa !72, !alias.scope !85, !noalias !86 ; 2 uses
  %i.qx = getelementptr [8 x i8], ptr %invariant.gep1713, i64 %i.qu ; 4 uses
  %i.qy = getelementptr i8, ptr %i.qx, i64 32     ; 3 uses
  %wide.load2051 = load <4 x double>, ptr %i.qx, align 8, !tbaa !72, !alias.scope !87, !noalias !84
  %wide.load2052 = load <4 x double>, ptr %i.qy, align 8, !tbaa !72, !alias.scope !87, !noalias !84
  %i.qz = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2054, <4 x double> %wide.load2051, <4 x double> %wide.load2049)
  %i.ra = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2054, <4 x double> %wide.load2052, <4 x double> %wide.load2050)
  %i.rb = fmul <4 x double> %broadcast.splat2056, %i.qz ; 2 uses
  %i.rc = fmul <4 x double> %broadcast.splat2056, %i.ra ; 2 uses
  %i.rd = fsub <4 x double> %wide.load2049, %i.rb
  %i.re = fsub <4 x double> %wide.load2050, %i.rc
  store <4 x double> %i.rd, ptr %i.qv, align 8, !tbaa !72, !alias.scope !85, !noalias !86
  store <4 x double> %i.re, ptr %i.qw, align 8, !tbaa !72, !alias.scope !85, !noalias !86
  %wide.load2057 = load <4 x double>, ptr %i.qx, align 8, !tbaa !72, !alias.scope !87, !noalias !84
  %wide.load2058 = load <4 x double>, ptr %i.qy, align 8, !tbaa !72, !alias.scope !87, !noalias !84
  %i.rf = fneg <4 x double> %i.rb
  %i.rg = fneg <4 x double> %i.rc
  %i.rh = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.rf, <4 x double> %broadcast.splat2060, <4 x double> %wide.load2057)
  %i.ri = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.rg, <4 x double> %broadcast.splat2060, <4 x double> %wide.load2058)
  store <4 x double> %i.rh, ptr %i.qx, align 8, !tbaa !72, !alias.scope !87, !noalias !84
  store <4 x double> %i.ri, ptr %i.qy, align 8, !tbaa !72, !alias.scope !87, !noalias !84
  %index.next2061 = add nuw i64 %index2048, 8     ; 2 uses
  %i.rj = icmp eq i64 %index.next2061, %n.vec2046
  br i1 %i.rj, label %middle.block2062, label %vector.body2047, !llvm.loop !25

middle.block2062:                                 ; preds = %vector.body2047
  %cmp.n2063 = icmp eq i64 %i.qf, %n.vec2046
  br i1 %cmp.n2063, label %.loopexit1489, label %scalar.ph2043.preheader

scalar.ph2043.preheader:                          ; preds = %vector.memcheck2020, %.lr.ph1512, %middle.block2062
  %indvars.iv1596.ph = phi i64 [ %i.pz, %vector.memcheck2020 ], [ %i.pz, %.lr.ph1512 ], [ %i.qr, %middle.block2062 ]
  br label %scalar.ph2043

scalar.ph2043:                                    ; preds = %scalar.ph2043.preheader, %scalar.ph2043
  %indvars.iv1596 = phi i64 [ %indvars.iv.next1597, %scalar.ph2043 ], [ %indvars.iv1596.ph, %scalar.ph2043.preheader ] ; 4 uses
  %i.rk = load double, ptr %i.ps, align 8, !tbaa !72
  %gep1712 = getelementptr [8 x i8], ptr %invariant.gep1711, i64 %indvars.iv1596 ; 2 uses
  %i.rl = load double, ptr %gep1712, align 8, !tbaa !72 ; 2 uses
  %i.rm = load double, ptr %i.pv, align 8, !tbaa !72
  %gep1714 = getelementptr [8 x i8], ptr %invariant.gep1713, i64 %indvars.iv1596 ; 3 uses
  %i.rn = load double, ptr %gep1714, align 8, !tbaa !72
  %i.ro = call double @llvm.fmuladd.f64(double %i.rm, double %i.rn, double %i.rl)
  %i.rp = fmul double %i.rk, %i.ro                ; 2 uses
  %i.rq = fsub double %i.rl, %i.rp
  store double %i.rq, ptr %gep1712, align 8, !tbaa !72
  %i.rr = load double, ptr %i.pv, align 8, !tbaa !72
  %i.rs = load double, ptr %gep1714, align 8, !tbaa !72
  %i.rt = fneg double %i.rp
  %i.ru = call double @llvm.fmuladd.f64(double %i.rt, double %i.rr, double %i.rs)
  store double %i.ru, ptr %gep1714, align 8, !tbaa !72
  %indvars.iv.next1597 = add nuw nsw i64 %indvars.iv1596, 1
  %.not1454.not = icmp samesign ult i64 %indvars.iv1596, %i.qc
  br i1 %.not1454.not, label %scalar.ph2043, label %.loopexit1489, !llvm.loop !26

bb.ap:                                            ; preds = %bb.an
  %i.rv = load i32, ptr %1, align 4, !tbaa !70
  %.not1451 = icmp eq i32 %i.rv, 0
  br i1 %.not1451, label %.loopexit1489, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.rw = load i32, ptr %12, align 4, !tbaa !70   ; 6 uses
  %i.rx = load i32, ptr %11, align 4, !tbaa !70   ; 4 uses
  %.not14521505 = icmp sgt i32 %i.rx, %i.rw
  br i1 %.not14521505, label %.loopexit1489, label %.lr.ph1508

.lr.ph1508:                                       ; preds = %bb.aq
  %i.ry = mul nsw i32 %i.fb, %i.q
  %i.rz = sext i32 %i.ry to i64                   ; 2 uses
  %i.sa = getelementptr [8 x i8], ptr %i.s, i64 %i.rz ; 2 uses
  %i.sb = getelementptr i8, ptr %i.sa, i64 8      ; 6 uses
  %i.sc = mul nsw i32 %i.is, %i.n
  %i.sd = getelementptr i8, ptr %i.sa, i64 16     ; 7 uses
  %i.se = add nsw i32 %i.fe, 2
  %i.sf = mul nsw i32 %i.se, %i.n
  %i.sg = sext i32 %i.rx to i64                   ; 6 uses
  %i.sh = sext i32 %i.sc to i64                   ; 2 uses
  %i.si = sext i32 %i.sf to i64                   ; 2 uses
  %i.sj = add i32 %i.rw, 1
  %invariant.gep1707 = getelementptr [8 x i8], ptr %i.p, i64 %i.sh ; 4 uses
  %invariant.gep1709 = getelementptr [8 x i8], ptr %i.p, i64 %i.si ; 4 uses
  %i.sk = sub i32 %i.rw, %i.rx                    ; 2 uses
  %i.sl = zext i32 %i.sk to i64
  %i.sm = add nuw nsw i64 %i.sl, 1                ; 2 uses
  %min.iters.check2088 = icmp ult i32 %i.sk, 7
  br i1 %min.iters.check2088, label %scalar.ph2087.preheader, label %vector.memcheck2065

vector.memcheck2065:                              ; preds = %.lr.ph1508
  %i.sn = add nsw i64 %i.sg, %i.sh
  %i.so = shl nsw i64 %i.sn, 3                    ; 2 uses
  %scevgep2067 = getelementptr i8, ptr %scevgep2066, i64 %i.so ; 2 uses
  %i.sp = sub i32 %i.rw, %i.rx
  %i.sq = zext i32 %i.sp to i64
  %i.sr = shl nuw nsw i64 %i.sq, 3                ; 2 uses
  %i.ss = getelementptr i8, ptr %scevgep2068, i64 %i.so
  %scevgep2069 = getelementptr i8, ptr %i.ss, i64 %i.sr ; 2 uses
  %i.st = add nsw i64 %i.sg, %i.si
  %i.su = shl nsw i64 %i.st, 3                    ; 2 uses
  %scevgep2071 = getelementptr i8, ptr %scevgep2070, i64 %i.su ; 2 uses
  %i.sv = getelementptr i8, ptr %scevgep2072, i64 %i.su
  %scevgep2073 = getelementptr i8, ptr %i.sv, i64 %i.sr ; 2 uses
  %i.sw = shl nsw i64 %i.rz, 3
  %scevgep2075 = getelementptr i8, ptr %scevgep2074, i64 %i.sw ; 2 uses
  %bound02076 = icmp ult ptr %scevgep2067, %scevgep2073
  %bound12077 = icmp ult ptr %scevgep2071, %scevgep2069
  %found.conflict2078 = and i1 %bound02076, %bound12077
  %bound02079 = icmp ult ptr %scevgep2067, %scevgep2075
  %bound12080 = icmp ult ptr %i.sb, %scevgep2069
  %found.conflict2081 = and i1 %bound02079, %bound12080
  %conflict.rdx2082 = or i1 %found.conflict2078, %found.conflict2081
  %bound02083 = icmp ult ptr %scevgep2071, %scevgep2075
  %bound12084 = icmp ult ptr %i.sb, %scevgep2073
  %found.conflict2085 = and i1 %bound02083, %bound12084
  %conflict.rdx2086 = or i1 %conflict.rdx2082, %found.conflict2085
  br i1 %conflict.rdx2086, label %scalar.ph2087.preheader, label %vector.ph2089

vector.ph2089:                                    ; preds = %vector.memcheck2065
  %n.vec2090 = and i64 %i.sm, 8589934584          ; 3 uses
  %i.sx = add nsw i64 %n.vec2090, %i.sg
  %i.sy = load double, ptr %i.sb, align 8, !tbaa !72, !alias.scope !88
  %broadcast.splatinsert2099 = insertelement <4 x double> poison, double %i.sy, i64 0
  %broadcast.splat2100 = shufflevector <4 x double> %broadcast.splatinsert2099, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sz = load double, ptr %i.sd, align 8, !tbaa !72, !alias.scope !88 ; 2 uses
  %broadcast.splatinsert2097 = insertelement <4 x double> poison, double %i.sz, i64 0
  %broadcast.splat2098 = shufflevector <4 x double> %broadcast.splatinsert2097, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2103 = insertelement <4 x double> poison, double %i.sz, i64 0
  %broadcast.splat2104 = shufflevector <4 x double> %broadcast.splatinsert2103, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2091

vector.body2091:                                  ; preds = %vector.body2091, %vector.ph2089
  %index2092 = phi i64 [ 0, %vector.ph2089 ], [ %index.next2105, %vector.body2091 ] ; 2 uses
  %i.ta = add i64 %index2092, %i.sg               ; 2 uses
  %i.tb = getelementptr [8 x i8], ptr %invariant.gep1707, i64 %i.ta ; 3 uses
  %i.tc = getelementptr i8, ptr %i.tb, i64 32     ; 2 uses
  %wide.load2093 = load <4 x double>, ptr %i.tb, align 8, !tbaa !72, !alias.scope !89, !noalias !90 ; 2 uses
  %wide.load2094 = load <4 x double>, ptr %i.tc, align 8, !tbaa !72, !alias.scope !89, !noalias !90 ; 2 uses
  %i.td = getelementptr [8 x i8], ptr %invariant.gep1709, i64 %i.ta ; 4 uses
  %i.te = getelementptr i8, ptr %i.td, i64 32     ; 3 uses
  %wide.load2095 = load <4 x double>, ptr %i.td, align 8, !tbaa !72, !alias.scope !91, !noalias !88
  %wide.load2096 = load <4 x double>, ptr %i.te, align 8, !tbaa !72, !alias.scope !91, !noalias !88
  %i.tf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2098, <4 x double> %wide.load2095, <4 x double> %wide.load2093)
  %i.tg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2098, <4 x double> %wide.load2096, <4 x double> %wide.load2094)
  %i.th = fmul <4 x double> %broadcast.splat2100, %i.tf ; 2 uses
  %i.ti = fmul <4 x double> %broadcast.splat2100, %i.tg ; 2 uses
  %i.tj = fsub <4 x double> %wide.load2093, %i.th
  %i.tk = fsub <4 x double> %wide.load2094, %i.ti
  store <4 x double> %i.tj, ptr %i.tb, align 8, !tbaa !72, !alias.scope !89, !noalias !90
  store <4 x double> %i.tk, ptr %i.tc, align 8, !tbaa !72, !alias.scope !89, !noalias !90
  %wide.load2101 = load <4 x double>, ptr %i.td, align 8, !tbaa !72, !alias.scope !91, !noalias !88
  %wide.load2102 = load <4 x double>, ptr %i.te, align 8, !tbaa !72, !alias.scope !91, !noalias !88
  %i.tl = fneg <4 x double> %i.th
  %i.tm = fneg <4 x double> %i.ti
  %i.tn = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.tl, <4 x double> %broadcast.splat2104, <4 x double> %wide.load2101)
  %i.to = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.tm, <4 x double> %broadcast.splat2104, <4 x double> %wide.load2102)
  store <4 x double> %i.tn, ptr %i.td, align 8, !tbaa !72, !alias.scope !91, !noalias !88
  store <4 x double> %i.to, ptr %i.te, align 8, !tbaa !72, !alias.scope !91, !noalias !88
  %index.next2105 = add nuw i64 %index2092, 8     ; 2 uses
  %i.tp = icmp eq i64 %index.next2105, %n.vec2090
  br i1 %i.tp, label %middle.block2106, label %vector.body2091, !llvm.loop !31

middle.block2106:                                 ; preds = %vector.body2091
  %cmp.n2107 = icmp eq i64 %i.sm, %n.vec2090
  br i1 %cmp.n2107, label %.loopexit1489, label %scalar.ph2087.preheader

scalar.ph2087.preheader:                          ; preds = %vector.memcheck2065, %.lr.ph1508, %middle.block2106
  %indvars.iv1591.ph = phi i64 [ %i.sg, %vector.memcheck2065 ], [ %i.sg, %.lr.ph1508 ], [ %i.sx, %middle.block2106 ] ; 5 uses
  %i.tq = trunc i64 %indvars.iv1591.ph to i32     ; 2 uses
  %i.tr = add i32 %i.rw, %i.tq
  %i.ts = and i32 %i.tr, 1
  %lcmp.mod.not.not = icmp eq i32 %i.ts, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph2087.prol, label %scalar.ph2087.prol.loopexit

scalar.ph2087.prol:                               ; preds = %scalar.ph2087.preheader
  %i.tt = load double, ptr %i.sb, align 8, !tbaa !72
  %gep1708.prol = getelementptr [8 x i8], ptr %invariant.gep1707, i64 %indvars.iv1591.ph ; 2 uses
  %i.tu = load double, ptr %gep1708.prol, align 8, !tbaa !72 ; 2 uses
  %i.tv = load double, ptr %i.sd, align 8, !tbaa !72
  %gep1710.prol = getelementptr [8 x i8], ptr %invariant.gep1709, i64 %indvars.iv1591.ph ; 3 uses
  %i.tw = load double, ptr %gep1710.prol, align 8, !tbaa !72
  %i.tx = call double @llvm.fmuladd.f64(double %i.tv, double %i.tw, double %i.tu)
  %i.ty = fmul double %i.tt, %i.tx                ; 2 uses
  %i.tz = fsub double %i.tu, %i.ty
  store double %i.tz, ptr %gep1708.prol, align 8, !tbaa !72
  %i.ua = load double, ptr %i.sd, align 8, !tbaa !72
  %i.ub = load double, ptr %gep1710.prol, align 8, !tbaa !72
  %i.uc = fneg double %i.ty
  %i.ud = call double @llvm.fmuladd.f64(double %i.uc, double %i.ua, double %i.ub)
  store double %i.ud, ptr %gep1710.prol, align 8, !tbaa !72
  %indvars.iv.next1592.prol = add nsw i64 %indvars.iv1591.ph, 1
  br label %scalar.ph2087.prol.loopexit

scalar.ph2087.prol.loopexit:                      ; preds = %scalar.ph2087.prol, %scalar.ph2087.preheader
  %indvars.iv1591.unr = phi i64 [ %indvars.iv1591.ph, %scalar.ph2087.preheader ], [ %indvars.iv.next1592.prol, %scalar.ph2087.prol ]
  %i.ue = icmp eq i32 %i.rw, %i.tq
  br i1 %i.ue, label %.loopexit1489, label %scalar.ph2087

scalar.ph2087:                                    ; preds = %scalar.ph2087.prol.loopexit, %scalar.ph2087
  %indvars.iv1591 = phi i64 [ %indvars.iv.next1592.1, %scalar.ph2087 ], [ %indvars.iv1591.unr, %scalar.ph2087.prol.loopexit ] ; 4 uses
  %i.uf = load double, ptr %i.sb, align 8, !tbaa !72
  %gep1708 = getelementptr [8 x i8], ptr %invariant.gep1707, i64 %indvars.iv1591 ; 2 uses
  %i.ug = load double, ptr %gep1708, align 8, !tbaa !72 ; 2 uses
  %i.uh = load double, ptr %i.sd, align 8, !tbaa !72
  %gep1710 = getelementptr [8 x i8], ptr %invariant.gep1709, i64 %indvars.iv1591 ; 3 uses
  %i.ui = load double, ptr %gep1710, align 8, !tbaa !72
  %i.uj = call double @llvm.fmuladd.f64(double %i.uh, double %i.ui, double %i.ug)
  %i.uk = fmul double %i.uf, %i.uj                ; 2 uses
  %i.ul = fsub double %i.ug, %i.uk
  store double %i.ul, ptr %gep1708, align 8, !tbaa !72
  %i.um = load double, ptr %i.sd, align 8, !tbaa !72
  %i.un = load double, ptr %gep1710, align 8, !tbaa !72
  %i.uo = fneg double %i.uk
  %i.up = call double @llvm.fmuladd.f64(double %i.uo, double %i.um, double %i.un)
  store double %i.up, ptr %gep1710, align 8, !tbaa !72
  %indvars.iv.next1592 = add nsw i64 %indvars.iv1591, 1 ; 2 uses
  %i.uq = load double, ptr %i.sb, align 8, !tbaa !72
  %gep1708.1 = getelementptr [8 x i8], ptr %invariant.gep1707, i64 %indvars.iv.next1592 ; 2 uses
  %i.ur = load double, ptr %gep1708.1, align 8, !tbaa !72 ; 2 uses
  %i.us = load double, ptr %i.sd, align 8, !tbaa !72
  %gep1710.1 = getelementptr [8 x i8], ptr %invariant.gep1709, i64 %indvars.iv.next1592 ; 3 uses
  %i.ut = load double, ptr %gep1710.1, align 8, !tbaa !72
  %i.uu = call double @llvm.fmuladd.f64(double %i.us, double %i.ut, double %i.ur)
  %i.uv = fmul double %i.uq, %i.uu                ; 2 uses
  %i.uw = fsub double %i.ur, %i.uv
  store double %i.uw, ptr %gep1708.1, align 8, !tbaa !72
  %i.ux = load double, ptr %i.sd, align 8, !tbaa !72
  %i.uy = load double, ptr %gep1710.1, align 8, !tbaa !72
  %i.uz = fneg double %i.uv
  %i.va = call double @llvm.fmuladd.f64(double %i.uz, double %i.ux, double %i.uy)
  store double %i.va, ptr %gep1710.1, align 8, !tbaa !72
  %indvars.iv.next1592.1 = add nsw i64 %indvars.iv1591, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next1592.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.sj, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %.loopexit1489, label %scalar.ph2087, !llvm.loop !32

.loopexit1489:                                    ; preds = %scalar.ph2087.prol.loopexit, %scalar.ph2087, %scalar.ph2043, %middle.block2106, %middle.block2062, %bb.aq, %bb.ao, %bb.ap, %bb.m
  %i.vb = phi i32 [ %i.ku, %middle.block2062 ], [ %i.ei, %bb.m ], [ %i.ku, %bb.aq ], [ %i.ku, %bb.ao ], [ %i.ku, %bb.ap ], [ %i.ku, %middle.block2106 ], [ %i.ku, %scalar.ph2043 ], [ %i.ku, %scalar.ph2087 ], [ %i.ku, %scalar.ph2087.prol.loopexit ] ; 2 uses
  %i.vc = phi i32 [ %i.ku, %middle.block2062 ], [ %i.ej, %bb.m ], [ %i.ku, %bb.aq ], [ %i.ku, %bb.ao ], [ %i.ku, %bb.ap ], [ %i.ku, %middle.block2106 ], [ %i.ku, %scalar.ph2043 ], [ %i.ku, %scalar.ph2087 ], [ %i.ku, %scalar.ph2087.prol.loopexit ] ; 2 uses
  %i.vd = phi i32 [ %i.gp, %middle.block2062 ], [ %i.ek, %bb.m ], [ %i.gp, %bb.aq ], [ %i.gp, %bb.ao ], [ %i.gp, %bb.ap ], [ %i.gp, %middle.block2106 ], [ %i.gp, %scalar.ph2043 ], [ %i.gp, %scalar.ph2087 ], [ %i.gp, %scalar.ph2087.prol.loopexit ] ; 4 uses
  %i.ve = phi i32 [ %i.gp, %middle.block2062 ], [ %i.el, %bb.m ], [ %i.gp, %bb.aq ], [ %i.gp, %bb.ao ], [ %i.gp, %bb.ap ], [ %i.gp, %middle.block2106 ], [ %i.gp, %scalar.ph2043 ], [ %i.gp, %scalar.ph2087 ], [ %i.gp, %scalar.ph2087.prol.loopexit ]
  %i.vf = phi i32 [ %i.gp, %middle.block2062 ], [ %i.em, %bb.m ], [ %i.gp, %bb.aq ], [ %i.gp, %bb.ao ], [ %i.gp, %bb.ap ], [ %i.gp, %middle.block2106 ], [ %i.gp, %scalar.ph2043 ], [ %i.gp, %scalar.ph2087 ], [ %i.gp, %scalar.ph2087.prol.loopexit ]
  %i.vg = phi i32 [ %i.ku, %middle.block2062 ], [ %i.en, %bb.m ], [ %i.ku, %bb.aq ], [ %i.ku, %bb.ao ], [ %i.ku, %bb.ap ], [ %i.ku, %middle.block2106 ], [ %i.ku, %scalar.ph2043 ], [ %i.ku, %scalar.ph2087 ], [ %i.ku, %scalar.ph2087.prol.loopexit ] ; 3 uses
  %.not14551518 = icmp slt i32 %i.fa, %i.ew       ; 4 uses
  br i1 %.not14551518, label %._crit_edge1522.thread, label %.lr.ph1521

.lr.ph1521:                                       ; preds = %.loopexit1489
  %i.vh = add i32 %.013681550, -2
  %i.vi = sext i32 %i.ez to i64
  %smin = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.vi) ; 3 uses
  %i.vj = sext i32 %i.ew to i64                   ; 2 uses
  %i.vk = trunc i64 %smin to i32
  %i.vl = shl nsw i32 %i.vk, 1                    ; 3 uses
  %i.vm = add i32 %i.eo, %i.vl
  %i.vn = mul i32 %i.k, %i.vm
  %i.vo = add i32 %.013681550, %i.vl
  %i.vp = mul i32 %i.k, %i.vo
  %i.vq = add i32 %indvars.iv1586, %i.vl
  %i.vr = mul i32 %i.k, %i.vq
  %i.vs = mul i64 %i.da, %smin
  %scevgep1968 = getelementptr i8, ptr %scevgep1967, i64 %i.vs ; 3 uses
  %i.vt = mul i64 %i.dc, %i.vj
  %scevgep1970 = getelementptr i8, ptr %scevgep1969, i64 %i.vt ; 3 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph1521, %bb.br
  %indvar1951 = phi i32 [ 0, %.lr.ph1521 ], [ %indvar.next1952, %bb.br ] ; 2 uses
  %i.vu = phi i32 [ %i.vg, %.lr.ph1521 ], [ %i.aee, %bb.br ] ; 2 uses
  %indvars.iv1602 = phi i64 [ %smin, %.lr.ph1521 ], [ %indvars.iv.next1603, %bb.br ] ; 6 uses
  %i.vv = mul i32 %i.cx, %indvar1951              ; 3 uses
  %i.vw = add i32 %i.vn, %i.vv
  %i.vx = sext i32 %i.vw to i64                   ; 2 uses
  %i.vy = shl nsw i64 %i.vx, 3
  %scevgep1953 = getelementptr i8, ptr %scevgep1950, i64 %i.vy ; 3 uses
  %i.vz = add i32 %i.vp, %i.vv
  %i.wa = sext i32 %i.vz to i64                   ; 2 uses
  %i.wb = shl nsw i64 %i.wa, 3
  %scevgep1959 = getelementptr i8, ptr %scevgep1958.a, i64 %i.wb ; 3 uses
  %i.wc = add i32 %i.vr, %i.vv
  %i.wd = sext i32 %i.wc to i64                   ; 2 uses
  %i.we = shl nsw i64 %i.wd, 3
  %scevgep1964 = getelementptr i8, ptr %scevgep1963, i64 %i.we ; 3 uses
  %i.wf = trunc nsw i64 %indvars.iv1602 to i32
  %i.wg = shl i32 %i.wf, 1                        ; 8 uses
  %i.wh = add i32 %i.vh, %i.wg                    ; 25 uses
  %i.wi = add nsw i32 %i.vu, -1
  %i.wj = icmp eq i32 %i.wh, %i.wi
  br i1 %i.wj, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.wk = mul i32 %i.vu, %i.bo
  %i.wl = sext i32 %i.wk to i64
  %i.wm = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.wl
  %i.wn = add nsw i32 %i.wg, -1
  %i.wo = sext i32 %i.wn to i64                   ; 2 uses
  %i.wp = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.wo
  %i.wq = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.wo
  %i.wr = sext i32 %i.wg to i64                   ; 2 uses
  %i.ws = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.wr
  %i.wt = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.wr
  %i.wu = mul nsw i64 %indvars.iv1602, %i.bw
  %i.wv = getelementptr [8 x i8], ptr %i.s, i64 %i.wu ; 2 uses
  %i.ww = getelementptr i8, ptr %i.wv, i64 8      ; 3 uses
  call void @dlaqr1_(ptr noundef nonnull @c__3, ptr noundef %i.wm, ptr noundef nonnull %10, ptr noundef nonnull %i.wp, ptr noundef nonnull %i.wq, ptr noundef nonnull %i.ws, ptr noundef nonnull %i.wt, ptr noundef %i.ww) #4
  %i.wx = load double, ptr %i.ww, align 8, !tbaa !72
  store double %i.wx, ptr %i.c, align 8, !tbaa !72
  %i.wy = getelementptr i8, ptr %i.wv, i64 16
  call void @dlarfg_(ptr noundef nonnull @c__3, ptr noundef nonnull %i.c, ptr noundef %i.wy, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ww) #4
  %.pre1647 = add nsw i32 %i.wh, 3
  br label %bb.ba

bb.at:                                            ; preds = %bb.ar
  %i.wz = mul nsw i64 %indvars.iv1602, %i.bw
  %i.xa = getelementptr [8 x i8], ptr %i.s, i64 %i.wz ; 3 uses
  %i.xb = getelementptr i8, ptr %i.xa, i64 8      ; 3 uses
  %i.xc = load double, ptr %i.xb, align 8, !tbaa !72
  %i.xd = getelementptr i8, ptr %i.xa, i64 24     ; 4 uses
  %i.xe = load double, ptr %i.xd, align 8, !tbaa !72
  %i.xf = fmul double %i.xc, %i.xe
  %i.xg = add nsw i32 %i.wh, 3                    ; 6 uses
  %i.xh = add i32 %i.wg, %.013681550              ; 3 uses
  %i.xi = mul nsw i32 %i.xh, %i.k                 ; 2 uses
  %i.xj = add nsw i32 %i.xg, %i.xi
  %i.xk = sext i32 %i.xj to i64
  %i.xl = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.xk ; 4 uses
  %i.xm = load double, ptr %i.xl, align 8, !tbaa !72
  %i.xn = fneg double %i.xm
  %i.xo = fmul double %i.xf, %i.xn                ; 3 uses
  %i.xp = mul nsw i32 %i.wh, %i.k                 ; 4 uses
  %i.xq = add nsw i32 %i.xg, %i.xp
  %i.xr = sext i32 %i.xq to i64
  %i.xs = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.xr ; 6 uses
  store double %i.xo, ptr %i.xs, align 8, !tbaa !72
  %i.xt = getelementptr i8, ptr %i.xa, i64 16     ; 3 uses
  %i.xu = load double, ptr %i.xt, align 8, !tbaa !72
  %i.xv = fmul double %i.xo, %i.xu
  %i.xw = add nsw i32 %i.wh, 1                    ; 3 uses
  %i.xx = mul nsw i32 %i.xw, %i.k                 ; 2 uses
  %i.xy = add nsw i32 %i.xx, %i.xg
  %i.xz = sext i32 %i.xy to i64
  %i.ya = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.xz ; 2 uses
  store double %i.xv, ptr %i.ya, align 8, !tbaa !72
  %i.yb = load double, ptr %i.xd, align 8, !tbaa !72
  %i.yc = load double, ptr %i.xl, align 8, !tbaa !72
  %i.yd = call double @llvm.fmuladd.f64(double %i.xo, double %i.yb, double %i.yc)
  store double %i.yd, ptr %i.xl, align 8, !tbaa !72
  %i.ye = add nsw i32 %i.xw, %i.xp
  %i.yf = sext i32 %i.ye to i64
  %i.yg = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.yf ; 5 uses
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !72
  store double %i.yh, ptr %i.a, align 8, !tbaa !72
  %i.yi = add nsw i32 %i.xp, %i.xh
  %i.yj = sext i32 %i.yi to i64
  %i.yk = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.yj ; 5 uses
  %i.yl = load double, ptr %i.yk, align 8, !tbaa !72
  store double %i.yl, ptr %i.xt, align 8, !tbaa !72
  %i.ym = load double, ptr %i.xs, align 8, !tbaa !72
  store double %i.ym, ptr %i.xd, align 8, !tbaa !72
  call void @dlarfg_(ptr noundef nonnull @c__3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.xt, ptr noundef nonnull @c__1, ptr noundef nonnull %i.xb) #4
  %i.yn = load double, ptr %i.xs, align 8, !tbaa !72
  %i.yo = fcmp une double %i.yn, 0.000000e+00
  br i1 %i.yo, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.yp = load double, ptr %i.ya, align 8, !tbaa !72
  %i.yq = fcmp une double %i.yp, 0.000000e+00
  br i1 %i.yq, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.yr = load double, ptr %i.xl, align 8, !tbaa !72
  %i.ys = fcmp oeq double %i.yr, 0.000000e+00
  br i1 %i.ys, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %i.yt = load double, ptr %i.a, align 8, !tbaa !72
  store double %i.yt, ptr %i.yg, align 8, !tbaa !72
  store double 0.000000e+00, ptr %i.yk, align 8, !tbaa !72
  store double 0.000000e+00, ptr %i.xs, align 8, !tbaa !72
  br label %bb.ba

bb.ax:                                            ; preds = %bb.av
  %i.yu = add nsw i32 %i.xx, %i.xw
  %i.yv = sext i32 %i.yu to i64
  %i.yw = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.yv ; 2 uses
  %i.yx = add nsw i32 %i.wg, -1
  %i.yy = sext i32 %i.yx to i64                   ; 2 uses
  %i.yz = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.yy
  %i.za = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.yy
  %i.zb = sext i32 %i.wg to i64                   ; 2 uses
  %i.zc = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.zb
  %i.zd = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.zb
  call void @dlaqr1_(ptr noundef nonnull @c__3, ptr noundef %i.yw, ptr noundef nonnull %10, ptr noundef nonnull %i.yz, ptr noundef nonnull %i.za, ptr noundef nonnull %i.zc, ptr noundef nonnull %i.zd, ptr noundef nonnull %i.e) #4
  %i.ze = load double, ptr %i.e, align 16, !tbaa !72
  store double %i.ze, ptr %i.c, align 8, !tbaa !72
  call void @dlarfg_(ptr noundef nonnull @c__3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bp, ptr noundef nonnull @c__1, ptr noundef nonnull %i.e) #4
  %i.zf = load double, ptr %i.yg, align 8, !tbaa !72 ; 2 uses
  %i.zg = load <2 x double>, ptr %i.e, align 16, !tbaa !72 ; 3 uses
  %i.zh = load double, ptr %i.yk, align 8, !tbaa !72 ; 2 uses
  %i.zi = extractelement <2 x double> %i.zg, i64 1 ; 2 uses
  %i.zj = call double @llvm.fmuladd.f64(double %i.zi, double %i.zh, double %i.zf)
  %i.zk = extractelement <2 x double> %i.zg, i64 0
  %i.zl = fmul double %i.zk, %i.zj                ; 3 uses
  %i.zm = fneg double %i.zl
  %i.zn = call double @llvm.fmuladd.f64(double %i.zm, double %i.zi, double %i.zh) ; 3 uses
  %i.zo = fcmp oge double %i.zn, 0.000000e+00
  %i.zp = fneg double %i.zn
  %i.zq = select i1 %i.zo, double %i.zn, double %i.zp
  %i.zr = load double, ptr %i.bq, align 16, !tbaa !72 ; 2 uses
  %i.zs = fmul double %i.zr, %i.zl                ; 3 uses
  %i.zt = fcmp oge double %i.zs, 0.000000e+00
  %i.zu = fneg double %i.zs
  %i.zv = select i1 %i.zt, double %i.zs, double %i.zu
  %i.zw = fadd double %i.zq, %i.zv
  %i.zx = add nsw i32 %i.xp, %i.wh
  %i.zy = sext i32 %i.zx to i64
  %i.zz = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.zy
  %i.aaa = load double, ptr %i.zz, align 8, !tbaa !72 ; 3 uses
  %i.aab = fcmp oge double %i.aaa, 0.000000e+00
  %i.aac = fneg double %i.aaa
  %i.aad = select i1 %i.aab, double %i.aaa, double %i.aac
  %i.aae = load double, ptr %i.yw, align 8, !tbaa !72 ; 3 uses
  %i.aaf = fcmp oge double %i.aae, 0.000000e+00
  %i.aag = fneg double %i.aae
  %i.aah = select i1 %i.aaf, double %i.aae, double %i.aag
  %i.aai = fadd double %i.aad, %i.aah
  %i.aaj = add nsw i32 %i.xi, %i.xh
  %i.aak = sext i32 %i.aaj to i64
  %i.aal = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.aak
  %i.aam = load double, ptr %i.aal, align 8, !tbaa !72 ; 3 uses
  %i.aan = fcmp oge double %i.aam, 0.000000e+00
  %i.aao = fneg double %i.aam
  %i.aap = select i1 %i.aan, double %i.aam, double %i.aao
  %i.aaq = fadd double %i.aai, %i.aap
  %i.aar = fmul double %i.at, %i.aaq
  %i.aas = fcmp ogt double %i.zw, %i.aar
  br i1 %i.aas, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.aat = load double, ptr %i.a, align 8, !tbaa !72
  store double %i.aat, ptr %i.yg, align 8, !tbaa !72
  store double 0.000000e+00, ptr %i.yk, align 8, !tbaa !72
  store double 0.000000e+00, ptr %i.xs, align 8, !tbaa !72
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.aau = fsub double %i.zf, %i.zl
  store double %i.aau, ptr %i.yg, align 8, !tbaa !72
  store double 0.000000e+00, ptr %i.yk, align 8, !tbaa !72
  store double 0.000000e+00, ptr %i.xs, align 8, !tbaa !72
  store <2 x double> %i.zg, ptr %i.xb, align 8, !tbaa !72
  store double %i.zr, ptr %i.xd, align 8, !tbaa !72
  br label %bb.ba

bb.ba:                                            ; preds = %bb.aw, %bb.az, %bb.ay, %bb.as
  %.pre-phi = phi i32 [ %i.xg, %bb.aw ], [ %i.xg, %bb.az ], [ %i.xg, %bb.ay ], [ %.pre1647, %bb.as ] ; 3 uses
  %i.aav = load i32, ptr %5, align 4, !tbaa !70   ; 11 uses
  %i.aaw = call i32 @llvm.smin.i32(i32 %i.aav, i32 %.pre-phi) ; 2 uses
  %.not14701513 = icmp sgt i32 %.013851482, %i.aaw
  %.pre1648 = mul nsw i64 %indvars.iv1602, %i.bw  ; 2 uses
  br i1 %.not14701513, label %.._crit_edge1517_crit_edge, label %.lr.ph1516

.._crit_edge1517_crit_edge:                       ; preds = %bb.ba
  %.pre1650 = add nsw i32 %i.wh, 1                ; 2 uses
  %.pre1652 = mul nsw i32 %.pre1650, %i.k
  %.pre1654 = add i32 %i.wg, %.013681550
  br label %._crit_edge1517

.lr.ph1516:                                       ; preds = %bb.ba
  %i.aax = getelementptr [8 x i8], ptr %i.s, i64 %.pre1648 ; 3 uses
  %i.aay = getelementptr i8, ptr %i.aax, i64 8    ; 2 uses
  %i.aaz = add nsw i32 %i.wh, 1                   ; 3 uses
  %i.aba = mul nsw i32 %i.aaz, %i.k               ; 3 uses
  %i.abb = getelementptr i8, ptr %i.aax, i64 16   ; 3 uses
  %i.abc = add i32 %i.wg, %.013681550             ; 3 uses
  %i.abd = mul nsw i32 %i.abc, %i.k
  %i.abe = getelementptr i8, ptr %i.aax, i64 24   ; 3 uses
  %i.abf = mul nsw i32 %.pre-phi, %i.k
  %i.abg = sext i32 %i.aba to i64
  %i.abh = sext i32 %i.abd to i64
  %i.abi = sext i32 %i.abf to i64
  %i.abj = sext i32 %i.aaw to i64                 ; 3 uses
  %invariant.gep1715 = getelementptr [8 x i8], ptr %i.m, i64 %i.abg ; 2 uses
  %invariant.gep1717 = getelementptr [8 x i8], ptr %i.m, i64 %i.abh ; 2 uses
  %invariant.gep1719 = getelementptr [8 x i8], ptr %i.m, i64 %i.abi ; 2 uses
  %.reass2210 = add i64 %i.abj, %invariant.op     ; 3 uses
  %min.iters.check1996 = icmp ult i64 %.reass2210, 8
  br i1 %min.iters.check1996, label %scalar.ph1995.preheader, label %vector.memcheck1948

vector.memcheck1948:                              ; preds = %.lr.ph1516
  %smax1955 = call i64 @llvm.smax.i64(i64 %i.abj, i64 %i.eg) ; 2 uses
  %i.abk = add i64 %smax1955, %i.l                ; 2 uses
  %i.abl = add i64 %i.abk, %i.vx
  %i.abm = shl nsw i64 %i.abl, 3
  %scevgep1956 = getelementptr i8, ptr %scevgep1954.a, i64 %i.abm ; 3 uses
  %i.abn = add i64 %i.abk, %i.wa
  %i.abo = shl nsw i64 %i.abn, 3
  %scevgep1961 = getelementptr i8, ptr %scevgep1960, i64 %i.abo ; 3 uses
  %i.abp = add i64 %smax1955, %i.l
  %i.abq = add i64 %i.abp, %i.wd
  %i.abr = shl nsw i64 %i.abq, 3
  %scevgep1966 = getelementptr i8, ptr %scevgep1965, i64 %i.abr ; 3 uses
  %bound01971.a = icmp ult ptr %scevgep1953, %scevgep1961
  %bound11972.a = icmp ult ptr %scevgep1959, %scevgep1956
  %found.conflict1973.a = and i1 %bound01971.a, %bound11972.a
  %bound01974 = icmp ult ptr %scevgep1953, %scevgep1966
  %bound11975 = icmp ult ptr %scevgep1964, %scevgep1956
  %found.conflict1976 = and i1 %bound01974, %bound11975
  %conflict.rdx1977 = or i1 %found.conflict1973.a, %found.conflict1976
  %bound01978 = icmp ult ptr %scevgep1953, %scevgep1970
  %bound11979 = icmp ult ptr %scevgep1968, %scevgep1956
  %found.conflict1980 = and i1 %bound01978, %bound11979
  %i.abs = or i1 %found.conflict1980, %stride.check1981
  %conflict.rdx1982.a = or i1 %conflict.rdx1977, %i.abs
  %bound01983 = icmp ult ptr %scevgep1959, %scevgep1966
  %bound11984 = icmp ult ptr %scevgep1964, %scevgep1961
  %found.conflict1985 = and i1 %bound01983, %bound11984
  %conflict.rdx1986 = or i1 %conflict.rdx1982.a, %found.conflict1985
  %bound01987 = icmp ult ptr %scevgep1959, %scevgep1970
  %bound11988 = icmp ult ptr %scevgep1968, %scevgep1961
  %found.conflict1989 = and i1 %bound01987, %bound11988
  %conflict.rdx1990 = or i1 %conflict.rdx1986, %found.conflict1989
  %bound01991 = icmp ult ptr %scevgep1964, %scevgep1970
  %bound11992 = icmp ult ptr %scevgep1968, %scevgep1966
  %found.conflict1993 = and i1 %bound01991, %bound11992
  %conflict.rdx1994 = or i1 %conflict.rdx1990, %found.conflict1993
  br i1 %conflict.rdx1994, label %scalar.ph1995.preheader, label %vector.ph1997

vector.ph1997:                                    ; preds = %vector.memcheck1948
  %n.vec1998 = and i64 %.reass2210, -4            ; 3 uses
  %i.abt = add nsw i64 %n.vec1998, %i.eg
  %i.abu = load double, ptr %i.aay, align 8, !tbaa !72, !alias.scope !92
  %broadcast.splatinsert2008 = insertelement <4 x double> poison, double %i.abu, i64 0
  %broadcast.splat2009 = shufflevector <4 x double> %broadcast.splatinsert2008, <4 x double> poison, <4 x i32> zeroinitializer
  %i.abv = load double, ptr %i.abb, align 8, !tbaa !72, !alias.scope !92 ; 2 uses
  %broadcast.splatinsert2003 = insertelement <4 x double> poison, double %i.abv, i64 0
  %broadcast.splat2004 = shufflevector <4 x double> %broadcast.splatinsert2003, <4 x double> poison, <4 x i32> zeroinitializer
  %i.abw = load double, ptr %i.abe, align 8, !tbaa !72, !alias.scope !92 ; 2 uses
  %broadcast.splatinsert2006 = insertelement <4 x double> poison, double %i.abw, i64 0
  %broadcast.splat2007 = shufflevector <4 x double> %broadcast.splatinsert2006, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2011 = insertelement <4 x double> poison, double %i.abv, i64 0
  %broadcast.splat2012 = shufflevector <4 x double> %broadcast.splatinsert2011, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2014 = insertelement <4 x double> poison, double %i.abw, i64 0
  %broadcast.splat2015 = shufflevector <4 x double> %broadcast.splatinsert2014, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1999

vector.body1999:                                  ; preds = %vector.body1999, %vector.ph1997
  %index2000 = phi i64 [ 0, %vector.ph1997 ], [ %index.next2016, %vector.body1999 ] ; 2 uses
  %i.abx = add i64 %index2000, %i.eg              ; 3 uses
  %i.aby = getelementptr [8 x i8], ptr %invariant.gep1715, i64 %i.abx ; 2 uses
  %wide.load2001 = load <4 x double>, ptr %i.aby, align 8, !tbaa !72, !alias.scope !93, !noalias !94 ; 2 uses
  %i.abz = getelementptr [8 x i8], ptr %invariant.gep1717, i64 %i.abx ; 3 uses
  %wide.load2002 = load <4 x double>, ptr %i.abz, align 8, !tbaa !72, !alias.scope !95, !noalias !96
  %i.aca = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2004, <4 x double> %wide.load2002, <4 x double> %wide.load2001)
  %i.acb = getelementptr [8 x i8], ptr %invariant.gep1719, i64 %i.abx ; 3 uses
  %wide.load2005 = load <4 x double>, ptr %i.acb, align 8, !tbaa !72, !alias.scope !97, !noalias !92
  %i.acc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2007, <4 x double> %wide.load2005, <4 x double> %i.aca)
  %i.acd = fmul <4 x double> %broadcast.splat2009, %i.acc ; 2 uses
  %i.ace = fsub <4 x double> %wide.load2001, %i.acd
  store <4 x double> %i.ace, ptr %i.aby, align 8, !tbaa !72, !alias.scope !93, !noalias !94
  %wide.load2010 = load <4 x double>, ptr %i.abz, align 8, !tbaa !72, !alias.scope !95, !noalias !96
  %i.acf = fneg <4 x double> %i.acd               ; 2 uses
  %i.acg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.acf, <4 x double> %broadcast.splat2012, <4 x double> %wide.load2010)
  store <4 x double> %i.acg, ptr %i.abz, align 8, !tbaa !72, !alias.scope !95, !noalias !96
  %wide.load2013 = load <4 x double>, ptr %i.acb, align 8, !tbaa !72, !alias.scope !97, !noalias !92
  %i.ach = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.acf, <4 x double> %broadcast.splat2015, <4 x double> %wide.load2013)
  store <4 x double> %i.ach, ptr %i.acb, align 8, !tbaa !72, !alias.scope !97, !noalias !92
  %index.next2016 = add nuw i64 %index2000, 4     ; 2 uses
  %i.aci = icmp eq i64 %index.next2016, %n.vec1998
  br i1 %i.aci, label %middle.block2017, label %vector.body1999, !llvm.loop !38

middle.block2017:                                 ; preds = %vector.body1999
  %cmp.n2018 = icmp eq i64 %.reass2210, %n.vec1998
  br i1 %cmp.n2018, label %._crit_edge1517, label %scalar.ph1995.preheader

scalar.ph1995.preheader:                          ; preds = %vector.memcheck1948, %.lr.ph1516, %middle.block2017
  %indvars.iv1599.ph = phi i64 [ %i.eg, %vector.memcheck1948 ], [ %i.eg, %.lr.ph1516 ], [ %i.abt, %middle.block2017 ]
  br label %scalar.ph1995

scalar.ph1995:                                    ; preds = %scalar.ph1995.preheader, %scalar.ph1995
  %indvars.iv1599 = phi i64 [ %indvars.iv.next1600, %scalar.ph1995 ], [ %indvars.iv1599.ph, %scalar.ph1995.preheader ] ; 5 uses
  %i.acj = load double, ptr %i.aay, align 8, !tbaa !72
  %gep1716 = getelementptr [8 x i8], ptr %invariant.gep1715, i64 %indvars.iv1599 ; 2 uses
  %i.ack = load double, ptr %gep1716, align 8, !tbaa !72 ; 2 uses
  %i.acl = load double, ptr %i.abb, align 8, !tbaa !72
  %gep1718 = getelementptr [8 x i8], ptr %invariant.gep1717, i64 %indvars.iv1599 ; 3 uses
  %i.acm = load double, ptr %gep1718, align 8, !tbaa !72
  %i.acn = call double @llvm.fmuladd.f64(double %i.acl, double %i.acm, double %i.ack)
  %i.aco = load double, ptr %i.abe, align 8, !tbaa !72
  %gep1720 = getelementptr [8 x i8], ptr %invariant.gep1719, i64 %indvars.iv1599 ; 3 uses
  %i.acp = load double, ptr %gep1720, align 8, !tbaa !72
  %i.acq = call double @llvm.fmuladd.f64(double %i.aco, double %i.acp, double %i.acn)
  %i.acr = fmul double %i.acj, %i.acq             ; 2 uses
  %i.acs = fsub double %i.ack, %i.acr
  store double %i.acs, ptr %gep1716, align 8, !tbaa !72
  %i.act = load double, ptr %i.abb, align 8, !tbaa !72
  %i.acu = load double, ptr %gep1718, align 8, !tbaa !72
  %i.acv = fneg double %i.acr                     ; 2 uses
  %i.acw = call double @llvm.fmuladd.f64(double %i.acv, double %i.act, double %i.acu)
  store double %i.acw, ptr %gep1718, align 8, !tbaa !72
  %i.acx = load double, ptr %i.abe, align 8, !tbaa !72
  %i.acy = load double, ptr %gep1720, align 8, !tbaa !72
  %i.acz = call double @llvm.fmuladd.f64(double %i.acv, double %i.acx, double %i.acy)
  store double %i.acz, ptr %gep1720, align 8, !tbaa !72
  %indvars.iv.next1600 = add nsw i64 %indvars.iv1599, 1
  %.not1470.not = icmp slt i64 %indvars.iv1599, %i.abj
  br i1 %.not1470.not, label %scalar.ph1995, label %._crit_edge1517, !llvm.loop !39

._crit_edge1517:                                  ; preds = %scalar.ph1995, %middle.block2017, %.._crit_edge1517_crit_edge
  %.pre-phi1655 = phi i32 [ %.pre1654, %.._crit_edge1517_crit_edge ], [ %i.abc, %middle.block2017 ], [ %i.abc, %scalar.ph1995 ]
  %.pre-phi1653 = phi i32 [ %.pre1652, %.._crit_edge1517_crit_edge ], [ %i.aba, %middle.block2017 ], [ %i.aba, %scalar.ph1995 ] ; 5 uses
  %.pre-phi1651 = phi i32 [ %.pre1650, %.._crit_edge1517_crit_edge ], [ %i.aaz, %middle.block2017 ], [ %i.aaz, %scalar.ph1995 ] ; 2 uses
  %i.ada = getelementptr [8 x i8], ptr %i.s, i64 %.pre1648 ; 3 uses
  %i.adb = getelementptr i8, ptr %i.ada, i64 8
  %i.adc = load double, ptr %i.adb, align 8, !tbaa !72
  %i.add = add nsw i32 %.pre-phi1653, %.pre-phi1651
  %i.ade = sext i32 %i.add to i64
  %i.adf = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ade ; 3 uses
  %i.adg = load double, ptr %i.adf, align 8, !tbaa !72 ; 2 uses
  %i.adh = getelementptr i8, ptr %i.ada, i64 16   ; 2 uses
  %i.adi = load double, ptr %i.adh, align 8, !tbaa !72
  %i.adj = add nsw i32 %.pre-phi1655, %.pre-phi1653
  %i.adk = sext i32 %i.adj to i64
  %i.adl = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.adk ; 4 uses
  %i.adm = load double, ptr %i.adl, align 8, !tbaa !72
  %i.adn = call double @llvm.fmuladd.f64(double %i.adi, double %i.adm, double %i.adg)
  %i.ado = getelementptr i8, ptr %i.ada, i64 24   ; 2 uses
  %i.adp = load double, ptr %i.ado, align 8, !tbaa !72
  %i.adq = add nsw i32 %.pre-phi1653, %.pre-phi
  %i.adr = sext i32 %i.adq to i64
  %i.ads = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.adr ; 3 uses
  %i.adt = load double, ptr %i.ads, align 8, !tbaa !72
  %i.adu = call double @llvm.fmuladd.f64(double %i.adp, double %i.adt, double %i.adn)
  %i.adv = fmul double %i.adc, %i.adu             ; 2 uses
  %i.adw = fsub double %i.adg, %i.adv
  store double %i.adw, ptr %i.adf, align 8, !tbaa !72
  %i.adx = load double, ptr %i.adh, align 8, !tbaa !72
  %i.ady = load double, ptr %i.adl, align 8, !tbaa !72
  %i.adz = fneg double %i.adv                     ; 2 uses
  %i.aea = call double @llvm.fmuladd.f64(double %i.adz, double %i.adx, double %i.ady)
  store double %i.aea, ptr %i.adl, align 8, !tbaa !72
  %i.aeb = load double, ptr %i.ado, align 8, !tbaa !72
  %i.aec = load double, ptr %i.ads, align 8, !tbaa !72
  %i.aed = call double @llvm.fmuladd.f64(double %i.adz, double %i.aeb, double %i.aec) ; 4 uses
  store double %i.aed, ptr %i.ads, align 8, !tbaa !72
  %i.aee = load i32, ptr %4, align 4, !tbaa !70   ; 10 uses
  %i.aef = icmp slt i32 %i.wh, %i.aee
  br i1 %i.aef, label %bb.br, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge1517
  %i.aeg = mul nsw i32 %i.wh, %i.k                ; 2 uses
  %i.aeh = add nsw i32 %.pre-phi1651, %i.aeg
  %i.aei = sext i32 %i.aeh to i64
  %i.aej = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.aei ; 2 uses
  %i.aek = load double, ptr %i.aej, align 8, !tbaa !72 ; 4 uses
  %i.ael = fcmp une double %i.aek, 0.000000e+00
  br i1 %i.ael, label %bb.bc, label %bb.br

bb.bc:                                            ; preds = %bb.bb
  %i.aem = add nsw i32 %i.aeg, %i.wh
  %i.aen = sext i32 %i.aem to i64
  %i.aeo = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.aen
  %i.aep = load double, ptr %i.aeo, align 8, !tbaa !72 ; 4 uses
  %i.aeq = fcmp oge double %i.aep, 0.000000e+00
  %i.aer = fneg double %i.aep
  %i.aes = select i1 %i.aeq, double %i.aep, double %i.aer
  %i.aet = load double, ptr %i.adf, align 8, !tbaa !72 ; 4 uses
  %i.aeu = fcmp oge double %i.aet, 0.000000e+00
  %i.aev = fneg double %i.aet
  %i.aew = select i1 %i.aeu, double %i.aet, double %i.aev ; 5 uses
  %i.aex = fadd double %i.aes, %i.aew             ; 4 uses
  %i.aey = fcmp oeq double %i.aex, 0.000000e+00
  br i1 %i.aey, label %bb.bd, label %bb.bn

bb.bd:                                            ; preds = %bb.bc
  %.not1471.not = icmp sgt i32 %i.wh, %i.aee
  br i1 %.not1471.not, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.aez = add nsw i32 %i.wh, -1
  %i.afa = mul nsw i32 %i.aez, %i.k
  %i.afb = add nsw i32 %i.afa, %i.wh
  %i.afc = sext i32 %i.afb to i64
  %i.afd = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.afc
  %i.afe = load double, ptr %i.afd, align 8, !tbaa !72 ; 3 uses
  %i.aff = fcmp oge double %i.afe, 0.000000e+00
  %i.afg = fneg double %i.afe
  %i.afh = select i1 %i.aff, double %i.afe, double %i.afg
  %i.afi = fadd double %i.aex, %i.afh
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.6 = phi double [ %i.afi, %bb.be ], [ %i.aex, %bb.bd ] ; 2 uses
  %i.afj = add nsw i32 %i.aee, 2
  %.not1472 = icmp slt i32 %i.wh, %i.afj
  br i1 %.not1472, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.afk = add nsw i32 %i.wh, -2
  %i.afl = mul nsw i32 %i.afk, %i.k
  %i.afm = add nsw i32 %i.afl, %i.wh
  %i.afn = sext i32 %i.afm to i64
  %i.afo = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.afn
  %i.afp = load double, ptr %i.afo, align 8, !tbaa !72 ; 3 uses
  %i.afq = fcmp oge double %i.afp, 0.000000e+00
  %i.afr = fneg double %i.afp
  %i.afs = select i1 %i.afq, double %i.afp, double %i.afr
  %i.aft = fadd double %.6, %i.afs
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.7 = phi double [ %i.aft, %bb.bg ], [ %.6, %bb.bf ] ; 2 uses
  %i.afu = add nsw i32 %i.aee, 3
  %.not1473 = icmp slt i32 %i.wh, %i.afu
  br i1 %.not1473, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.afv = add nsw i32 %i.wh, -3
  %i.afw = mul nsw i32 %i.afv, %i.k
  %i.afx = add nsw i32 %i.afw, %i.wh
  %i.afy = sext i32 %i.afx to i64
  %i.afz = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.afy
  %i.aga = load double, ptr %i.afz, align 8, !tbaa !72 ; 3 uses
  %i.agb = fcmp oge double %i.aga, 0.000000e+00
  %i.agc = fneg double %i.aga
  %i.agd = select i1 %i.agb, double %i.aga, double %i.agc
  %i.age = fadd double %.7, %i.agd
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.8 = phi double [ %i.age, %bb.bi ], [ %.7, %bb.bh ] ; 2 uses
  %i.agf = add nsw i32 %i.aav, -2
  %.not1474 = icmp sgt i32 %i.wh, %i.agf
  br i1 %.not1474, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.agg = load double, ptr %i.adl, align 8, !tbaa !72 ; 3 uses
  %i.agh = fcmp oge double %i.agg, 0.000000e+00
  %i.agi = fneg double %i.agg
  %i.agj = select i1 %i.agh, double %i.agg, double %i.agi
  %i.agk = fadd double %.8, %i.agj
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.9 = phi double [ %i.agk, %bb.bk ], [ %.8, %bb.bj ] ; 2 uses
  %i.agl = add nsw i32 %i.aav, -3
  %.not1475 = icmp sgt i32 %i.wh, %i.agl
  %i.agm = fcmp oge double %i.aed, 0.000000e+00
  %i.agn = fneg double %i.aed
  %i.ago = select i1 %i.agm, double %i.aed, double %i.agn
  %i.agp = fadd double %i.ago, %.9
  %.10 = select i1 %.not1475, double %.9, double %i.agp ; 2 uses
  %i.agq = add nsw i32 %i.aav, -4
  %.not1476 = icmp sgt i32 %i.wh, %i.agq
  br i1 %.not1476, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.agr = add nsw i32 %i.wh, 4
  %i.ags = add nsw i32 %i.agr, %.pre-phi1653
  %i.agt = sext i32 %i.ags to i64
  %i.agu = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.agt
  %i.agv = load double, ptr %i.agu, align 8, !tbaa !72 ; 3 uses
  %i.agw = fcmp oge double %i.agv, 0.000000e+00
end_hunk_0
begin_hunk_1_@dlaqr5_:bb.a
  %.11 = phi double [ %i.agz, %bb.bm ], [ %.10, %bb.bl ], [ %i.aex, %bb.bc ]
  %i.aha = fmul double %i.at, %.11                ; 2 uses
  %i.ahb = fcmp oge double %i.aek, 0.000000e+00
  %i.ahc = fneg double %i.aek
  %i.ahd = select i1 %i.ahb, double %i.aek, double %i.ahc ; 5 uses
  %i.ahe = fcmp oge double %i.ay, %i.aha
  %i.ahf = select i1 %i.ahe, double %i.ay, double %i.aha
  %i.ahg = fcmp ugt double %i.ahd, %i.ahf
  br i1 %i.ahg, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ahh = add nsw i32 %.pre-phi1653, %i.wh
  %i.ahi = sext i32 %i.ahh to i64
  %i.ahj = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ahi
  %i.ahk = load double, ptr %i.ahj, align 8, !tbaa !72 ; 3 uses
  %i.ahl = fcmp oge double %i.ahk, 0.000000e+00
  %i.ahm = fneg double %i.ahk
  %i.ahn = select i1 %i.ahl, double %i.ahk, double %i.ahm ; 4 uses
  %i.aho = fcmp oge double %i.ahd, %i.ahn
  %i.ahp = select i1 %i.aho, double %i.ahd, double %i.ahn ; 2 uses
  %i.ahq = fsub double %i.aep, %i.aet             ; 3 uses
  %i.ahr = fcmp oge double %i.ahq, 0.000000e+00
  %i.ahs = fneg double %i.ahq
  %i.aht = select i1 %i.ahr, double %i.ahq, double %i.ahs ; 4 uses
  %i.ahu = fcmp oge double %i.aew, %i.aht
  %i.ahv = select i1 %i.ahu, double %i.aew, double %i.aht ; 2 uses
  %i.ahw = fcmp ole double %i.aew, %i.aht
  %i.ahx = select i1 %i.ahw, double %i.aew, double %i.aht
  %i.ahy = fadd double %i.ahv, %i.ahp             ; 2 uses
  %i.ahz = fdiv double %i.ahv, %i.ahy
  %i.aia = fmul double %i.ahx, %i.ahz             ; 2 uses
  %i.aib = fcmp oeq double %i.aia, 0.000000e+00
  br i1 %i.aib, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.aic = fmul double %i.at, %i.aia              ; 2 uses
  %i.aid = fcmp ole double %i.ahd, %i.ahn
  %i.aie = select i1 %i.aid, double %i.ahd, double %i.ahn
  %i.aif = fdiv double %i.ahp, %i.ahy
  %i.aig = fmul double %i.aie, %i.aif
  %i.aih = fcmp oge double %i.ay, %i.aic
  %i.aii = select i1 %i.aih, double %i.ay, double %i.aic
  %i.aij = fcmp ugt double %i.aig, %i.aii
  br i1 %i.aij, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  store double 0.000000e+00, ptr %i.aej, align 8, !tbaa !72
  br label %bb.br

bb.br:                                            ; preds = %bb.bb, %bb.bp, %bb.bq, %bb.bn, %._crit_edge1517
  %indvars.iv.next1603 = add nsw i64 %indvars.iv1602, -1
  %.not1455.not = icmp sgt i64 %indvars.iv1602, %i.vj
  %indvar.next1952 = add i32 %indvar1951, 1
  br i1 %.not1455.not, label %bb.ar, label %._crit_edge1522, !llvm.loop !40

._crit_edge1522:                                  ; preds = %bb.br
  br i1 %i.bn, label %.thread1693, label %bb.bs

._crit_edge1522.thread:                           ; preds = %.loopexit1489
  br i1 %i.bn, label %.loopexit, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge1522.thread, %._crit_edge1522
  %i.aik = phi i32 [ %i.vg, %._crit_edge1522.thread ], [ %i.aee, %._crit_edge1522 ]
  %i.ail = phi i32 [ %i.vf, %._crit_edge1522.thread ], [ %i.aav, %._crit_edge1522 ]
  %i.aim = phi i32 [ %i.ve, %._crit_edge1522.thread ], [ %i.aav, %._crit_edge1522 ] ; 4 uses
  %i.ain = phi i32 [ %i.vd, %._crit_edge1522.thread ], [ %i.aav, %._crit_edge1522 ] ; 2 uses
  %i.aio = phi i32 [ %i.vc, %._crit_edge1522.thread ], [ %i.aee, %._crit_edge1522 ] ; 2 uses
  %i.aip = phi i32 [ %i.vb, %._crit_edge1522.thread ], [ %i.aee, %._crit_edge1522 ] ; 2 uses
  %i.aiq = load i32, ptr %0, align 4, !tbaa !70
  %.not1456 = icmp eq i32 %i.aiq, 0
  br i1 %.not1456, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.air = load i32, ptr %3, align 4, !tbaa !70
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %i.ais = phi i32 [ %i.aim, %bb.bs ], [ %i.ail, %bb.bt ] ; 2 uses
  %.11388 = phi i32 [ %i.aim, %bb.bs ], [ %i.air, %bb.bt ]
  br i1 %.not14551518, label %.loopexit, label %.lr.ph1531

.thread1693:                                      ; preds = %._crit_edge1522
  %.1477 = call i32 @llvm.smin.i32(i32 %i.dy, i32 %i.aav)
  br label %.lr.ph1531

.lr.ph1531:                                       ; preds = %.thread1693, %bb.bu
  %i.ait = phi i32 [ %i.aav, %.thread1693 ], [ %i.ain, %bb.bu ] ; 5 uses
  %i.aiu = phi i32 [ %i.aee, %.thread1693 ], [ %i.aio, %bb.bu ] ; 11 uses
  %i.aiv = phi i32 [ %i.aee, %.thread1693 ], [ %i.aip, %bb.bu ] ; 9 uses
  %.113881695 = phi i32 [ %.1477, %.thread1693 ], [ %.11388, %bb.bu ] ; 3 uses
  %i.aiw = phi i32 [ %i.aav, %.thread1693 ], [ %i.ais, %bb.bu ] ; 5 uses
  %i.aix = phi i32 [ %i.aav, %.thread1693 ], [ %i.aim, %bb.bu ] ; 5 uses
  %i.aiy = add i32 %.013681550, -2
  %i.aiz = sext i32 %.113881695 to i64            ; 2 uses
  %i.aja = sext i32 %i.ez to i64                  ; 2 uses
  %smin1609 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.aja) ; 7 uses
  %i.ajb = sext i32 %i.ew to i64                  ; 4 uses
  %i.ajc = sext i32 %i.aiu to i64                 ; 2 uses
  %i.ajd = trunc i64 %smin1609 to i32
  %i.aje = shl nsw i32 %i.ajd, 1                  ; 2 uses
  %i.ajf = add i32 %i.ep, %i.aje
  %i.ajg = add i32 %.013681550, %i.aje
  %i.ajh = mul i64 %i.cs, %smin1609
  %scevgep1894 = getelementptr i8, ptr %scevgep1893, i64 %i.ajh ; 3 uses
  %smin1896 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.ajb)
  %smin1897 = call i64 @llvm.smin.i64(i64 %smin1896, i64 %i.aja)
  %i.aji = mul i64 %i.cu, %smin1897
  %scevgep1898 = getelementptr i8, ptr %scevgep1895, i64 %i.aji ; 3 uses
  %smax1882 = call i64 @llvm.smax.i64(i64 %i.aiz, i64 %i.ajc)
  br label %bb.bv

bb.bv:                                            ; preds = %.lr.ph1531, %._crit_edge1527
  %indvar1879 = phi i32 [ 0, %.lr.ph1531 ], [ %indvar.next1880, %._crit_edge1527 ] ; 2 uses
  %indvars.iv1610 = phi i64 [ %smin1609, %.lr.ph1531 ], [ %indvars.iv.next1611, %._crit_edge1527 ] ; 4 uses
  %indvars.iv1604 = phi i32 [ %i.fe, %.lr.ph1531 ], [ %indvars.iv.next1605, %._crit_edge1527 ] ; 4 uses
  %i.ajj = sext i32 %indvars.iv1604 to i64        ; 2 uses
  %smax1878 = call i64 @llvm.smax.i64(i64 %i.ajc, i64 %i.ajj) ; 2 uses
  %i.ajk = mul i32 %indvar1879, -2                ; 2 uses
  %i.ajl = add i32 %i.ajf, %i.ajk
  %i.ajm = sext i32 %i.ajl to i64                 ; 2 uses
  %i.ajn = add i64 %smax1878, %i.ajm
  %i.ajo = shl i64 %i.ajn, 3                      ; 2 uses
  %scevgep1881 = getelementptr i8, ptr %scevgep1877.a, i64 %i.ajo ; 3 uses
  %smax1883 = call i64 @llvm.smax.i64(i64 %smax1882, i64 %i.ajj) ; 2 uses
  %i.ajp = add i64 %smax1883, %i.ajm
  %i.ajq = shl nsw i64 %i.ajp, 3                  ; 2 uses
  %scevgep1884.a = getelementptr i8, ptr %9, i64 %i.ajq ; 3 uses
  %i.ajr = add i32 %i.ajg, %i.ajk
  %i.ajs = sext i32 %i.ajr to i64                 ; 2 uses
  %i.ajt = add i64 %smax1878, %i.ajs
  %i.aju = shl i64 %i.ajt, 3
  %scevgep1886 = getelementptr i8, ptr %scevgep1885.a, i64 %i.aju ; 3 uses
  %i.ajv = add i64 %smax1883, %i.ajs
  %i.ajw = shl nsw i64 %i.ajv, 3
  %scevgep1888 = getelementptr i8, ptr %scevgep1887.a, i64 %i.ajw ; 3 uses
  %scevgep1890 = getelementptr i8, ptr %scevgep1889, i64 %i.ajo ; 3 uses
  %scevgep1892 = getelementptr i8, ptr %scevgep1891, i64 %i.ajq ; 3 uses
  %i.ajx = trunc nsw i64 %indvars.iv1610 to i32
  %i.ajy = shl i32 %i.ajx, 1                      ; 2 uses
  %i.ajz = add i32 %i.ajy, %.013681550            ; 2 uses
  %i.aka = call i32 @llvm.smax.i32(i32 %i.aiu, i32 %i.ajz)
  %.not14681523 = icmp sgt i32 %i.aka, %.113881695
  br i1 %.not14681523, label %._crit_edge1527, label %.lr.ph1526

.lr.ph1526:                                       ; preds = %bb.bv
  %i.akb = call i32 @llvm.smax.i32(i32 %i.aiu, i32 %indvars.iv1604)
  %smax1606 = sext i32 %i.akb to i64              ; 5 uses
  %i.akc = add i32 %i.aiy, %i.ajy                 ; 2 uses
  %i.akd = mul nsw i64 %indvars.iv1610, %i.bw
  %i.ake = getelementptr [8 x i8], ptr %i.s, i64 %i.akd ; 3 uses
  %i.akf = getelementptr i8, ptr %i.ake, i64 8    ; 2 uses
  %i.akg = getelementptr i8, ptr %i.ake, i64 16   ; 3 uses
  %i.akh = getelementptr i8, ptr %i.ake, i64 24   ; 3 uses
  %i.aki = sext i32 %i.ajz to i64
  %i.akj = sext i32 %i.akc to i64
  %invariant.gep1721 = getelementptr [8 x i8], ptr %i.m, i64 %i.akj ; 2 uses
  %invariant.gep1723 = getelementptr [8 x i8], ptr %i.m, i64 %i.aki ; 2 uses
  %i.akk = sext i32 %i.akc to i64
  %invariant.gep1725 = getelementptr [8 x i8], ptr %i.m, i64 %i.akk ; 2 uses
  %i.akl = call i32 @llvm.smax.i32(i32 %.113881695, i32 %indvars.iv1604)
  %i.akm = sext i32 %i.akl to i64
  %i.akn = add nsw i64 %i.akm, 1
  %i.ako = sub nsw i64 %i.akn, %smax1606          ; 3 uses
  %min.iters.check1924 = icmp ugt i64 %i.ako, 5
  %or.cond2201 = select i1 %min.iters.check1924, i1 %ident.check.not, i1 false
  br i1 %or.cond2201, label %vector.memcheck1876, label %scalar.ph1923.preheader

vector.memcheck1876:                              ; preds = %.lr.ph1526
  %bound01899 = icmp ult ptr %scevgep1881, %scevgep1888
  %bound11900 = icmp ult ptr %scevgep1886, %scevgep1884.a
  %found.conflict1901 = and i1 %bound01899, %bound11900
  %bound01902 = icmp ult ptr %scevgep1881, %scevgep1892
  %bound11903 = icmp ult ptr %scevgep1890, %scevgep1884.a
  %found.conflict1904 = and i1 %bound01902, %bound11903
  %conflict.rdx1905 = or i1 %found.conflict1901, %found.conflict1904
  %bound01906 = icmp ult ptr %scevgep1881, %scevgep1898
  %bound11907 = icmp ult ptr %scevgep1894, %scevgep1884.a
  %found.conflict1908 = and i1 %bound01906, %bound11907
  %i.akp = or i1 %found.conflict1908, %stride.check1909
  %conflict.rdx1910.a = or i1 %conflict.rdx1905, %i.akp
  %bound01911.a = icmp ult ptr %scevgep1886, %scevgep1892
  %bound11912.a = icmp ult ptr %scevgep1890, %scevgep1888
  %found.conflict1913.a = and i1 %bound01911.a, %bound11912.a
  %conflict.rdx1914.a = or i1 %conflict.rdx1910.a, %found.conflict1913.a
  %bound01915 = icmp ult ptr %scevgep1886, %scevgep1898
  %bound11916 = icmp ult ptr %scevgep1894, %scevgep1888
  %found.conflict1917 = and i1 %bound01915, %bound11916
  %conflict.rdx1918 = or i1 %conflict.rdx1914.a, %found.conflict1917
  %bound01919 = icmp ult ptr %scevgep1890, %scevgep1898
  %bound11920 = icmp ult ptr %scevgep1894, %scevgep1892
  %found.conflict1921 = and i1 %bound01919, %bound11920
  %conflict.rdx1922 = or i1 %conflict.rdx1918, %found.conflict1921
  br i1 %conflict.rdx1922, label %scalar.ph1923.preheader, label %vector.ph1925

vector.ph1925:                                    ; preds = %vector.memcheck1876
  %n.vec1926 = and i64 %i.ako, -2                 ; 3 uses
  %i.akq = add nsw i64 %n.vec1926, %smax1606
  %i.akr = load double, ptr %i.akf, align 8, !tbaa !72, !alias.scope !98
  %broadcast.splatinsert1936 = insertelement <2 x double> poison, double %i.akr, i64 0
  %broadcast.splat1937 = shufflevector <2 x double> %broadcast.splatinsert1936, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aks = load double, ptr %i.akg, align 8, !tbaa !72, !alias.scope !98 ; 2 uses
  %broadcast.splatinsert1931 = insertelement <2 x double> poison, double %i.aks, i64 0
  %broadcast.splat1932 = shufflevector <2 x double> %broadcast.splatinsert1931, <2 x double> poison, <2 x i32> zeroinitializer
  %i.akt = load double, ptr %i.akh, align 8, !tbaa !72, !alias.scope !98 ; 2 uses
  %broadcast.splatinsert1934 = insertelement <2 x double> poison, double %i.akt, i64 0
  %broadcast.splat1935 = shufflevector <2 x double> %broadcast.splatinsert1934, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1939 = insertelement <2 x double> poison, double %i.aks, i64 0
  %broadcast.splat1940 = shufflevector <2 x double> %broadcast.splatinsert1939, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1942 = insertelement <2 x double> poison, double %i.akt, i64 0
  %broadcast.splat1943 = shufflevector <2 x double> %broadcast.splatinsert1942, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1927

vector.body1927:                                  ; preds = %vector.body1927, %vector.ph1925
  %index1928 = phi i64 [ 0, %vector.ph1925 ], [ %index.next1944, %vector.body1927 ] ; 2 uses
  %i.aku = add i64 %index1928, %smax1606          ; 3 uses
  %i.akv = getelementptr [8 x i8], ptr %invariant.gep1721, i64 %i.aku
  %i.akw = getelementptr i8, ptr %i.akv, i64 8    ; 2 uses
  %wide.load1929 = load <2 x double>, ptr %i.akw, align 8, !tbaa !72, !alias.scope !99, !noalias !100 ; 2 uses
  %i.akx = getelementptr [8 x i8], ptr %invariant.gep1723, i64 %i.aku ; 3 uses
  %wide.load1930.a = load <2 x double>, ptr %i.akx, align 8, !tbaa !72, !alias.scope !101, !noalias !102
  %i.aky = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1932, <2 x double> %wide.load1930.a, <2 x double> %wide.load1929)
  %i.akz = getelementptr [8 x i8], ptr %invariant.gep1725, i64 %i.aku
  %i.ala = getelementptr i8, ptr %i.akz, i64 24   ; 3 uses
  %wide.load1933 = load <2 x double>, ptr %i.ala, align 8, !tbaa !72, !alias.scope !103, !noalias !98
  %i.alb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1935, <2 x double> %wide.load1933, <2 x double> %i.aky)
  %i.alc = fmul <2 x double> %broadcast.splat1937, %i.alb ; 2 uses
  %i.ald = fsub <2 x double> %wide.load1929, %i.alc
  store <2 x double> %i.ald, ptr %i.akw, align 8, !tbaa !72, !alias.scope !99, !noalias !100
  %wide.load1938 = load <2 x double>, ptr %i.akx, align 8, !tbaa !72, !alias.scope !101, !noalias !102
  %i.ale = fneg <2 x double> %i.alc               ; 2 uses
  %i.alf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ale, <2 x double> %broadcast.splat1940, <2 x double> %wide.load1938)
  store <2 x double> %i.alf, ptr %i.akx, align 8, !tbaa !72, !alias.scope !101, !noalias !102
  %wide.load1941 = load <2 x double>, ptr %i.ala, align 8, !tbaa !72, !alias.scope !103, !noalias !98
  %i.alg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ale, <2 x double> %broadcast.splat1943, <2 x double> %wide.load1941)
  store <2 x double> %i.alg, ptr %i.ala, align 8, !tbaa !72, !alias.scope !103, !noalias !98
  %index.next1944 = add nuw i64 %index1928, 2     ; 2 uses
  %i.alh = icmp eq i64 %index.next1944, %n.vec1926
  br i1 %i.alh, label %middle.block1945, label %vector.body1927, !llvm.loop !46

middle.block1945:                                 ; preds = %vector.body1927
  %cmp.n1946 = icmp eq i64 %i.ako, %n.vec1926
  br i1 %cmp.n1946, label %._crit_edge1527, label %scalar.ph1923.preheader

scalar.ph1923.preheader:                          ; preds = %vector.memcheck1876, %.lr.ph1526, %middle.block1945
  %indvars.iv1607.ph = phi i64 [ %smax1606, %vector.memcheck1876 ], [ %smax1606, %.lr.ph1526 ], [ %i.akq, %middle.block1945 ]
  br label %scalar.ph1923

scalar.ph1923:                                    ; preds = %scalar.ph1923.preheader, %scalar.ph1923
  %indvars.iv1607 = phi i64 [ %indvars.iv.next1608, %scalar.ph1923 ], [ %indvars.iv1607.ph, %scalar.ph1923.preheader ] ; 3 uses
  %i.ali = load double, ptr %i.akf, align 8, !tbaa !72
  %i.alj = mul nsw i64 %indvars.iv1607, %i.bt     ; 3 uses
  %gep1722 = getelementptr [8 x i8], ptr %invariant.gep1721, i64 %i.alj
  %i.alk = getelementptr i8, ptr %gep1722, i64 8  ; 2 uses
  %i.all = load double, ptr %i.alk, align 8, !tbaa !72 ; 2 uses
  %i.alm = load double, ptr %i.akg, align 8, !tbaa !72
  %gep1724 = getelementptr [8 x i8], ptr %invariant.gep1723, i64 %i.alj ; 3 uses
  %i.aln = load double, ptr %gep1724, align 8, !tbaa !72
  %i.alo = call double @llvm.fmuladd.f64(double %i.alm, double %i.aln, double %i.all)
  %i.alp = load double, ptr %i.akh, align 8, !tbaa !72
  %gep1726 = getelementptr [8 x i8], ptr %invariant.gep1725, i64 %i.alj
  %i.alq = getelementptr i8, ptr %gep1726, i64 24 ; 3 uses
  %i.alr = load double, ptr %i.alq, align 8, !tbaa !72
  %i.als = call double @llvm.fmuladd.f64(double %i.alp, double %i.alr, double %i.alo)
  %i.alt = fmul double %i.ali, %i.als             ; 2 uses
  %i.alu = fsub double %i.all, %i.alt
  store double %i.alu, ptr %i.alk, align 8, !tbaa !72
  %i.alv = load double, ptr %i.akg, align 8, !tbaa !72
  %i.alw = load double, ptr %gep1724, align 8, !tbaa !72
  %i.alx = fneg double %i.alt                     ; 2 uses
  %i.aly = call double @llvm.fmuladd.f64(double %i.alx, double %i.alv, double %i.alw)
  store double %i.aly, ptr %gep1724, align 8, !tbaa !72
  %i.alz = load double, ptr %i.akh, align 8, !tbaa !72
  %i.ama = load double, ptr %i.alq, align 8, !tbaa !72
  %i.amb = call double @llvm.fmuladd.f64(double %i.alx, double %i.alz, double %i.ama)
  store double %i.amb, ptr %i.alq, align 8, !tbaa !72
  %indvars.iv.next1608 = add nsw i64 %indvars.iv1607, 1
  %.not1468.not = icmp slt i64 %indvars.iv1607, %i.aiz
  br i1 %.not1468.not, label %scalar.ph1923, label %._crit_edge1527, !llvm.loop !47

._crit_edge1527:                                  ; preds = %scalar.ph1923, %middle.block1945, %bb.bv
  %indvars.iv.next1611 = add nsw i64 %indvars.iv1610, -1
  %.not1458.not = icmp sgt i64 %indvars.iv1610, %i.ajb
  %indvars.iv.next1605 = add i32 %indvars.iv1604, -2
  %indvar.next1880 = add i32 %indvar1879, 1
  br i1 %.not1458.not, label %bb.bv, label %._crit_edge1532, !llvm.loop !48

._crit_edge1532:                                  ; preds = %._crit_edge1527
  br i1 %i.bn, label %.preheader, label %bb.bx

.preheader:                                       ; preds = %._crit_edge1532
  br i1 %.not14551518, label %.loopexit, label %.lr.ph1548

.lr.ph1548:                                       ; preds = %.preheader
  %i.amc = add i32 %i.ee, %.013681550
  %i.amd = sub nsw i32 %i.aiv, %.013691572
  %i.ame = load i32, ptr %i.h, align 4, !tbaa !70
  %.reass = add i32 %i.ef, %i.fe
  %i.amf = call i32 @llvm.smin.i32(i32 %i.ame, i32 %.reass) ; 2 uses
  %i.amg = add i32 %i.fd, -1
  %i.amh = add i32 %indvars.iv1594, %i.aiv        ; 2 uses
  %i.ami = zext i32 %i.amf to i64                 ; 3 uses
  %i.amj = sext i32 %i.ez to i64
  %smin1627 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.amj)
  %i.amk = sext i32 %i.ew to i64
  %i.aml = trunc i64 %smin1609 to i32
  %i.amm = shl nsw i32 %i.aml, 1                  ; 3 uses
  %i.amn = add i32 %i.er, %i.amm
  %i.amo = mul i32 %i.t, %i.amn
  %i.amp = add i32 %indvar, %i.amm
  %i.amq = mul i32 %i.t, %i.amp
  %i.amr = add i32 %i.es, %i.amm
  %i.ams = mul i32 %i.t, %i.amr
  %i.amt = mul i64 %i.cb, %smin1609
  %scevgep1766 = getelementptr i8, ptr %scevgep1765, i64 %i.amt ; 3 uses
  %i.amu = mul i64 %i.cd, %i.ajb
  %scevgep1768 = getelementptr i8, ptr %scevgep1767, i64 %i.amu ; 3 uses
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph1548, %._crit_edge1545
  %indvar1750 = phi i32 [ 0, %.lr.ph1548 ], [ %indvar.next1751, %._crit_edge1545 ] ; 2 uses
  %indvars.iv1628 = phi i64 [ %smin1627, %.lr.ph1548 ], [ %indvars.iv.next1629, %._crit_edge1545 ] ; 4 uses
  %indvars.iv1620 = phi i32 [ %i.amg, %.lr.ph1548 ], [ %indvars.iv.next1621, %._crit_edge1545 ] ; 3 uses
  %i.amv = mul i32 %i.by, %indvar1750             ; 3 uses
  %i.amw = add i32 %i.amo, %i.amv
  %i.amx = sext i32 %i.amw to i64                 ; 2 uses
  %smax1752 = call i32 @llvm.smax.i32(i32 %indvars.iv1620, i32 %i.amh)
  %smax1753 = call i32 @llvm.smax.i32(i32 %smax1752, i32 1)
  %i.amy = zext nneg i32 %smax1753 to i64         ; 4 uses
  %i.amz = add nsw i64 %i.amx, %i.amy
  %i.ana = shl nsw i64 %i.amz, 3
  %scevgep1754 = getelementptr i8, ptr %scevgep, i64 %i.ana ; 3 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.ami, i64 %i.amy) ; 3 uses
  %i.anb = add nsw i64 %umax, %i.u
  %i.anc = add nsw i64 %i.anb, %i.amx
  %i.and = shl nsw i64 %i.anc, 3
  %scevgep1756 = getelementptr i8, ptr %scevgep1755, i64 %i.and ; 3 uses
  %i.ane = add i32 %i.amq, %i.amv
  %i.anf = sext i32 %i.ane to i64                 ; 2 uses
  %i.ang = add nsw i64 %i.anf, %i.amy
  %i.anh = shl nsw i64 %i.ang, 3
  %scevgep1758 = getelementptr i8, ptr %scevgep1757, i64 %i.anh ; 3 uses
  %i.ani = add nsw i64 %umax, %i.u
  %i.anj = add nsw i64 %i.ani, %i.anf
  %i.ank = shl nsw i64 %i.anj, 3
  %scevgep1760 = getelementptr i8, ptr %scevgep1759, i64 %i.ank ; 3 uses
  %i.anl = add i32 %i.ams, %i.amv
  %i.anm = sext i32 %i.anl to i64                 ; 2 uses
  %i.ann = add nsw i64 %i.anm, %i.amy
  %i.ano = shl nsw i64 %i.ann, 3
  %scevgep1762 = getelementptr i8, ptr %scevgep1761, i64 %i.ano ; 3 uses
  %i.anp = add nsw i64 %umax, %i.u
  %i.anq = add nsw i64 %i.anp, %i.anm
  %i.anr = shl nsw i64 %i.anq, 3
  %scevgep1764 = getelementptr i8, ptr %scevgep1763, i64 %i.anr ; 3 uses
  %i.ans = trunc nsw i64 %indvars.iv1628 to i32
  %i.ant = shl i32 %i.ans, 1                      ; 2 uses
  %i.anu = add i32 %i.ant, -1
  %i.anv = call i32 @llvm.smax.i32(i32 %i.amd, i32 %i.anu)
  %i.anw = call i32 @llvm.smax.i32(i32 %i.anv, i32 1)
  %.not14661541 = icmp sgt i32 %i.anw, %i.amf
  br i1 %.not14661541, label %._crit_edge1545, label %.lr.ph1544

.lr.ph1544:                                       ; preds = %bb.bw
  %smax1622 = call i32 @llvm.smax.i32(i32 %indvars.iv1620, i32 %i.amh)
  %smax1623 = call i32 @llvm.smax.i32(i32 %smax1622, i32 1)
  %i.anx = zext nneg i32 %smax1623 to i64         ; 6 uses
  %i.any = add i32 %i.amc, %i.ant                 ; 3 uses
  %i.anz = mul nsw i64 %indvars.iv1628, %i.bw
  %i.aoa = getelementptr [8 x i8], ptr %i.s, i64 %i.anz ; 3 uses
  %i.aob = getelementptr i8, ptr %i.aoa, i64 8    ; 2 uses
  %i.aoc = add nsw i32 %i.any, 1
  %i.aod = mul nsw i32 %i.aoc, %i.t
  %i.aoe = getelementptr i8, ptr %i.aoa, i64 16   ; 3 uses
  %i.aof = add nsw i32 %i.any, 2
  %i.aog = mul nsw i32 %i.aof, %i.t
  %i.aoh = getelementptr i8, ptr %i.aoa, i64 24   ; 3 uses
  %i.aoi = add nsw i32 %i.any, 3
  %i.aoj = mul nsw i32 %i.aoi, %i.t
  %i.aok = sext i32 %i.aod to i64
  %i.aol = sext i32 %i.aog to i64
  %i.aom = sext i32 %i.aoj to i64
  %invariant.gep1733 = getelementptr [8 x i8], ptr %i.v, i64 %i.aok ; 2 uses
  %invariant.gep1735 = getelementptr [8 x i8], ptr %i.v, i64 %i.aol ; 2 uses
  %invariant.gep1737 = getelementptr [8 x i8], ptr %i.v, i64 %i.aom ; 2 uses
  %i.aon = call i64 @llvm.umax.i64(i64 %i.ami, i64 %i.anx)
  %i.aoo = add nuw nsw i64 %i.aon, 1
  %i.aop = sub nsw i64 %i.aoo, %i.anx             ; 3 uses
  %min.iters.check = icmp ult i64 %i.aop, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1544
  %bound0 = icmp ult ptr %scevgep1754, %scevgep1760
  %bound1 = icmp ult ptr %scevgep1758, %scevgep1756
  %found.conflict = and i1 %bound0, %bound1
  %bound01769 = icmp ult ptr %scevgep1754, %scevgep1764
  %bound11770 = icmp ult ptr %scevgep1762, %scevgep1756
  %found.conflict1771 = and i1 %bound01769, %bound11770
  %conflict.rdx = or i1 %found.conflict, %found.conflict1771
  %bound01772 = icmp ult ptr %scevgep1754, %scevgep1768
  %bound11773 = icmp ult ptr %scevgep1766, %scevgep1756
  %found.conflict1774 = and i1 %bound01772, %bound11773
  %i.aoq = or i1 %found.conflict1774, %stride.check
  %conflict.rdx1775 = or i1 %conflict.rdx, %i.aoq
  %bound01776 = icmp ult ptr %scevgep1758, %scevgep1764
  %bound11777 = icmp ult ptr %scevgep1762, %scevgep1760
  %found.conflict1778 = and i1 %bound01776, %bound11777
  %conflict.rdx1779 = or i1 %conflict.rdx1775, %found.conflict1778
  %bound01780 = icmp ult ptr %scevgep1758, %scevgep1768
  %bound11781 = icmp ult ptr %scevgep1766, %scevgep1760
  %found.conflict1782 = and i1 %bound01780, %bound11781
  %conflict.rdx1783 = or i1 %conflict.rdx1779, %found.conflict1782
  %bound01784 = icmp ult ptr %scevgep1762, %scevgep1768
  %bound11785 = icmp ult ptr %scevgep1766, %scevgep1764
  %found.conflict1786 = and i1 %bound01784, %bound11785
  %conflict.rdx1787 = or i1 %conflict.rdx1783, %found.conflict1786
  br i1 %conflict.rdx1787, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aop, -4                     ; 3 uses
  %i.aor = add nsw i64 %n.vec, %i.anx
  %i.aos = load double, ptr %i.aob, align 8, !tbaa !72, !alias.scope !104
  %broadcast.splatinsert1792 = insertelement <4 x double> poison, double %i.aos, i64 0
  %broadcast.splat1793 = shufflevector <4 x double> %broadcast.splatinsert1792, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aot = load double, ptr %i.aoe, align 8, !tbaa !72, !alias.scope !104 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.aot, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aou = load double, ptr %i.aoh, align 8, !tbaa !72, !alias.scope !104 ; 2 uses
  %broadcast.splatinsert1790 = insertelement <4 x double> poison, double %i.aou, i64 0
  %broadcast.splat1791 = shufflevector <4 x double> %broadcast.splatinsert1790, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1795 = insertelement <4 x double> poison, double %i.aot, i64 0
  %broadcast.splat1796 = shufflevector <4 x double> %broadcast.splatinsert1795, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1798 = insertelement <4 x double> poison, double %i.aou, i64 0
  %broadcast.splat1799 = shufflevector <4 x double> %broadcast.splatinsert1798, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aov = add nuw i64 %index, %i.anx             ; 3 uses
  %i.aow = getelementptr [8 x i8], ptr %invariant.gep1733, i64 %i.aov ; 2 uses
  %wide.load = load <4 x double>, ptr %i.aow, align 8, !tbaa !72, !alias.scope !105, !noalias !106 ; 2 uses
  %i.aox = getelementptr [8 x i8], ptr %invariant.gep1735, i64 %i.aov ; 3 uses
  %wide.load1788 = load <4 x double>, ptr %i.aox, align 8, !tbaa !72, !alias.scope !107, !noalias !108
  %i.aoy = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load1788, <4 x double> %wide.load)
  %i.aoz = getelementptr [8 x i8], ptr %invariant.gep1737, i64 %i.aov ; 3 uses
  %wide.load1789 = load <4 x double>, ptr %i.aoz, align 8, !tbaa !72, !alias.scope !109, !noalias !104
  %i.apa = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1791, <4 x double> %wide.load1789, <4 x double> %i.aoy)
  %i.apb = fmul <4 x double> %broadcast.splat1793, %i.apa ; 2 uses
  %i.apc = fsub <4 x double> %wide.load, %i.apb
  store <4 x double> %i.apc, ptr %i.aow, align 8, !tbaa !72, !alias.scope !105, !noalias !106
  %wide.load1794 = load <4 x double>, ptr %i.aox, align 8, !tbaa !72, !alias.scope !107, !noalias !108
  %i.apd = fneg <4 x double> %i.apb               ; 2 uses
  %i.ape = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.apd, <4 x double> %broadcast.splat1796, <4 x double> %wide.load1794)
  store <4 x double> %i.ape, ptr %i.aox, align 8, !tbaa !72, !alias.scope !107, !noalias !108
  %wide.load1797 = load <4 x double>, ptr %i.aoz, align 8, !tbaa !72, !alias.scope !109, !noalias !104
  %i.apf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.apd, <4 x double> %broadcast.splat1799, <4 x double> %wide.load1797)
  store <4 x double> %i.apf, ptr %i.aoz, align 8, !tbaa !72, !alias.scope !109, !noalias !104
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.apg = icmp eq i64 %index.next, %n.vec
  br i1 %i.apg, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aop, %n.vec
  br i1 %cmp.n, label %._crit_edge1545, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph1544, %middle.block
  %indvars.iv1624.ph = phi i64 [ %i.anx, %vector.memcheck ], [ %i.anx, %.lr.ph1544 ], [ %i.aor, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv1624 = phi i64 [ %indvars.iv.next1625, %scalar.ph ], [ %indvars.iv1624.ph, %scalar.ph.preheader ] ; 5 uses
  %i.aph = load double, ptr %i.aob, align 8, !tbaa !72
  %gep1734 = getelementptr [8 x i8], ptr %invariant.gep1733, i64 %indvars.iv1624 ; 2 uses
  %i.api = load double, ptr %gep1734, align 8, !tbaa !72 ; 2 uses
  %i.apj = load double, ptr %i.aoe, align 8, !tbaa !72
  %gep1736 = getelementptr [8 x i8], ptr %invariant.gep1735, i64 %indvars.iv1624 ; 3 uses
  %i.apk = load double, ptr %gep1736, align 8, !tbaa !72
  %i.apl = call double @llvm.fmuladd.f64(double %i.apj, double %i.apk, double %i.api)
  %i.apm = load double, ptr %i.aoh, align 8, !tbaa !72
  %gep1738 = getelementptr [8 x i8], ptr %invariant.gep1737, i64 %indvars.iv1624 ; 3 uses
  %i.apn = load double, ptr %gep1738, align 8, !tbaa !72
  %i.apo = call double @llvm.fmuladd.f64(double %i.apm, double %i.apn, double %i.apl)
  %i.app = fmul double %i.aph, %i.apo             ; 2 uses
  %i.apq = fsub double %i.api, %i.app
  store double %i.apq, ptr %gep1734, align 8, !tbaa !72
  %i.apr = load double, ptr %i.aoe, align 8, !tbaa !72
  %i.aps = load double, ptr %gep1736, align 8, !tbaa !72
  %i.apt = fneg double %i.app                     ; 2 uses
  %i.apu = call double @llvm.fmuladd.f64(double %i.apt, double %i.apr, double %i.aps)
  store double %i.apu, ptr %gep1736, align 8, !tbaa !72
  %i.apv = load double, ptr %i.aoh, align 8, !tbaa !72
  %i.apw = load double, ptr %gep1738, align 8, !tbaa !72
  %i.apx = call double @llvm.fmuladd.f64(double %i.apt, double %i.apv, double %i.apw)
  store double %i.apx, ptr %gep1738, align 8, !tbaa !72
  %indvars.iv.next1625 = add nuw nsw i64 %indvars.iv1624, 1
  %.not1466.not = icmp samesign ult i64 %indvars.iv1624, %i.ami
  br i1 %.not1466.not, label %scalar.ph, label %._crit_edge1545, !llvm.loop !55

._crit_edge1545:                                  ; preds = %scalar.ph, %middle.block, %bb.bw
  %indvars.iv.next1629 = add nsw i64 %indvars.iv1628, -1
  %.not1462.not = icmp sgt i64 %indvars.iv1628, %i.amk
  %indvars.iv.next1621 = add i32 %indvars.iv1620, -2
  %indvar.next1751 = add i32 %indvar1750, 1
  br i1 %.not1462.not, label %bb.bw, label %.loopexit, !llvm.loop !56

bb.bx:                                            ; preds = %._crit_edge1532
  %i.apy = load i32, ptr %1, align 4, !tbaa !70
  %.not1459 = icmp eq i32 %i.apy, 0
  %or.cond = or i1 %.not1459, %.not14551518
  br i1 %or.cond, label %.loopexit, label %.lr.ph1540

.lr.ph1540:                                       ; preds = %bb.bx
  %i.apz = add i32 %.013681550, -2
  %i.aqa = load i32, ptr %12, align 4, !tbaa !70  ; 6 uses
  %i.aqb = load i32, ptr %11, align 4, !tbaa !70  ; 4 uses
  %.not14611533 = icmp sgt i32 %i.aqb, %i.aqa
  br i1 %.not14611533, label %.loopexit, label %.lr.ph1536.preheader

.lr.ph1536.preheader:                             ; preds = %.lr.ph1540
  %i.aqc = sext i32 %i.aqb to i64                 ; 6 uses
  %i.aqd = add i32 %i.aqa, 1
  %i.aqe = sext i32 %i.ez to i64
  %smin1617 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.aqe)
  %i.aqf = sext i32 %i.ew to i64
  %i.aqg = shl nsw i64 %i.aqc, 3                  ; 3 uses
  %scevgep1802 = getelementptr i8, ptr %scevgep1801, i64 %i.aqg
  %i.aqh = trunc i64 %smin1609 to i32
  %i.aqi = shl nsw i32 %i.aqh, 1                  ; 3 uses
  %i.aqj = add i32 %i.eq, %i.aqi
  %i.aqk = mul i32 %i.n, %i.aqj
  %i.aql = sub i32 %i.aqa, %i.aqb
  %i.aqm = zext i32 %i.aql to i64
  %i.aqn = add nsw i64 %i.aqc, %i.aqm
  %i.aqo = shl nsw i64 %i.aqn, 3                  ; 3 uses
  %scevgep1809.a = getelementptr i8, ptr %scevgep1808.a, i64 %i.aqo
  %scevgep1812.a = getelementptr i8, ptr %scevgep1811.a, i64 %i.aqg
  %i.aqp = add i32 %.013681550, %i.aqi
  %i.aqq = mul i32 %i.n, %i.aqp
  %scevgep1815.a = getelementptr i8, ptr %scevgep1814.a, i64 %i.aqo
  %scevgep1818.a = getelementptr i8, ptr %scevgep1817.a, i64 %i.aqg
  %i.aqr = add i32 %indvars.iv1586, %i.aqi
  %i.aqs = mul i32 %i.n, %i.aqr
  %scevgep1821 = getelementptr i8, ptr %scevgep1820.a, i64 %i.aqo
  %i.aqt = mul i64 %i.ck, %smin1609
  %scevgep1824 = getelementptr i8, ptr %scevgep1823, i64 %i.aqt ; 3 uses
  %i.aqu = mul i64 %i.cm, %i.ajb
  %scevgep1826 = getelementptr i8, ptr %scevgep1825, i64 %i.aqu ; 3 uses
  %i.aqv = sub i32 %i.aqa, %i.aqb                 ; 2 uses
  %i.aqw = zext i32 %i.aqv to i64
  %i.aqx = add nuw nsw i64 %i.aqw, 1              ; 2 uses
  %min.iters.check1852 = icmp ult i32 %i.aqv, 7
  %n.vec1854 = and i64 %i.aqx, 8589934588         ; 3 uses
  %i.aqy = add nsw i64 %n.vec1854, %i.aqc
  %cmp.n1874 = icmp eq i64 %i.aqx, %n.vec1854
  br label %.lr.ph1536

.lr.ph1536:                                       ; preds = %.lr.ph1536.preheader, %._crit_edge1537
  %indvar1805 = phi i32 [ 0, %.lr.ph1536.preheader ], [ %indvar.next1806, %._crit_edge1537 ] ; 2 uses
  %indvars.iv1618 = phi i64 [ %smin1617, %.lr.ph1536.preheader ], [ %indvars.iv.next1619, %._crit_edge1537 ] ; 4 uses
  %i.aqz = trunc nsw i64 %indvars.iv1618 to i32
  %i.ara = shl i32 %i.aqz, 1                      ; 2 uses
  %i.arb = add i32 %i.apz, %i.ara                 ; 2 uses
  %i.arc = mul nsw i64 %indvars.iv1618, %i.bw
  %i.ard = getelementptr [8 x i8], ptr %i.s, i64 %i.arc ; 3 uses
  %i.are = getelementptr i8, ptr %i.ard, i64 8    ; 4 uses
  %i.arf = add nsw i32 %i.arb, 1
  %i.arg = mul nsw i32 %i.arf, %i.n
  %i.arh = getelementptr i8, ptr %i.ard, i64 16   ; 7 uses
  %i.ari = add i32 %i.ara, %.013681550
  %i.arj = mul nsw i32 %i.ari, %i.n
  %i.ark = getelementptr i8, ptr %i.ard, i64 24   ; 7 uses
  %i.arl = add nsw i32 %i.arb, 3
  %i.arm = mul nsw i32 %i.arl, %i.n
  %i.arn = sext i32 %i.arg to i64
  %i.aro = sext i32 %i.arj to i64
  %i.arp = sext i32 %i.arm to i64
  %invariant.gep1727 = getelementptr [8 x i8], ptr %i.p, i64 %i.arn ; 4 uses
  %invariant.gep1729 = getelementptr [8 x i8], ptr %i.p, i64 %i.aro ; 4 uses
  %invariant.gep1731 = getelementptr [8 x i8], ptr %i.p, i64 %i.arp ; 4 uses
  br i1 %min.iters.check1852, label %scalar.ph1851.preheader, label %vector.memcheck1800

vector.memcheck1800:                              ; preds = %.lr.ph1536
  %i.arq = mul i32 %i.cg, %indvar1805             ; 3 uses
  %i.arr = add i32 %i.aqs, %i.arq
  %i.ars = sext i32 %i.arr to i64
  %i.art = shl nsw i64 %i.ars, 3                  ; 2 uses
  %scevgep1822 = getelementptr i8, ptr %scevgep1821, i64 %i.art ; 3 uses
  %scevgep1819 = getelementptr i8, ptr %scevgep1818.a, i64 %i.art ; 3 uses
  %i.aru = add i32 %i.aqq, %i.arq
  %i.arv = sext i32 %i.aru to i64
  %i.arw = shl nsw i64 %i.arv, 3                  ; 2 uses
  %scevgep1816 = getelementptr i8, ptr %scevgep1815.a, i64 %i.arw ; 3 uses
  %scevgep1813 = getelementptr i8, ptr %scevgep1812.a, i64 %i.arw ; 3 uses
  %i.arx = add i32 %i.aqk, %i.arq
  %i.ary = sext i32 %i.arx to i64
  %i.arz = shl nsw i64 %i.ary, 3                  ; 2 uses
  %scevgep1810 = getelementptr i8, ptr %scevgep1809.a, i64 %i.arz ; 3 uses
  %scevgep1807 = getelementptr i8, ptr %scevgep1802, i64 %i.arz ; 3 uses
  %bound01827 = icmp ult ptr %scevgep1807, %scevgep1816
  %bound11828 = icmp ult ptr %scevgep1813, %scevgep1810
  %found.conflict1829 = and i1 %bound01827, %bound11828
  %bound01830.a = icmp ult ptr %scevgep1807, %scevgep1822
  %bound11831.a = icmp ult ptr %scevgep1819, %scevgep1810
  %found.conflict1832.a = and i1 %bound01830.a, %bound11831.a
  %conflict.rdx1833 = or i1 %found.conflict1829, %found.conflict1832.a
  %bound01834 = icmp ult ptr %scevgep1807, %scevgep1826
  %bound11835 = icmp ult ptr %scevgep1824, %scevgep1810
  %found.conflict1836 = and i1 %bound01834, %bound11835
  %i.asa = or i1 %found.conflict1836, %stride.check1837
  %conflict.rdx1838.a = or i1 %conflict.rdx1833, %i.asa
  %bound01839.a = icmp ult ptr %scevgep1813, %scevgep1822
  %bound11840.a = icmp ult ptr %scevgep1819, %scevgep1816
  %found.conflict1841.a = and i1 %bound01839.a, %bound11840.a
  %conflict.rdx1842.a = or i1 %conflict.rdx1838.a, %found.conflict1841.a
  %bound01843.a = icmp ult ptr %scevgep1813, %scevgep1826
  %bound11844.a = icmp ult ptr %scevgep1824, %scevgep1816
  %found.conflict1845.a = and i1 %bound01843.a, %bound11844.a
  %conflict.rdx1846.a = or i1 %conflict.rdx1842.a, %found.conflict1845.a
  %bound01847 = icmp ult ptr %scevgep1819, %scevgep1826
  %bound11848 = icmp ult ptr %scevgep1824, %scevgep1822
  %found.conflict1849 = and i1 %bound01847, %bound11848
  %conflict.rdx1850 = or i1 %conflict.rdx1846.a, %found.conflict1849
  br i1 %conflict.rdx1850, label %scalar.ph1851.preheader, label %vector.ph1853

vector.ph1853:                                    ; preds = %vector.memcheck1800
  %i.asb = load double, ptr %i.are, align 8, !tbaa !72, !alias.scope !110
  %broadcast.splatinsert1864 = insertelement <4 x double> poison, double %i.asb, i64 0
  %broadcast.splat1865 = shufflevector <4 x double> %broadcast.splatinsert1864, <4 x double> poison, <4 x i32> zeroinitializer
  %i.asc = load double, ptr %i.arh, align 8, !tbaa !72, !alias.scope !110 ; 2 uses
  %broadcast.splatinsert1859 = insertelement <4 x double> poison, double %i.asc, i64 0
  %broadcast.splat1860 = shufflevector <4 x double> %broadcast.splatinsert1859, <4 x double> poison, <4 x i32> zeroinitializer
  %i.asd = load double, ptr %i.ark, align 8, !tbaa !72, !alias.scope !110 ; 2 uses
  %broadcast.splatinsert1862 = insertelement <4 x double> poison, double %i.asd, i64 0
  %broadcast.splat1863 = shufflevector <4 x double> %broadcast.splatinsert1862, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1867 = insertelement <4 x double> poison, double %i.asc, i64 0
  %broadcast.splat1868 = shufflevector <4 x double> %broadcast.splatinsert1867, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1870 = insertelement <4 x double> poison, double %i.asd, i64 0
  %broadcast.splat1871 = shufflevector <4 x double> %broadcast.splatinsert1870, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1855

vector.body1855:                                  ; preds = %vector.body1855, %vector.ph1853
  %index1856 = phi i64 [ 0, %vector.ph1853 ], [ %index.next1872, %vector.body1855 ] ; 2 uses
  %i.ase = add i64 %index1856, %i.aqc             ; 3 uses
  %i.asf = getelementptr [8 x i8], ptr %invariant.gep1727, i64 %i.ase ; 2 uses
  %wide.load1857.a = load <4 x double>, ptr %i.asf, align 8, !tbaa !72, !alias.scope !111, !noalias !112 ; 2 uses
  %i.asg = getelementptr [8 x i8], ptr %invariant.gep1729, i64 %i.ase ; 3 uses
  %wide.load1858 = load <4 x double>, ptr %i.asg, align 8, !tbaa !72, !alias.scope !113, !noalias !114
  %i.ash = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1860, <4 x double> %wide.load1858, <4 x double> %wide.load1857.a)
  %i.asi = getelementptr [8 x i8], ptr %invariant.gep1731, i64 %i.ase ; 3 uses
  %wide.load1861 = load <4 x double>, ptr %i.asi, align 8, !tbaa !72, !alias.scope !115, !noalias !110
  %i.asj = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1863, <4 x double> %wide.load1861, <4 x double> %i.ash)
  %i.ask = fmul <4 x double> %broadcast.splat1865, %i.asj ; 2 uses
  %i.asl = fsub <4 x double> %wide.load1857.a, %i.ask
  store <4 x double> %i.asl, ptr %i.asf, align 8, !tbaa !72, !alias.scope !111, !noalias !112
  %wide.load1866 = load <4 x double>, ptr %i.asg, align 8, !tbaa !72, !alias.scope !113, !noalias !114
  %i.asm = fneg <4 x double> %i.ask               ; 2 uses
  %i.asn = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.asm, <4 x double> %broadcast.splat1868, <4 x double> %wide.load1866)
  store <4 x double> %i.asn, ptr %i.asg, align 8, !tbaa !72, !alias.scope !113, !noalias !114
  %wide.load1869 = load <4 x double>, ptr %i.asi, align 8, !tbaa !72, !alias.scope !115, !noalias !110
  %i.aso = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.asm, <4 x double> %broadcast.splat1871, <4 x double> %wide.load1869)
  store <4 x double> %i.aso, ptr %i.asi, align 8, !tbaa !72, !alias.scope !115, !noalias !110
  %index.next1872 = add nuw i64 %index1856, 4     ; 2 uses
  %i.asp = icmp eq i64 %index.next1872, %n.vec1854
  br i1 %i.asp, label %middle.block1873, label %vector.body1855, !llvm.loop !62

middle.block1873:                                 ; preds = %vector.body1855
  br i1 %cmp.n1874, label %._crit_edge1537, label %scalar.ph1851.preheader

scalar.ph1851.preheader:                          ; preds = %vector.memcheck1800, %.lr.ph1536, %middle.block1873
  %indvars.iv1612.ph = phi i64 [ %i.aqc, %vector.memcheck1800 ], [ %i.aqc, %.lr.ph1536 ], [ %i.aqy, %middle.block1873 ] ; 6 uses
  %i.asq = trunc i64 %indvars.iv1612.ph to i32    ; 2 uses
  %i.asr = add i32 %i.aqa, %i.asq
  %i.ass = and i32 %i.asr, 1
  %lcmp.mod2207.not.not = icmp eq i32 %i.ass, 0
  br i1 %lcmp.mod2207.not.not, label %scalar.ph1851.prol, label %scalar.ph1851.prol.loopexit

scalar.ph1851.prol:                               ; preds = %scalar.ph1851.preheader
  %i.ast = load double, ptr %i.are, align 8, !tbaa !72
  %gep1728.prol = getelementptr [8 x i8], ptr %invariant.gep1727, i64 %indvars.iv1612.ph ; 2 uses
  %i.asu = load double, ptr %gep1728.prol, align 8, !tbaa !72 ; 2 uses
  %i.asv = load double, ptr %i.arh, align 8, !tbaa !72
  %gep1730.prol = getelementptr [8 x i8], ptr %invariant.gep1729, i64 %indvars.iv1612.ph ; 3 uses
  %i.asw = load double, ptr %gep1730.prol, align 8, !tbaa !72
  %i.asx = call double @llvm.fmuladd.f64(double %i.asv, double %i.asw, double %i.asu)
  %i.asy = load double, ptr %i.ark, align 8, !tbaa !72
  %gep1732.prol = getelementptr [8 x i8], ptr %invariant.gep1731, i64 %indvars.iv1612.ph ; 3 uses
  %i.asz = load double, ptr %gep1732.prol, align 8, !tbaa !72
  %i.ata = call double @llvm.fmuladd.f64(double %i.asy, double %i.asz, double %i.asx)
  %i.atb = fmul double %i.ast, %i.ata             ; 2 uses
  %i.atc = fsub double %i.asu, %i.atb
  store double %i.atc, ptr %gep1728.prol, align 8, !tbaa !72
  %i.atd = load double, ptr %i.arh, align 8, !tbaa !72
  %i.ate = load double, ptr %gep1730.prol, align 8, !tbaa !72
  %i.atf = fneg double %i.atb                     ; 2 uses
  %i.atg = call double @llvm.fmuladd.f64(double %i.atf, double %i.atd, double %i.ate)
  store double %i.atg, ptr %gep1730.prol, align 8, !tbaa !72
  %i.ath = load double, ptr %i.ark, align 8, !tbaa !72
  %i.ati = load double, ptr %gep1732.prol, align 8, !tbaa !72
  %i.atj = call double @llvm.fmuladd.f64(double %i.atf, double %i.ath, double %i.ati)
  store double %i.atj, ptr %gep1732.prol, align 8, !tbaa !72
  %indvars.iv.next1613.prol = add nsw i64 %indvars.iv1612.ph, 1
  br label %scalar.ph1851.prol.loopexit

scalar.ph1851.prol.loopexit:                      ; preds = %scalar.ph1851.prol, %scalar.ph1851.preheader
  %indvars.iv1612.unr = phi i64 [ %indvars.iv1612.ph, %scalar.ph1851.preheader ], [ %indvars.iv.next1613.prol, %scalar.ph1851.prol ]
  %i.atk = icmp eq i32 %i.aqa, %i.asq
  br i1 %i.atk, label %._crit_edge1537, label %scalar.ph1851

scalar.ph1851:                                    ; preds = %scalar.ph1851.prol.loopexit, %scalar.ph1851
  %indvars.iv1612 = phi i64 [ %indvars.iv.next1613.1, %scalar.ph1851 ], [ %indvars.iv1612.unr, %scalar.ph1851.prol.loopexit ] ; 5 uses
  %i.atl = load double, ptr %i.are, align 8, !tbaa !72
  %gep1728 = getelementptr [8 x i8], ptr %invariant.gep1727, i64 %indvars.iv1612 ; 2 uses
  %i.atm = load double, ptr %gep1728, align 8, !tbaa !72 ; 2 uses
  %i.atn = load double, ptr %i.arh, align 8, !tbaa !72
  %gep1730 = getelementptr [8 x i8], ptr %invariant.gep1729, i64 %indvars.iv1612 ; 3 uses
  %i.ato = load double, ptr %gep1730, align 8, !tbaa !72
  %i.atp = call double @llvm.fmuladd.f64(double %i.atn, double %i.ato, double %i.atm)
  %i.atq = load double, ptr %i.ark, align 8, !tbaa !72
  %gep1732 = getelementptr [8 x i8], ptr %invariant.gep1731, i64 %indvars.iv1612 ; 3 uses
  %i.atr = load double, ptr %gep1732, align 8, !tbaa !72
  %i.ats = call double @llvm.fmuladd.f64(double %i.atq, double %i.atr, double %i.atp)
  %i.att = fmul double %i.atl, %i.ats             ; 2 uses
  %i.atu = fsub double %i.atm, %i.att
  store double %i.atu, ptr %gep1728, align 8, !tbaa !72
  %i.atv = load double, ptr %i.arh, align 8, !tbaa !72
  %i.atw = load double, ptr %gep1730, align 8, !tbaa !72
  %i.atx = fneg double %i.att                     ; 2 uses
  %i.aty = call double @llvm.fmuladd.f64(double %i.atx, double %i.atv, double %i.atw)
  store double %i.aty, ptr %gep1730, align 8, !tbaa !72
  %i.atz = load double, ptr %i.ark, align 8, !tbaa !72
  %i.aua = load double, ptr %gep1732, align 8, !tbaa !72
  %i.aub = call double @llvm.fmuladd.f64(double %i.atx, double %i.atz, double %i.aua)
  store double %i.aub, ptr %gep1732, align 8, !tbaa !72
  %indvars.iv.next1613 = add nsw i64 %indvars.iv1612, 1 ; 3 uses
  %i.auc = load double, ptr %i.are, align 8, !tbaa !72
  %gep1728.1 = getelementptr [8 x i8], ptr %invariant.gep1727, i64 %indvars.iv.next1613 ; 2 uses
  %i.aud = load double, ptr %gep1728.1, align 8, !tbaa !72 ; 2 uses
  %i.aue = load double, ptr %i.arh, align 8, !tbaa !72
  %gep1730.1 = getelementptr [8 x i8], ptr %invariant.gep1729, i64 %indvars.iv.next1613 ; 3 uses
  %i.auf = load double, ptr %gep1730.1, align 8, !tbaa !72
  %i.aug = call double @llvm.fmuladd.f64(double %i.aue, double %i.auf, double %i.aud)
  %i.auh = load double, ptr %i.ark, align 8, !tbaa !72
  %gep1732.1 = getelementptr [8 x i8], ptr %invariant.gep1731, i64 %indvars.iv.next1613 ; 3 uses
  %i.aui = load double, ptr %gep1732.1, align 8, !tbaa !72
  %i.auj = call double @llvm.fmuladd.f64(double %i.auh, double %i.aui, double %i.aug)
  %i.auk = fmul double %i.auc, %i.auj             ; 2 uses
  %i.aul = fsub double %i.aud, %i.auk
  store double %i.aul, ptr %gep1728.1, align 8, !tbaa !72
  %i.aum = load double, ptr %i.arh, align 8, !tbaa !72
  %i.aun = load double, ptr %gep1730.1, align 8, !tbaa !72
  %i.auo = fneg double %i.auk                     ; 2 uses
  %i.aup = call double @llvm.fmuladd.f64(double %i.auo, double %i.aum, double %i.aun)
  store double %i.aup, ptr %gep1730.1, align 8, !tbaa !72
  %i.auq = load double, ptr %i.ark, align 8, !tbaa !72
  %i.aur = load double, ptr %gep1732.1, align 8, !tbaa !72
  %i.aus = call double @llvm.fmuladd.f64(double %i.auo, double %i.auq, double %i.aur)
  store double %i.aus, ptr %gep1732.1, align 8, !tbaa !72
  %indvars.iv.next1613.1 = add nsw i64 %indvars.iv1612, 2 ; 2 uses
  %lftr.wideiv1615.1 = trunc i64 %indvars.iv.next1613.1 to i32
  %exitcond1616.not.1 = icmp eq i32 %i.aqd, %lftr.wideiv1615.1
  br i1 %exitcond1616.not.1, label %._crit_edge1537, label %scalar.ph1851, !llvm.loop !63

._crit_edge1537:                                  ; preds = %scalar.ph1851.prol.loopexit, %scalar.ph1851, %middle.block1873
  %indvars.iv.next1619 = add nsw i64 %indvars.iv1618, -1
  %.not1460.not = icmp sgt i64 %indvars.iv1618, %i.aqf
  %indvar.next1806 = add i32 %indvar1805, 1
  br i1 %.not1460.not, label %.lr.ph1536, label %.loopexit, !llvm.loop !64

.loopexit:                                        ; preds = %._crit_edge1537, %._crit_edge1545, %bb.bu, %._crit_edge1522.thread, %.lr.ph1540, %.preheader, %bb.bx
  %i.aut = phi i32 [ %i.ait, %._crit_edge1545 ], [ %i.ain, %bb.bu ], [ %i.ait, %.lr.ph1540 ], [ %i.ait, %.preheader ], [ %i.ait, %bb.bx ], [ %i.vd, %._crit_edge1522.thread ], [ %i.ait, %._crit_edge1537 ] ; 2 uses
  %i.auu = phi i32 [ %i.aiv, %._crit_edge1545 ], [ %i.aip, %bb.bu ], [ %i.aiv, %.lr.ph1540 ], [ %i.aiv, %.preheader ], [ %i.aiv, %bb.bx ], [ %i.vb, %._crit_edge1522.thread ], [ %i.aiv, %._crit_edge1537 ]
  %i.auv = phi i32 [ %i.aiw, %._crit_edge1545 ], [ %i.ais, %bb.bu ], [ %i.aiw, %.lr.ph1540 ], [ %i.aiw, %.preheader ], [ %i.aiw, %bb.bx ], [ %i.vd, %._crit_edge1522.thread ], [ %i.aiw, %._crit_edge1537 ]
  %i.auw = phi i32 [ %i.aix, %._crit_edge1545 ], [ %i.aim, %bb.bu ], [ %i.aix, %.lr.ph1540 ], [ %i.aix, %.preheader ], [ %i.aix, %bb.bx ], [ %i.vd, %._crit_edge1522.thread ], [ %i.aix, %._crit_edge1537 ]
  %i.aux = phi i32 [ %i.aiv, %._crit_edge1545 ], [ %i.aio, %bb.bu ], [ %i.aiu, %.lr.ph1540 ], [ %i.aiu, %.preheader ], [ %i.aiu, %bb.bx ], [ %i.vc, %._crit_edge1522.thread ], [ %i.aiu, %._crit_edge1537 ]
  %i.auy = phi i32 [ %i.aiv, %._crit_edge1545 ], [ %i.aik, %bb.bu ], [ %i.aiu, %.lr.ph1540 ], [ %i.aiu, %.preheader ], [ %i.aiu, %bb.bx ], [ %i.vg, %._crit_edge1522.thread ], [ %i.aiu, %._crit_edge1537 ]
  %i.auz = add i32 %.013681550, 1
  %indvars.iv.next1587 = add i32 %indvars.iv1586, 1
  %exitcond1633.not = icmp eq i32 %.013681550, %smin1632
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond1633.not, label %._crit_edge1555, label %bb.m, !llvm.loop !65

._crit_edge1555:                                  ; preds = %.loopexit, %bb.l
  %.pre1645 = phi i32 [ %i.eb, %bb.l ], [ %i.aut, %.loopexit ] ; 2 uses
  br i1 %i.bn, label %bb.by, label %.loopexit1491

bb.by:                                            ; preds = %._crit_edge1555
  %i.ava = load i32, ptr %0, align 4, !tbaa !70
  %.not1427 = icmp eq i32 %i.ava, 0               ; 2 uses
  %.pre1644 = load i32, ptr %4, align 4, !tbaa !70 ; 3 uses
  %spec.select = select i1 %.not1427, ptr %5, ptr %3
  %spec.select1745 = select i1 %.not1427, i32 %.pre1644, i32 1 ; 3 uses
  %.21389 = load i32, ptr %spec.select, align 4, !tbaa !70 ; 4 uses
  %i.avb = sub nsw i32 %.pre1644, %.013691572
  %i.avc = call i32 @llvm.smax.i32(i32 %i.avb, i32 1) ; 7 uses
  %i.avd = sub nsw i32 %i.dy, %.pre1645
  %i.ave = load i32, ptr %i.h, align 4, !tbaa !70
  %i.avf = call i32 @llvm.smax.i32(i32 %i.avd, i32 0)
  %i.avg = add i32 %i.ave, 1
  %i.avh = add nuw i32 %i.avc, %i.avf
  %i.avi = sub i32 %i.avg, %i.avh
  store i32 %i.avi, ptr %i.d, align 4, !tbaa !70
  %i.avj = load i32, ptr %22, align 4, !tbaa !70  ; 2 uses
  %.1478 = call i32 @llvm.smin.i32(i32 %i.dy, i32 %.pre1645) ; 2 uses
  %i.avk = add i32 %.1478, 1                      ; 2 uses
  %i.avl = icmp slt i32 %i.avj, 0                 ; 2 uses
  %i.avm = icmp sge i32 %i.avk, %.21389
  %i.avn = icmp slt i32 %.1478, %.21389
  %.in14291556 = select i1 %i.avl, i1 %i.avm, i1 %i.avn
  br i1 %.in14291556, label %.lr.ph1559, label %._crit_edge1560

.lr.ph1559:                                       ; preds = %bb.by
  %i.avo = add i32 %.21389, 1
  %i.avp = mul i32 %i.avc, %i.br
  %i.avq = sext i32 %i.avp to i64
  %i.avr = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.avq
  %i.avs = add nsw i32 %i.avc, %.013691572
  %i.avt = sext i32 %i.avk to i64
  %i.avu = sext i32 %i.avj to i64
  %i.avv = sext i32 %.21389 to i64                ; 2 uses
  %i.avw = sext i32 %i.avs to i64
  %invariant.gep1739 = getelementptr [8 x i8], ptr %i.m, i64 %i.avw
  br label %bb.bz

bb.bz:                                            ; preds = %.lr.ph1559, %bb.bz
  %indvars.iv1635 = phi i64 [ %i.avt, %.lr.ph1559 ], [ %indvars.iv.next1636, %bb.bz ] ; 3 uses
  %i.avx = load i32, ptr %22, align 4, !tbaa !70
  %i.avy = trunc nsw i64 %indvars.iv1635 to i32
  %i.avz = sub i32 %i.avo, %i.avy
  %i.awa = call i32 @llvm.smin.i32(i32 %i.avx, i32 %i.avz)
  store i32 %i.awa, ptr %i.b, align 4, !tbaa !70
  %i.awb = mul nsw i64 %indvars.iv1635, %i.bt
  %gep1740 = getelementptr [8 x i8], ptr %invariant.gep1739, i64 %i.awb ; 2 uses
  call void @dgemm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b8, ptr noundef %i.avr, ptr noundef nonnull %18, ptr noundef %gep1740, ptr noundef nonnull %10, ptr noundef nonnull @c_b7, ptr noundef %23, ptr noundef %24) #4
  call void @dlacpy_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef %23, ptr noundef %24, ptr noundef %gep1740, ptr noundef nonnull %10) #4
  %indvars.iv.next1636 = add nsw i64 %indvars.iv1635, %i.avu ; 3 uses
  %i.awc = icmp sge i64 %indvars.iv.next1636, %i.avv
  %i.awd = icmp sle i64 %indvars.iv.next1636, %i.avv
  %.in1429 = select i1 %i.avl, i1 %i.awc, i1 %i.awd
  br i1 %.in1429, label %bb.bz, label %._crit_edge1560.loopexit, !llvm.loop !66

._crit_edge1560.loopexit:                         ; preds = %bb.bz
  %.pre1646 = load i32, ptr %4, align 4, !tbaa !70
  br label %._crit_edge1560

._crit_edge1560:                                  ; preds = %._crit_edge1560.loopexit, %bb.by
  %i.awe = phi i32 [ %.pre1646, %._crit_edge1560.loopexit ], [ %.pre1644, %bb.by ]
  %.01369.1479 = call i32 @llvm.smax.i32(i32 %i.awe, i32 %.013691572) ; 3 uses
  %i.awf = add nsw i32 %.01369.1479, -1           ; 2 uses
  %i.awg = load i32, ptr %19, align 4, !tbaa !70  ; 2 uses
  %i.awh = icmp slt i32 %i.awg, 0                 ; 2 uses
  %i.awi = icmp sge i32 %spec.select1745, %i.awf
  %i.awj = icmp slt i32 %spec.select1745, %.01369.1479
  %.in14311561 = select i1 %i.awh, i1 %i.awi, i1 %i.awj
  br i1 %.in14311561, label %.lr.ph1564, label %._crit_edge1565

.lr.ph1564:                                       ; preds = %._crit_edge1560
  %i.awk = add nsw i32 %i.avc, %.013691572
end_hunk_1
