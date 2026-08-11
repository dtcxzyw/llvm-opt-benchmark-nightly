loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dlaqr5_:bb.a
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
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !9
  store double %i.ga, ptr %i.a, align 8, !tbaa !9
  %i.gb = getelementptr i8, ptr %i.fn, i64 16
  call void @dlarfg_(ptr noundef nonnull @c__2, ptr noundef nonnull %i.a, ptr noundef %i.gb, ptr noundef nonnull @c__1, ptr noundef nonnull %i.fz) #4
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.gc = mul nsw i32 %i.fe, %i.k                 ; 2 uses
  %i.gd = add nsw i32 %i.fk, %i.gc
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ge ; 2 uses
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !9
  store double %i.gg, ptr %i.a, align 8, !tbaa !9
  %i.gh = add nsw i32 %i.fe, 2
  %i.gi = add nsw i32 %i.gh, %i.gc
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.gj ; 2 uses
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !9
  %i.gm = getelementptr i8, ptr %i.fn, i64 16     ; 2 uses
  store double %i.gl, ptr %i.gm, align 8, !tbaa !9
  %i.gn = getelementptr i8, ptr %i.fn, i64 8
  call void @dlarfg_(ptr noundef nonnull @c__2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.gm, ptr noundef nonnull @c__1, ptr noundef %i.gn) #4
  %i.go = load double, ptr %i.a, align 8, !tbaa !9
  store double %i.go, ptr %i.gf, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.gk, align 8, !tbaa !9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.gp = load i32, ptr %5, align 4, !tbaa !8     ; 30 uses
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
  %.reass2220 = add i64 %i.hd, %invariant.op2219  ; 3 uses
  %min.iters.check2187 = icmp ult i64 %.reass2220, 8
  br i1 %min.iters.check2187, label %scalar.ph2186.preheader, label %vector.memcheck2161

vector.memcheck2161:                              ; preds = %.lr.ph1498
  %i.he = shl nsw i64 %i.hb, 3
  %scevgep2164 = getelementptr i8, ptr %scevgep2163, i64 %i.he ; 2 uses
  %smax2166 = call i64 @llvm.smax.i64(i64 %i.hd, i64 %i.eg)
  %i.hf = add i64 %smax2166, %i.l                 ; 2 uses
  %i.hg = add i64 %i.hf, %i.hb
  %i.hh = shl nsw i64 %i.hg, 3
  %scevgep2167 = getelementptr i8, ptr %scevgep2165, i64 %i.hh ; 2 uses
  %i.hi = shl nsw i64 %i.hc, 3
  %scevgep2170 = getelementptr i8, ptr %scevgep2169, i64 %i.hi ; 2 uses
  %i.hj = add i64 %i.hf, %i.hc
  %i.hk = shl nsw i64 %i.hj, 3
  %scevgep2172 = getelementptr i8, ptr %scevgep2171, i64 %i.hk ; 2 uses
  %i.hl = shl nsw i64 %i.gt, 3
  %scevgep2174 = getelementptr i8, ptr %scevgep2173, i64 %i.hl ; 2 uses
  %bound02175 = icmp ult ptr %scevgep2164, %scevgep2172
  %bound12176 = icmp ult ptr %scevgep2170, %scevgep2167
  %found.conflict2177 = and i1 %bound02175, %bound12176
  %bound02178 = icmp ult ptr %scevgep2164, %scevgep2174
  %bound12179 = icmp ult ptr %i.gv, %scevgep2167
  %found.conflict2180 = and i1 %bound02178, %bound12179
  %conflict.rdx2181 = or i1 %found.conflict2177, %found.conflict2180
  %bound02182 = icmp ult ptr %scevgep2170, %scevgep2174
  %bound12183 = icmp ult ptr %i.gv, %scevgep2172
  %found.conflict2184 = and i1 %bound02182, %bound12183
  %conflict.rdx2185 = or i1 %conflict.rdx2181, %found.conflict2184
  br i1 %conflict.rdx2185, label %scalar.ph2186.preheader, label %vector.ph2188

vector.ph2188:                                    ; preds = %vector.memcheck2161
  %n.vec2189 = and i64 %.reass2220, -8            ; 3 uses
  %i.hm = add nsw i64 %n.vec2189, %i.eg
  %i.hn = load double, ptr %i.gv, align 8, !tbaa !9, !alias.scope !13
  %broadcast.splatinsert2198 = insertelement <4 x double> poison, double %i.hn, i64 0
  %broadcast.splat2199 = shufflevector <4 x double> %broadcast.splatinsert2198, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ho = load double, ptr %i.gy, align 8, !tbaa !9, !alias.scope !13 ; 2 uses
  %broadcast.splatinsert2196 = insertelement <4 x double> poison, double %i.ho, i64 0
  %broadcast.splat2197 = shufflevector <4 x double> %broadcast.splatinsert2196, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2202 = insertelement <4 x double> poison, double %i.ho, i64 0
  %broadcast.splat2203 = shufflevector <4 x double> %broadcast.splatinsert2202, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2190

vector.body2190:                                  ; preds = %vector.body2190, %vector.ph2188
  %index2191 = phi i64 [ 0, %vector.ph2188 ], [ %index.next2204, %vector.body2190 ] ; 2 uses
  %i.hp = add i64 %index2191, %i.eg               ; 2 uses
  %i.hq = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.hp ; 3 uses
  %i.hr = getelementptr i8, ptr %i.hq, i64 32     ; 2 uses
  %wide.load2192 = load <4 x double>, ptr %i.hq, align 8, !tbaa !9, !alias.scope !16, !noalias !18 ; 2 uses
  %wide.load2193 = load <4 x double>, ptr %i.hr, align 8, !tbaa !9, !alias.scope !16, !noalias !18 ; 2 uses
  %i.hs = getelementptr [8 x i8], ptr %invariant.gep1701, i64 %i.hp ; 4 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 32     ; 3 uses
  %wide.load2194 = load <4 x double>, ptr %i.hs, align 8, !tbaa !9, !alias.scope !20, !noalias !13
  %wide.load2195 = load <4 x double>, ptr %i.ht, align 8, !tbaa !9, !alias.scope !20, !noalias !13
  %i.hu = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2197, <4 x double> %wide.load2194, <4 x double> %wide.load2192)
  %i.hv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2197, <4 x double> %wide.load2195, <4 x double> %wide.load2193)
  %i.hw = fmul <4 x double> %broadcast.splat2199, %i.hu ; 2 uses
  %i.hx = fmul <4 x double> %broadcast.splat2199, %i.hv ; 2 uses
  %i.hy = fsub <4 x double> %wide.load2192, %i.hw
  %i.hz = fsub <4 x double> %wide.load2193, %i.hx
  store <4 x double> %i.hy, ptr %i.hq, align 8, !tbaa !9, !alias.scope !16, !noalias !18
  store <4 x double> %i.hz, ptr %i.hr, align 8, !tbaa !9, !alias.scope !16, !noalias !18
  %wide.load2200 = load <4 x double>, ptr %i.hs, align 8, !tbaa !9, !alias.scope !20, !noalias !13
  %wide.load2201 = load <4 x double>, ptr %i.ht, align 8, !tbaa !9, !alias.scope !20, !noalias !13
  %i.ia = fneg <4 x double> %i.hw
  %i.ib = fneg <4 x double> %i.hx
  %i.ic = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ia, <4 x double> %broadcast.splat2203, <4 x double> %wide.load2200)
  %i.id = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ib, <4 x double> %broadcast.splat2203, <4 x double> %wide.load2201)
  store <4 x double> %i.ic, ptr %i.hs, align 8, !tbaa !9, !alias.scope !20, !noalias !13
  store <4 x double> %i.id, ptr %i.ht, align 8, !tbaa !9, !alias.scope !20, !noalias !13
  %index.next2204 = add nuw i64 %index2191, 8     ; 2 uses
  %i.ie = icmp eq i64 %index.next2204, %n.vec2189
  br i1 %i.ie, label %middle.block2205, label %vector.body2190, !llvm.loop !21

middle.block2205:                                 ; preds = %vector.body2190
  %cmp.n2206 = icmp eq i64 %.reass2220, %n.vec2189
  br i1 %cmp.n2206, label %._crit_edge1499, label %scalar.ph2186.preheader

scalar.ph2186.preheader:                          ; preds = %vector.memcheck2161, %.lr.ph1498, %middle.block2205
  %indvars.iv1581.ph = phi i64 [ %i.eg, %vector.memcheck2161 ], [ %i.eg, %.lr.ph1498 ], [ %i.hm, %middle.block2205 ]
  br label %scalar.ph2186

scalar.ph2186:                                    ; preds = %scalar.ph2186.preheader, %scalar.ph2186
  %indvars.iv1581 = phi i64 [ %indvars.iv.next1582, %scalar.ph2186 ], [ %indvars.iv1581.ph, %scalar.ph2186.preheader ] ; 4 uses
  %i.if = load double, ptr %i.gv, align 8, !tbaa !9
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv1581 ; 2 uses
  %i.ig = load double, ptr %gep, align 8, !tbaa !9 ; 2 uses
  %i.ih = load double, ptr %i.gy, align 8, !tbaa !9
  %gep1702 = getelementptr [8 x i8], ptr %invariant.gep1701, i64 %indvars.iv1581 ; 3 uses
  %i.ii = load double, ptr %gep1702, align 8, !tbaa !9
  %i.ij = call double @llvm.fmuladd.f64(double %i.ih, double %i.ii, double %i.ig)
  %i.ik = fmul double %i.if, %i.ij                ; 2 uses
  %i.il = fsub double %i.ig, %i.ik
  store double %i.il, ptr %gep, align 8, !tbaa !9
  %i.im = load double, ptr %i.gy, align 8, !tbaa !9
  %i.in = load double, ptr %gep1702, align 8, !tbaa !9
  %i.io = fneg double %i.ik
  %i.ip = call double @llvm.fmuladd.f64(double %i.io, double %i.im, double %i.in)
  store double %i.ip, ptr %gep1702, align 8, !tbaa !9
  %indvars.iv.next1582 = add nsw i64 %indvars.iv1581, 1
  %.not1440.not = icmp slt i64 %indvars.iv1581, %i.hd
  br i1 %.not1440.not, label %scalar.ph2186, label %._crit_edge1499, !llvm.loop !24

._crit_edge1499:                                  ; preds = %scalar.ph2186, %middle.block2205, %bb.q
  br i1 %i.bn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge1499
  %. = call i32 @llvm.smin.i32(i32 %i.dy, i32 %i.gp)
  br label %bb.u

bb.s:                                             ; preds = %._crit_edge1499
  %i.iq = load i32, ptr %0, align 4, !tbaa !8
  %.not1441 = icmp eq i32 %i.iq, 0
  br i1 %.not1441, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ir = load i32, ptr %3, align 4, !tbaa !8
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
  %25 = sub i64 %i.jd, %i.iz
  %26 = add i64 %25, 1                            ; 3 uses
  %min.iters.check2142 = icmp ugt i64 %26, 7
  %or.cond2208 = select i1 %min.iters.check2142, i1 %ident.check2118.not, i1 false
  br i1 %or.cond2208, label %vector.memcheck2119, label %scalar.ph2141.preheader

vector.memcheck2119:                              ; preds = %.lr.ph1503
  %i.je = shl nsw i64 %i.iz, 4
  %scevgep2121 = getelementptr i8, ptr %scevgep2120, i64 %i.je ; 2 uses
  %smax2123 = call i64 @llvm.smax.i64(i64 %i.jb, i64 %i.iz) ; 2 uses
  %i.jf = add i64 %smax2123, %i.iz
  %i.jg = shl nsw i64 %i.jf, 3
  %scevgep2124 = getelementptr i8, ptr %scevgep2122, i64 %i.jg ; 2 uses
  %i.jh = add nsw i64 %i.iz, %i.jc
  %i.ji = shl nsw i64 %i.jh, 3
  %scevgep2125 = getelementptr i8, ptr %9, i64 %i.ji ; 2 uses
  %i.jj = add i64 %smax2123, %i.jc
  %i.jk = shl nsw i64 %i.jj, 3
  %scevgep2127 = getelementptr i8, ptr %scevgep2126, i64 %i.jk ; 2 uses
  %i.jl = shl nsw i64 %i.iu, 3
  %scevgep2129 = getelementptr i8, ptr %scevgep2128, i64 %i.jl ; 2 uses
  %bound02130 = icmp ult ptr %scevgep2121, %scevgep2127
  %bound12131 = icmp ult ptr %scevgep2125, %scevgep2124
  %found.conflict2132 = and i1 %bound02130, %bound12131
  %bound02133 = icmp ult ptr %scevgep2121, %scevgep2129
  %bound12134 = icmp ult ptr %i.iw, %scevgep2124
  %found.conflict2135 = and i1 %bound02133, %bound12134
  %conflict.rdx2136 = or i1 %found.conflict2132, %found.conflict2135
  %bound02137 = icmp ult ptr %scevgep2125, %scevgep2129
  %bound12138 = icmp ult ptr %i.iw, %scevgep2127
  %found.conflict2139 = and i1 %bound02137, %bound12138
  %conflict.rdx2140 = or i1 %conflict.rdx2136, %found.conflict2139
  br i1 %conflict.rdx2140, label %scalar.ph2141.preheader, label %vector.ph2143

vector.ph2143:                                    ; preds = %vector.memcheck2119
  %n.vec2144 = and i64 %26, -8                    ; 3 uses
  %i.jm = add i64 %n.vec2144, %i.iz
  %i.jn = load double, ptr %i.iw, align 8, !tbaa !9, !alias.scope !25
  %broadcast.splatinsert2153 = insertelement <4 x double> poison, double %i.jn, i64 0
  %broadcast.splat2154 = shufflevector <4 x double> %broadcast.splatinsert2153, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jo = load double, ptr %i.ix, align 8, !tbaa !9, !alias.scope !25 ; 2 uses
  %broadcast.splatinsert2151 = insertelement <4 x double> poison, double %i.jo, i64 0
  %broadcast.splat2152 = shufflevector <4 x double> %broadcast.splatinsert2151, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2155 = insertelement <4 x double> poison, double %i.jo, i64 0
  %broadcast.splat2156 = shufflevector <4 x double> %broadcast.splatinsert2155, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2145

