loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dlaqr5_:bb.a
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
  %i.je = add i64 %i.jd, 1
  %i.jf = sub i64 %i.je, %i.iz                    ; 3 uses
  %min.iters.check2142 = icmp ugt i64 %i.jf, 7
  %or.cond2208 = select i1 %min.iters.check2142, i1 %ident.check2118.not, i1 false
  br i1 %or.cond2208, label %vector.memcheck2119, label %scalar.ph2141.preheader

vector.memcheck2119:                              ; preds = %.lr.ph1503
  %i.jg = shl nsw i64 %i.iz, 4
  %scevgep2121 = getelementptr i8, ptr %scevgep2120, i64 %i.jg ; 2 uses
  %smax2123 = call i64 @llvm.smax.i64(i64 %i.jb, i64 %i.iz) ; 2 uses
  %i.jh = add nsw i64 %smax2123, %i.iz
  %i.ji = shl nsw i64 %i.jh, 3
  %scevgep2124 = getelementptr i8, ptr %scevgep2122, i64 %i.ji ; 2 uses
  %i.jj = add nsw i64 %i.iz, %i.jc
  %i.jk = shl nsw i64 %i.jj, 3
  %scevgep2125 = getelementptr i8, ptr %9, i64 %i.jk ; 2 uses
  %i.jl = add nsw i64 %smax2123, %i.jc
  %i.jm = shl nsw i64 %i.jl, 3
  %scevgep2127 = getelementptr i8, ptr %scevgep2126, i64 %i.jm ; 2 uses
  %i.jn = shl nsw i64 %i.iu, 3
  %scevgep2129 = getelementptr i8, ptr %scevgep2128, i64 %i.jn ; 2 uses
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
  %n.vec2144 = and i64 %i.jf, -8                  ; 3 uses
  %i.jo = add i64 %n.vec2144, %i.iz
  %i.jp = load double, ptr %i.iw, align 8, !tbaa !9, !alias.scope !25
  %broadcast.splatinsert2153 = insertelement <4 x double> poison, double %i.jp, i64 0
  %broadcast.splat2154 = shufflevector <4 x double> %broadcast.splatinsert2153, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jq = load double, ptr %i.ix, align 8, !tbaa !9, !alias.scope !25 ; 2 uses
  %broadcast.splatinsert2151 = insertelement <4 x double> poison, double %i.jq, i64 0
  %broadcast.splat2152 = shufflevector <4 x double> %broadcast.splatinsert2151, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2155 = insertelement <4 x double> poison, double %i.jq, i64 0
  %broadcast.splat2156 = shufflevector <4 x double> %broadcast.splatinsert2155, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2145

vector.body2145:                                  ; preds = %vector.body2145, %vector.ph2143
  %index2146 = phi i64 [ 0, %vector.ph2143 ], [ %index.next2157, %vector.body2145 ] ; 2 uses
  %i.jr = add i64 %index2146, %i.iz               ; 2 uses
  %i.js = getelementptr [8 x i8], ptr %invariant.gep1703, i64 %i.jr ; 3 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 32     ; 2 uses
  %wide.load2147 = load <4 x double>, ptr %i.js, align 8, !tbaa !9, !alias.scope !28, !noalias !30 ; 2 uses
  %wide.load2148 = load <4 x double>, ptr %i.jt, align 8, !tbaa !9, !alias.scope !28, !noalias !30 ; 2 uses
  %i.ju = getelementptr [8 x i8], ptr %invariant.gep1705, i64 %i.jr ; 2 uses
  %i.jv = getelementptr i8, ptr %i.ju, i64 16     ; 2 uses
  %i.jw = getelementptr i8, ptr %i.ju, i64 48     ; 2 uses
  %wide.load2149 = load <4 x double>, ptr %i.jv, align 8, !tbaa !9, !alias.scope !32, !noalias !25 ; 2 uses
  %wide.load2150 = load <4 x double>, ptr %i.jw, align 8, !tbaa !9, !alias.scope !32, !noalias !25 ; 2 uses
  %i.jx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2152, <4 x double> %wide.load2149, <4 x double> %wide.load2147)
  %i.jy = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2152, <4 x double> %wide.load2150, <4 x double> %wide.load2148)
  %i.jz = fmul <4 x double> %broadcast.splat2154, %i.jx ; 2 uses
  %i.ka = fmul <4 x double> %broadcast.splat2154, %i.jy ; 2 uses
  %i.kb = fsub <4 x double> %wide.load2147, %i.jz
  %i.kc = fsub <4 x double> %wide.load2148, %i.ka
  store <4 x double> %i.kb, ptr %i.js, align 8, !tbaa !9, !alias.scope !28, !noalias !30
  store <4 x double> %i.kc, ptr %i.jt, align 8, !tbaa !9, !alias.scope !28, !noalias !30
  %i.kd = fneg <4 x double> %i.jz
  %i.ke = fneg <4 x double> %i.ka
  %i.kf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kd, <4 x double> %broadcast.splat2156, <4 x double> %wide.load2149)
  %i.kg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ke, <4 x double> %broadcast.splat2156, <4 x double> %wide.load2150)
  store <4 x double> %i.kf, ptr %i.jv, align 8, !tbaa !9, !alias.scope !32, !noalias !25
  store <4 x double> %i.kg, ptr %i.jw, align 8, !tbaa !9, !alias.scope !32, !noalias !25
  %index.next2157 = add nuw i64 %index2146, 8     ; 2 uses
  %i.kh = icmp eq i64 %index.next2157, %n.vec2144
  br i1 %i.kh, label %middle.block2158, label %vector.body2145, !llvm.loop !33

middle.block2158:                                 ; preds = %vector.body2145
  %cmp.n2159 = icmp eq i64 %i.jf, %n.vec2144
  br i1 %cmp.n2159, label %._crit_edge1504, label %scalar.ph2141.preheader

scalar.ph2141.preheader:                          ; preds = %vector.memcheck2119, %.lr.ph1503, %middle.block2158
  %indvars.iv1588.ph = phi i64 [ %i.iz, %vector.memcheck2119 ], [ %i.iz, %.lr.ph1503 ], [ %i.jo, %middle.block2158 ]
  br label %scalar.ph2141

scalar.ph2141:                                    ; preds = %scalar.ph2141.preheader, %scalar.ph2141
  %indvars.iv1588 = phi i64 [ %indvars.iv.next1589, %scalar.ph2141 ], [ %indvars.iv1588.ph, %scalar.ph2141.preheader ] ; 3 uses
  %i.ki = load double, ptr %i.iw, align 8, !tbaa !9
  %i.kj = mul nsw i64 %indvars.iv1588, %i.bt      ; 2 uses
  %gep1704 = getelementptr [8 x i8], ptr %invariant.gep1703, i64 %i.kj ; 2 uses
  %i.kk = load double, ptr %gep1704, align 8, !tbaa !9 ; 2 uses
  %i.kl = load double, ptr %i.ix, align 8, !tbaa !9
  %gep1706 = getelementptr [8 x i8], ptr %invariant.gep1705, i64 %i.kj
  %i.km = getelementptr i8, ptr %gep1706, i64 16  ; 2 uses
  %i.kn = load double, ptr %i.km, align 8, !tbaa !9 ; 2 uses
  %i.ko = call double @llvm.fmuladd.f64(double %i.kl, double %i.kn, double %i.kk)
  %i.kp = fmul double %i.ki, %i.ko                ; 2 uses
  %i.kq = fsub double %i.kk, %i.kp
  store double %i.kq, ptr %gep1704, align 8, !tbaa !9
  %i.kr = load double, ptr %i.ix, align 8, !tbaa !9
  %i.ks = fneg double %i.kp
  %i.kt = call double @llvm.fmuladd.f64(double %i.ks, double %i.kr, double %i.kn)
  store double %i.kt, ptr %i.km, align 8, !tbaa !9
  %indvars.iv.next1589 = add nsw i64 %indvars.iv1588, 1
  %.not1443.not = icmp slt i64 %indvars.iv1588, %i.jb
  br i1 %.not1443.not, label %scalar.ph2141, label %._crit_edge1504, !llvm.loop !34

._crit_edge1504:                                  ; preds = %scalar.ph2141, %middle.block2158, %bb.u
  %i.ku = load i32, ptr %4, align 4, !tbaa !8     ; 30 uses
  %.not1444 = icmp slt i32 %i.fe, %i.ku
  br i1 %.not1444, label %bb.an, label %bb.v

bb.v:                                             ; preds = %._crit_edge1504
  %i.kv = mul nsw i32 %i.fe, %i.k                 ; 2 uses
  %i.kw = add nsw i32 %i.is, %i.kv
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.kx ; 2 uses
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !9 ; 4 uses
  %i.la = fcmp une double %i.kz, 0.000000e+00
  br i1 %i.la, label %bb.w, label %bb.an

