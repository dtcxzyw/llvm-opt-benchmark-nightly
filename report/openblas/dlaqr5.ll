Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaqr5?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dlaqr5_:bb.a
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
  %scevgep2164 = getelementptr i8, ptr %scevgep2163.a, i64 %i.he ; 2 uses
  %smax2166 = call i64 @llvm.smax.i64(i64 %i.hd, i64 %i.eg)
  %i.hf = add i64 %smax2166, %i.l                 ; 2 uses
  %i.hg = add i64 %i.hf, %i.hb
  %i.hh = shl nsw i64 %i.hg, 3
  %scevgep2167 = getelementptr i8, ptr %scevgep2165, i64 %i.hh ; 2 uses
  %i.hi = shl nsw i64 %i.hc, 3
  %scevgep2170 = getelementptr i8, ptr %scevgep2169.a, i64 %i.hi ; 2 uses
  %i.hj = add i64 %i.hf, %i.hc
  %i.hk = shl nsw i64 %i.hj, 3
  %scevgep2172 = getelementptr i8, ptr %scevgep2171.a, i64 %i.hk ; 2 uses
  %i.hl = shl nsw i64 %i.gt, 3
  %scevgep2174 = getelementptr i8, ptr %scevgep2173.a, i64 %i.hl ; 2 uses
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
  %wide.load2192.a = load <4 x double>, ptr %i.hq, align 8, !tbaa !9, !alias.scope !16, !noalias !18 ; 2 uses
  %wide.load2193.a = load <4 x double>, ptr %i.hr, align 8, !tbaa !9, !alias.scope !16, !noalias !18 ; 2 uses
  %i.hs = getelementptr [8 x i8], ptr %invariant.gep1701, i64 %i.hp ; 4 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 32     ; 3 uses
  %wide.load2194.a = load <4 x double>, ptr %i.hs, align 8, !tbaa !9, !alias.scope !20, !noalias !13
  %wide.load2195 = load <4 x double>, ptr %i.ht, align 8, !tbaa !9, !alias.scope !20, !noalias !13
  %i.hu = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2197, <4 x double> %wide.load2194.a, <4 x double> %wide.load2192.a)
  %i.hv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2197, <4 x double> %wide.load2195, <4 x double> %wide.load2193.a)
  %i.hw = fmul <4 x double> %broadcast.splat2199, %i.hu ; 2 uses
  %i.hx = fmul <4 x double> %broadcast.splat2199, %i.hv ; 2 uses
  %i.hy = fsub <4 x double> %wide.load2192.a, %i.hw
  %i.hz = fsub <4 x double> %wide.load2193.a, %i.hx
  store <4 x double> %i.hy, ptr %i.hq, align 8, !tbaa !9, !alias.scope !16, !noalias !18
  store <4 x double> %i.hz, ptr %i.hr, align 8, !tbaa !9, !alias.scope !16, !noalias !18
  %wide.load2200.a = load <4 x double>, ptr %i.hs, align 8, !tbaa !9, !alias.scope !20, !noalias !13
  %wide.load2201 = load <4 x double>, ptr %i.ht, align 8, !tbaa !9, !alias.scope !20, !noalias !13
  %i.ia = fneg <4 x double> %i.hw
  %i.ib = fneg <4 x double> %i.hx
  %i.ic = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ia, <4 x double> %broadcast.splat2203, <4 x double> %wide.load2200.a)
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
  %25 = call i64 @llvm.smax.i64(i64 %i.jb, i64 %i.iz)
  %i.jd = add i64 %25, 1
  %i.je = sub i64 %i.jd, %i.iz                    ; 3 uses
  %min.iters.check2142 = icmp ugt i64 %i.je, 7
  %or.cond2208.a = select i1 %min.iters.check2142, i1 %ident.check2118.not, i1 false
  br i1 %or.cond2208.a, label %vector.memcheck2119, label %scalar.ph2141.preheader