vector.body2145:                                  ; preds = %vector.body2145, %vector.ph2143
  %index2146 = phi i64 [ 0, %vector.ph2143 ], [ %index.next2157, %vector.body2145 ] ; 2 uses
  %i.jp = add i64 %index2146, %i.iz               ; 2 uses
  %i.jq = getelementptr [8 x i8], ptr %invariant.gep1703, i64 %i.jp ; 3 uses
  %i.jr = getelementptr i8, ptr %i.jq, i64 32     ; 2 uses
  %wide.load2147 = load <4 x double>, ptr %i.jq, align 8, !tbaa !9, !alias.scope !28, !noalias !30 ; 2 uses
  %wide.load2148 = load <4 x double>, ptr %i.jr, align 8, !tbaa !9, !alias.scope !28, !noalias !30 ; 2 uses
  %i.js = getelementptr [8 x i8], ptr %invariant.gep1705, i64 %i.jp ; 2 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 16     ; 2 uses
  %i.ju = getelementptr i8, ptr %i.js, i64 48     ; 2 uses
  %wide.load2149 = load <4 x double>, ptr %i.jt, align 8, !tbaa !9, !alias.scope !32, !noalias !25 ; 2 uses
  %wide.load2150 = load <4 x double>, ptr %i.ju, align 8, !tbaa !9, !alias.scope !32, !noalias !25 ; 2 uses
  %i.jv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2152, <4 x double> %wide.load2149, <4 x double> %wide.load2147)
  %i.jw = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2152, <4 x double> %wide.load2150, <4 x double> %wide.load2148)
  %i.jx = fmul <4 x double> %broadcast.splat2154, %i.jv ; 2 uses
  %i.jy = fmul <4 x double> %broadcast.splat2154, %i.jw ; 2 uses
  %i.jz = fsub <4 x double> %wide.load2147, %i.jx
  %i.ka = fsub <4 x double> %wide.load2148, %i.jy
  store <4 x double> %i.jz, ptr %i.jq, align 8, !tbaa !9, !alias.scope !28, !noalias !30
  store <4 x double> %i.ka, ptr %i.jr, align 8, !tbaa !9, !alias.scope !28, !noalias !30
  %i.kb = fneg <4 x double> %i.jx
  %i.kc = fneg <4 x double> %i.jy
  %i.kd = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kb, <4 x double> %broadcast.splat2156, <4 x double> %wide.load2149)
  %i.ke = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kc, <4 x double> %broadcast.splat2156, <4 x double> %wide.load2150)
  store <4 x double> %i.kd, ptr %i.jt, align 8, !tbaa !9, !alias.scope !32, !noalias !25
  store <4 x double> %i.ke, ptr %i.ju, align 8, !tbaa !9, !alias.scope !32, !noalias !25
  %index.next2157 = add nuw i64 %index2146, 8     ; 2 uses
  %i.kf = icmp eq i64 %index.next2157, %n.vec2144
  br i1 %i.kf, label %middle.block2158, label %vector.body2145, !llvm.loop !33

middle.block2158:                                 ; preds = %vector.body2145
  %cmp.n2159 = icmp eq i64 %26, %n.vec2144
  br i1 %cmp.n2159, label %._crit_edge1504, label %scalar.ph2141.preheader

scalar.ph2141.preheader:                          ; preds = %vector.memcheck2119, %.lr.ph1503, %middle.block2158
  %indvars.iv1588.ph = phi i64 [ %i.iz, %vector.memcheck2119 ], [ %i.iz, %.lr.ph1503 ], [ %i.jm, %middle.block2158 ]
  br label %scalar.ph2141

scalar.ph2141:                                    ; preds = %scalar.ph2141.preheader, %scalar.ph2141
  %indvars.iv1588 = phi i64 [ %indvars.iv.next1589, %scalar.ph2141 ], [ %indvars.iv1588.ph, %scalar.ph2141.preheader ] ; 3 uses
  %i.kg = load double, ptr %i.iw, align 8, !tbaa !9
  %i.kh = mul nsw i64 %indvars.iv1588, %i.bt      ; 2 uses
  %gep1704 = getelementptr [8 x i8], ptr %invariant.gep1703, i64 %i.kh ; 2 uses
  %i.ki = load double, ptr %gep1704, align 8, !tbaa !9 ; 2 uses
  %i.kj = load double, ptr %i.ix, align 8, !tbaa !9
  %gep1706 = getelementptr [8 x i8], ptr %invariant.gep1705, i64 %i.kh
  %i.kk = getelementptr i8, ptr %gep1706, i64 16  ; 2 uses
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !9 ; 2 uses
  %i.km = call double @llvm.fmuladd.f64(double %i.kj, double %i.kl, double %i.ki)
  %i.kn = fmul double %i.kg, %i.km                ; 2 uses
  %i.ko = fsub double %i.ki, %i.kn
  store double %i.ko, ptr %gep1704, align 8, !tbaa !9
  %i.kp = load double, ptr %i.ix, align 8, !tbaa !9
  %i.kq = fneg double %i.kn
  %i.kr = call double @llvm.fmuladd.f64(double %i.kq, double %i.kp, double %i.kl)
  store double %i.kr, ptr %i.kk, align 8, !tbaa !9
  %indvars.iv.next1589 = add nsw i64 %indvars.iv1588, 1
  %.not1443.not = icmp slt i64 %indvars.iv1588, %i.jb
  br i1 %.not1443.not, label %scalar.ph2141, label %._crit_edge1504, !llvm.loop !34

._crit_edge1504:                                  ; preds = %scalar.ph2141, %middle.block2158, %bb.u
  %i.ks = load i32, ptr %4, align 4, !tbaa !8     ; 30 uses
  %.not1444 = icmp slt i32 %i.fe, %i.ks
  br i1 %.not1444, label %bb.an, label %bb.v

bb.v:                                             ; preds = %._crit_edge1504
  %i.kt = mul nsw i32 %i.fe, %i.k                 ; 2 uses
  %i.ku = add nsw i32 %i.is, %i.kt
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.kv ; 2 uses
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !9 ; 4 uses
  %i.ky = fcmp une double %i.kx, 0.000000e+00
  br i1 %i.ky, label %bb.w, label %bb.an

bb.w:                                             ; preds = %bb.v
  %i.kz = add nsw i32 %i.kt, %i.fe
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.la
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !9 ; 4 uses
  %i.ld = fcmp oge double %i.lc, 0.000000e+00
  %i.le = fneg double %i.lc
  %i.lf = select i1 %i.ld, double %i.lc, double %i.le
  %i.lg = mul nsw i32 %i.is, %i.k                 ; 5 uses
  %i.lh = add nsw i32 %i.lg, %i.is
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.li
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !9 ; 4 uses
  %i.ll = fcmp oge double %i.lk, 0.000000e+00
  %i.lm = fneg double %i.lk
  %i.ln = select i1 %i.ll, double %i.lk, double %i.lm ; 5 uses
  %i.lo = fadd double %i.lf, %i.ln                ; 4 uses
  %i.lp = fcmp oeq double %i.lo, 0.000000e+00
  br i1 %i.lp, label %bb.x, label %bb.aj

bb.x:                                             ; preds = %bb.w
  %.not1445.not = icmp sgt i32 %i.fe, %i.ks
  br i1 %.not1445.not, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.lq = add nsw i32 %i.fe, -1
  %i.lr = mul nsw i32 %i.lq, %i.k
  %i.ls = add nsw i32 %i.lr, %i.fe
  %i.lt = sext i32 %i.ls to i64
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.lt
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !9 ; 3 uses
  %i.lw = fcmp oge double %i.lv, 0.000000e+00
  %i.lx = fneg double %i.lv
  %i.ly = select i1 %i.lw, double %i.lv, double %i.lx
  %i.lz = fadd double %i.lo, %i.ly
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0 = phi double [ %i.lz, %bb.y ], [ %i.lo, %bb.x ] ; 2 uses
  %i.ma = add nsw i32 %i.ks, 2
  %.not1446 = icmp slt i32 %i.fe, %i.ma
  br i1 %.not1446, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.mb = add nsw i32 %i.fe, -2
  %i.mc = mul nsw i32 %i.mb, %i.k
  %i.md = add nsw i32 %i.mc, %i.fe
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.me
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !9 ; 3 uses
  %i.mh = fcmp oge double %i.mg, 0.000000e+00
  %i.mi = fneg double %i.mg
  %i.mj = select i1 %i.mh, double %i.mg, double %i.mi
  %i.mk = fadd double %.0, %i.mj
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.1 = phi double [ %i.mk, %bb.aa ], [ %.0, %bb.z ] ; 2 uses
  %i.ml = add nsw i32 %i.ks, 3
  %.not1447 = icmp slt i32 %i.fe, %i.ml
  br i1 %.not1447, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.mm = add nsw i32 %i.fe, -3
  %i.mn = mul nsw i32 %i.mm, %i.k
  %i.mo = add nsw i32 %i.mn, %i.fe
  %i.mp = sext i32 %i.mo to i64
  %i.mq = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.mp
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !9 ; 3 uses
  %i.ms = fcmp oge double %i.mr, 0.000000e+00
  %i.mt = fneg double %i.mr
  %i.mu = select i1 %i.ms, double %i.mr, double %i.mt
  %i.mv = fadd double %.1, %i.mu
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.2 = phi double [ %i.mv, %bb.ac ], [ %.1, %bb.ab ] ; 2 uses
  %i.mw = add nsw i32 %i.gp, -2
  %.not1448 = icmp sgt i32 %i.fe, %i.mw
  br i1 %.not1448, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.mx = add nsw i32 %i.fe, 2
  %i.my = add nsw i32 %i.mx, %i.lg
  %i.mz = sext i32 %i.my to i64
  %i.na = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.mz
  %i.nb = load double, ptr %i.na, align 8, !tbaa !9 ; 3 uses
  %i.nc = fcmp oge double %i.nb, 0.000000e+00
  %i.nd = fneg double %i.nb
  %i.ne = select i1 %i.nc, double %i.nb, double %i.nd
  %i.nf = fadd double %.2, %i.ne
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.3 = phi double [ %i.nf, %bb.ae ], [ %.2, %bb.ad ] ; 2 uses
  %i.ng = add nsw i32 %i.gp, -3
  %.not1449 = icmp sgt i32 %i.fe, %i.ng
  br i1 %.not1449, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.nh = add nsw i32 %i.lg, %i.gq
  %i.ni = sext i32 %i.nh to i64
  %i.nj = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ni
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !9 ; 3 uses
  %i.nl = fcmp oge double %i.nk, 0.000000e+00
  %i.nm = fneg double %i.nk
  %i.nn = select i1 %i.nl, double %i.nk, double %i.nm
  %i.no = fadd double %.3, %i.nn
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.4 = phi double [ %i.no, %bb.ag ], [ %.3, %bb.af ] ; 2 uses
  %i.np = add nsw i32 %i.gp, -4
  %.not1450 = icmp sgt i32 %i.fe, %i.np
  br i1 %.not1450, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.nq = add nsw i32 %i.fe, 4
  %i.nr = add nsw i32 %i.nq, %i.lg
  %i.ns = sext i32 %i.nr to i64
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ns
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !9 ; 3 uses
  %i.nv = fcmp oge double %i.nu, 0.000000e+00
  %i.nw = fneg double %i.nu
  %i.nx = select i1 %i.nv, double %i.nu, double %i.nw
  %i.ny = fadd double %.4, %i.nx
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.w
  %.5 = phi double [ %i.ny, %bb.ai ], [ %.4, %bb.ah ], [ %i.lo, %bb.w ]
  %i.nz = fmul double %i.at, %.5                  ; 2 uses
  %i.oa = fcmp oge double %i.kx, 0.000000e+00
  %i.ob = fneg double %i.kx
  %i.oc = select i1 %i.oa, double %i.kx, double %i.ob ; 5 uses
  %i.od = fcmp oge double %i.ay, %i.nz
  %i.oe = select i1 %i.od, double %i.ay, double %i.nz
  %i.of = fcmp ugt double %i.oc, %i.oe
  br i1 %i.of, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.og = add nsw i32 %i.lg, %i.fe
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.oh
  %i.oj = load double, ptr %i.oi, align 8, !tbaa !9 ; 3 uses
  %i.ok = fcmp oge double %i.oj, 0.000000e+00
  %i.ol = fneg double %i.oj
  %i.om = select i1 %i.ok, double %i.oj, double %i.ol ; 4 uses
  %i.on = fcmp oge double %i.oc, %i.om
  %i.oo = select i1 %i.on, double %i.oc, double %i.om ; 2 uses
  %i.op = fsub double %i.lc, %i.lk                ; 3 uses
  %i.oq = fcmp oge double %i.op, 0.000000e+00
  %i.or = fneg double %i.op
  %i.os = select i1 %i.oq, double %i.op, double %i.or ; 4 uses
  %i.ot = fcmp oge double %i.ln, %i.os
  %i.ou = select i1 %i.ot, double %i.ln, double %i.os ; 2 uses
  %i.ov = fcmp ole double %i.ln, %i.os
  %i.ow = select i1 %i.ov, double %i.ln, double %i.os
  %i.ox = fadd double %i.ou, %i.oo                ; 2 uses
  %i.oy = fdiv double %i.ou, %i.ox
  %i.oz = fmul double %i.ow, %i.oy                ; 2 uses
  %i.pa = fcmp oeq double %i.oz, 0.000000e+00
  br i1 %i.pa, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.pb = fmul double %i.at, %i.oz                ; 2 uses
  %i.pc = fcmp ole double %i.oc, %i.om
  %i.pd = select i1 %i.pc, double %i.oc, double %i.om
  %i.pe = fdiv double %i.oo, %i.ox
  %i.pf = fmul double %i.pd, %i.pe
  %i.pg = fcmp oge double %i.ay, %i.pb
  %i.ph = select i1 %i.pg, double %i.ay, double %i.pb
  %i.pi = fcmp ugt double %i.pf, %i.ph
  br i1 %i.pi, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  store double 0.000000e+00, ptr %i.kw, align 8, !tbaa !9
  br label %bb.an

bb.an:                                            ; preds = %bb.v, %bb.al, %bb.am, %bb.aj, %._crit_edge1504
  br i1 %i.bn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.pj = sub nsw i32 %i.ks, %.013691572
  %i.pk = load i32, ptr %i.h, align 4, !tbaa !8   ; 2 uses
  %i.pl = call i32 @llvm.smax.i32(i32 %i.pj, i32 1)
  %.not14541509 = icmp sgt i32 %i.pl, %i.pk
  br i1 %.not14541509, label %.loopexit1489, label %.lr.ph1512

.lr.ph1512:                                       ; preds = %bb.ao
  %i.pm = sub nsw i32 %i.fe, %.013691572          ; 2 uses
  %i.pn = mul i32 %i.fb, %i.q
  %i.po = sext i32 %i.pn to i64                   ; 2 uses
  %i.pp = getelementptr [8 x i8], ptr %i.s, i64 %i.po ; 2 uses
  %i.pq = getelementptr i8, ptr %i.pp, i64 8      ; 4 uses
  %i.pr = add nsw i32 %i.pm, 1
  %i.ps = mul nsw i32 %i.pr, %i.t
  %i.pt = getelementptr i8, ptr %i.pp, i64 16     ; 3 uses
  %i.pu = add nsw i32 %i.pm, 2
  %i.pv = mul nsw i32 %i.pu, %i.t
  %i.pw = add i32 %indvars.iv1594, %i.ks
  %smax = call i32 @llvm.smax.i32(i32 %i.pw, i32 1)
  %i.px = zext nneg i32 %smax to i64              ; 8 uses
  %i.py = sext i32 %i.ps to i64                   ; 3 uses
  %i.pz = sext i32 %i.pv to i64                   ; 3 uses
  %i.qa = zext nneg i32 %i.pk to i64              ; 3 uses
  %invariant.gep1711 = getelementptr [8 x i8], ptr %i.v, i64 %i.py ; 2 uses
  %invariant.gep1713 = getelementptr [8 x i8], ptr %i.v, i64 %i.pz ; 2 uses
  %i.qb = call i64 @llvm.usub.sat.i64(i64 %i.qa, i64 %i.px) ; 2 uses
  %i.qc = add nuw nsw i64 %i.qb, 1                ; 2 uses
  %min.iters.check2052 = icmp samesign ult i64 %i.qb, 7
  br i1 %min.iters.check2052, label %scalar.ph2051.preheader, label %vector.memcheck2028