bb.w:                                             ; preds = %bb.v
  %i.lb = add nsw i32 %i.kv, %i.fe
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.lc
  %i.le = load double, ptr %i.ld, align 8, !tbaa !9 ; 4 uses
  %i.lf = fcmp oge double %i.le, 0.000000e+00
  %i.lg = fneg double %i.le
  %i.lh = select i1 %i.lf, double %i.le, double %i.lg
  %i.li = mul nsw i32 %i.is, %i.k                 ; 5 uses
  %i.lj = add nsw i32 %i.li, %i.is
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.lk
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !9 ; 4 uses
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
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !9 ; 3 uses
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
  %i.mi = load double, ptr %i.mh, align 8, !tbaa !9 ; 3 uses
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
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !9 ; 3 uses
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
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !9 ; 3 uses
  %i.ne = fcmp oge double %i.nd, 0.000000e+00
  %i.nf = fneg double %i.nd
  %i.ng = select i1 %i.ne, double %i.nd, double %i.nf
  %i.nh = fadd double %.2, %i.ng
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.3 = phi double [ %i.nh, %bb.ae ], [ %.2, %bb.ad ] ; 2 uses
  %i.ni = add nsw i32 %i.gp, -3
end_hunk_0
begin_hunk_1_@dlaqr5_:bb.a
  br i1 %i.oh, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.oi = add nsw i32 %i.li, %i.fe
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.oj
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !9 ; 3 uses
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
  store double 0.000000e+00, ptr %i.ky, align 8, !tbaa !9
  br label %bb.an

bb.an:                                            ; preds = %bb.v, %bb.al, %bb.am, %bb.aj, %._crit_edge1504
  br i1 %i.bn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.pl = sub nsw i32 %i.ku, %.013691572
  %i.pm = load i32, ptr %i.h, align 4, !tbaa !8   ; 2 uses
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
  %min.iters.check2052 = icmp ult i64 %i.qf, 8
  br i1 %min.iters.check2052, label %scalar.ph2051.preheader, label %vector.memcheck2028

vector.memcheck2028:                              ; preds = %.lr.ph1512
  %i.qg = add nsw i64 %i.qa, %i.pz
  %i.qh = shl nsw i64 %i.qg, 3
  %scevgep2030 = getelementptr i8, ptr %scevgep2029, i64 %i.qh ; 2 uses
  %umax2032 = call i64 @llvm.umax.i64(i64 %i.qc, i64 %i.pz) ; 2 uses
  %i.qi = add nsw i64 %umax2032, %i.u
  %i.qj = add nsw i64 %i.qi, %i.qa
  %i.qk = shl nsw i64 %i.qj, 3
  %scevgep2033 = getelementptr i8, ptr %scevgep2031, i64 %i.qk ; 2 uses
  %i.ql = add nsw i64 %i.qb, %i.pz
  %i.qm = shl nsw i64 %i.ql, 3
  %scevgep2035 = getelementptr i8, ptr %scevgep2034, i64 %i.qm ; 2 uses
  %i.qn = add nsw i64 %umax2032, %i.u
  %i.qo = add nsw i64 %i.qn, %i.qb
  %i.qp = shl nsw i64 %i.qo, 3
  %scevgep2037 = getelementptr i8, ptr %scevgep2036, i64 %i.qp ; 2 uses
  %i.qq = shl nsw i64 %i.pq, 3
  %scevgep2039 = getelementptr i8, ptr %scevgep2038, i64 %i.qq ; 2 uses
  %bound02040 = icmp ult ptr %scevgep2030, %scevgep2037
  %bound12041 = icmp ult ptr %scevgep2035, %scevgep2033
  %found.conflict2042 = and i1 %bound02040, %bound12041
  %bound02043 = icmp ult ptr %scevgep2030, %scevgep2039
  %bound12044 = icmp ult ptr %i.ps, %scevgep2033
  %found.conflict2045 = and i1 %bound02043, %bound12044
  %conflict.rdx2046 = or i1 %found.conflict2042, %found.conflict2045
  %bound02047 = icmp ult ptr %scevgep2035, %scevgep2039
  %bound12048 = icmp ult ptr %i.ps, %scevgep2037
  %found.conflict2049 = and i1 %bound02047, %bound12048
  %conflict.rdx2050 = or i1 %conflict.rdx2046, %found.conflict2049
  br i1 %conflict.rdx2050, label %scalar.ph2051.preheader, label %vector.ph2053

vector.ph2053:                                    ; preds = %vector.memcheck2028
  %n.vec2054 = and i64 %i.qf, -8                  ; 3 uses
  %i.qr = add nsw i64 %n.vec2054, %i.pz
  %i.qs = load double, ptr %i.ps, align 8, !tbaa !9, !alias.scope !35
  %broadcast.splatinsert2063 = insertelement <4 x double> poison, double %i.qs, i64 0
  %broadcast.splat2064 = shufflevector <4 x double> %broadcast.splatinsert2063, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.qt = load double, ptr %i.pv, align 8, !tbaa !9, !alias.scope !35 ; 2 uses
  %broadcast.splatinsert2061 = insertelement <4 x double> poison, double %i.qt, i64 0
  %broadcast.splat2062 = shufflevector <4 x double> %broadcast.splatinsert2061, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2067 = insertelement <4 x double> poison, double %i.qt, i64 0
  %broadcast.splat2068 = shufflevector <4 x double> %broadcast.splatinsert2067, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2055

vector.body2055:                                  ; preds = %vector.body2055, %vector.ph2053
  %index2056 = phi i64 [ 0, %vector.ph2053 ], [ %index.next2069, %vector.body2055 ] ; 2 uses
  %i.qu = add nuw i64 %index2056, %i.pz           ; 2 uses
  %i.qv = getelementptr [8 x i8], ptr %invariant.gep1711, i64 %i.qu ; 3 uses
  %i.qw = getelementptr i8, ptr %i.qv, i64 32     ; 2 uses
  %wide.load2057 = load <4 x double>, ptr %i.qv, align 8, !tbaa !9, !alias.scope !38, !noalias !40 ; 2 uses
  %wide.load2058 = load <4 x double>, ptr %i.qw, align 8, !tbaa !9, !alias.scope !38, !noalias !40 ; 2 uses
  %i.qx = getelementptr [8 x i8], ptr %invariant.gep1713, i64 %i.qu ; 4 uses
  %i.qy = getelementptr i8, ptr %i.qx, i64 32     ; 3 uses
  %wide.load2059 = load <4 x double>, ptr %i.qx, align 8, !tbaa !9, !alias.scope !42, !noalias !35
  %wide.load2060 = load <4 x double>, ptr %i.qy, align 8, !tbaa !9, !alias.scope !42, !noalias !35
  %i.qz = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2062, <4 x double> %wide.load2059, <4 x double> %wide.load2057)
  %i.ra = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2062, <4 x double> %wide.load2060, <4 x double> %wide.load2058)
  %i.rb = fmul <4 x double> %broadcast.splat2064, %i.qz ; 2 uses
  %i.rc = fmul <4 x double> %broadcast.splat2064, %i.ra ; 2 uses
  %i.rd = fsub <4 x double> %wide.load2057, %i.rb
  %i.re = fsub <4 x double> %wide.load2058, %i.rc
  store <4 x double> %i.rd, ptr %i.qv, align 8, !tbaa !9, !alias.scope !38, !noalias !40
  store <4 x double> %i.re, ptr %i.qw, align 8, !tbaa !9, !alias.scope !38, !noalias !40
  %wide.load2065 = load <4 x double>, ptr %i.qx, align 8, !tbaa !9, !alias.scope !42, !noalias !35
  %wide.load2066 = load <4 x double>, ptr %i.qy, align 8, !tbaa !9, !alias.scope !42, !noalias !35
  %i.rf = fneg <4 x double> %i.rb
  %i.rg = fneg <4 x double> %i.rc
  %i.rh = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.rf, <4 x double> %broadcast.splat2068, <4 x double> %wide.load2065)
  %i.ri = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.rg, <4 x double> %broadcast.splat2068, <4 x double> %wide.load2066)
  store <4 x double> %i.rh, ptr %i.qx, align 8, !tbaa !9, !alias.scope !42, !noalias !35
  store <4 x double> %i.ri, ptr %i.qy, align 8, !tbaa !9, !alias.scope !42, !noalias !35
  %index.next2069 = add nuw i64 %index2056, 8     ; 2 uses
  %i.rj = icmp eq i64 %index.next2069, %n.vec2054
  br i1 %i.rj, label %middle.block2070, label %vector.body2055, !llvm.loop !43