vector.memcheck2119:                              ; preds = %.lr.ph1503
  %i.jf = shl nsw i64 %i.iz, 4
  %scevgep2121 = getelementptr i8, ptr %scevgep2120, i64 %i.jf ; 2 uses
  %smax2123 = call i64 @llvm.smax.i64(i64 %i.jb, i64 %i.iz) ; 2 uses
  %i.jg = add i64 %smax2123, %i.iz
  %i.jh = shl nsw i64 %i.jg, 3
  %scevgep2124.a = getelementptr i8, ptr %scevgep2122, i64 %i.jh ; 2 uses
  %i.ji = add nsw i64 %i.iz, %i.jc
  %i.jj = shl nsw i64 %i.ji, 3
  %scevgep2125 = getelementptr i8, ptr %9, i64 %i.jj ; 2 uses
  %i.jk = add i64 %smax2123, %i.jc
  %i.jl = shl nsw i64 %i.jk, 3
  %scevgep2127 = getelementptr i8, ptr %scevgep2126.a, i64 %i.jl ; 2 uses
  %i.jm = shl nsw i64 %i.iu, 3
  %scevgep2129 = getelementptr i8, ptr %scevgep2128.a, i64 %i.jm ; 2 uses
  %bound02130 = icmp ult ptr %scevgep2121, %scevgep2127
  %bound12131 = icmp ult ptr %scevgep2125, %scevgep2124.a
  %found.conflict2132 = and i1 %bound02130, %bound12131
  %bound02133 = icmp ult ptr %scevgep2121, %scevgep2129
  %bound12134 = icmp ult ptr %i.iw, %scevgep2124.a
  %found.conflict2135 = and i1 %bound02133, %bound12134
  %conflict.rdx2136 = or i1 %found.conflict2132, %found.conflict2135
  %bound02137 = icmp ult ptr %scevgep2125, %scevgep2129
  %bound12138 = icmp ult ptr %i.iw, %scevgep2127
  %found.conflict2139 = and i1 %bound02137, %bound12138
  %conflict.rdx2140 = or i1 %conflict.rdx2136, %found.conflict2139
  br i1 %conflict.rdx2140, label %scalar.ph2141.preheader, label %vector.ph2143

vector.ph2143:                                    ; preds = %vector.memcheck2119
  %n.vec2144 = and i64 %i.je, -8                  ; 3 uses
  %i.jn = add i64 %n.vec2144, %i.iz
  %i.jo = load double, ptr %i.iw, align 8, !tbaa !9, !alias.scope !25
  %broadcast.splatinsert2153 = insertelement <4 x double> poison, double %i.jo, i64 0
  %broadcast.splat2154 = shufflevector <4 x double> %broadcast.splatinsert2153, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jp = load double, ptr %i.ix, align 8, !tbaa !9, !alias.scope !25 ; 2 uses
  %broadcast.splatinsert2151 = insertelement <4 x double> poison, double %i.jp, i64 0
  %broadcast.splat2152 = shufflevector <4 x double> %broadcast.splatinsert2151, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2155 = insertelement <4 x double> poison, double %i.jp, i64 0
  %broadcast.splat2156 = shufflevector <4 x double> %broadcast.splatinsert2155, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2145

vector.body2145:                                  ; preds = %vector.body2145, %vector.ph2143
  %index2146 = phi i64 [ 0, %vector.ph2143 ], [ %index.next2157, %vector.body2145 ] ; 2 uses
  %i.jq = add i64 %index2146, %i.iz               ; 2 uses
  %i.jr = getelementptr [8 x i8], ptr %invariant.gep1703, i64 %i.jq ; 3 uses
  %i.js = getelementptr i8, ptr %i.jr, i64 32     ; 2 uses
  %wide.load2147.a = load <4 x double>, ptr %i.jr, align 8, !tbaa !9, !alias.scope !28, !noalias !30 ; 2 uses
  %wide.load2148.a = load <4 x double>, ptr %i.js, align 8, !tbaa !9, !alias.scope !28, !noalias !30 ; 2 uses
  %i.jt = getelementptr [8 x i8], ptr %invariant.gep1705, i64 %i.jq ; 2 uses
  %i.ju = getelementptr i8, ptr %i.jt, i64 16     ; 2 uses
  %i.jv = getelementptr i8, ptr %i.jt, i64 48     ; 2 uses
  %wide.load2149.a = load <4 x double>, ptr %i.ju, align 8, !tbaa !9, !alias.scope !32, !noalias !25 ; 2 uses
  %wide.load2150 = load <4 x double>, ptr %i.jv, align 8, !tbaa !9, !alias.scope !32, !noalias !25 ; 2 uses
  %i.jw = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2152, <4 x double> %wide.load2149.a, <4 x double> %wide.load2147.a)
  %i.jx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2152, <4 x double> %wide.load2150, <4 x double> %wide.load2148.a)
  %i.jy = fmul <4 x double> %broadcast.splat2154, %i.jw ; 2 uses
  %i.jz = fmul <4 x double> %broadcast.splat2154, %i.jx ; 2 uses
  %i.ka = fsub <4 x double> %wide.load2147.a, %i.jy
  %i.kb = fsub <4 x double> %wide.load2148.a, %i.jz
  store <4 x double> %i.ka, ptr %i.jr, align 8, !tbaa !9, !alias.scope !28, !noalias !30
  store <4 x double> %i.kb, ptr %i.js, align 8, !tbaa !9, !alias.scope !28, !noalias !30
  %i.kc = fneg <4 x double> %i.jy
  %i.kd = fneg <4 x double> %i.jz
  %i.ke = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kc, <4 x double> %broadcast.splat2156, <4 x double> %wide.load2149.a)
  %i.kf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kd, <4 x double> %broadcast.splat2156, <4 x double> %wide.load2150)
  store <4 x double> %i.ke, ptr %i.ju, align 8, !tbaa !9, !alias.scope !32, !noalias !25
  store <4 x double> %i.kf, ptr %i.jv, align 8, !tbaa !9, !alias.scope !32, !noalias !25
  %index.next2157 = add nuw i64 %index2146, 8     ; 2 uses
  %i.kg = icmp eq i64 %index.next2157, %n.vec2144
  br i1 %i.kg, label %middle.block2158, label %vector.body2145, !llvm.loop !33