vector.memcheck2028:                              ; preds = %.lr.ph1512
  %i.qd = add nsw i64 %i.py, %i.px
  %i.qe = shl nsw i64 %i.qd, 3
  %scevgep2030 = getelementptr i8, ptr %scevgep2029, i64 %i.qe ; 2 uses
  %umax2032 = call i64 @llvm.umax.i64(i64 %i.qa, i64 %i.px) ; 2 uses
  %i.qf = add nsw i64 %umax2032, %i.u
  %i.qg = add nsw i64 %i.qf, %i.py
  %i.qh = shl nsw i64 %i.qg, 3
  %scevgep2033 = getelementptr i8, ptr %scevgep2031, i64 %i.qh ; 2 uses
  %i.qi = add nsw i64 %i.pz, %i.px
  %i.qj = shl nsw i64 %i.qi, 3
  %scevgep2035 = getelementptr i8, ptr %scevgep2034, i64 %i.qj ; 2 uses
  %i.qk = add nsw i64 %umax2032, %i.u
  %i.ql = add nsw i64 %i.qk, %i.pz
  %i.qm = shl nsw i64 %i.ql, 3
  %scevgep2037 = getelementptr i8, ptr %scevgep2036, i64 %i.qm ; 2 uses
  %i.qn = shl nsw i64 %i.po, 3
  %scevgep2039 = getelementptr i8, ptr %scevgep2038, i64 %i.qn ; 2 uses
  %bound02040 = icmp ult ptr %scevgep2030, %scevgep2037
  %bound12041 = icmp ult ptr %scevgep2035, %scevgep2033
  %found.conflict2042 = and i1 %bound02040, %bound12041
  %bound02043 = icmp ult ptr %scevgep2030, %scevgep2039
  %bound12044 = icmp ult ptr %i.pq, %scevgep2033
  %found.conflict2045 = and i1 %bound02043, %bound12044
  %conflict.rdx2046 = or i1 %found.conflict2042, %found.conflict2045
  %bound02047 = icmp ult ptr %scevgep2035, %scevgep2039
  %bound12048 = icmp ult ptr %i.pq, %scevgep2037
  %found.conflict2049 = and i1 %bound02047, %bound12048
  %conflict.rdx2050 = or i1 %conflict.rdx2046, %found.conflict2049
  br i1 %conflict.rdx2050, label %scalar.ph2051.preheader, label %vector.ph2053

vector.ph2053:                                    ; preds = %vector.memcheck2028
  %n.vec2054 = and i64 %i.qc, 4294967288          ; 3 uses
  %i.qo = add nuw nsw i64 %n.vec2054, %i.px
  %i.qp = load double, ptr %i.pq, align 8, !tbaa !9, !alias.scope !35
  %broadcast.splatinsert2063 = insertelement <4 x double> poison, double %i.qp, i64 0
  %broadcast.splat2064 = shufflevector <4 x double> %broadcast.splatinsert2063, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.qq = load double, ptr %i.pt, align 8, !tbaa !9, !alias.scope !35 ; 2 uses
  %broadcast.splatinsert2061 = insertelement <4 x double> poison, double %i.qq, i64 0
  %broadcast.splat2062 = shufflevector <4 x double> %broadcast.splatinsert2061, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2067 = insertelement <4 x double> poison, double %i.qq, i64 0
  %broadcast.splat2068 = shufflevector <4 x double> %broadcast.splatinsert2067, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2055

vector.body2055:                                  ; preds = %vector.body2055, %vector.ph2053
  %index2056 = phi i64 [ 0, %vector.ph2053 ], [ %index.next2069, %vector.body2055 ] ; 2 uses
  %i.qr = add nuw i64 %index2056, %i.px           ; 2 uses
  %i.qs = getelementptr [8 x i8], ptr %invariant.gep1711, i64 %i.qr ; 3 uses
  %i.qt = getelementptr i8, ptr %i.qs, i64 32     ; 2 uses
  %wide.load2057 = load <4 x double>, ptr %i.qs, align 8, !tbaa !9, !alias.scope !38, !noalias !40 ; 2 uses
  %wide.load2058 = load <4 x double>, ptr %i.qt, align 8, !tbaa !9, !alias.scope !38, !noalias !40 ; 2 uses
  %i.qu = getelementptr [8 x i8], ptr %invariant.gep1713, i64 %i.qr ; 4 uses
  %i.qv = getelementptr i8, ptr %i.qu, i64 32     ; 3 uses
  %wide.load2059 = load <4 x double>, ptr %i.qu, align 8, !tbaa !9, !alias.scope !42, !noalias !35
  %wide.load2060 = load <4 x double>, ptr %i.qv, align 8, !tbaa !9, !alias.scope !42, !noalias !35
  %i.qw = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2062, <4 x double> %wide.load2059, <4 x double> %wide.load2057)
  %i.qx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2062, <4 x double> %wide.load2060, <4 x double> %wide.load2058)
  %i.qy = fmul <4 x double> %broadcast.splat2064, %i.qw ; 2 uses
  %i.qz = fmul <4 x double> %broadcast.splat2064, %i.qx ; 2 uses
  %i.ra = fsub <4 x double> %wide.load2057, %i.qy
  %i.rb = fsub <4 x double> %wide.load2058, %i.qz
  store <4 x double> %i.ra, ptr %i.qs, align 8, !tbaa !9, !alias.scope !38, !noalias !40
  store <4 x double> %i.rb, ptr %i.qt, align 8, !tbaa !9, !alias.scope !38, !noalias !40
  %wide.load2065 = load <4 x double>, ptr %i.qu, align 8, !tbaa !9, !alias.scope !42, !noalias !35
  %wide.load2066 = load <4 x double>, ptr %i.qv, align 8, !tbaa !9, !alias.scope !42, !noalias !35
  %i.rc = fneg <4 x double> %i.qy
  %i.rd = fneg <4 x double> %i.qz
  %i.re = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.rc, <4 x double> %broadcast.splat2068, <4 x double> %wide.load2065)
  %i.rf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.rd, <4 x double> %broadcast.splat2068, <4 x double> %wide.load2066)
  store <4 x double> %i.re, ptr %i.qu, align 8, !tbaa !9, !alias.scope !42, !noalias !35
  store <4 x double> %i.rf, ptr %i.qv, align 8, !tbaa !9, !alias.scope !42, !noalias !35
  %index.next2069 = add nuw i64 %index2056, 8     ; 2 uses
  %i.rg = icmp eq i64 %index.next2069, %n.vec2054
  br i1 %i.rg, label %middle.block2070, label %vector.body2055, !llvm.loop !43

middle.block2070:                                 ; preds = %vector.body2055
  %cmp.n2071 = icmp eq i64 %i.qc, %n.vec2054
  br i1 %cmp.n2071, label %.loopexit1489, label %scalar.ph2051.preheader

scalar.ph2051.preheader:                          ; preds = %vector.memcheck2028, %.lr.ph1512, %middle.block2070
  %indvars.iv1596.ph = phi i64 [ %i.px, %vector.memcheck2028 ], [ %i.px, %.lr.ph1512 ], [ %i.qo, %middle.block2070 ]
  br label %scalar.ph2051

scalar.ph2051:                                    ; preds = %scalar.ph2051.preheader, %scalar.ph2051
  %indvars.iv1596 = phi i64 [ %indvars.iv.next1597, %scalar.ph2051 ], [ %indvars.iv1596.ph, %scalar.ph2051.preheader ] ; 4 uses
  %i.rh = load double, ptr %i.pq, align 8, !tbaa !9
  %gep1712 = getelementptr [8 x i8], ptr %invariant.gep1711, i64 %indvars.iv1596 ; 2 uses
  %i.ri = load double, ptr %gep1712, align 8, !tbaa !9 ; 2 uses
  %i.rj = load double, ptr %i.pt, align 8, !tbaa !9
  %gep1714 = getelementptr [8 x i8], ptr %invariant.gep1713, i64 %indvars.iv1596 ; 3 uses
  %i.rk = load double, ptr %gep1714, align 8, !tbaa !9
  %i.rl = call double @llvm.fmuladd.f64(double %i.rj, double %i.rk, double %i.ri)
  %i.rm = fmul double %i.rh, %i.rl                ; 2 uses
  %i.rn = fsub double %i.ri, %i.rm
  store double %i.rn, ptr %gep1712, align 8, !tbaa !9
  %i.ro = load double, ptr %i.pt, align 8, !tbaa !9
  %i.rp = load double, ptr %gep1714, align 8, !tbaa !9
  %i.rq = fneg double %i.rm
  %i.rr = call double @llvm.fmuladd.f64(double %i.rq, double %i.ro, double %i.rp)
  store double %i.rr, ptr %gep1714, align 8, !tbaa !9
  %indvars.iv.next1597 = add nuw nsw i64 %indvars.iv1596, 1
  %.not1454.not = icmp samesign ult i64 %indvars.iv1596, %i.qa
  br i1 %.not1454.not, label %scalar.ph2051, label %.loopexit1489, !llvm.loop !44

bb.ap:                                            ; preds = %bb.an
  %i.rs = load i32, ptr %1, align 4, !tbaa !8
  %.not1451 = icmp eq i32 %i.rs, 0
  br i1 %.not1451, label %.loopexit1489, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.rt = load i32, ptr %12, align 4, !tbaa !8    ; 6 uses
  %i.ru = load i32, ptr %11, align 4, !tbaa !8    ; 4 uses
  %.not14521505 = icmp sgt i32 %i.ru, %i.rt
  br i1 %.not14521505, label %.loopexit1489, label %.lr.ph1508

.lr.ph1508:                                       ; preds = %bb.aq
  %i.rv = mul nsw i32 %i.fb, %i.q
  %i.rw = sext i32 %i.rv to i64                   ; 2 uses
  %i.rx = getelementptr [8 x i8], ptr %i.s, i64 %i.rw ; 2 uses
  %i.ry = getelementptr i8, ptr %i.rx, i64 8      ; 6 uses
  %i.rz = mul nsw i32 %i.is, %i.n
  %i.sa = getelementptr i8, ptr %i.rx, i64 16     ; 7 uses
  %i.sb = add nsw i32 %i.fe, 2
  %i.sc = mul nsw i32 %i.sb, %i.n
  %i.sd = sext i32 %i.ru to i64                   ; 6 uses
  %i.se = sext i32 %i.rz to i64                   ; 2 uses
  %i.sf = sext i32 %i.sc to i64                   ; 2 uses
  %i.sg = add i32 %i.rt, 1
  %invariant.gep1707 = getelementptr [8 x i8], ptr %i.p, i64 %i.se ; 4 uses
  %invariant.gep1709 = getelementptr [8 x i8], ptr %i.p, i64 %i.sf ; 4 uses
  %i.sh = sub i32 %i.rt, %i.ru                    ; 2 uses
  %i.si = zext i32 %i.sh to i64
  %i.sj = add nuw nsw i64 %i.si, 1                ; 2 uses
  %min.iters.check2096 = icmp ult i32 %i.sh, 7
  br i1 %min.iters.check2096, label %scalar.ph2095.preheader, label %vector.memcheck2073

vector.memcheck2073:                              ; preds = %.lr.ph1508
  %i.sk = add nsw i64 %i.sd, %i.se
  %i.sl = shl nsw i64 %i.sk, 3                    ; 2 uses
  %scevgep2075 = getelementptr i8, ptr %scevgep2074, i64 %i.sl ; 2 uses
  %i.sm = sub i32 %i.rt, %i.ru
  %i.sn = zext i32 %i.sm to i64
  %i.so = shl nuw nsw i64 %i.sn, 3                ; 2 uses
  %i.sp = getelementptr i8, ptr %scevgep2076, i64 %i.sl
  %scevgep2077 = getelementptr i8, ptr %i.sp, i64 %i.so ; 2 uses
  %i.sq = add nsw i64 %i.sd, %i.sf
  %i.sr = shl nsw i64 %i.sq, 3                    ; 2 uses
  %scevgep2079 = getelementptr i8, ptr %scevgep2078, i64 %i.sr ; 2 uses
  %i.ss = getelementptr i8, ptr %scevgep2080, i64 %i.sr
  %scevgep2081 = getelementptr i8, ptr %i.ss, i64 %i.so ; 2 uses
  %i.st = shl nsw i64 %i.rw, 3
  %scevgep2083 = getelementptr i8, ptr %scevgep2082, i64 %i.st ; 2 uses
  %bound02084 = icmp ult ptr %scevgep2075, %scevgep2081
  %bound12085 = icmp ult ptr %scevgep2079, %scevgep2077
  %found.conflict2086 = and i1 %bound02084, %bound12085
  %bound02087 = icmp ult ptr %scevgep2075, %scevgep2083
  %bound12088 = icmp ult ptr %i.ry, %scevgep2077
  %found.conflict2089 = and i1 %bound02087, %bound12088
  %conflict.rdx2090 = or i1 %found.conflict2086, %found.conflict2089
  %bound02091 = icmp ult ptr %scevgep2079, %scevgep2083
  %bound12092 = icmp ult ptr %i.ry, %scevgep2081
  %found.conflict2093 = and i1 %bound02091, %bound12092
  %conflict.rdx2094 = or i1 %conflict.rdx2090, %found.conflict2093
  br i1 %conflict.rdx2094, label %scalar.ph2095.preheader, label %vector.ph2097

vector.ph2097:                                    ; preds = %vector.memcheck2073
  %n.vec2098 = and i64 %i.sj, 8589934584          ; 3 uses
  %i.su = add nsw i64 %n.vec2098, %i.sd
  %i.sv = load double, ptr %i.ry, align 8, !tbaa !9, !alias.scope !45
  %broadcast.splatinsert2107 = insertelement <4 x double> poison, double %i.sv, i64 0
  %broadcast.splat2108 = shufflevector <4 x double> %broadcast.splatinsert2107, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sw = load double, ptr %i.sa, align 8, !tbaa !9, !alias.scope !45 ; 2 uses
  %broadcast.splatinsert2105 = insertelement <4 x double> poison, double %i.sw, i64 0
  %broadcast.splat2106 = shufflevector <4 x double> %broadcast.splatinsert2105, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2111 = insertelement <4 x double> poison, double %i.sw, i64 0
  %broadcast.splat2112 = shufflevector <4 x double> %broadcast.splatinsert2111, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2099