middle.block2070:                                 ; preds = %vector.body2055
  %cmp.n2071 = icmp eq i64 %i.qf, %n.vec2054
  br i1 %cmp.n2071, label %.loopexit1489, label %scalar.ph2051.preheader

scalar.ph2051.preheader:                          ; preds = %vector.memcheck2028, %.lr.ph1512, %middle.block2070
  %indvars.iv1596.ph = phi i64 [ %i.pz, %vector.memcheck2028 ], [ %i.pz, %.lr.ph1512 ], [ %i.qr, %middle.block2070 ]
  br label %scalar.ph2051

scalar.ph2051:                                    ; preds = %scalar.ph2051.preheader, %scalar.ph2051
  %indvars.iv1596 = phi i64 [ %indvars.iv.next1597, %scalar.ph2051 ], [ %indvars.iv1596.ph, %scalar.ph2051.preheader ] ; 4 uses
  %i.rk = load double, ptr %i.ps, align 8, !tbaa !9
  %gep1712 = getelementptr [8 x i8], ptr %invariant.gep1711, i64 %indvars.iv1596 ; 2 uses
  %i.rl = load double, ptr %gep1712, align 8, !tbaa !9 ; 2 uses
  %i.rm = load double, ptr %i.pv, align 8, !tbaa !9
  %gep1714 = getelementptr [8 x i8], ptr %invariant.gep1713, i64 %indvars.iv1596 ; 3 uses
  %i.rn = load double, ptr %gep1714, align 8, !tbaa !9
  %i.ro = call double @llvm.fmuladd.f64(double %i.rm, double %i.rn, double %i.rl)
  %i.rp = fmul double %i.rk, %i.ro                ; 2 uses
  %i.rq = fsub double %i.rl, %i.rp
  store double %i.rq, ptr %gep1712, align 8, !tbaa !9
  %i.rr = load double, ptr %i.pv, align 8, !tbaa !9
  %i.rs = load double, ptr %gep1714, align 8, !tbaa !9
  %i.rt = fneg double %i.rp
  %i.ru = call double @llvm.fmuladd.f64(double %i.rt, double %i.rr, double %i.rs)
  store double %i.ru, ptr %gep1714, align 8, !tbaa !9
  %indvars.iv.next1597 = add nuw nsw i64 %indvars.iv1596, 1
  %.not1454.not = icmp samesign ult i64 %indvars.iv1596, %i.qc
  br i1 %.not1454.not, label %scalar.ph2051, label %.loopexit1489, !llvm.loop !44

bb.ap:                                            ; preds = %bb.an
  %i.rv = load i32, ptr %1, align 4, !tbaa !8
  %.not1451 = icmp eq i32 %i.rv, 0
  br i1 %.not1451, label %.loopexit1489, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.rw = load i32, ptr %12, align 4, !tbaa !8    ; 6 uses
  %i.rx = load i32, ptr %11, align 4, !tbaa !8    ; 4 uses
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
  %i.sg = sext i32 %i.rx to i64                   ; 5 uses
  %i.sh = sext i32 %i.sc to i64                   ; 2 uses
  %i.si = sext i32 %i.sf to i64                   ; 2 uses
  %i.sj = add i32 %i.rw, 1
  %invariant.gep1707 = getelementptr [8 x i8], ptr %i.p, i64 %i.sh ; 4 uses
  %invariant.gep1709 = getelementptr [8 x i8], ptr %i.p, i64 %i.si ; 4 uses
  %i.sk = sub i32 %i.rw, %i.rx                    ; 2 uses
  %i.sl = zext i32 %i.sk to i64
  %i.sm = add nuw nsw i64 %i.sl, 1                ; 2 uses
  %min.iters.check2096 = icmp ult i32 %i.sk, 7
  br i1 %min.iters.check2096, label %scalar.ph2095.preheader, label %vector.memcheck2073

vector.memcheck2073:                              ; preds = %.lr.ph1508
  %25 = shl nsw i64 %i.sg, 3                      ; 4 uses
  %i.sn = shl nsw i64 %i.sh, 3                    ; 2 uses
  %26 = getelementptr i8, ptr %scevgep2074, i64 %25
  %scevgep2075 = getelementptr i8, ptr %26, i64 %i.sn ; 2 uses
  %i.so = sub i32 %i.rw, %i.rx
  %i.sp = zext i32 %i.so to i64
  %i.sq = shl nuw nsw i64 %i.sp, 3                ; 2 uses
  %i.sr = getelementptr i8, ptr %scevgep2076, i64 %25
  %scevgep2077.a = getelementptr i8, ptr %i.sr, i64 %i.sn
  %scevgep2077 = getelementptr i8, ptr %scevgep2077.a, i64 %i.sq ; 2 uses
  %i.ss = shl nsw i64 %i.si, 3                    ; 2 uses
  %27 = getelementptr i8, ptr %scevgep2078, i64 %25
  %scevgep2079 = getelementptr i8, ptr %27, i64 %i.ss ; 2 uses
  %scevgep2079.a = getelementptr i8, ptr %scevgep2080, i64 %25
  %i.st = getelementptr i8, ptr %scevgep2079.a, i64 %i.ss
  %scevgep2081 = getelementptr i8, ptr %i.st, i64 %i.sq ; 2 uses
  %i.su = shl nsw i64 %i.rz, 3
  %scevgep2083 = getelementptr i8, ptr %scevgep2082, i64 %i.su ; 2 uses
  %bound02084 = icmp ult ptr %scevgep2075, %scevgep2081
  %bound12085 = icmp ult ptr %scevgep2079, %scevgep2077
  %found.conflict2086 = and i1 %bound02084, %bound12085
  %bound02087 = icmp ult ptr %scevgep2075, %scevgep2083
  %bound12088 = icmp ult ptr %i.sb, %scevgep2077
  %found.conflict2089 = and i1 %bound02087, %bound12088
  %conflict.rdx2090 = or i1 %found.conflict2086, %found.conflict2089
  %bound02091 = icmp ult ptr %scevgep2079, %scevgep2083
  %bound12092 = icmp ult ptr %i.sb, %scevgep2081
  %found.conflict2093 = and i1 %bound02091, %bound12092
  %conflict.rdx2094 = or i1 %conflict.rdx2090, %found.conflict2093
  br i1 %conflict.rdx2094, label %scalar.ph2095.preheader, label %vector.ph2097

vector.ph2097:                                    ; preds = %vector.memcheck2073
  %n.vec2098 = and i64 %i.sm, 8589934584          ; 3 uses
  %i.sv = add nsw i64 %n.vec2098, %i.sg
  %i.sw = load double, ptr %i.sb, align 8, !tbaa !9, !alias.scope !45
  %broadcast.splatinsert2107 = insertelement <4 x double> poison, double %i.sw, i64 0
  %broadcast.splat2108 = shufflevector <4 x double> %broadcast.splatinsert2107, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sx = load double, ptr %i.sd, align 8, !tbaa !9, !alias.scope !45 ; 2 uses
  %broadcast.splatinsert2105 = insertelement <4 x double> poison, double %i.sx, i64 0
  %broadcast.splat2106 = shufflevector <4 x double> %broadcast.splatinsert2105, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2111 = insertelement <4 x double> poison, double %i.sx, i64 0
  %broadcast.splat2112 = shufflevector <4 x double> %broadcast.splatinsert2111, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2099