middle.block2158:                                 ; preds = %vector.body2145
  %cmp.n2159 = icmp eq i64 %i.je, %n.vec2144
  br i1 %cmp.n2159, label %._crit_edge1504, label %scalar.ph2141.preheader

scalar.ph2141.preheader:                          ; preds = %vector.memcheck2119, %.lr.ph1503, %middle.block2158
  %indvars.iv1588.ph = phi i64 [ %i.iz, %vector.memcheck2119 ], [ %i.iz, %.lr.ph1503 ], [ %i.jn, %middle.block2158 ]
  br label %scalar.ph2141

scalar.ph2141:                                    ; preds = %scalar.ph2141.preheader, %scalar.ph2141
  %indvars.iv1588 = phi i64 [ %indvars.iv.next1589, %scalar.ph2141 ], [ %indvars.iv1588.ph, %scalar.ph2141.preheader ] ; 3 uses
  %i.kh = load double, ptr %i.iw, align 8, !tbaa !9
  %i.ki = mul nsw i64 %indvars.iv1588, %i.bt      ; 2 uses
  %gep1704 = getelementptr [8 x i8], ptr %invariant.gep1703, i64 %i.ki ; 2 uses
  %i.kj = load double, ptr %gep1704, align 8, !tbaa !9 ; 2 uses
  %i.kk = load double, ptr %i.ix, align 8, !tbaa !9
  %gep1706 = getelementptr [8 x i8], ptr %invariant.gep1705, i64 %i.ki
  %i.kl = getelementptr i8, ptr %gep1706, i64 16  ; 2 uses
  %i.km = load double, ptr %i.kl, align 8, !tbaa !9 ; 2 uses
  %i.kn = call double @llvm.fmuladd.f64(double %i.kk, double %i.km, double %i.kj)
  %i.ko = fmul double %i.kh, %i.kn                ; 2 uses
  %i.kp = fsub double %i.kj, %i.ko
  store double %i.kp, ptr %gep1704, align 8, !tbaa !9
  %i.kq = load double, ptr %i.ix, align 8, !tbaa !9
  %i.kr = fneg double %i.ko
  %i.ks = call double @llvm.fmuladd.f64(double %i.kr, double %i.kq, double %i.km)
  store double %i.ks, ptr %i.kl, align 8, !tbaa !9
  %indvars.iv.next1589 = add nsw i64 %indvars.iv1588, 1
  %.not1443.not = icmp slt i64 %indvars.iv1588, %i.jb
  br i1 %.not1443.not, label %scalar.ph2141, label %._crit_edge1504, !llvm.loop !34

._crit_edge1504:                                  ; preds = %scalar.ph2141, %middle.block2158, %bb.u
  %i.kt = load i32, ptr %4, align 4, !tbaa !8     ; 30 uses
  %.not1444 = icmp slt i32 %i.fe, %i.kt
  br i1 %.not1444, label %bb.an, label %bb.v

bb.v:                                             ; preds = %._crit_edge1504
  %i.ku = mul nsw i32 %i.fe, %i.k                 ; 2 uses
  %i.kv = add nsw i32 %i.is, %i.ku
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.kw ; 2 uses
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !9 ; 4 uses
  %i.kz = fcmp une double %i.ky, 0.000000e+00
  br i1 %i.kz, label %bb.w, label %bb.an