vector.body2099:                                  ; preds = %vector.body2099, %vector.ph2097
  %index2100 = phi i64 [ 0, %vector.ph2097 ], [ %index.next2113, %vector.body2099 ] ; 2 uses
  %i.sx = add i64 %index2100, %i.sd               ; 2 uses
  %i.sy = getelementptr [8 x i8], ptr %invariant.gep1707, i64 %i.sx ; 3 uses
  %i.sz = getelementptr i8, ptr %i.sy, i64 32     ; 2 uses
  %wide.load2101 = load <4 x double>, ptr %i.sy, align 8, !tbaa !9, !alias.scope !48, !noalias !50 ; 2 uses
  %wide.load2102 = load <4 x double>, ptr %i.sz, align 8, !tbaa !9, !alias.scope !48, !noalias !50 ; 2 uses
  %i.ta = getelementptr [8 x i8], ptr %invariant.gep1709, i64 %i.sx ; 4 uses
  %i.tb = getelementptr i8, ptr %i.ta, i64 32     ; 3 uses
  %wide.load2103 = load <4 x double>, ptr %i.ta, align 8, !tbaa !9, !alias.scope !52, !noalias !45
  %wide.load2104 = load <4 x double>, ptr %i.tb, align 8, !tbaa !9, !alias.scope !52, !noalias !45
  %i.tc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2106, <4 x double> %wide.load2103, <4 x double> %wide.load2101)
  %i.td = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2106, <4 x double> %wide.load2104, <4 x double> %wide.load2102)
  %i.te = fmul <4 x double> %broadcast.splat2108, %i.tc ; 2 uses
  %i.tf = fmul <4 x double> %broadcast.splat2108, %i.td ; 2 uses
  %i.tg = fsub <4 x double> %wide.load2101, %i.te
  %i.th = fsub <4 x double> %wide.load2102, %i.tf
  store <4 x double> %i.tg, ptr %i.sy, align 8, !tbaa !9, !alias.scope !48, !noalias !50
  store <4 x double> %i.th, ptr %i.sz, align 8, !tbaa !9, !alias.scope !48, !noalias !50
  %wide.load2109 = load <4 x double>, ptr %i.ta, align 8, !tbaa !9, !alias.scope !52, !noalias !45
  %wide.load2110 = load <4 x double>, ptr %i.tb, align 8, !tbaa !9, !alias.scope !52, !noalias !45
  %i.ti = fneg <4 x double> %i.te
  %i.tj = fneg <4 x double> %i.tf
  %i.tk = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ti, <4 x double> %broadcast.splat2112, <4 x double> %wide.load2109)
  %i.tl = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.tj, <4 x double> %broadcast.splat2112, <4 x double> %wide.load2110)
  store <4 x double> %i.tk, ptr %i.ta, align 8, !tbaa !9, !alias.scope !52, !noalias !45
  store <4 x double> %i.tl, ptr %i.tb, align 8, !tbaa !9, !alias.scope !52, !noalias !45
  %index.next2113 = add nuw i64 %index2100, 8     ; 2 uses
  %i.tm = icmp eq i64 %index.next2113, %n.vec2098
  br i1 %i.tm, label %middle.block2114, label %vector.body2099, !llvm.loop !53

middle.block2114:                                 ; preds = %vector.body2099
  %cmp.n2115 = icmp eq i64 %i.sj, %n.vec2098
  br i1 %cmp.n2115, label %.loopexit1489, label %scalar.ph2095.preheader

scalar.ph2095.preheader:                          ; preds = %vector.memcheck2073, %.lr.ph1508, %middle.block2114
  %indvars.iv1591.ph = phi i64 [ %i.sd, %vector.memcheck2073 ], [ %i.sd, %.lr.ph1508 ], [ %i.su, %middle.block2114 ] ; 5 uses
  %i.tn = trunc i64 %indvars.iv1591.ph to i32     ; 2 uses
  %i.to = add i32 %i.rt, %i.tn
  %i.tp = and i32 %i.to, 1
  %lcmp.mod.not.not = icmp eq i32 %i.tp, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph2095.prol, label %scalar.ph2095.prol.loopexit

scalar.ph2095.prol:                               ; preds = %scalar.ph2095.preheader
  %i.tq = load double, ptr %i.ry, align 8, !tbaa !9
  %gep1708.prol = getelementptr [8 x i8], ptr %invariant.gep1707, i64 %indvars.iv1591.ph ; 2 uses
  %i.tr = load double, ptr %gep1708.prol, align 8, !tbaa !9 ; 2 uses
  %i.ts = load double, ptr %i.sa, align 8, !tbaa !9
  %gep1710.prol = getelementptr [8 x i8], ptr %invariant.gep1709, i64 %indvars.iv1591.ph ; 3 uses
  %i.tt = load double, ptr %gep1710.prol, align 8, !tbaa !9
  %i.tu = call double @llvm.fmuladd.f64(double %i.ts, double %i.tt, double %i.tr)
  %i.tv = fmul double %i.tq, %i.tu                ; 2 uses
  %i.tw = fsub double %i.tr, %i.tv
  store double %i.tw, ptr %gep1708.prol, align 8, !tbaa !9
  %i.tx = load double, ptr %i.sa, align 8, !tbaa !9
  %i.ty = load double, ptr %gep1710.prol, align 8, !tbaa !9
  %i.tz = fneg double %i.tv
  %i.ua = call double @llvm.fmuladd.f64(double %i.tz, double %i.tx, double %i.ty)
  store double %i.ua, ptr %gep1710.prol, align 8, !tbaa !9
  %indvars.iv.next1592.prol = add nsw i64 %indvars.iv1591.ph, 1
  br label %scalar.ph2095.prol.loopexit

scalar.ph2095.prol.loopexit:                      ; preds = %scalar.ph2095.prol, %scalar.ph2095.preheader
  %indvars.iv1591.unr = phi i64 [ %indvars.iv1591.ph, %scalar.ph2095.preheader ], [ %indvars.iv.next1592.prol, %scalar.ph2095.prol ]
  %i.ub = icmp eq i32 %i.rt, %i.tn
  br i1 %i.ub, label %.loopexit1489, label %scalar.ph2095

scalar.ph2095:                                    ; preds = %scalar.ph2095.prol.loopexit, %scalar.ph2095
  %indvars.iv1591 = phi i64 [ %indvars.iv.next1592.1, %scalar.ph2095 ], [ %indvars.iv1591.unr, %scalar.ph2095.prol.loopexit ] ; 4 uses
  %i.uc = load double, ptr %i.ry, align 8, !tbaa !9
  %gep1708 = getelementptr [8 x i8], ptr %invariant.gep1707, i64 %indvars.iv1591 ; 2 uses
  %i.ud = load double, ptr %gep1708, align 8, !tbaa !9 ; 2 uses
  %i.ue = load double, ptr %i.sa, align 8, !tbaa !9
  %gep1710 = getelementptr [8 x i8], ptr %invariant.gep1709, i64 %indvars.iv1591 ; 3 uses
  %i.uf = load double, ptr %gep1710, align 8, !tbaa !9
  %i.ug = call double @llvm.fmuladd.f64(double %i.ue, double %i.uf, double %i.ud)
  %i.uh = fmul double %i.uc, %i.ug                ; 2 uses
  %i.ui = fsub double %i.ud, %i.uh
  store double %i.ui, ptr %gep1708, align 8, !tbaa !9
  %i.uj = load double, ptr %i.sa, align 8, !tbaa !9
  %i.uk = load double, ptr %gep1710, align 8, !tbaa !9
  %i.ul = fneg double %i.uh
  %i.um = call double @llvm.fmuladd.f64(double %i.ul, double %i.uj, double %i.uk)
  store double %i.um, ptr %gep1710, align 8, !tbaa !9
  %indvars.iv.next1592 = add nsw i64 %indvars.iv1591, 1 ; 2 uses
  %i.un = load double, ptr %i.ry, align 8, !tbaa !9
  %gep1708.1 = getelementptr [8 x i8], ptr %invariant.gep1707, i64 %indvars.iv.next1592 ; 2 uses
  %i.uo = load double, ptr %gep1708.1, align 8, !tbaa !9 ; 2 uses
  %i.up = load double, ptr %i.sa, align 8, !tbaa !9
  %gep1710.1 = getelementptr [8 x i8], ptr %invariant.gep1709, i64 %indvars.iv.next1592 ; 3 uses
  %i.uq = load double, ptr %gep1710.1, align 8, !tbaa !9
  %i.ur = call double @llvm.fmuladd.f64(double %i.up, double %i.uq, double %i.uo)
  %i.us = fmul double %i.un, %i.ur                ; 2 uses
  %i.ut = fsub double %i.uo, %i.us
  store double %i.ut, ptr %gep1708.1, align 8, !tbaa !9
  %i.uu = load double, ptr %i.sa, align 8, !tbaa !9
  %i.uv = load double, ptr %gep1710.1, align 8, !tbaa !9
  %i.uw = fneg double %i.us
  %i.ux = call double @llvm.fmuladd.f64(double %i.uw, double %i.uu, double %i.uv)
end_hunk_0
begin_hunk_1_@dlaqr5_:bb.a
  %.8 = phi double [ %i.agb, %bb.bi ], [ %.7, %bb.bh ] ; 2 uses
  %i.agc = add nsw i32 %i.aas, -2
  %.not1474 = icmp sgt i32 %i.we, %i.agc
  br i1 %.not1474, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.agd = load double, ptr %i.adi, align 8, !tbaa !9 ; 3 uses
  %i.age = fcmp oge double %i.agd, 0.000000e+00
  %i.agf = fneg double %i.agd
  %i.agg = select i1 %i.age, double %i.agd, double %i.agf
  %i.agh = fadd double %.8, %i.agg
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.9 = phi double [ %i.agh, %bb.bk ], [ %.8, %bb.bj ] ; 2 uses
  %i.agi = add nsw i32 %i.aas, -3
  %.not1475 = icmp sgt i32 %i.we, %i.agi
  %i.agj = fcmp oge double %i.aea, 0.000000e+00
  %i.agk = fneg double %i.aea
  %i.agl = select i1 %i.agj, double %i.aea, double %i.agk
  %i.agm = fadd double %i.agl, %.9
  %.10 = select i1 %.not1475, double %.9, double %i.agm ; 2 uses
  %i.agn = add nsw i32 %i.aas, -4
  %.not1476 = icmp sgt i32 %i.we, %i.agn
  br i1 %.not1476, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ago = add nsw i32 %i.we, 4
  %i.agp = add nsw i32 %i.ago, %.pre-phi1653
  %i.agq = sext i32 %i.agp to i64
  %i.agr = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.agq
  %i.ags = load double, ptr %i.agr, align 8, !tbaa !9 ; 3 uses
  %i.agt = fcmp oge double %i.ags, 0.000000e+00
  %i.agu = fneg double %i.ags
  %i.agv = select i1 %i.agt, double %i.ags, double %i.agu
  %i.agw = fadd double %.10, %i.agv
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm, %bb.bc
  %.11 = phi double [ %i.agw, %bb.bm ], [ %.10, %bb.bl ], [ %i.aeu, %bb.bc ]
  %i.agx = fmul double %i.at, %.11                ; 2 uses
  %i.agy = fcmp oge double %i.aeh, 0.000000e+00
  %i.agz = fneg double %i.aeh
  %i.aha = select i1 %i.agy, double %i.aeh, double %i.agz ; 5 uses
  %i.ahb = fcmp oge double %i.ay, %i.agx
  %i.ahc = select i1 %i.ahb, double %i.ay, double %i.agx
  %i.ahd = fcmp ugt double %i.aha, %i.ahc
  br i1 %i.ahd, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ahe = add nsw i32 %.pre-phi1653, %i.we
  %i.ahf = sext i32 %i.ahe to i64
  %i.ahg = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ahf
  %i.ahh = load double, ptr %i.ahg, align 8, !tbaa !9 ; 3 uses
  %i.ahi = fcmp oge double %i.ahh, 0.000000e+00
  %i.ahj = fneg double %i.ahh
  %i.ahk = select i1 %i.ahi, double %i.ahh, double %i.ahj ; 4 uses
  %i.ahl = fcmp oge double %i.aha, %i.ahk
  %i.ahm = select i1 %i.ahl, double %i.aha, double %i.ahk ; 2 uses
  %i.ahn = fsub double %i.aem, %i.aeq             ; 3 uses
  %i.aho = fcmp oge double %i.ahn, 0.000000e+00
  %i.ahp = fneg double %i.ahn
  %i.ahq = select i1 %i.aho, double %i.ahn, double %i.ahp ; 4 uses
  %i.ahr = fcmp oge double %i.aet, %i.ahq
  %i.ahs = select i1 %i.ahr, double %i.aet, double %i.ahq ; 2 uses
  %i.aht = fcmp ole double %i.aet, %i.ahq
  %i.ahu = select i1 %i.aht, double %i.aet, double %i.ahq
  %i.ahv = fadd double %i.ahs, %i.ahm             ; 2 uses
  %i.ahw = fdiv double %i.ahs, %i.ahv
  %i.ahx = fmul double %i.ahu, %i.ahw             ; 2 uses
  %i.ahy = fcmp oeq double %i.ahx, 0.000000e+00
  br i1 %i.ahy, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ahz = fmul double %i.at, %i.ahx              ; 2 uses
  %i.aia = fcmp ole double %i.aha, %i.ahk
  %i.aib = select i1 %i.aia, double %i.aha, double %i.ahk
  %i.aic = fdiv double %i.ahm, %i.ahv
  %i.aid = fmul double %i.aib, %i.aic
  %i.aie = fcmp oge double %i.ay, %i.ahz
  %i.aif = select i1 %i.aie, double %i.ay, double %i.ahz
  %i.aig = fcmp ugt double %i.aid, %i.aif
  br i1 %i.aig, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  store double 0.000000e+00, ptr %i.aeg, align 8, !tbaa !9
  br label %bb.br

bb.br:                                            ; preds = %bb.bb, %bb.bp, %bb.bq, %bb.bn, %._crit_edge1517
  %indvars.iv.next1603 = add nsw i64 %indvars.iv1602, -1
  %.not1455.not = icmp sgt i64 %indvars.iv1602, %i.vg
  %indvar.next1958 = add i32 %indvar1957, 1
  br i1 %.not1455.not, label %bb.ar, label %._crit_edge1522, !llvm.loop !68

._crit_edge1522:                                  ; preds = %bb.br
  br i1 %i.bn, label %.thread1693, label %bb.bs

._crit_edge1522.thread:                           ; preds = %.loopexit1489
  br i1 %i.bn, label %.loopexit, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge1522.thread, %._crit_edge1522
  %i.aih = phi i32 [ %i.vd, %._crit_edge1522.thread ], [ %i.aeb, %._crit_edge1522 ]
  %i.aii = phi i32 [ %i.vc, %._crit_edge1522.thread ], [ %i.aas, %._crit_edge1522 ]
  %i.aij = phi i32 [ %i.vb, %._crit_edge1522.thread ], [ %i.aas, %._crit_edge1522 ] ; 4 uses
  %i.aik = phi i32 [ %i.va, %._crit_edge1522.thread ], [ %i.aas, %._crit_edge1522 ] ; 2 uses
  %i.ail = phi i32 [ %i.uz, %._crit_edge1522.thread ], [ %i.aeb, %._crit_edge1522 ] ; 2 uses
  %i.aim = phi i32 [ %i.uy, %._crit_edge1522.thread ], [ %i.aeb, %._crit_edge1522 ] ; 2 uses
  %i.ain = load i32, ptr %0, align 4, !tbaa !8
  %.not1456 = icmp eq i32 %i.ain, 0
  br i1 %.not1456, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.aio = load i32, ptr %3, align 4, !tbaa !8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %i.aip = phi i32 [ %i.aij, %bb.bs ], [ %i.aii, %bb.bt ] ; 2 uses
  %.11388 = phi i32 [ %i.aij, %bb.bs ], [ %i.aio, %bb.bt ]
  br i1 %.not14551518, label %.loopexit, label %.lr.ph1531