vector.body2099:                                  ; preds = %vector.body2099, %vector.ph2097
  %index2100 = phi i64 [ 0, %vector.ph2097 ], [ %index.next2113, %vector.body2099 ] ; 2 uses
  %i.sy = add i64 %index2100, %i.sg               ; 2 uses
  %i.sz = getelementptr [8 x i8], ptr %invariant.gep1707, i64 %i.sy ; 3 uses
  %i.ta = getelementptr i8, ptr %i.sz, i64 32     ; 2 uses
  %wide.load2101 = load <4 x double>, ptr %i.sz, align 8, !tbaa !9, !alias.scope !48, !noalias !50 ; 2 uses
  %wide.load2102 = load <4 x double>, ptr %i.ta, align 8, !tbaa !9, !alias.scope !48, !noalias !50 ; 2 uses
  %i.tb = getelementptr [8 x i8], ptr %invariant.gep1709, i64 %i.sy ; 4 uses
  %i.tc = getelementptr i8, ptr %i.tb, i64 32     ; 3 uses
  %wide.load2103 = load <4 x double>, ptr %i.tb, align 8, !tbaa !9, !alias.scope !52, !noalias !45
  %wide.load2104 = load <4 x double>, ptr %i.tc, align 8, !tbaa !9, !alias.scope !52, !noalias !45
  %i.td = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2106, <4 x double> %wide.load2103, <4 x double> %wide.load2101)
  %i.te = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2106, <4 x double> %wide.load2104, <4 x double> %wide.load2102)
  %i.tf = fmul <4 x double> %broadcast.splat2108, %i.td ; 2 uses
  %i.tg = fmul <4 x double> %broadcast.splat2108, %i.te ; 2 uses
  %i.th = fsub <4 x double> %wide.load2101, %i.tf
  %i.ti = fsub <4 x double> %wide.load2102, %i.tg
  store <4 x double> %i.th, ptr %i.sz, align 8, !tbaa !9, !alias.scope !48, !noalias !50
  store <4 x double> %i.ti, ptr %i.ta, align 8, !tbaa !9, !alias.scope !48, !noalias !50
  %wide.load2109 = load <4 x double>, ptr %i.tb, align 8, !tbaa !9, !alias.scope !52, !noalias !45
  %wide.load2110 = load <4 x double>, ptr %i.tc, align 8, !tbaa !9, !alias.scope !52, !noalias !45
  %i.tj = fneg <4 x double> %i.tf
  %i.tk = fneg <4 x double> %i.tg
  %i.tl = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.tj, <4 x double> %broadcast.splat2112, <4 x double> %wide.load2109)
  %i.tm = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.tk, <4 x double> %broadcast.splat2112, <4 x double> %wide.load2110)
  store <4 x double> %i.tl, ptr %i.tb, align 8, !tbaa !9, !alias.scope !52, !noalias !45
  store <4 x double> %i.tm, ptr %i.tc, align 8, !tbaa !9, !alias.scope !52, !noalias !45
  %index.next2113 = add nuw i64 %index2100, 8     ; 2 uses
  %i.tn = icmp eq i64 %index.next2113, %n.vec2098
  br i1 %i.tn, label %middle.block2114, label %vector.body2099, !llvm.loop !53

middle.block2114:                                 ; preds = %vector.body2099
  %cmp.n2115 = icmp eq i64 %i.sm, %n.vec2098
  br i1 %cmp.n2115, label %.loopexit1489, label %scalar.ph2095.preheader

scalar.ph2095.preheader:                          ; preds = %vector.memcheck2073, %.lr.ph1508, %middle.block2114
  %indvars.iv1591.ph = phi i64 [ %i.sg, %vector.memcheck2073 ], [ %i.sg, %.lr.ph1508 ], [ %i.sv, %middle.block2114 ] ; 5 uses
  %i.to = trunc i64 %indvars.iv1591.ph to i32     ; 2 uses
  %i.tp = add i32 %i.rw, %i.to
  %i.tq = and i32 %i.tp, 1
  %lcmp.mod.not.not = icmp eq i32 %i.tq, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph2095.prol, label %scalar.ph2095.prol.loopexit

scalar.ph2095.prol:                               ; preds = %scalar.ph2095.preheader
  %i.tr = load double, ptr %i.sb, align 8, !tbaa !9
  %gep1708.prol = getelementptr [8 x i8], ptr %invariant.gep1707, i64 %indvars.iv1591.ph ; 2 uses
  %i.ts = load double, ptr %gep1708.prol, align 8, !tbaa !9 ; 2 uses
  %i.tt = load double, ptr %i.sd, align 8, !tbaa !9
  %gep1710.prol = getelementptr [8 x i8], ptr %invariant.gep1709, i64 %indvars.iv1591.ph ; 3 uses
  %i.tu = load double, ptr %gep1710.prol, align 8, !tbaa !9
  %i.tv = call double @llvm.fmuladd.f64(double %i.tt, double %i.tu, double %i.ts)
  %i.tw = fmul double %i.tr, %i.tv                ; 2 uses
  %i.tx = fsub double %i.ts, %i.tw
  store double %i.tx, ptr %gep1708.prol, align 8, !tbaa !9
  %i.ty = load double, ptr %i.sd, align 8, !tbaa !9
  %i.tz = load double, ptr %gep1710.prol, align 8, !tbaa !9
  %i.ua = fneg double %i.tw
  %i.ub = call double @llvm.fmuladd.f64(double %i.ua, double %i.ty, double %i.tz)
  store double %i.ub, ptr %gep1710.prol, align 8, !tbaa !9
  %indvars.iv.next1592.prol = add nsw i64 %indvars.iv1591.ph, 1
  br label %scalar.ph2095.prol.loopexit

scalar.ph2095.prol.loopexit:                      ; preds = %scalar.ph2095.prol, %scalar.ph2095.preheader
  %indvars.iv1591.unr = phi i64 [ %indvars.iv1591.ph, %scalar.ph2095.preheader ], [ %indvars.iv.next1592.prol, %scalar.ph2095.prol ]
  %i.uc = icmp eq i32 %i.rw, %i.to
  br i1 %i.uc, label %.loopexit1489, label %scalar.ph2095

scalar.ph2095:                                    ; preds = %scalar.ph2095.prol.loopexit, %scalar.ph2095
  %indvars.iv1591 = phi i64 [ %indvars.iv.next1592.1, %scalar.ph2095 ], [ %indvars.iv1591.unr, %scalar.ph2095.prol.loopexit ] ; 4 uses
  %i.ud = load double, ptr %i.sb, align 8, !tbaa !9
  %gep1708 = getelementptr [8 x i8], ptr %invariant.gep1707, i64 %indvars.iv1591 ; 2 uses
  %i.ue = load double, ptr %gep1708, align 8, !tbaa !9 ; 2 uses
  %i.uf = load double, ptr %i.sd, align 8, !tbaa !9
  %gep1710 = getelementptr [8 x i8], ptr %invariant.gep1709, i64 %indvars.iv1591 ; 3 uses
  %i.ug = load double, ptr %gep1710, align 8, !tbaa !9
  %i.uh = call double @llvm.fmuladd.f64(double %i.uf, double %i.ug, double %i.ue)
  %i.ui = fmul double %i.ud, %i.uh                ; 2 uses
  %i.uj = fsub double %i.ue, %i.ui
  store double %i.uj, ptr %gep1708, align 8, !tbaa !9
  %i.uk = load double, ptr %i.sd, align 8, !tbaa !9
  %i.ul = load double, ptr %gep1710, align 8, !tbaa !9
  %i.um = fneg double %i.ui
  %i.un = call double @llvm.fmuladd.f64(double %i.um, double %i.uk, double %i.ul)
  store double %i.un, ptr %gep1710, align 8, !tbaa !9
  %indvars.iv.next1592 = add nsw i64 %indvars.iv1591, 1 ; 2 uses
  %i.uo = load double, ptr %i.sb, align 8, !tbaa !9
  %gep1708.1 = getelementptr [8 x i8], ptr %invariant.gep1707, i64 %indvars.iv.next1592 ; 2 uses
  %i.up = load double, ptr %gep1708.1, align 8, !tbaa !9 ; 2 uses
  %i.uq = load double, ptr %i.sd, align 8, !tbaa !9
  %gep1710.1 = getelementptr [8 x i8], ptr %invariant.gep1709, i64 %indvars.iv.next1592 ; 3 uses
  %i.ur = load double, ptr %gep1710.1, align 8, !tbaa !9
  %i.us = call double @llvm.fmuladd.f64(double %i.uq, double %i.ur, double %i.up)
  %i.ut = fmul double %i.uo, %i.us                ; 2 uses
  %i.uu = fsub double %i.up, %i.ut
  store double %i.uu, ptr %gep1708.1, align 8, !tbaa !9
  %i.uv = load double, ptr %i.sd, align 8, !tbaa !9
  %i.uw = load double, ptr %gep1710.1, align 8, !tbaa !9
  %i.ux = fneg double %i.ut
  %i.uy = call double @llvm.fmuladd.f64(double %i.ux, double %i.uv, double %i.uw)
  store double %i.uy, ptr %gep1710.1, align 8, !tbaa !9
  %indvars.iv.next1592.1 = add nsw i64 %indvars.iv1591, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next1592.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.sj, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %.loopexit1489, label %scalar.ph2095, !llvm.loop !54