bb.w:                                             ; preds = %bb.v
  %i.la = add nsw i32 %i.ku, %i.fe
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.lb
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !9 ; 4 uses
  %i.le = fcmp oge double %i.ld, 0.000000e+00
  %i.lf = fneg double %i.ld
  %i.lg = select i1 %i.le, double %i.ld, double %i.lf
  %i.lh = mul nsw i32 %i.is, %i.k                 ; 5 uses
  %i.li = add nsw i32 %i.lh, %i.is
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.lj
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !9 ; 4 uses
  %i.lm = fcmp oge double %i.ll, 0.000000e+00
  %i.ln = fneg double %i.ll
  %i.lo = select i1 %i.lm, double %i.ll, double %i.ln ; 5 uses
  %i.lp = fadd double %i.lg, %i.lo                ; 4 uses
  %i.lq = fcmp oeq double %i.lp, 0.000000e+00
  br i1 %i.lq, label %bb.x, label %bb.aj

bb.x:                                             ; preds = %bb.w
  %.not1445.not = icmp sgt i32 %i.fe, %i.kt
  br i1 %.not1445.not, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.lr = add nsw i32 %i.fe, -1
  %i.ls = mul nsw i32 %i.lr, %i.k
  %i.lt = add nsw i32 %i.ls, %i.fe
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.lu
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !9 ; 3 uses
  %i.lx = fcmp oge double %i.lw, 0.000000e+00
  %i.ly = fneg double %i.lw
  %i.lz = select i1 %i.lx, double %i.lw, double %i.ly
  %i.ma = fadd double %i.lp, %i.lz
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0 = phi double [ %i.ma, %bb.y ], [ %i.lp, %bb.x ] ; 2 uses
  %i.mb = add nsw i32 %i.kt, 2
  %.not1446 = icmp slt i32 %i.fe, %i.mb
  br i1 %.not1446, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.mc = add nsw i32 %i.fe, -2
  %i.md = mul nsw i32 %i.mc, %i.k
  %i.me = add nsw i32 %i.md, %i.fe
  %i.mf = sext i32 %i.me to i64
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.mf
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !9 ; 3 uses
  %i.mi = fcmp oge double %i.mh, 0.000000e+00
  %i.mj = fneg double %i.mh
  %i.mk = select i1 %i.mi, double %i.mh, double %i.mj
  %i.ml = fadd double %.0, %i.mk
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.1 = phi double [ %i.ml, %bb.aa ], [ %.0, %bb.z ] ; 2 uses
  %i.mm = add nsw i32 %i.kt, 3
  %.not1447 = icmp slt i32 %i.fe, %i.mm
  br i1 %.not1447, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.mn = add nsw i32 %i.fe, -3
  %i.mo = mul nsw i32 %i.mn, %i.k
  %i.mp = add nsw i32 %i.mo, %i.fe
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.mq
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !9 ; 3 uses
  %i.mt = fcmp oge double %i.ms, 0.000000e+00
  %i.mu = fneg double %i.ms
  %i.mv = select i1 %i.mt, double %i.ms, double %i.mu
  %i.mw = fadd double %.1, %i.mv
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.2 = phi double [ %i.mw, %bb.ac ], [ %.1, %bb.ab ] ; 2 uses
  %i.mx = add nsw i32 %i.gp, -2
  %.not1448 = icmp sgt i32 %i.fe, %i.mx
  br i1 %.not1448, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.my = add nsw i32 %i.fe, 2
  %i.mz = add nsw i32 %i.my, %i.lh
  %i.na = sext i32 %i.mz to i64
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.na
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !9 ; 3 uses
  %i.nd = fcmp oge double %i.nc, 0.000000e+00
  %i.ne = fneg double %i.nc
  %i.nf = select i1 %i.nd, double %i.nc, double %i.ne
  %i.ng = fadd double %.2, %i.nf
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.3 = phi double [ %i.ng, %bb.ae ], [ %.2, %bb.ad ] ; 2 uses
  %i.nh = add nsw i32 %i.gp, -3
  %.not1449 = icmp sgt i32 %i.fe, %i.nh
  br i1 %.not1449, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ni = add nsw i32 %i.lh, %i.gq
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.nj
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !9 ; 3 uses
  %i.nm = fcmp oge double %i.nl, 0.000000e+00
  %i.nn = fneg double %i.nl
  %i.no = select i1 %i.nm, double %i.nl, double %i.nn
  %i.np = fadd double %.3, %i.no
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.4 = phi double [ %i.np, %bb.ag ], [ %.3, %bb.af ] ; 2 uses
  %i.nq = add nsw i32 %i.gp, -4
  %.not1450 = icmp sgt i32 %i.fe, %i.nq
  br i1 %.not1450, label %bb.aj, label %bb.ai

end_hunk_0