.thread1693:                                      ; preds = %._crit_edge1522
  %.1477 = call i32 @llvm.smin.i32(i32 %i.dy, i32 %i.aas)
  br label %.lr.ph1531

.lr.ph1531:                                       ; preds = %.thread1693, %bb.bu
  %i.aiq = phi i32 [ %i.aas, %.thread1693 ], [ %i.aik, %bb.bu ] ; 5 uses
  %i.air = phi i32 [ %i.aeb, %.thread1693 ], [ %i.ail, %bb.bu ] ; 11 uses
  %i.ais = phi i32 [ %i.aeb, %.thread1693 ], [ %i.aim, %bb.bu ] ; 9 uses
  %.113881695 = phi i32 [ %.1477, %.thread1693 ], [ %.11388, %bb.bu ] ; 3 uses
  %i.ait = phi i32 [ %i.aas, %.thread1693 ], [ %i.aip, %bb.bu ] ; 5 uses
  %i.aiu = phi i32 [ %i.aas, %.thread1693 ], [ %i.aij, %bb.bu ] ; 5 uses
  %i.aiv = add i32 %.013681550, -2
  %i.aiw = sext i32 %.113881695 to i64            ; 2 uses
  %i.aix = sext i32 %i.ez to i64                  ; 2 uses
  %smin1609 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.aix) ; 7 uses
  %i.aiy = sext i32 %i.ew to i64                  ; 4 uses
  %i.aiz = sext i32 %i.air to i64                 ; 2 uses
  %i.aja = trunc i64 %smin1609 to i32
  %i.ajb = shl nsw i32 %i.aja, 1                  ; 2 uses
  %i.ajc = add i32 %i.ep, %i.ajb
  %i.ajd = add i32 %.013681550, %i.ajb
  %i.aje = mul i64 %i.cs, %smin1609
  %scevgep1898 = getelementptr i8, ptr %scevgep1897, i64 %i.aje ; 3 uses
  %smin1900 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.aiy)
  %smin1901 = call i64 @llvm.smin.i64(i64 %smin1900, i64 %i.aix)
  %i.ajf = mul i64 %i.cu, %smin1901
  %scevgep1902 = getelementptr i8, ptr %scevgep1899, i64 %i.ajf ; 3 uses
  %smax1886 = call i64 @llvm.smax.i64(i64 %i.aiz, i64 %i.aiw)
  br label %bb.bv

bb.bv:                                            ; preds = %.lr.ph1531, %._crit_edge1527
  %indvar1883 = phi i32 [ 0, %.lr.ph1531 ], [ %indvar.next1884, %._crit_edge1527 ] ; 2 uses
  %indvars.iv1610 = phi i64 [ %smin1609, %.lr.ph1531 ], [ %indvars.iv.next1611, %._crit_edge1527 ] ; 4 uses
  %indvars.iv1604 = phi i32 [ %i.fe, %.lr.ph1531 ], [ %indvars.iv.next1605, %._crit_edge1527 ] ; 4 uses
  %i.ajg = sext i32 %indvars.iv1604 to i64        ; 2 uses
  %smax1882 = call i64 @llvm.smax.i64(i64 %i.aiz, i64 %i.ajg) ; 2 uses
  %i.ajh = mul i32 %indvar1883, -2                ; 2 uses
  %i.aji = add i32 %i.ajc, %i.ajh
  %i.ajj = sext i32 %i.aji to i64                 ; 2 uses
  %i.ajk = add i64 %smax1882, %i.ajj
  %i.ajl = shl i64 %i.ajk, 3                      ; 2 uses
  %scevgep1885 = getelementptr i8, ptr %scevgep1881, i64 %i.ajl ; 3 uses
  %smax1887 = call i64 @llvm.smax.i64(i64 %smax1886, i64 %i.ajg) ; 2 uses
  %i.ajm = add i64 %smax1887, %i.ajj
  %i.ajn = shl nsw i64 %i.ajm, 3                  ; 2 uses
  %scevgep1888 = getelementptr i8, ptr %9, i64 %i.ajn ; 3 uses
  %i.ajo = add i32 %i.ajd, %i.ajh
  %i.ajp = sext i32 %i.ajo to i64                 ; 2 uses
  %i.ajq = add i64 %smax1882, %i.ajp
  %i.ajr = shl i64 %i.ajq, 3
  %scevgep1890 = getelementptr i8, ptr %scevgep1889, i64 %i.ajr ; 3 uses
  %i.ajs = add i64 %smax1887, %i.ajp
  %i.ajt = shl nsw i64 %i.ajs, 3
  %scevgep1892 = getelementptr i8, ptr %scevgep1891, i64 %i.ajt ; 3 uses
  %scevgep1894 = getelementptr i8, ptr %scevgep1893, i64 %i.ajl ; 3 uses
  %scevgep1896 = getelementptr i8, ptr %scevgep1895, i64 %i.ajn ; 3 uses
  %i.aju = trunc nsw i64 %indvars.iv1610 to i32
  %i.ajv = shl i32 %i.aju, 1                      ; 2 uses
  %i.ajw = add i32 %i.ajv, %.013681550            ; 2 uses
  %i.ajx = call i32 @llvm.smax.i32(i32 %i.air, i32 %i.ajw)
  %.not14681523 = icmp sgt i32 %i.ajx, %.113881695
  br i1 %.not14681523, label %._crit_edge1527, label %.lr.ph1526

.lr.ph1526:                                       ; preds = %bb.bv
  %i.ajy = call i32 @llvm.smax.i32(i32 %i.air, i32 %indvars.iv1604)
  %smax1606 = sext i32 %i.ajy to i64              ; 5 uses
  %i.ajz = add i32 %i.aiv, %i.ajv                 ; 2 uses
  %i.aka = mul nsw i64 %indvars.iv1610, %i.bw
  %i.akb = getelementptr [8 x i8], ptr %i.s, i64 %i.aka ; 3 uses
  %i.akc = getelementptr i8, ptr %i.akb, i64 8    ; 2 uses
  %i.akd = getelementptr i8, ptr %i.akb, i64 16   ; 3 uses
  %i.ake = getelementptr i8, ptr %i.akb, i64 24   ; 3 uses
  %i.akf = sext i32 %i.ajw to i64
  %i.akg = sext i32 %i.ajz to i64
  %invariant.gep1721 = getelementptr [8 x i8], ptr %i.m, i64 %i.akg ; 2 uses
  %invariant.gep1723 = getelementptr [8 x i8], ptr %i.m, i64 %i.akf ; 2 uses
  %i.akh = sext i32 %i.ajz to i64
  %invariant.gep1725 = getelementptr [8 x i8], ptr %i.m, i64 %i.akh ; 2 uses
  %i.aki = call i32 @llvm.smax.i32(i32 %.113881695, i32 %indvars.iv1604)
  %i.akj = sext i32 %i.aki to i64
  %27 = sub nsw i64 %i.akj, %smax1606
  %28 = add nsw i64 %27, 1                        ; 3 uses
  %min.iters.check1930 = icmp ugt i64 %28, 7
  %or.cond2209 = select i1 %min.iters.check1930, i1 %ident.check.not, i1 false
  br i1 %or.cond2209, label %vector.memcheck1880, label %scalar.ph1929.preheader

vector.memcheck1880:                              ; preds = %.lr.ph1526
  %bound01903 = icmp ult ptr %scevgep1885, %scevgep1892
  %bound11904 = icmp ult ptr %scevgep1890, %scevgep1888
  %found.conflict1905 = and i1 %bound01903, %bound11904
  %bound01906 = icmp ult ptr %scevgep1885, %scevgep1896
  %bound11907 = icmp ult ptr %scevgep1894, %scevgep1888
  %found.conflict1908 = and i1 %bound01906, %bound11907
  %conflict.rdx1909 = or i1 %found.conflict1905, %found.conflict1908
  %bound01910 = icmp ult ptr %scevgep1885, %scevgep1902
  %bound11911 = icmp ult ptr %scevgep1898, %scevgep1888
  %found.conflict1912 = and i1 %bound01910, %bound11911
  %i.akk = or i1 %found.conflict1912, %stride.check1913
  %conflict.rdx1914 = or i1 %conflict.rdx1909, %i.akk
  %bound01915 = icmp ult ptr %scevgep1890, %scevgep1896
  %bound11916 = icmp ult ptr %scevgep1894, %scevgep1892
  %found.conflict1917 = and i1 %bound01915, %bound11916
  %conflict.rdx1918 = or i1 %conflict.rdx1914, %found.conflict1917
  %bound01919 = icmp ult ptr %scevgep1890, %scevgep1902
  %bound11920 = icmp ult ptr %scevgep1898, %scevgep1892
  %found.conflict1921 = and i1 %bound01919, %bound11920
  %conflict.rdx1923 = or i1 %found.conflict1921, %conflict.rdx1918
  %bound01924 = icmp ult ptr %scevgep1894, %scevgep1902
  %bound11925 = icmp ult ptr %scevgep1898, %scevgep1896
  %found.conflict1926 = and i1 %bound01924, %bound11925
  %conflict.rdx1928 = or i1 %found.conflict1926, %conflict.rdx1923
  br i1 %conflict.rdx1928, label %scalar.ph1929.preheader, label %vector.ph1931

vector.ph1931:                                    ; preds = %vector.memcheck1880
  %n.vec1932 = and i64 %28, -2                    ; 3 uses
  %i.akl = add nsw i64 %n.vec1932, %smax1606
  %i.akm = load double, ptr %i.akc, align 8, !tbaa !9, !alias.scope !69
  %broadcast.splatinsert1942 = insertelement <2 x double> poison, double %i.akm, i64 0
  %broadcast.splat1943 = shufflevector <2 x double> %broadcast.splatinsert1942, <2 x double> poison, <2 x i32> zeroinitializer
  %i.akn = load double, ptr %i.akd, align 8, !tbaa !9, !alias.scope !69 ; 2 uses
  %broadcast.splatinsert1937 = insertelement <2 x double> poison, double %i.akn, i64 0
  %broadcast.splat1938 = shufflevector <2 x double> %broadcast.splatinsert1937, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ako = load double, ptr %i.ake, align 8, !tbaa !9, !alias.scope !69 ; 2 uses
  %broadcast.splatinsert1940 = insertelement <2 x double> poison, double %i.ako, i64 0
  %broadcast.splat1941 = shufflevector <2 x double> %broadcast.splatinsert1940, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1945 = insertelement <2 x double> poison, double %i.akn, i64 0
  %broadcast.splat1946 = shufflevector <2 x double> %broadcast.splatinsert1945, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1948 = insertelement <2 x double> poison, double %i.ako, i64 0
  %broadcast.splat1949 = shufflevector <2 x double> %broadcast.splatinsert1948, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1933

vector.body1933:                                  ; preds = %vector.body1933, %vector.ph1931
  %index1934 = phi i64 [ 0, %vector.ph1931 ], [ %index.next1950, %vector.body1933 ] ; 2 uses
  %i.akp = add i64 %index1934, %smax1606          ; 3 uses
  %i.akq = getelementptr [8 x i8], ptr %invariant.gep1721, i64 %i.akp
  %i.akr = getelementptr i8, ptr %i.akq, i64 8    ; 2 uses
  %wide.load1935 = load <2 x double>, ptr %i.akr, align 8, !tbaa !9, !alias.scope !72, !noalias !74 ; 2 uses
  %i.aks = getelementptr [8 x i8], ptr %invariant.gep1723, i64 %i.akp ; 3 uses
  %wide.load1936 = load <2 x double>, ptr %i.aks, align 8, !tbaa !9, !alias.scope !77, !noalias !78
  %i.akt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1938, <2 x double> %wide.load1936, <2 x double> %wide.load1935)
  %i.aku = getelementptr [8 x i8], ptr %invariant.gep1725, i64 %i.akp
  %i.akv = getelementptr i8, ptr %i.aku, i64 24   ; 3 uses
  %wide.load1939 = load <2 x double>, ptr %i.akv, align 8, !tbaa !9, !alias.scope !79, !noalias !69
  %i.akw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1941, <2 x double> %wide.load1939, <2 x double> %i.akt)
  %i.akx = fmul <2 x double> %broadcast.splat1943, %i.akw ; 2 uses
  %i.aky = fsub <2 x double> %wide.load1935, %i.akx
  store <2 x double> %i.aky, ptr %i.akr, align 8, !tbaa !9, !alias.scope !72, !noalias !74
  %wide.load1944 = load <2 x double>, ptr %i.aks, align 8, !tbaa !9, !alias.scope !77, !noalias !78
  %i.akz = fneg <2 x double> %i.akx               ; 2 uses
  %i.ala = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.akz, <2 x double> %broadcast.splat1946, <2 x double> %wide.load1944)
  store <2 x double> %i.ala, ptr %i.aks, align 8, !tbaa !9, !alias.scope !77, !noalias !78
  %wide.load1947 = load <2 x double>, ptr %i.akv, align 8, !tbaa !9, !alias.scope !79, !noalias !69
  %i.alb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.akz, <2 x double> %broadcast.splat1949, <2 x double> %wide.load1947)
  store <2 x double> %i.alb, ptr %i.akv, align 8, !tbaa !9, !alias.scope !79, !noalias !69
  %index.next1950 = add nuw i64 %index1934, 2     ; 2 uses
  %i.alc = icmp eq i64 %index.next1950, %n.vec1932
  br i1 %i.alc, label %middle.block1951, label %vector.body1933, !llvm.loop !80

middle.block1951:                                 ; preds = %vector.body1933
  %cmp.n1952 = icmp eq i64 %28, %n.vec1932
  br i1 %cmp.n1952, label %._crit_edge1527, label %scalar.ph1929.preheader

scalar.ph1929.preheader:                          ; preds = %vector.memcheck1880, %.lr.ph1526, %middle.block1951
  %indvars.iv1607.ph = phi i64 [ %smax1606, %vector.memcheck1880 ], [ %smax1606, %.lr.ph1526 ], [ %i.akl, %middle.block1951 ]
  br label %scalar.ph1929