.loopexit1489:                                    ; preds = %scalar.ph2095.prol.loopexit, %scalar.ph2095, %scalar.ph2051, %middle.block2114, %middle.block2070, %bb.aq, %bb.ao, %bb.ap, %bb.m
  %i.uz = phi i32 [ %i.ku, %middle.block2070 ], [ %i.ei, %bb.m ], [ %i.ku, %bb.aq ], [ %i.ku, %bb.ao ], [ %i.ku, %bb.ap ], [ %i.ku, %middle.block2114 ], [ %i.ku, %scalar.ph2051 ], [ %i.ku, %scalar.ph2095 ], [ %i.ku, %scalar.ph2095.prol.loopexit ] ; 2 uses
  %i.va = phi i32 [ %i.ku, %middle.block2070 ], [ %i.ej, %bb.m ], [ %i.ku, %bb.aq ], [ %i.ku, %bb.ao ], [ %i.ku, %bb.ap ], [ %i.ku, %middle.block2114 ], [ %i.ku, %scalar.ph2051 ], [ %i.ku, %scalar.ph2095 ], [ %i.ku, %scalar.ph2095.prol.loopexit ] ; 2 uses
  %i.vb = phi i32 [ %i.gp, %middle.block2070 ], [ %i.ek, %bb.m ], [ %i.gp, %bb.aq ], [ %i.gp, %bb.ao ], [ %i.gp, %bb.ap ], [ %i.gp, %middle.block2114 ], [ %i.gp, %scalar.ph2051 ], [ %i.gp, %scalar.ph2095 ], [ %i.gp, %scalar.ph2095.prol.loopexit ] ; 4 uses
  %i.vc = phi i32 [ %i.gp, %middle.block2070 ], [ %i.el, %bb.m ], [ %i.gp, %bb.aq ], [ %i.gp, %bb.ao ], [ %i.gp, %bb.ap ], [ %i.gp, %middle.block2114 ], [ %i.gp, %scalar.ph2051 ], [ %i.gp, %scalar.ph2095 ], [ %i.gp, %scalar.ph2095.prol.loopexit ]
  %i.vd = phi i32 [ %i.gp, %middle.block2070 ], [ %i.em, %bb.m ], [ %i.gp, %bb.aq ], [ %i.gp, %bb.ao ], [ %i.gp, %bb.ap ], [ %i.gp, %middle.block2114 ], [ %i.gp, %scalar.ph2051 ], [ %i.gp, %scalar.ph2095 ], [ %i.gp, %scalar.ph2095.prol.loopexit ]
  %i.ve = phi i32 [ %i.ku, %middle.block2070 ], [ %i.en, %bb.m ], [ %i.ku, %bb.aq ], [ %i.ku, %bb.ao ], [ %i.ku, %bb.ap ], [ %i.ku, %middle.block2114 ], [ %i.ku, %scalar.ph2051 ], [ %i.ku, %scalar.ph2095 ], [ %i.ku, %scalar.ph2095.prol.loopexit ] ; 3 uses
  %.not14551518 = icmp slt i32 %i.fa, %i.ew       ; 4 uses
  br i1 %.not14551518, label %._crit_edge1522.thread, label %.lr.ph1521

.lr.ph1521:                                       ; preds = %.loopexit1489
  %i.vf = add i32 %.013681550, -2
  %i.vg = sext i32 %i.ez to i64
  %smin = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.vg) ; 3 uses
  %i.vh = sext i32 %i.ew to i64                   ; 2 uses
  %i.vi = trunc i64 %smin to i32
  %i.vj = shl nsw i32 %i.vi, 1                    ; 3 uses
  %i.vk = add i32 %i.eo, %i.vj
  %i.vl = mul i32 %i.k, %i.vk
  %i.vm = add i32 %.013681550, %i.vj
  %i.vn = mul i32 %i.k, %i.vm
  %i.vo = add i32 %indvars.iv1586, %i.vj
  %i.vp = mul i32 %i.k, %i.vo
  %i.vq = mul i64 %i.da, %smin
  %scevgep1974 = getelementptr i8, ptr %scevgep1973, i64 %i.vq ; 3 uses
  %i.vr = mul i64 %i.dc, %i.vh
  %scevgep1976 = getelementptr i8, ptr %scevgep1975, i64 %i.vr ; 3 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph1521, %bb.br
  %indvar1957 = phi i32 [ 0, %.lr.ph1521 ], [ %indvar.next1958, %bb.br ] ; 2 uses
  %i.vs = phi i32 [ %i.ve, %.lr.ph1521 ], [ %i.aec, %bb.br ] ; 2 uses
  %indvars.iv1602 = phi i64 [ %smin, %.lr.ph1521 ], [ %indvars.iv.next1603, %bb.br ] ; 6 uses
  %i.vt = mul i32 %i.cx, %indvar1957              ; 3 uses
  %i.vu = add i32 %i.vl, %i.vt
  %i.vv = sext i32 %i.vu to i64                   ; 2 uses
  %i.vw = shl nsw i64 %i.vv, 3
  %scevgep1959 = getelementptr i8, ptr %scevgep1956, i64 %i.vw ; 3 uses
  %i.vx = add i32 %i.vn, %i.vt
  %i.vy = sext i32 %i.vx to i64                   ; 2 uses
  %i.vz = shl nsw i64 %i.vy, 3
  %scevgep1965 = getelementptr i8, ptr %scevgep1964, i64 %i.vz ; 3 uses
  %i.wa = add i32 %i.vp, %i.vt
  %i.wb = sext i32 %i.wa to i64                   ; 2 uses
  %i.wc = shl nsw i64 %i.wb, 3
  %scevgep1970 = getelementptr i8, ptr %scevgep1969, i64 %i.wc ; 3 uses
  %i.wd = trunc nsw i64 %indvars.iv1602 to i32
  %i.we = shl i32 %i.wd, 1                        ; 8 uses
  %i.wf = add i32 %i.vf, %i.we                    ; 25 uses
  %i.wg = add nsw i32 %i.vs, -1
  %i.wh = icmp eq i32 %i.wf, %i.wg
  br i1 %i.wh, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.wi = mul i32 %i.vs, %i.bo
  %i.wj = sext i32 %i.wi to i64
  %i.wk = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.wj
  %i.wl = add nsw i32 %i.we, -1
  %i.wm = sext i32 %i.wl to i64                   ; 2 uses
  %i.wn = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.wm
  %i.wo = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.wm
  %i.wp = sext i32 %i.we to i64                   ; 2 uses
  %i.wq = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.wp
  %i.wr = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.wp
  %i.ws = mul nsw i64 %indvars.iv1602, %i.bw
  %i.wt = getelementptr [8 x i8], ptr %i.s, i64 %i.ws ; 2 uses
  %i.wu = getelementptr i8, ptr %i.wt, i64 8      ; 3 uses
  call void @dlaqr1_(ptr noundef nonnull @c__3, ptr noundef %i.wk, ptr noundef nonnull %10, ptr noundef nonnull %i.wn, ptr noundef nonnull %i.wo, ptr noundef nonnull %i.wq, ptr noundef nonnull %i.wr, ptr noundef %i.wu) #4
  %i.wv = load double, ptr %i.wu, align 8, !tbaa !9
  store double %i.wv, ptr %i.c, align 8, !tbaa !9
  %i.ww = getelementptr i8, ptr %i.wt, i64 16
  call void @dlarfg_(ptr noundef nonnull @c__3, ptr noundef nonnull %i.c, ptr noundef %i.ww, ptr noundef nonnull @c__1, ptr noundef nonnull %i.wu) #4
  %.pre1647 = add nsw i32 %i.wf, 3
  br label %bb.ba

bb.at:                                            ; preds = %bb.ar
  %i.wx = mul nsw i64 %indvars.iv1602, %i.bw