scalar.ph1929:                                    ; preds = %scalar.ph1929.preheader, %scalar.ph1929
  %indvars.iv1607 = phi i64 [ %indvars.iv.next1608, %scalar.ph1929 ], [ %indvars.iv1607.ph, %scalar.ph1929.preheader ] ; 3 uses
  %i.ald = load double, ptr %i.akc, align 8, !tbaa !9
  %i.ale = mul nsw i64 %indvars.iv1607, %i.bt     ; 3 uses
  %gep1722 = getelementptr [8 x i8], ptr %invariant.gep1721, i64 %i.ale
  %i.alf = getelementptr i8, ptr %gep1722, i64 8  ; 2 uses
  %i.alg = load double, ptr %i.alf, align 8, !tbaa !9 ; 2 uses
  %i.alh = load double, ptr %i.akd, align 8, !tbaa !9
  %gep1724 = getelementptr [8 x i8], ptr %invariant.gep1723, i64 %i.ale ; 3 uses
  %i.ali = load double, ptr %gep1724, align 8, !tbaa !9
  %i.alj = call double @llvm.fmuladd.f64(double %i.alh, double %i.ali, double %i.alg)
  %i.alk = load double, ptr %i.ake, align 8, !tbaa !9
  %gep1726 = getelementptr [8 x i8], ptr %invariant.gep1725, i64 %i.ale
  %i.all = getelementptr i8, ptr %gep1726, i64 24 ; 3 uses
  %i.alm = load double, ptr %i.all, align 8, !tbaa !9
  %i.aln = call double @llvm.fmuladd.f64(double %i.alk, double %i.alm, double %i.alj)
  %i.alo = fmul double %i.ald, %i.aln             ; 2 uses
  %i.alp = fsub double %i.alg, %i.alo
  store double %i.alp, ptr %i.alf, align 8, !tbaa !9
  %i.alq = load double, ptr %i.akd, align 8, !tbaa !9
  %i.alr = load double, ptr %gep1724, align 8, !tbaa !9
  %i.als = fneg double %i.alo                     ; 2 uses
  %i.alt = call double @llvm.fmuladd.f64(double %i.als, double %i.alq, double %i.alr)
  store double %i.alt, ptr %gep1724, align 8, !tbaa !9
  %i.alu = load double, ptr %i.ake, align 8, !tbaa !9
  %i.alv = load double, ptr %i.all, align 8, !tbaa !9
  %i.alw = call double @llvm.fmuladd.f64(double %i.als, double %i.alu, double %i.alv)
  store double %i.alw, ptr %i.all, align 8, !tbaa !9
  %indvars.iv.next1608 = add nsw i64 %indvars.iv1607, 1
  %.not1468.not = icmp slt i64 %indvars.iv1607, %i.aiw
  br i1 %.not1468.not, label %scalar.ph1929, label %._crit_edge1527, !llvm.loop !81

._crit_edge1527:                                  ; preds = %scalar.ph1929, %middle.block1951, %bb.bv
  %indvars.iv.next1611 = add nsw i64 %indvars.iv1610, -1
  %.not1458.not = icmp sgt i64 %indvars.iv1610, %i.aiy
  %indvars.iv.next1605 = add i32 %indvars.iv1604, -2
  %indvar.next1884 = add i32 %indvar1883, 1
  br i1 %.not1458.not, label %bb.bv, label %._crit_edge1532, !llvm.loop !82

._crit_edge1532:                                  ; preds = %._crit_edge1527
  br i1 %i.bn, label %.preheader, label %bb.bx

.preheader:                                       ; preds = %._crit_edge1532
  br i1 %.not14551518, label %.loopexit, label %.lr.ph1548

.lr.ph1548:                                       ; preds = %.preheader
  %i.alx = add i32 %i.ee, %.013681550
  %i.aly = sub nsw i32 %i.ais, %.013691572
  %i.alz = load i32, ptr %i.h, align 4, !tbaa !8
  %.reass = add i32 %i.ef, %i.fe
  %i.ama = call i32 @llvm.smin.i32(i32 %i.alz, i32 %.reass) ; 2 uses
  %i.amb = add i32 %i.fd, -1
  %i.amc = add i32 %indvars.iv1594, %i.ais        ; 2 uses
  %i.amd = zext i32 %i.ama to i64                 ; 3 uses
  %i.ame = sext i32 %i.ez to i64
  %smin1627 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.ame)
  %i.amf = sext i32 %i.ew to i64
  %i.amg = trunc i64 %smin1609 to i32
  %i.amh = shl nsw i32 %i.amg, 1                  ; 3 uses
  %i.ami = add i32 %i.er, %i.amh
  %i.amj = mul i32 %i.t, %i.ami
  %i.amk = add i32 %indvar, %i.amh
  %i.aml = mul i32 %i.t, %i.amk
  %i.amm = add i32 %i.es, %i.amh
  %i.amn = mul i32 %i.t, %i.amm
  %i.amo = mul i64 %i.cb, %smin1609
  %scevgep1766 = getelementptr i8, ptr %scevgep1765, i64 %i.amo ; 3 uses
  %i.amp = mul i64 %i.cd, %i.aiy
  %scevgep1768 = getelementptr i8, ptr %scevgep1767, i64 %i.amp ; 3 uses
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph1548, %._crit_edge1545
  %indvar1750 = phi i32 [ 0, %.lr.ph1548 ], [ %indvar.next1751, %._crit_edge1545 ] ; 2 uses
  %indvars.iv1628 = phi i64 [ %smin1627, %.lr.ph1548 ], [ %indvars.iv.next1629, %._crit_edge1545 ] ; 4 uses
  %indvars.iv1620 = phi i32 [ %i.amb, %.lr.ph1548 ], [ %indvars.iv.next1621, %._crit_edge1545 ] ; 3 uses
  %i.amq = mul i32 %i.by, %indvar1750             ; 3 uses
  %i.amr = add i32 %i.amj, %i.amq
  %i.ams = sext i32 %i.amr to i64                 ; 2 uses
  %smax1752 = call i32 @llvm.smax.i32(i32 %indvars.iv1620, i32 %i.amc)
  %smax1753 = call i32 @llvm.smax.i32(i32 %smax1752, i32 1)
  %i.amt = zext nneg i32 %smax1753 to i64         ; 4 uses
  %i.amu = add nsw i64 %i.ams, %i.amt
  %i.amv = shl nsw i64 %i.amu, 3
  %scevgep1754 = getelementptr i8, ptr %scevgep, i64 %i.amv ; 3 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.amd, i64 %i.amt) ; 3 uses
  %i.amw = add nsw i64 %umax, %i.u
  %i.amx = add nsw i64 %i.amw, %i.ams
  %i.amy = shl nsw i64 %i.amx, 3
  %scevgep1756 = getelementptr i8, ptr %scevgep1755, i64 %i.amy ; 3 uses
  %i.amz = add i32 %i.aml, %i.amq
  %i.ana = sext i32 %i.amz to i64                 ; 2 uses
  %i.anb = add nsw i64 %i.ana, %i.amt
  %i.anc = shl nsw i64 %i.anb, 3
  %scevgep1758 = getelementptr i8, ptr %scevgep1757, i64 %i.anc ; 3 uses
  %i.and = add nsw i64 %umax, %i.u
  %i.ane = add nsw i64 %i.and, %i.ana
  %i.anf = shl nsw i64 %i.ane, 3
  %scevgep1760 = getelementptr i8, ptr %scevgep1759, i64 %i.anf ; 3 uses
  %i.ang = add i32 %i.amn, %i.amq
  %i.anh = sext i32 %i.ang to i64                 ; 2 uses
  %i.ani = add nsw i64 %i.anh, %i.amt
  %i.anj = shl nsw i64 %i.ani, 3
  %scevgep1762 = getelementptr i8, ptr %scevgep1761, i64 %i.anj ; 3 uses
  %i.ank = add nsw i64 %umax, %i.u
  %i.anl = add nsw i64 %i.ank, %i.anh
  %i.anm = shl nsw i64 %i.anl, 3
  %scevgep1764 = getelementptr i8, ptr %scevgep1763, i64 %i.anm ; 3 uses
  %i.ann = trunc nsw i64 %indvars.iv1628 to i32
  %i.ano = shl i32 %i.ann, 1                      ; 2 uses
  %i.anp = add i32 %i.ano, -1
  %i.anq = call i32 @llvm.smax.i32(i32 %i.aly, i32 %i.anp)
  %i.anr = call i32 @llvm.smax.i32(i32 %i.anq, i32 1)
  %.not14661541 = icmp sgt i32 %i.anr, %i.ama
  br i1 %.not14661541, label %._crit_edge1545, label %.lr.ph1544

.lr.ph1544:                                       ; preds = %bb.bw
  %smax1622 = call i32 @llvm.smax.i32(i32 %indvars.iv1620, i32 %i.amc)
  %smax1623 = call i32 @llvm.smax.i32(i32 %smax1622, i32 1)
  %i.ans = zext nneg i32 %smax1623 to i64         ; 5 uses
  %i.ant = add i32 %i.alx, %i.ano                 ; 3 uses
  %i.anu = mul nsw i64 %indvars.iv1628, %i.bw
  %i.anv = getelementptr [8 x i8], ptr %i.s, i64 %i.anu ; 3 uses
  %i.anw = getelementptr i8, ptr %i.anv, i64 8    ; 2 uses
  %i.anx = add nsw i32 %i.ant, 1
  %i.any = mul nsw i32 %i.anx, %i.t
  %i.anz = getelementptr i8, ptr %i.anv, i64 16   ; 3 uses
  %i.aoa = add nsw i32 %i.ant, 2
  %i.aob = mul nsw i32 %i.aoa, %i.t
  %i.aoc = getelementptr i8, ptr %i.anv, i64 24   ; 3 uses
  %i.aod = add nsw i32 %i.ant, 3
  %i.aoe = mul nsw i32 %i.aod, %i.t
  %i.aof = sext i32 %i.any to i64
  %i.aog = sext i32 %i.aob to i64
  %i.aoh = sext i32 %i.aoe to i64
  %invariant.gep1733 = getelementptr [8 x i8], ptr %i.v, i64 %i.aof ; 2 uses
  %invariant.gep1735 = getelementptr [8 x i8], ptr %i.v, i64 %i.aog ; 2 uses
  %invariant.gep1737 = getelementptr [8 x i8], ptr %i.v, i64 %i.aoh ; 2 uses
  %i.aoi = call i64 @llvm.usub.sat.i64(i64 %i.amd, i64 %i.ans) ; 2 uses
  %i.aoj = add nuw nsw i64 %i.aoi, 1              ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aoi, 7
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
  %i.aok = or i1 %found.conflict1774, %stride.check
  %conflict.rdx1775 = or i1 %conflict.rdx, %i.aok
  %bound01776 = icmp ult ptr %scevgep1758, %scevgep1764
  %bound11777 = icmp ult ptr %scevgep1762, %scevgep1760
  %found.conflict1778 = and i1 %bound01776, %bound11777
  %conflict.rdx1779 = or i1 %conflict.rdx1775, %found.conflict1778
  %bound01780 = icmp ult ptr %scevgep1758, %scevgep1768
  %bound11781 = icmp ult ptr %scevgep1766, %scevgep1760
  %found.conflict1782 = and i1 %bound01780, %bound11781
  %conflict.rdx1784 = or i1 %found.conflict1782, %conflict.rdx1779
  %bound01785 = icmp ult ptr %scevgep1762, %scevgep1768
  %bound11786 = icmp ult ptr %scevgep1766, %scevgep1764
  %found.conflict1787 = and i1 %bound01785, %bound11786
  %conflict.rdx1789 = or i1 %found.conflict1787, %conflict.rdx1784
  br i1 %conflict.rdx1789, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aoj, 8589934588             ; 3 uses
  %i.aol = add nuw nsw i64 %n.vec, %i.ans
  %i.aom = load double, ptr %i.anw, align 8, !tbaa !9, !alias.scope !83
  %broadcast.splatinsert1794 = insertelement <4 x double> poison, double %i.aom, i64 0
  %broadcast.splat1795 = shufflevector <4 x double> %broadcast.splatinsert1794, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aon = load double, ptr %i.anz, align 8, !tbaa !9, !alias.scope !83 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.aon, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aoo = load double, ptr %i.aoc, align 8, !tbaa !9, !alias.scope !83 ; 2 uses
  %broadcast.splatinsert1792 = insertelement <4 x double> poison, double %i.aoo, i64 0
  %broadcast.splat1793 = shufflevector <4 x double> %broadcast.splatinsert1792, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1797 = insertelement <4 x double> poison, double %i.aon, i64 0
  %broadcast.splat1798 = shufflevector <4 x double> %broadcast.splatinsert1797, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1800 = insertelement <4 x double> poison, double %i.aoo, i64 0
  %broadcast.splat1801 = shufflevector <4 x double> %broadcast.splatinsert1800, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aop = add nuw i64 %index, %i.ans             ; 3 uses
  %i.aoq = getelementptr [8 x i8], ptr %invariant.gep1733, i64 %i.aop ; 2 uses
  %wide.load = load <4 x double>, ptr %i.aoq, align 8, !tbaa !9, !alias.scope !86, !noalias !88 ; 2 uses
  %i.aor = getelementptr [8 x i8], ptr %invariant.gep1735, i64 %i.aop ; 3 uses
  %wide.load1790 = load <4 x double>, ptr %i.aor, align 8, !tbaa !9, !alias.scope !91, !noalias !92
  %i.aos = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load1790, <4 x double> %wide.load)
  %i.aot = getelementptr [8 x i8], ptr %invariant.gep1737, i64 %i.aop ; 3 uses
  %wide.load1791 = load <4 x double>, ptr %i.aot, align 8, !tbaa !9, !alias.scope !93, !noalias !83
  %i.aou = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1793, <4 x double> %wide.load1791, <4 x double> %i.aos)
  %i.aov = fmul <4 x double> %broadcast.splat1795, %i.aou ; 2 uses
  %i.aow = fsub <4 x double> %wide.load, %i.aov
  store <4 x double> %i.aow, ptr %i.aoq, align 8, !tbaa !9, !alias.scope !86, !noalias !88
  %wide.load1796 = load <4 x double>, ptr %i.aor, align 8, !tbaa !9, !alias.scope !91, !noalias !92
  %i.aox = fneg <4 x double> %i.aov               ; 2 uses
  %i.aoy = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aox, <4 x double> %broadcast.splat1798, <4 x double> %wide.load1796)
  store <4 x double> %i.aoy, ptr %i.aor, align 8, !tbaa !9, !alias.scope !91, !noalias !92
  %wide.load1799 = load <4 x double>, ptr %i.aot, align 8, !tbaa !9, !alias.scope !93, !noalias !83
  %i.aoz = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aox, <4 x double> %broadcast.splat1801, <4 x double> %wide.load1799)
  store <4 x double> %i.aoz, ptr %i.aot, align 8, !tbaa !9, !alias.scope !93, !noalias !83
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.apa = icmp eq i64 %index.next, %n.vec
  br i1 %i.apa, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aoj, %n.vec
  br i1 %cmp.n, label %._crit_edge1545, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph1544, %middle.block
  %indvars.iv1624.ph = phi i64 [ %i.ans, %vector.memcheck ], [ %i.ans, %.lr.ph1544 ], [ %i.aol, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv1624 = phi i64 [ %indvars.iv.next1625, %scalar.ph ], [ %indvars.iv1624.ph, %scalar.ph.preheader ] ; 5 uses
  %i.apb = load double, ptr %i.anw, align 8, !tbaa !9
  %gep1734 = getelementptr [8 x i8], ptr %invariant.gep1733, i64 %indvars.iv1624 ; 2 uses
  %i.apc = load double, ptr %gep1734, align 8, !tbaa !9 ; 2 uses
  %i.apd = load double, ptr %i.anz, align 8, !tbaa !9
  %gep1736 = getelementptr [8 x i8], ptr %invariant.gep1735, i64 %indvars.iv1624 ; 3 uses
  %i.ape = load double, ptr %gep1736, align 8, !tbaa !9
  %i.apf = call double @llvm.fmuladd.f64(double %i.apd, double %i.ape, double %i.apc)
  %i.apg = load double, ptr %i.aoc, align 8, !tbaa !9
  %gep1738 = getelementptr [8 x i8], ptr %invariant.gep1737, i64 %indvars.iv1624 ; 3 uses
  %i.aph = load double, ptr %gep1738, align 8, !tbaa !9
  %i.api = call double @llvm.fmuladd.f64(double %i.apg, double %i.aph, double %i.apf)
  %i.apj = fmul double %i.apb, %i.api             ; 2 uses
  %i.apk = fsub double %i.apc, %i.apj
  store double %i.apk, ptr %gep1734, align 8, !tbaa !9
  %i.apl = load double, ptr %i.anz, align 8, !tbaa !9
  %i.apm = load double, ptr %gep1736, align 8, !tbaa !9
  %i.apn = fneg double %i.apj                     ; 2 uses
  %i.apo = call double @llvm.fmuladd.f64(double %i.apn, double %i.apl, double %i.apm)
  store double %i.apo, ptr %gep1736, align 8, !tbaa !9
  %i.app = load double, ptr %i.aoc, align 8, !tbaa !9
  %i.apq = load double, ptr %gep1738, align 8, !tbaa !9
  %i.apr = call double @llvm.fmuladd.f64(double %i.apn, double %i.app, double %i.apq)
  store double %i.apr, ptr %gep1738, align 8, !tbaa !9
  %indvars.iv.next1625 = add nuw nsw i64 %indvars.iv1624, 1
  %.not1466.not = icmp samesign ult i64 %indvars.iv1624, %i.amd
  br i1 %.not1466.not, label %scalar.ph, label %._crit_edge1545, !llvm.loop !95

._crit_edge1545:                                  ; preds = %scalar.ph, %middle.block, %bb.bw
  %indvars.iv.next1629 = add nsw i64 %indvars.iv1628, -1
  %.not1462.not = icmp sgt i64 %indvars.iv1628, %i.amf
  %indvars.iv.next1621 = add i32 %indvars.iv1620, -2
  %indvar.next1751 = add i32 %indvar1750, 1
  br i1 %.not1462.not, label %bb.bw, label %.loopexit, !llvm.loop !96

bb.bx:                                            ; preds = %._crit_edge1532
  %i.aps = load i32, ptr %1, align 4, !tbaa !8
  %.not1459 = icmp eq i32 %i.aps, 0
  %or.cond = or i1 %.not1459, %.not14551518
  br i1 %or.cond, label %.loopexit, label %.lr.ph1540

.lr.ph1540:                                       ; preds = %bb.bx
  %i.apt = add i32 %.013681550, -2
  %i.apu = load i32, ptr %12, align 4, !tbaa !8   ; 6 uses
  %i.apv = load i32, ptr %11, align 4, !tbaa !8   ; 4 uses
  %.not14611533 = icmp sgt i32 %i.apv, %i.apu
  br i1 %.not14611533, label %.loopexit, label %.lr.ph1536.preheader

.lr.ph1536.preheader:                             ; preds = %.lr.ph1540
  %i.apw = sext i32 %i.apv to i64                 ; 6 uses
  %i.apx = add i32 %i.apu, 1
  %i.apy = sext i32 %i.ez to i64
  %smin1617 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.apy)
  %i.apz = sext i32 %i.ew to i64
  %i.aqa = shl nsw i64 %i.apw, 3                  ; 3 uses
  %scevgep1804 = getelementptr i8, ptr %scevgep1803, i64 %i.aqa
  %i.aqb = trunc i64 %smin1609 to i32
  %i.aqc = shl nsw i32 %i.aqb, 1                  ; 3 uses
  %i.aqd = add i32 %i.eq, %i.aqc
  %i.aqe = mul i32 %i.n, %i.aqd
  %i.aqf = sub i32 %i.apu, %i.apv
  %i.aqg = zext i32 %i.aqf to i64
  %i.aqh = add nsw i64 %i.apw, %i.aqg
  %i.aqi = shl nsw i64 %i.aqh, 3                  ; 3 uses
  %scevgep1811 = getelementptr i8, ptr %scevgep1810, i64 %i.aqi
  %scevgep1814 = getelementptr i8, ptr %scevgep1813, i64 %i.aqa
  %i.aqj = add i32 %.013681550, %i.aqc
  %i.aqk = mul i32 %i.n, %i.aqj
  %scevgep1817 = getelementptr i8, ptr %scevgep1816, i64 %i.aqi
  %scevgep1820 = getelementptr i8, ptr %scevgep1819, i64 %i.aqa
  %i.aql = add i32 %indvars.iv1586, %i.aqc
  %i.aqm = mul i32 %i.n, %i.aql
  %scevgep1823 = getelementptr i8, ptr %scevgep1822, i64 %i.aqi
  %i.aqn = mul i64 %i.ck, %smin1609
  %scevgep1826 = getelementptr i8, ptr %scevgep1825, i64 %i.aqn ; 3 uses
  %i.aqo = mul i64 %i.cm, %i.aiy
  %scevgep1828 = getelementptr i8, ptr %scevgep1827, i64 %i.aqo ; 3 uses
  %i.aqp = sub i32 %i.apu, %i.apv                 ; 2 uses
  %i.aqq = zext i32 %i.aqp to i64
  %i.aqr = add nuw nsw i64 %i.aqq, 1              ; 2 uses
  %min.iters.check1856 = icmp ult i32 %i.aqp, 7
  %n.vec1858 = and i64 %i.aqr, 8589934588         ; 3 uses
  %i.aqs = add nsw i64 %n.vec1858, %i.apw
  %cmp.n1878 = icmp eq i64 %i.aqr, %n.vec1858
  br label %.lr.ph1536

.lr.ph1536:                                       ; preds = %.lr.ph1536.preheader, %._crit_edge1537
  %indvar1807 = phi i32 [ 0, %.lr.ph1536.preheader ], [ %indvar.next1808, %._crit_edge1537 ] ; 2 uses
  %indvars.iv1618 = phi i64 [ %smin1617, %.lr.ph1536.preheader ], [ %indvars.iv.next1619, %._crit_edge1537 ] ; 4 uses
  %i.aqt = trunc nsw i64 %indvars.iv1618 to i32
  %i.aqu = shl i32 %i.aqt, 1                      ; 2 uses
  %i.aqv = add i32 %i.apt, %i.aqu                 ; 2 uses
  %i.aqw = mul nsw i64 %indvars.iv1618, %i.bw
  %i.aqx = getelementptr [8 x i8], ptr %i.s, i64 %i.aqw ; 3 uses
  %i.aqy = getelementptr i8, ptr %i.aqx, i64 8    ; 4 uses
  %i.aqz = add nsw i32 %i.aqv, 1
  %i.ara = mul nsw i32 %i.aqz, %i.n
  %i.arb = getelementptr i8, ptr %i.aqx, i64 16   ; 7 uses
  %i.arc = add i32 %i.aqu, %.013681550
  %i.ard = mul nsw i32 %i.arc, %i.n
  %i.are = getelementptr i8, ptr %i.aqx, i64 24   ; 7 uses
  %i.arf = add nsw i32 %i.aqv, 3
  %i.arg = mul nsw i32 %i.arf, %i.n
  %i.arh = sext i32 %i.ara to i64
  %i.ari = sext i32 %i.ard to i64
  %i.arj = sext i32 %i.arg to i64
  %invariant.gep1727 = getelementptr [8 x i8], ptr %i.p, i64 %i.arh ; 4 uses
  %invariant.gep1729 = getelementptr [8 x i8], ptr %i.p, i64 %i.ari ; 4 uses
  %invariant.gep1731 = getelementptr [8 x i8], ptr %i.p, i64 %i.arj ; 4 uses
  br i1 %min.iters.check1856, label %scalar.ph1855.preheader, label %vector.memcheck1802

vector.memcheck1802:                              ; preds = %.lr.ph1536
  %i.ark = mul i32 %i.cg, %indvar1807             ; 3 uses
  %i.arl = add i32 %i.aqm, %i.ark
  %i.arm = sext i32 %i.arl to i64
  %i.arn = shl nsw i64 %i.arm, 3                  ; 2 uses
  %scevgep1824 = getelementptr i8, ptr %scevgep1823, i64 %i.arn ; 3 uses
  %scevgep1821 = getelementptr i8, ptr %scevgep1820, i64 %i.arn ; 3 uses
  %i.aro = add i32 %i.aqk, %i.ark
  %i.arp = sext i32 %i.aro to i64
  %i.arq = shl nsw i64 %i.arp, 3                  ; 2 uses
  %scevgep1818 = getelementptr i8, ptr %scevgep1817, i64 %i.arq ; 3 uses
  %scevgep1815 = getelementptr i8, ptr %scevgep1814, i64 %i.arq ; 3 uses
  %i.arr = add i32 %i.aqe, %i.ark
  %i.ars = sext i32 %i.arr to i64
  %i.art = shl nsw i64 %i.ars, 3                  ; 2 uses
  %scevgep1812 = getelementptr i8, ptr %scevgep1811, i64 %i.art ; 3 uses
  %scevgep1809 = getelementptr i8, ptr %scevgep1804, i64 %i.art ; 3 uses
  %bound01829 = icmp ult ptr %scevgep1809, %scevgep1818
  %bound11830 = icmp ult ptr %scevgep1815, %scevgep1812
  %found.conflict1831 = and i1 %bound01829, %bound11830
  %bound01832 = icmp ult ptr %scevgep1809, %scevgep1824
  %bound11833 = icmp ult ptr %scevgep1821, %scevgep1812
  %found.conflict1834 = and i1 %bound01832, %bound11833
  %conflict.rdx1835 = or i1 %found.conflict1831, %found.conflict1834
  %bound01836 = icmp ult ptr %scevgep1809, %scevgep1828
  %bound11837 = icmp ult ptr %scevgep1826, %scevgep1812
  %found.conflict1838 = and i1 %bound01836, %bound11837
  %i.aru = or i1 %found.conflict1838, %stride.check1839
  %conflict.rdx1840 = or i1 %conflict.rdx1835, %i.aru
  %bound01841 = icmp ult ptr %scevgep1815, %scevgep1824
  %bound11842 = icmp ult ptr %scevgep1821, %scevgep1818
  %found.conflict1843 = and i1 %bound01841, %bound11842
  %conflict.rdx1844 = or i1 %conflict.rdx1840, %found.conflict1843
  %bound01845 = icmp ult ptr %scevgep1815, %scevgep1828
  %bound11846 = icmp ult ptr %scevgep1826, %scevgep1818
  %found.conflict1847 = and i1 %bound01845, %bound11846
  %conflict.rdx1849 = or i1 %found.conflict1847, %conflict.rdx1844
  %bound01850 = icmp ult ptr %scevgep1821, %scevgep1828
  %bound11851 = icmp ult ptr %scevgep1826, %scevgep1824
  %found.conflict1852 = and i1 %bound01850, %bound11851
  %conflict.rdx1854 = or i1 %found.conflict1852, %conflict.rdx1849
  br i1 %conflict.rdx1854, label %scalar.ph1855.preheader, label %vector.ph1857

vector.ph1857:                                    ; preds = %vector.memcheck1802
  %i.arv = load double, ptr %i.aqy, align 8, !tbaa !9, !alias.scope !97
  %broadcast.splatinsert1868 = insertelement <4 x double> poison, double %i.arv, i64 0
  %broadcast.splat1869 = shufflevector <4 x double> %broadcast.splatinsert1868, <4 x double> poison, <4 x i32> zeroinitializer
  %i.arw = load double, ptr %i.arb, align 8, !tbaa !9, !alias.scope !97 ; 2 uses
  %broadcast.splatinsert1863 = insertelement <4 x double> poison, double %i.arw, i64 0
  %broadcast.splat1864 = shufflevector <4 x double> %broadcast.splatinsert1863, <4 x double> poison, <4 x i32> zeroinitializer
  %i.arx = load double, ptr %i.are, align 8, !tbaa !9, !alias.scope !97 ; 2 uses
  %broadcast.splatinsert1866 = insertelement <4 x double> poison, double %i.arx, i64 0
  %broadcast.splat1867 = shufflevector <4 x double> %broadcast.splatinsert1866, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1871 = insertelement <4 x double> poison, double %i.arw, i64 0
  %broadcast.splat1872 = shufflevector <4 x double> %broadcast.splatinsert1871, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1874 = insertelement <4 x double> poison, double %i.arx, i64 0
  %broadcast.splat1875 = shufflevector <4 x double> %broadcast.splatinsert1874, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1859

vector.body1859:                                  ; preds = %vector.body1859, %vector.ph1857
  %index1860 = phi i64 [ 0, %vector.ph1857 ], [ %index.next1876, %vector.body1859 ] ; 2 uses
  %i.ary = add i64 %index1860, %i.apw             ; 3 uses
  %i.arz = getelementptr [8 x i8], ptr %invariant.gep1727, i64 %i.ary ; 2 uses
  %wide.load1861 = load <4 x double>, ptr %i.arz, align 8, !tbaa !9, !alias.scope !100, !noalias !102 ; 2 uses
  %i.asa = getelementptr [8 x i8], ptr %invariant.gep1729, i64 %i.ary ; 3 uses
  %wide.load1862 = load <4 x double>, ptr %i.asa, align 8, !tbaa !9, !alias.scope !105, !noalias !106
  %i.asb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1864, <4 x double> %wide.load1862, <4 x double> %wide.load1861)
  %i.asc = getelementptr [8 x i8], ptr %invariant.gep1731, i64 %i.ary ; 3 uses
  %wide.load1865 = load <4 x double>, ptr %i.asc, align 8, !tbaa !9, !alias.scope !107, !noalias !97
  %i.asd = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1867, <4 x double> %wide.load1865, <4 x double> %i.asb)
  %i.ase = fmul <4 x double> %broadcast.splat1869, %i.asd ; 2 uses
  %i.asf = fsub <4 x double> %wide.load1861, %i.ase
  store <4 x double> %i.asf, ptr %i.arz, align 8, !tbaa !9, !alias.scope !100, !noalias !102
  %wide.load1870 = load <4 x double>, ptr %i.asa, align 8, !tbaa !9, !alias.scope !105, !noalias !106
  %i.asg = fneg <4 x double> %i.ase               ; 2 uses
  %i.ash = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.asg, <4 x double> %broadcast.splat1872, <4 x double> %wide.load1870)
  store <4 x double> %i.ash, ptr %i.asa, align 8, !tbaa !9, !alias.scope !105, !noalias !106
  %wide.load1873 = load <4 x double>, ptr %i.asc, align 8, !tbaa !9, !alias.scope !107, !noalias !97
  %i.asi = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.asg, <4 x double> %broadcast.splat1875, <4 x double> %wide.load1873)
  store <4 x double> %i.asi, ptr %i.asc, align 8, !tbaa !9, !alias.scope !107, !noalias !97
  %index.next1876 = add nuw i64 %index1860, 4     ; 2 uses
  %i.asj = icmp eq i64 %index.next1876, %n.vec1858