end_hunk_1
begin_hunk_2_@dlaqr5_:bb.a
  %i.afh = add nsw i32 %i.aec, 2
  %.not1472 = icmp slt i32 %i.wf, %i.afh
  br i1 %.not1472, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.afi = add nsw i32 %i.wf, -2
  %i.afj = mul nsw i32 %i.afi, %i.k
  %i.afk = add nsw i32 %i.afj, %i.wf
  %i.afl = sext i32 %i.afk to i64
  %i.afm = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.afl
  %i.afn = load double, ptr %i.afm, align 8, !tbaa !9 ; 3 uses
  %i.afo = fcmp oge double %i.afn, 0.000000e+00
  %i.afp = fneg double %i.afn
  %i.afq = select i1 %i.afo, double %i.afn, double %i.afp
  %i.afr = fadd double %.6, %i.afq
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.7 = phi double [ %i.afr, %bb.bg ], [ %.6, %bb.bf ] ; 2 uses
  %i.afs = add nsw i32 %i.aec, 3
  %.not1473 = icmp slt i32 %i.wf, %i.afs
  br i1 %.not1473, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.aft = add nsw i32 %i.wf, -3
  %i.afu = mul nsw i32 %i.aft, %i.k
  %i.afv = add nsw i32 %i.afu, %i.wf
  %i.afw = sext i32 %i.afv to i64
  %i.afx = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.afw
  %i.afy = load double, ptr %i.afx, align 8, !tbaa !9 ; 3 uses
  %i.afz = fcmp oge double %i.afy, 0.000000e+00
  %i.aga = fneg double %i.afy
  %i.agb = select i1 %i.afz, double %i.afy, double %i.aga
  %i.agc = fadd double %.7, %i.agb
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.8 = phi double [ %i.agc, %bb.bi ], [ %.7, %bb.bh ] ; 2 uses
  %i.agd = add nsw i32 %i.aat, -2
  %.not1474 = icmp sgt i32 %i.wf, %i.agd
  br i1 %.not1474, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.age = load double, ptr %i.adj, align 8, !tbaa !9 ; 3 uses
  %i.agf = fcmp oge double %i.age, 0.000000e+00
  %i.agg = fneg double %i.age
  %i.agh = select i1 %i.agf, double %i.age, double %i.agg
  %i.agi = fadd double %.8, %i.agh
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.9 = phi double [ %i.agi, %bb.bk ], [ %.8, %bb.bj ] ; 2 uses
  %i.agj = add nsw i32 %i.aat, -3
  %.not1475 = icmp sgt i32 %i.wf, %i.agj
  %i.agk = fcmp oge double %i.aeb, 0.000000e+00
  %i.agl = fneg double %i.aeb
  %i.agm = select i1 %i.agk, double %i.aeb, double %i.agl
  %i.agn = fadd double %i.agm, %.9
  %.10 = select i1 %.not1475, double %.9, double %i.agn ; 2 uses
  %i.ago = add nsw i32 %i.aat, -4
  %.not1476 = icmp sgt i32 %i.wf, %i.ago
  br i1 %.not1476, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.agp = add nsw i32 %i.wf, 4
  %i.agq = add nsw i32 %i.agp, %.pre-phi1653
  %i.agr = sext i32 %i.agq to i64
  %i.ags = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.agr
  %i.agt = load double, ptr %i.ags, align 8, !tbaa !9 ; 3 uses
  %i.agu = fcmp oge double %i.agt, 0.000000e+00
  %i.agv = fneg double %i.agt
  %i.agw = select i1 %i.agu, double %i.agt, double %i.agv
  %i.agx = fadd double %.10, %i.agw
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm, %bb.bc
  %.11 = phi double [ %i.agx, %bb.bm ], [ %.10, %bb.bl ], [ %i.aev, %bb.bc ]
  %i.agy = fmul double %i.at, %.11                ; 2 uses
  %i.agz = fcmp oge double %i.aei, 0.000000e+00
  %i.aha = fneg double %i.aei
  %i.ahb = select i1 %i.agz, double %i.aei, double %i.aha ; 5 uses
  %i.ahc = fcmp oge double %i.ay, %i.agy
  %i.ahd = select i1 %i.ahc, double %i.ay, double %i.agy
  %i.ahe = fcmp ugt double %i.ahb, %i.ahd
  br i1 %i.ahe, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ahf = add nsw i32 %.pre-phi1653, %i.wf
  %i.ahg = sext i32 %i.ahf to i64
  %i.ahh = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ahg
  %i.ahi = load double, ptr %i.ahh, align 8, !tbaa !9 ; 3 uses
  %i.ahj = fcmp oge double %i.ahi, 0.000000e+00
  %i.ahk = fneg double %i.ahi
  %i.ahl = select i1 %i.ahj, double %i.ahi, double %i.ahk ; 4 uses
  %i.ahm = fcmp oge double %i.ahb, %i.ahl
  %i.ahn = select i1 %i.ahm, double %i.ahb, double %i.ahl ; 2 uses
  %i.aho = fsub double %i.aen, %i.aer             ; 3 uses
  %i.ahp = fcmp oge double %i.aho, 0.000000e+00
  %i.ahq = fneg double %i.aho
  %i.ahr = select i1 %i.ahp, double %i.aho, double %i.ahq ; 4 uses
  %i.ahs = fcmp oge double %i.aeu, %i.ahr
  %i.aht = select i1 %i.ahs, double %i.aeu, double %i.ahr ; 2 uses
  %i.ahu = fcmp ole double %i.aeu, %i.ahr
  %i.ahv = select i1 %i.ahu, double %i.aeu, double %i.ahr
  %i.ahw = fadd double %i.aht, %i.ahn             ; 2 uses
  %i.ahx = fdiv double %i.aht, %i.ahw
  %i.ahy = fmul double %i.ahv, %i.ahx             ; 2 uses
  %i.ahz = fcmp oeq double %i.ahy, 0.000000e+00
  br i1 %i.ahz, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.aia = fmul double %i.at, %i.ahy              ; 2 uses
  %i.aib = fcmp ole double %i.ahb, %i.ahl
  %i.aic = select i1 %i.aib, double %i.ahb, double %i.ahl
  %i.aid = fdiv double %i.ahn, %i.ahw
  %i.aie = fmul double %i.aic, %i.aid
  %i.aif = fcmp oge double %i.ay, %i.aia
  %i.aig = select i1 %i.aif, double %i.ay, double %i.aia
  %i.aih = fcmp ugt double %i.aie, %i.aig
  br i1 %i.aih, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  store double 0.000000e+00, ptr %i.aeh, align 8, !tbaa !9
  br label %bb.br

bb.br:                                            ; preds = %bb.bb, %bb.bp, %bb.bq, %bb.bn, %._crit_edge1517
  %indvars.iv.next1603 = add nsw i64 %indvars.iv1602, -1
  %.not1455.not = icmp sgt i64 %indvars.iv1602, %i.vh
  %indvar.next1958 = add i32 %indvar1957, 1
  br i1 %.not1455.not, label %bb.ar, label %._crit_edge1522, !llvm.loop !68

._crit_edge1522:                                  ; preds = %bb.br
  br i1 %i.bn, label %.thread1693, label %bb.bs

._crit_edge1522.thread:                           ; preds = %.loopexit1489
  br i1 %i.bn, label %.loopexit, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge1522.thread, %._crit_edge1522
  %i.aii = phi i32 [ %i.ve, %._crit_edge1522.thread ], [ %i.aec, %._crit_edge1522 ]
  %i.aij = phi i32 [ %i.vd, %._crit_edge1522.thread ], [ %i.aat, %._crit_edge1522 ]
  %i.aik = phi i32 [ %i.vc, %._crit_edge1522.thread ], [ %i.aat, %._crit_edge1522 ] ; 4 uses
  %i.ail = phi i32 [ %i.vb, %._crit_edge1522.thread ], [ %i.aat, %._crit_edge1522 ] ; 2 uses
  %i.aim = phi i32 [ %i.va, %._crit_edge1522.thread ], [ %i.aec, %._crit_edge1522 ] ; 2 uses
  %i.ain = phi i32 [ %i.uz, %._crit_edge1522.thread ], [ %i.aec, %._crit_edge1522 ] ; 2 uses
  %i.aio = load i32, ptr %0, align 4, !tbaa !8
  %.not1456 = icmp eq i32 %i.aio, 0
  br i1 %.not1456, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.aip = load i32, ptr %3, align 4, !tbaa !8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %i.aiq = phi i32 [ %i.aik, %bb.bs ], [ %i.aij, %bb.bt ] ; 2 uses
  %.11388 = phi i32 [ %i.aik, %bb.bs ], [ %i.aip, %bb.bt ]
  br i1 %.not14551518, label %.loopexit, label %.lr.ph1531

.thread1693:                                      ; preds = %._crit_edge1522
  %.1477 = call i32 @llvm.smin.i32(i32 %i.dy, i32 %i.aat)
  br label %.lr.ph1531

.lr.ph1531:                                       ; preds = %.thread1693, %bb.bu
  %i.air = phi i32 [ %i.aat, %.thread1693 ], [ %i.ail, %bb.bu ] ; 5 uses
  %i.ais = phi i32 [ %i.aec, %.thread1693 ], [ %i.aim, %bb.bu ] ; 11 uses
  %i.ait = phi i32 [ %i.aec, %.thread1693 ], [ %i.ain, %bb.bu ] ; 9 uses
  %.113881695 = phi i32 [ %.1477, %.thread1693 ], [ %.11388, %bb.bu ] ; 3 uses
  %i.aiu = phi i32 [ %i.aat, %.thread1693 ], [ %i.aiq, %bb.bu ] ; 5 uses
  %i.aiv = phi i32 [ %i.aat, %.thread1693 ], [ %i.aik, %bb.bu ] ; 5 uses
  %i.aiw = add i32 %.013681550, -2
  %i.aix = sext i32 %.113881695 to i64            ; 2 uses
  %i.aiy = sext i32 %i.ez to i64                  ; 2 uses
  %smin1609 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.aiy) ; 7 uses
  %i.aiz = sext i32 %i.ew to i64                  ; 4 uses
  %i.aja = sext i32 %i.ais to i64                 ; 2 uses
  %i.ajb = trunc i64 %smin1609 to i32
  %i.ajc = shl nsw i32 %i.ajb, 1                  ; 2 uses
  %i.ajd = add i32 %i.ep, %i.ajc
  %i.aje = add i32 %.013681550, %i.ajc
  %i.ajf = mul i64 %i.cs, %smin1609
  %scevgep1898 = getelementptr i8, ptr %scevgep1897, i64 %i.ajf ; 3 uses
  %smin1900 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.aiz)
  %smin1901 = call i64 @llvm.smin.i64(i64 %smin1900, i64 %i.aiy)
  %i.ajg = mul i64 %i.cu, %smin1901
  %scevgep1902 = getelementptr i8, ptr %scevgep1899, i64 %i.ajg ; 3 uses
  %smax1886 = call i64 @llvm.smax.i64(i64 %i.aja, i64 %i.aix)
  br label %bb.bv

bb.bv:                                            ; preds = %.lr.ph1531, %._crit_edge1527
  %indvar1883 = phi i32 [ 0, %.lr.ph1531 ], [ %indvar.next1884, %._crit_edge1527 ] ; 2 uses
  %indvars.iv1610 = phi i64 [ %smin1609, %.lr.ph1531 ], [ %indvars.iv.next1611, %._crit_edge1527 ] ; 4 uses
  %indvars.iv1604 = phi i32 [ %i.fe, %.lr.ph1531 ], [ %indvars.iv.next1605, %._crit_edge1527 ] ; 4 uses
  %i.ajh = sext i32 %indvars.iv1604 to i64        ; 2 uses
  %smax1882 = call i64 @llvm.smax.i64(i64 %i.aja, i64 %i.ajh) ; 2 uses
  %i.aji = mul i32 %indvar1883, -2                ; 2 uses
  %i.ajj = add i32 %i.ajd, %i.aji
  %i.ajk = sext i32 %i.ajj to i64                 ; 2 uses
  %i.ajl = add i64 %smax1882, %i.ajk
  %i.ajm = shl i64 %i.ajl, 3                      ; 2 uses
  %scevgep1885 = getelementptr i8, ptr %scevgep1881, i64 %i.ajm ; 3 uses
  %smax1887 = call i64 @llvm.smax.i64(i64 %smax1886, i64 %i.ajh) ; 2 uses
  %i.ajn = add nsw i64 %smax1887, %i.ajk
  %i.ajo = shl nsw i64 %i.ajn, 3                  ; 2 uses
  %scevgep1888 = getelementptr i8, ptr %9, i64 %i.ajo ; 3 uses
  %i.ajp = add i32 %i.aje, %i.aji
  %i.ajq = sext i32 %i.ajp to i64                 ; 2 uses
  %i.ajr = add i64 %smax1882, %i.ajq
  %i.ajs = shl i64 %i.ajr, 3
  %scevgep1890 = getelementptr i8, ptr %scevgep1889, i64 %i.ajs ; 3 uses
  %i.ajt = add nsw i64 %smax1887, %i.ajq
  %i.aju = shl nsw i64 %i.ajt, 3
  %scevgep1892 = getelementptr i8, ptr %scevgep1891, i64 %i.aju ; 3 uses
  %scevgep1894 = getelementptr i8, ptr %scevgep1893, i64 %i.ajm ; 3 uses
  %scevgep1896 = getelementptr i8, ptr %scevgep1895, i64 %i.ajo ; 3 uses
  %i.ajv = trunc nsw i64 %indvars.iv1610 to i32
  %i.ajw = shl i32 %i.ajv, 1                      ; 2 uses
  %i.ajx = add i32 %i.ajw, %.013681550            ; 2 uses
  %i.ajy = call i32 @llvm.smax.i32(i32 %i.ais, i32 %i.ajx)
  %.not14681523 = icmp sgt i32 %i.ajy, %.113881695
  br i1 %.not14681523, label %._crit_edge1527, label %.lr.ph1526

.lr.ph1526:                                       ; preds = %bb.bv
  %i.ajz = call i32 @llvm.smax.i32(i32 %i.ais, i32 %indvars.iv1604)
  %smax1606 = sext i32 %i.ajz to i64              ; 5 uses
  %i.aka = add i32 %i.aiw, %i.ajw                 ; 2 uses
  %i.akb = mul nsw i64 %indvars.iv1610, %i.bw
  %i.akc = getelementptr [8 x i8], ptr %i.s, i64 %i.akb ; 3 uses
  %i.akd = getelementptr i8, ptr %i.akc, i64 8    ; 2 uses
  %i.ake = getelementptr i8, ptr %i.akc, i64 16   ; 3 uses
  %i.akf = getelementptr i8, ptr %i.akc, i64 24   ; 3 uses
  %i.akg = sext i32 %i.ajx to i64
  %i.akh = sext i32 %i.aka to i64
  %invariant.gep1721 = getelementptr [8 x i8], ptr %i.m, i64 %i.akh ; 2 uses
  %invariant.gep1723 = getelementptr [8 x i8], ptr %i.m, i64 %i.akg ; 2 uses
  %i.aki = sext i32 %i.aka to i64
  %invariant.gep1725 = getelementptr [8 x i8], ptr %i.m, i64 %i.aki ; 2 uses
  %i.akj = call i32 @llvm.smax.i32(i32 %.113881695, i32 %indvars.iv1604)
  %i.akk = sext i32 %i.akj to i64
  %i.akl = add nsw i64 %i.akk, 1
  %i.akm = sub nsw i64 %i.akl, %smax1606          ; 3 uses
  %min.iters.check1930 = icmp ugt i64 %i.akm, 7
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
  %i.akn = or i1 %found.conflict1912, %stride.check1913
  %conflict.rdx1914 = or i1 %conflict.rdx1909, %i.akn
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
  %n.vec1932 = and i64 %i.akm, -2                 ; 3 uses
  %i.ako = add nsw i64 %n.vec1932, %smax1606
  %i.akp = load double, ptr %i.akd, align 8, !tbaa !9, !alias.scope !69
  %broadcast.splatinsert1942 = insertelement <2 x double> poison, double %i.akp, i64 0
  %broadcast.splat1943 = shufflevector <2 x double> %broadcast.splatinsert1942, <2 x double> poison, <2 x i32> zeroinitializer
  %i.akq = load double, ptr %i.ake, align 8, !tbaa !9, !alias.scope !69 ; 2 uses
  %broadcast.splatinsert1937 = insertelement <2 x double> poison, double %i.akq, i64 0
  %broadcast.splat1938 = shufflevector <2 x double> %broadcast.splatinsert1937, <2 x double> poison, <2 x i32> zeroinitializer
  %i.akr = load double, ptr %i.akf, align 8, !tbaa !9, !alias.scope !69 ; 2 uses
  %broadcast.splatinsert1940 = insertelement <2 x double> poison, double %i.akr, i64 0
  %broadcast.splat1941 = shufflevector <2 x double> %broadcast.splatinsert1940, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1945 = insertelement <2 x double> poison, double %i.akq, i64 0
  %broadcast.splat1946 = shufflevector <2 x double> %broadcast.splatinsert1945, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1948 = insertelement <2 x double> poison, double %i.akr, i64 0
  %broadcast.splat1949 = shufflevector <2 x double> %broadcast.splatinsert1948, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1933