end_hunk_1
begin_hunk_2_@dlaqr5_:bb.a
  %i.ava = add i32 %i.auy, 1
  %i.avb = add nuw i32 %i.auw, %i.auz
  %i.avc = sub i32 %i.ava, %i.avb
  store i32 %i.avc, ptr %i.d, align 4, !tbaa !8
  %i.avd = load i32, ptr %22, align 4, !tbaa !8   ; 2 uses
  %.1478 = call i32 @llvm.smin.i32(i32 %i.dy, i32 %.pre1645) ; 2 uses
  %i.ave = add i32 %.1478, 1                      ; 2 uses
  %i.avf = icmp slt i32 %i.avd, 0                 ; 2 uses
  %i.avg = icmp sge i32 %i.ave, %.21389
  %i.avh = icmp slt i32 %.1478, %.21389
  %.in14291556 = select i1 %i.avf, i1 %i.avg, i1 %i.avh
  br i1 %.in14291556, label %.lr.ph1559, label %._crit_edge1560

.lr.ph1559:                                       ; preds = %bb.by
  %i.avi = add i32 %.21389, 1
  %i.avj = mul i32 %i.auw, %i.br
  %i.avk = sext i32 %i.avj to i64
  %i.avl = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.avk
  %i.avm = add nsw i32 %i.auw, %.013691572
  %i.avn = sext i32 %i.ave to i64
  %i.avo = sext i32 %i.avd to i64
  %i.avp = sext i32 %.21389 to i64                ; 2 uses
  %i.avq = sext i32 %i.avm to i64
  %invariant.gep1739 = getelementptr [8 x i8], ptr %i.m, i64 %i.avq
  br label %bb.bz

bb.bz:                                            ; preds = %.lr.ph1559, %bb.bz
  %indvars.iv1635 = phi i64 [ %i.avn, %.lr.ph1559 ], [ %indvars.iv.next1636, %bb.bz ] ; 3 uses
  %i.avr = load i32, ptr %22, align 4, !tbaa !8
  %i.avs = trunc nsw i64 %indvars.iv1635 to i32
  %i.avt = sub i32 %i.avi, %i.avs
  %i.avu = call i32 @llvm.smin.i32(i32 %i.avr, i32 %i.avt)
  store i32 %i.avu, ptr %i.b, align 4, !tbaa !8
  %i.avv = mul nsw i64 %indvars.iv1635, %i.bt
  %gep1740 = getelementptr [8 x i8], ptr %invariant.gep1739, i64 %i.avv ; 2 uses
  call void @dgemm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b8, ptr noundef %i.avl, ptr noundef nonnull %18, ptr noundef %gep1740, ptr noundef nonnull %10, ptr noundef nonnull @c_b7, ptr noundef %23, ptr noundef %24) #4
  call void @dlacpy_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef %23, ptr noundef %24, ptr noundef %gep1740, ptr noundef nonnull %10) #4
  %indvars.iv.next1636 = add nsw i64 %indvars.iv1635, %i.avo ; 3 uses
  %i.avw = icmp sge i64 %indvars.iv.next1636, %i.avp
  %i.avx = icmp sle i64 %indvars.iv.next1636, %i.avp
  %.in1429 = select i1 %i.avf, i1 %i.avw, i1 %i.avx
  br i1 %.in1429, label %bb.bz, label %._crit_edge1560.loopexit, !llvm.loop !112

._crit_edge1560.loopexit:                         ; preds = %bb.bz
  %.pre1646 = load i32, ptr %4, align 4, !tbaa !8
  br label %._crit_edge1560

._crit_edge1560:                                  ; preds = %._crit_edge1560.loopexit, %bb.by
  %i.avy = phi i32 [ %.pre1646, %._crit_edge1560.loopexit ], [ %.pre1644, %bb.by ]
  %.01369.1479 = call i32 @llvm.smax.i32(i32 %i.avy, i32 %.013691572) ; 3 uses
  %i.avz = add nsw i32 %.01369.1479, -1           ; 2 uses
  %i.awa = load i32, ptr %19, align 4, !tbaa !8   ; 2 uses
  %i.awb = icmp slt i32 %i.awa, 0                 ; 2 uses
  %i.awc = icmp sge i32 %spec.select1745, %i.avz
  %i.awd = icmp slt i32 %spec.select1745, %.01369.1479
  %.in14311561 = select i1 %i.awb, i1 %i.awc, i1 %i.awd
  br i1 %.in14311561, label %.lr.ph1564, label %._crit_edge1565

.lr.ph1564:                                       ; preds = %._crit_edge1560
  %i.awe = add nsw i32 %i.auw, %.013691572
  %i.awf = mul nsw i32 %i.awe, %i.k
  %i.awg = mul i32 %i.auw, %i.br
  %i.awh = sext i32 %i.awg to i64
  %i.awi = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.awh
  %i.awj = sext i32 %spec.select1745 to i64
  %i.awk = sext i32 %i.awa to i64
  %i.awl = sext i32 %.01369.1479 to i64
  %i.awm = sext i32 %i.avz to i64
  %i.awn = sext i32 %i.awf to i64
  %invariant.gep1741 = getelementptr [8 x i8], ptr %i.m, i64 %i.awn
  br label %bb.ca

bb.ca:                                            ; preds = %.lr.ph1564, %bb.ca
  %indvars.iv1638 = phi i64 [ %i.awj, %.lr.ph1564 ], [ %indvars.iv.next1639, %bb.ca ] ; 3 uses
  %i.awo = load i32, ptr %19, align 4, !tbaa !8
  %i.awp = load i32, ptr %4, align 4, !tbaa !8
  %.01369.1480 = call i32 @llvm.smax.i32(i32 %i.awp, i32 %.013691572)
  %i.awq = trunc nsw i64 %indvars.iv1638 to i32
  %i.awr = sub nsw i32 %.01369.1480, %i.awq
  %i.aws = call i32 @llvm.smin.i32(i32 %i.awo, i32 %i.awr)
  store i32 %i.aws, ptr %i.b, align 4, !tbaa !8
  %gep1742 = getelementptr [8 x i8], ptr %invariant.gep1741, i64 %indvars.iv1638 ; 2 uses
  call void @dgemm_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b8, ptr noundef %gep1742, ptr noundef nonnull %10, ptr noundef %i.awi, ptr noundef nonnull %18, ptr noundef nonnull @c_b7, ptr noundef %20, ptr noundef %21) #4
  call void @dlacpy_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef %20, ptr noundef %21, ptr noundef %gep1742, ptr noundef nonnull %10) #4
  %indvars.iv.next1639 = add nsw i64 %indvars.iv1638, %i.awk ; 3 uses
  %i.awt = icmp sge i64 %indvars.iv.next1639, %i.awm
  %i.awu = icmp slt i64 %indvars.iv.next1639, %i.awl
  %.in1431 = select i1 %i.awb, i1 %i.awt, i1 %i.awu
  br i1 %.in1431, label %bb.ca, label %._crit_edge1565, !llvm.loop !113

._crit_edge1565:                                  ; preds = %bb.ca, %._crit_edge1560
  %i.awv = load i32, ptr %1, align 4, !tbaa !8
  %.not1432 = icmp eq i32 %i.awv, 0
  br i1 %.not1432, label %.loopexit1491, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge1565
  %i.aww = load i32, ptr %12, align 4, !tbaa !8   ; 3 uses
  %i.awx = load i32, ptr %19, align 4, !tbaa !8   ; 2 uses
  %i.awy = load i32, ptr %11, align 4, !tbaa !8   ; 3 uses
  %i.awz = icmp slt i32 %i.awx, 0                 ; 2 uses
  %i.axa = icmp sge i32 %i.awy, %i.aww
  %i.axb = icmp sle i32 %i.awy, %i.aww
  %.in14331566 = select i1 %i.awz, i1 %i.axa, i1 %i.axb
  br i1 %.in14331566, label %.lr.ph1569, label %.loopexit1491

.lr.ph1569:                                       ; preds = %bb.cb
  %i.axc = add nsw i32 %i.auw, %.013691572
  %i.axd = mul nsw i32 %i.axc, %i.n
  %i.axe = mul i32 %i.auw, %i.br
  %i.axf = sext i32 %i.axe to i64
  %i.axg = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.axf
  %i.axh = sext i32 %i.awy to i64
  %i.axi = sext i32 %i.awx to i64
  %i.axj = sext i32 %i.aww to i64                 ; 2 uses
  %i.axk = sext i32 %i.axd to i64
  %invariant.gep1743 = getelementptr [8 x i8], ptr %i.p, i64 %i.axk
  br label %bb.cc

bb.cc:                                            ; preds = %.lr.ph1569, %bb.cc
  %indvars.iv1641 = phi i64 [ %i.axh, %.lr.ph1569 ], [ %indvars.iv.next1642, %bb.cc ] ; 3 uses
  %i.axl = load i32, ptr %19, align 4, !tbaa !8
  %i.axm = load i32, ptr %12, align 4, !tbaa !8
  %i.axn = trunc nsw i64 %indvars.iv1641 to i32
  %reass.sub1577 = sub i32 %i.axm, %i.axn
  %i.axo = add i32 %reass.sub1577, 1
  %i.axp = call i32 @llvm.smin.i32(i32 %i.axl, i32 %i.axo)
  store i32 %i.axp, ptr %i.b, align 4, !tbaa !8
  %gep1744 = getelementptr [8 x i8], ptr %invariant.gep1743, i64 %indvars.iv1641 ; 2 uses
  call void @dgemm_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b8, ptr noundef %gep1744, ptr noundef nonnull %14, ptr noundef %i.axg, ptr noundef nonnull %18, ptr noundef nonnull @c_b7, ptr noundef %20, ptr noundef nonnull %21) #4
  call void @dlacpy_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef %20, ptr noundef nonnull %21, ptr noundef %gep1744, ptr noundef nonnull %14) #4
  %indvars.iv.next1642 = add nsw i64 %indvars.iv1641, %i.axi ; 3 uses
  %i.axq = icmp sge i64 %indvars.iv.next1642, %i.axj
  %i.axr = icmp sle i64 %indvars.iv.next1642, %i.axj
  %.in1433 = select i1 %i.awz, i1 %i.axq, i1 %i.axr
  br i1 %.in1433, label %bb.cc, label %.loopexit1491, !llvm.loop !114

.loopexit1491:                                    ; preds = %bb.cc, %bb.cb, %._crit_edge1555, %._crit_edge1565
  %indvars.iv.next1595 = sub i32 %indvars.iv1594, %i.bk
  %.not1483 = icmp sgt i32 %i.dz, %i.bj
  %indvars.iv.next1585 = add i32 %indvars.iv1584, %i.bk
  %indvars.iv.next1631 = add i32 %indvars.iv1630, %i.bk
  %indvar.next1806 = add i32 %indvar1805, 1
  br i1 %.not1483, label %.loopexit1492, label %bb.h, !llvm.loop !115

.loopexit1492:                                    ; preds = %.loopexit1491, %bb.g, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare void @dlabad_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlaqr1_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlarfg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @dgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14}
!14 = distinct !{!14, !15}
!15 = distinct !{!15, !"LVerDomain"}
!16 = !{!17}
!17 = distinct !{!17, !15}
!18 = !{!19, !14}
!19 = distinct !{!19, !15}
!20 = !{!19}
!21 = distinct !{!21, !12, !22, !23}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !12, !22}
!25 = !{!26}
!26 = distinct !{!26, !27}
!27 = distinct !{!27, !"LVerDomain"}
!28 = !{!29}
!29 = distinct !{!29, !27}
!30 = !{!31, !26}
!31 = distinct !{!31, !27}
!32 = !{!31}
!33 = distinct !{!33, !12, !22, !23}
!34 = distinct !{!34, !12, !22}
!35 = !{!36}
!36 = distinct !{!36, !37}
!37 = distinct !{!37, !"LVerDomain"}
!38 = !{!39}
!39 = distinct !{!39, !37}
!40 = !{!41, !36}
!41 = distinct !{!41, !37}
!42 = !{!41}
!43 = distinct !{!43, !12, !22, !23}
!44 = distinct !{!44, !12, !22}
!45 = !{!46}
!46 = distinct !{!46, !47}
!47 = distinct !{!47, !"LVerDomain"}
!48 = !{!49}
!49 = distinct !{!49, !47}
!50 = !{!51, !46}
!51 = distinct !{!51, !47}
!52 = !{!51}
!53 = distinct !{!53, !12, !22, !23}
!54 = distinct !{!54, !12, !22}
!55 = !{!56}
!56 = distinct !{!56, !57}
!57 = distinct !{!57, !"LVerDomain"}
!58 = !{!59}
!59 = distinct !{!59, !57}
!60 = !{!61, !62, !56}
!61 = distinct !{!61, !57}
!62 = distinct !{!62, !57}
!63 = !{!61}
!64 = !{!62, !56}
!65 = !{!62}
!66 = distinct !{!66, !12, !22, !23}
!67 = distinct !{!67, !12, !22}
!68 = distinct !{!68, !12}
!69 = !{!70}
!70 = distinct !{!70, !71}
!71 = distinct !{!71, !"LVerDomain"}
!72 = !{!73}
!73 = distinct !{!73, !71}
!74 = !{!75, !76, !70}
!75 = distinct !{!75, !71}
!76 = distinct !{!76, !71}
!77 = !{!75}
!78 = !{!76, !70}
!79 = !{!76}
!80 = distinct !{!80, !12, !22, !23}
!81 = distinct !{!81, !12, !22}
!82 = distinct !{!82, !12}
!83 = !{!84}
!84 = distinct !{!84, !85}
!85 = distinct !{!85, !"LVerDomain"}
!86 = !{!87}
!87 = distinct !{!87, !85}
!88 = !{!89, !90, !84}
!89 = distinct !{!89, !85}
!90 = distinct !{!90, !85}
!91 = !{!89}
!92 = !{!90, !84}
!93 = !{!90}
!94 = distinct !{!94, !12, !22, !23}
!95 = distinct !{!95, !12, !22}
!96 = distinct !{!96, !12}
!97 = !{!98}
!98 = distinct !{!98, !99}
!99 = distinct !{!99, !"LVerDomain"}
!100 = !{!101}
!101 = distinct !{!101, !99}
!102 = !{!103, !104, !98}
!103 = distinct !{!103, !99}
!104 = distinct !{!104, !99}
!105 = !{!103}
!106 = !{!104, !98}
!107 = !{!104}
!108 = distinct !{!108, !12, !22, !23}
!109 = distinct !{!109, !12, !22}
!110 = distinct !{!110, !12}
!111 = distinct !{!111, !12}
!112 = distinct !{!112, !12}
!113 = distinct !{!113, !12}
!114 = distinct !{!114, !12}
!115 = distinct !{!115, !12}
end_hunk_2