vector.body1933:                                  ; preds = %vector.body1933, %vector.ph1931
  %index1934 = phi i64 [ 0, %vector.ph1931 ], [ %index.next1950, %vector.body1933 ] ; 2 uses
  %i.aks = add i64 %index1934, %smax1606          ; 3 uses
  %i.akt = getelementptr [8 x i8], ptr %invariant.gep1721, i64 %i.aks
  %i.aku = getelementptr i8, ptr %i.akt, i64 8    ; 2 uses
  %wide.load1935 = load <2 x double>, ptr %i.aku, align 8, !tbaa !9, !alias.scope !72, !noalias !74 ; 2 uses
  %i.akv = getelementptr [8 x i8], ptr %invariant.gep1723, i64 %i.aks ; 3 uses
  %wide.load1936 = load <2 x double>, ptr %i.akv, align 8, !tbaa !9, !alias.scope !77, !noalias !78
  %i.akw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1938, <2 x double> %wide.load1936, <2 x double> %wide.load1935)
  %i.akx = getelementptr [8 x i8], ptr %invariant.gep1725, i64 %i.aks
  %i.aky = getelementptr i8, ptr %i.akx, i64 24   ; 3 uses
  %wide.load1939 = load <2 x double>, ptr %i.aky, align 8, !tbaa !9, !alias.scope !79, !noalias !69
  %i.akz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1941, <2 x double> %wide.load1939, <2 x double> %i.akw)
  %i.ala = fmul <2 x double> %broadcast.splat1943, %i.akz ; 2 uses
  %i.alb = fsub <2 x double> %wide.load1935, %i.ala
  store <2 x double> %i.alb, ptr %i.aku, align 8, !tbaa !9, !alias.scope !72, !noalias !74
  %wide.load1944 = load <2 x double>, ptr %i.akv, align 8, !tbaa !9, !alias.scope !77, !noalias !78
  %i.alc = fneg <2 x double> %i.ala               ; 2 uses
  %i.ald = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.alc, <2 x double> %broadcast.splat1946, <2 x double> %wide.load1944)
  store <2 x double> %i.ald, ptr %i.akv, align 8, !tbaa !9, !alias.scope !77, !noalias !78
  %wide.load1947 = load <2 x double>, ptr %i.aky, align 8, !tbaa !9, !alias.scope !79, !noalias !69
  %i.ale = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.alc, <2 x double> %broadcast.splat1949, <2 x double> %wide.load1947)
  store <2 x double> %i.ale, ptr %i.aky, align 8, !tbaa !9, !alias.scope !79, !noalias !69
  %index.next1950 = add nuw i64 %index1934, 2     ; 2 uses
  %i.alf = icmp eq i64 %index.next1950, %n.vec1932
  br i1 %i.alf, label %middle.block1951, label %vector.body1933, !llvm.loop !80

middle.block1951:                                 ; preds = %vector.body1933
  %cmp.n1952 = icmp eq i64 %i.akm, %n.vec1932
  br i1 %cmp.n1952, label %._crit_edge1527, label %scalar.ph1929.preheader

scalar.ph1929.preheader:                          ; preds = %vector.memcheck1880, %.lr.ph1526, %middle.block1951
  %indvars.iv1607.ph = phi i64 [ %smax1606, %vector.memcheck1880 ], [ %smax1606, %.lr.ph1526 ], [ %i.ako, %middle.block1951 ]
  br label %scalar.ph1929

scalar.ph1929:                                    ; preds = %scalar.ph1929.preheader, %scalar.ph1929
  %indvars.iv1607 = phi i64 [ %indvars.iv.next1608, %scalar.ph1929 ], [ %indvars.iv1607.ph, %scalar.ph1929.preheader ] ; 3 uses
  %i.alg = load double, ptr %i.akd, align 8, !tbaa !9
  %i.alh = mul nsw i64 %indvars.iv1607, %i.bt     ; 3 uses
  %gep1722 = getelementptr [8 x i8], ptr %invariant.gep1721, i64 %i.alh
  %i.ali = getelementptr i8, ptr %gep1722, i64 8  ; 2 uses
  %i.alj = load double, ptr %i.ali, align 8, !tbaa !9 ; 2 uses
  %i.alk = load double, ptr %i.ake, align 8, !tbaa !9
  %gep1724 = getelementptr [8 x i8], ptr %invariant.gep1723, i64 %i.alh ; 3 uses
  %i.all = load double, ptr %gep1724, align 8, !tbaa !9
  %i.alm = call double @llvm.fmuladd.f64(double %i.alk, double %i.all, double %i.alj)
  %i.aln = load double, ptr %i.akf, align 8, !tbaa !9
  %gep1726 = getelementptr [8 x i8], ptr %invariant.gep1725, i64 %i.alh
  %i.alo = getelementptr i8, ptr %gep1726, i64 24 ; 3 uses
  %i.alp = load double, ptr %i.alo, align 8, !tbaa !9
  %i.alq = call double @llvm.fmuladd.f64(double %i.aln, double %i.alp, double %i.alm)
  %i.alr = fmul double %i.alg, %i.alq             ; 2 uses
  %i.als = fsub double %i.alj, %i.alr
  store double %i.als, ptr %i.ali, align 8, !tbaa !9
  %i.alt = load double, ptr %i.ake, align 8, !tbaa !9
  %i.alu = load double, ptr %gep1724, align 8, !tbaa !9
  %i.alv = fneg double %i.alr                     ; 2 uses
  %i.alw = call double @llvm.fmuladd.f64(double %i.alv, double %i.alt, double %i.alu)
  store double %i.alw, ptr %gep1724, align 8, !tbaa !9
  %i.alx = load double, ptr %i.akf, align 8, !tbaa !9
  %i.aly = load double, ptr %i.alo, align 8, !tbaa !9
  %i.alz = call double @llvm.fmuladd.f64(double %i.alv, double %i.alx, double %i.aly)
  store double %i.alz, ptr %i.alo, align 8, !tbaa !9
  %indvars.iv.next1608 = add nsw i64 %indvars.iv1607, 1
  %.not1468.not = icmp slt i64 %indvars.iv1607, %i.aix
  br i1 %.not1468.not, label %scalar.ph1929, label %._crit_edge1527, !llvm.loop !81

._crit_edge1527:                                  ; preds = %scalar.ph1929, %middle.block1951, %bb.bv
  %indvars.iv.next1611 = add nsw i64 %indvars.iv1610, -1
  %.not1458.not = icmp sgt i64 %indvars.iv1610, %i.aiz
  %indvars.iv.next1605 = add i32 %indvars.iv1604, -2
  %indvar.next1884 = add i32 %indvar1883, 1
  br i1 %.not1458.not, label %bb.bv, label %._crit_edge1532, !llvm.loop !82

._crit_edge1532:                                  ; preds = %._crit_edge1527
  br i1 %i.bn, label %.preheader, label %bb.bx

.preheader:                                       ; preds = %._crit_edge1532
  br i1 %.not14551518, label %.loopexit, label %.lr.ph1548

.lr.ph1548:                                       ; preds = %.preheader
  %i.ama = add i32 %i.ee, %.013681550
  %i.amb = sub nsw i32 %i.ait, %.013691572
  %i.amc = load i32, ptr %i.h, align 4, !tbaa !8
  %.reass = add i32 %i.ef, %i.fe
  %i.amd = call i32 @llvm.smin.i32(i32 %i.amc, i32 %.reass) ; 2 uses
  %i.ame = add i32 %i.fd, -1
  %i.amf = add i32 %indvars.iv1594, %i.ait        ; 2 uses
  %i.amg = zext i32 %i.amd to i64                 ; 3 uses
  %i.amh = sext i32 %i.ez to i64
  %smin1627 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.amh)
  %i.ami = sext i32 %i.ew to i64
  %i.amj = trunc i64 %smin1609 to i32
  %i.amk = shl nsw i32 %i.amj, 1                  ; 3 uses
  %i.aml = add i32 %i.er, %i.amk
  %i.amm = mul i32 %i.t, %i.aml
  %i.amn = add i32 %indvar, %i.amk
  %i.amo = mul i32 %i.t, %i.amn
  %i.amp = add i32 %i.es, %i.amk
  %i.amq = mul i32 %i.t, %i.amp
  %i.amr = mul i64 %i.cb, %smin1609
  %scevgep1766 = getelementptr i8, ptr %scevgep1765, i64 %i.amr ; 3 uses
  %i.ams = mul i64 %i.cd, %i.aiz
  %scevgep1768 = getelementptr i8, ptr %scevgep1767, i64 %i.ams ; 3 uses
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph1548, %._crit_edge1545
  %indvar1750 = phi i32 [ 0, %.lr.ph1548 ], [ %indvar.next1751, %._crit_edge1545 ] ; 2 uses
  %indvars.iv1628 = phi i64 [ %smin1627, %.lr.ph1548 ], [ %indvars.iv.next1629, %._crit_edge1545 ] ; 4 uses
  %indvars.iv1620 = phi i32 [ %i.ame, %.lr.ph1548 ], [ %indvars.iv.next1621, %._crit_edge1545 ] ; 3 uses
  %i.amt = mul i32 %i.by, %indvar1750             ; 3 uses
  %i.amu = add i32 %i.amm, %i.amt
  %i.amv = sext i32 %i.amu to i64                 ; 2 uses
  %smax1752 = call i32 @llvm.smax.i32(i32 %indvars.iv1620, i32 %i.amf)
  %smax1753 = call i32 @llvm.smax.i32(i32 %smax1752, i32 1)
  %i.amw = zext nneg i32 %smax1753 to i64         ; 4 uses
  %i.amx = add nsw i64 %i.amv, %i.amw
  %i.amy = shl nsw i64 %i.amx, 3
  %scevgep1754 = getelementptr i8, ptr %scevgep, i64 %i.amy ; 3 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.amg, i64 %i.amw) ; 3 uses
  %i.amz = add nsw i64 %umax, %i.u
end_hunk_2
