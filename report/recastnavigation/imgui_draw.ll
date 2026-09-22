Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_draw?download=true
inline.NumInlined: 1448
inline.NumDeleted: 384
loop-unroll.NumCompletelyUnrolled: 298
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 350
begin_hunk_0_@_ZN6ImFont10RenderTextEP10ImDrawListfRK6ImVec2jRK6ImVec4PKcS9_fb:bb.a
  %i.ht = and i32 %i.hs, 2
  %.not345 = icmp eq i32 %i.ht, 0
  br i1 %.not345, label %.thread379, label %bb.ar

bb.ar:                                            ; preds = %_ZN11ImFontBaked9FindGlyphEt.exit
  %i.hu = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.hw = load <2 x float>, ptr %i.hu, align 4, !tbaa !31
  %i.hx = insertelement <2 x float> poison, float %.us-phi444, i64 0
  %i.hy = insertelement <2 x float> %i.hx, float %.us-phi445, i64 1 ; 2 uses
  %i.hz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hw, <2 x float> %i.fw, <2 x float> %i.hy) ; 4 uses
  %i.ia = extractelement <2 x float> %i.hz, i64 1 ; 4 uses
  %i.ib = extractelement <2 x float> %i.hz, i64 0 ; 4 uses
  %i.ic = load <2 x float>, ptr %i.hv, align 4, !tbaa !31
  %i.id = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ic, <2 x float> %i.fw, <2 x float> %i.hy) ; 4 uses
  %i.ie = extractelement <2 x float> %i.id, i64 1 ; 6 uses
  %i.if = extractelement <2 x float> %i.id, i64 0 ; 6 uses
  %i.ig = load float, ptr %i.z, align 4, !tbaa !216 ; 4 uses
  %i.ih = fcmp ugt float %i.ib, %i.ig
  br i1 %i.ih, label %.thread379, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ii = load float, ptr %5, align 4, !tbaa !34  ; 4 uses
  %i.ij = fcmp ult float %i.if, %i.ii
  br i1 %i.ij, label %.thread379, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ik = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  %i.il = load float, ptr %i.ik, align 4, !tbaa !217 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.1.i, i64 28
  %i.in = load float, ptr %i.im, align 4, !tbaa !218 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %i.ip = load float, ptr %i.io, align 4, !tbaa !219 ; 4 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.1.i, i64 36
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !220 ; 4 uses
  br i1 %9, label %bb.au, label %bb.bd

bb.au:                                            ; preds = %bb.at
  %i.is = fcmp olt float %i.ib, %i.ii
  br i1 %i.is, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.it = fsub float %i.if, %i.ii
  %foldExtExtBinop = fsub <2 x float> %i.id, %i.hz
  %i.iu = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.iv = fdiv float %i.it, %i.iu
  %i.iw = fsub float 1.000000e+00, %i.iv
  %i.ix = fsub float %i.ip, %i.il
  %i.iy = call float @llvm.fmuladd.f32(float %i.iw, float %i.ix, float %i.il)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.0274 = phi float [ %i.ii, %bb.av ], [ %i.ib, %bb.au ] ; 4 uses
  %.0266 = phi float [ %i.iy, %bb.av ], [ %i.il, %bb.au ] ; 3 uses
  %i.iz = load float, ptr %i.k, align 4, !tbaa !156 ; 3 uses
  %i.ja = fcmp olt float %i.ia, %i.iz
  br i1 %i.ja, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jb = fsub float %i.ie, %i.iz
  %i.jc = fsub float %i.ie, %i.ia
  %i.jd = fdiv float %i.jb, %i.jc
  %i.je = fsub float 1.000000e+00, %i.jd
  %i.jf = fsub float %i.ir, %i.in
  %i.jg = call float @llvm.fmuladd.f32(float %i.je, float %i.jf, float %i.in)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0270 = phi float [ %i.iz, %bb.ax ], [ %i.ia, %bb.aw ] ; 5 uses
  %.0264 = phi float [ %i.jg, %bb.ax ], [ %i.in, %bb.aw ] ; 3 uses
  %i.jh = fcmp ogt float %i.if, %i.ig
  br i1 %i.jh, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ji = fsub float %i.ig, %.0274
  %i.jj = fsub float %i.if, %.0274
  %i.jk = fdiv float %i.ji, %i.jj
  %i.jl = fsub float %i.ip, %.0266
  %i.jm = call float @llvm.fmuladd.f32(float %i.jk, float %i.jl, float %.0266)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0272 = phi float [ %i.ig, %bb.az ], [ %i.if, %bb.ay ] ; 2 uses
  %.0262 = phi float [ %i.jm, %bb.az ], [ %i.ip, %bb.ay ]
  %i.jn = load float, ptr %i.d, align 4, !tbaa !149 ; 3 uses
  %i.jo = fcmp ogt float %i.ie, %i.jn
  br i1 %i.jo, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.jp = fsub float %i.jn, %.0270
  %i.jq = fsub float %i.ie, %.0270
  %i.jr = fdiv float %i.jp, %i.jq
  %i.js = fsub float %i.ir, %.0264
  %i.jt = call float @llvm.fmuladd.f32(float %i.jr, float %i.js, float %.0264)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.0268 = phi float [ %i.jn, %bb.bb ], [ %i.ie, %bb.ba ] ; 3 uses
  %.0260 = phi float [ %i.jt, %bb.bb ], [ %i.ir, %bb.ba ]
  %i.ju = fcmp ult float %.0270, %.0268
  %i.jv = insertelement <2 x float> poison, float %.0274, i64 0
  %i.jw = insertelement <2 x float> %i.jv, float %.0270, i64 1
  %i.jx = insertelement <2 x float> poison, float %.0272, i64 0
  %i.jy = insertelement <2 x float> %i.jx, float %.0268, i64 1
  br i1 %i.ju, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.at, %bb.bc
  %.1275 = phi float [ %.0274, %bb.bc ], [ %i.ib, %bb.at ]
  %.1273 = phi float [ %.0272, %bb.bc ], [ %i.if, %bb.at ]
  %.1271 = phi float [ %.0270, %bb.bc ], [ %i.ia, %bb.at ]
  %.1269 = phi float [ %.0268, %bb.bc ], [ %i.ie, %bb.at ]
  %.1267 = phi float [ %.0266, %bb.bc ], [ %i.il, %bb.at ] ; 2 uses
  %.1265 = phi float [ %.0264, %bb.bc ], [ %i.in, %bb.at ] ; 2 uses
  %.1263 = phi float [ %.0262, %bb.bc ], [ %i.ip, %bb.at ] ; 2 uses
  %.1261 = phi float [ %.0260, %bb.bc ], [ %i.ir, %bb.at ] ; 2 uses
  %i.jz = phi <2 x float> [ %i.jw, %bb.bc ], [ %i.hz, %bb.at ]
  %i.ka = phi <2 x float> [ %i.jy, %bb.bc ], [ %i.id, %bb.at ]
  %i.kb = and i32 %i.hs, 1
  %.not346 = icmp eq i32 %i.kb, 0
  %i.kc = select i1 %.not346, i32 %4, i32 %i.y    ; 4 uses
  store <2 x float> %i.jz, ptr %.0291.ph457, align 4, !tbaa !31
  %i.kd = getelementptr inbounds nuw i8, ptr %.0291.ph457, i64 16
  store i32 %i.kc, ptr %i.kd, align 4, !tbaa !138
  %i.ke = getelementptr inbounds nuw i8, ptr %.0291.ph457, i64 8
  store float %.1267, ptr %i.ke, align 4, !tbaa !585
  %i.kf = getelementptr inbounds nuw i8, ptr %.0291.ph457, i64 12
  store float %.1265, ptr %i.kf, align 4, !tbaa !586
  %i.kg = getelementptr inbounds nuw i8, ptr %.0291.ph457, i64 20
  store float %.1273, ptr %i.kg, align 4, !tbaa !142
  %i.kh = getelementptr inbounds nuw i8, ptr %.0291.ph457, i64 24
  store float %.1271, ptr %i.kh, align 4, !tbaa !143
  %i.ki = getelementptr inbounds nuw i8, ptr %.0291.ph457, i64 36
  store i32 %i.kc, ptr %i.ki, align 4, !tbaa !138
  %i.kj = getelementptr inbounds nuw i8, ptr %.0291.ph457, i64 28
  store float %.1263, ptr %i.kj, align 4, !tbaa !585
  %i.kk = getelementptr inbounds nuw i8, ptr %.0291.ph457, i64 32
  store float %.1265, ptr %i.kk, align 4, !tbaa !586
  %i.kl = getelementptr inbounds nuw i8, ptr %.0291.ph457, i64 40
  store <2 x float> %i.ka, ptr %i.kl, align 4, !tbaa !31
  %i.km = getelementptr inbounds nuw i8, ptr %.0291.ph457, i64 56
  store i32 %i.kc, ptr %i.km, align 4, !tbaa !138
  %i.kn = getelementptr inbounds nuw i8, ptr %.0291.ph457, i64 48
  store float %.1263, ptr %i.kn, align 4, !tbaa !585
  %i.ko = getelementptr inbounds nuw i8, ptr %.0291.ph457, i64 52
  store float %.1261, ptr %i.ko, align 4, !tbaa !586
  %i.kp = getelementptr inbounds nuw i8, ptr %.0291.ph457, i64 60
  store float %.1275, ptr %i.kp, align 4, !tbaa !142
  %i.kq = getelementptr inbounds nuw i8, ptr %.0291.ph457, i64 64
  store float %.1269, ptr %i.kq, align 4, !tbaa !143
  %i.kr = getelementptr inbounds nuw i8, ptr %.0291.ph457, i64 76
  store i32 %i.kc, ptr %i.kr, align 4, !tbaa !138
  %i.ks = getelementptr inbounds nuw i8, ptr %.0291.ph457, i64 68
  store float %.1267, ptr %i.ks, align 4, !tbaa !585
  %i.kt = getelementptr inbounds nuw i8, ptr %.0291.ph457, i64 72
  store float %.1261, ptr %i.kt, align 4, !tbaa !586
  %i.ku = trunc i32 %.0279.ph459 to i16           ; 5 uses
  store i16 %i.ku, ptr %.0283.ph458, align 2, !tbaa !136
  %i.kv = add i16 %i.ku, 1
  %i.kw = getelementptr inbounds nuw i8, ptr %.0283.ph458, i64 2
  store i16 %i.kv, ptr %i.kw, align 2, !tbaa !136
  %i.kx = add i16 %i.ku, 2                        ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.0283.ph458, i64 4
  store i16 %i.kx, ptr %i.ky, align 2, !tbaa !136
  %i.kz = getelementptr inbounds nuw i8, ptr %.0283.ph458, i64 6
  store i16 %i.ku, ptr %i.kz, align 2, !tbaa !136
  %i.la = getelementptr inbounds nuw i8, ptr %.0283.ph458, i64 8
  store i16 %i.kx, ptr %i.la, align 2, !tbaa !136
  %i.lb = add i16 %i.ku, 3
  %i.lc = getelementptr inbounds nuw i8, ptr %.0283.ph458, i64 10
  store i16 %i.lb, ptr %i.lc, align 2, !tbaa !136
  %i.ld = getelementptr inbounds nuw i8, ptr %.0291.ph457, i64 80
  %i.le = add i32 %.0279.ph459, 4
  %i.lf = getelementptr inbounds nuw i8, ptr %.0283.ph458, i64 12
  br label %.thread379

bb.be:                                            ; preds = %bb.bc
  %i.lg = fadd float %.us-phi444, %i.hr
  br label %.outer

.thread379:                                       ; preds = %bb.bd, %bb.as, %bb.ar, %_ZN11ImFontBaked9FindGlyphEt.exit
  %.4295 = phi ptr [ %.0291.ph457, %_ZN11ImFontBaked9FindGlyphEt.exit ], [ %i.ld, %bb.bd ], [ %.0291.ph457, %bb.as ], [ %.0291.ph457, %bb.ar ]
  %.4287 = phi ptr [ %.0283.ph458, %_ZN11ImFontBaked9FindGlyphEt.exit ], [ %i.lf, %bb.bd ], [ %.0283.ph458, %bb.as ], [ %.0283.ph458, %bb.ar ]
  %.4 = phi i32 [ %.0279.ph459, %_ZN11ImFontBaked9FindGlyphEt.exit ], [ %i.le, %bb.bd ], [ %.0279.ph459, %bb.as ], [ %.0279.ph459, %bb.ar ]
  %i.lh = fadd float %.us-phi444, %i.hr
  br label %.outer

.thread386:                                       ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  br label %.loopexit

.outer:                                           ; preds = %bb.ak, %bb.be, %.thread379, %bb.aj
  %.6323 = phi float [ %i.ah, %bb.ak ], [ %.us-phi444, %bb.aj ], [ %i.lh, %.thread379 ], [ %i.lg, %bb.be ]
  %.3316 = phi float [ %i.gt, %bb.ak ], [ %.us-phi445, %bb.aj ], [ %.us-phi445, %.thread379 ], [ %.us-phi445, %bb.be ]
  %.6297 = phi ptr [ %.0291.ph457, %bb.ak ], [ %.0291.ph457, %bb.aj ], [ %.4295, %.thread379 ], [ %.0291.ph457, %bb.be ] ; 2 uses
  %.6289 = phi ptr [ %.0283.ph458, %bb.ak ], [ %.0283.ph458, %bb.aj ], [ %.4287, %.thread379 ], [ %.0283.ph458, %bb.be ] ; 2 uses
  %.6 = phi i32 [ %.0279.ph459, %bb.ak ], [ %.0279.ph459, %bb.aj ], [ %.4, %.thread379 ], [ %.0279.ph459, %bb.be ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  %i.li = icmp ult ptr %.4305, %.2
  br i1 %i.li, label %.lr.ph433, label %.loopexit

.loopexit:                                        ; preds = %.outer, %bb.ae, %_ZL26CalcWordWrapNextLineStartAPKcS0_.exit359.us, %bb.ab, %.thread386
  %.0291.ph415 = phi ptr [ %.0291.ph457, %.thread386 ], [ %i.fm, %bb.ab ], [ %.0291.ph457, %bb.ae ], [ %.0291.ph457, %_ZL26CalcWordWrapNextLineStartAPKcS0_.exit359.us ], [ %.6297, %.outer ] ; 2 uses
  %.0283.ph413 = phi ptr [ %.0283.ph458, %.thread386 ], [ %i.fn, %bb.ab ], [ %.0283.ph458, %bb.ae ], [ %.0283.ph458, %_ZL26CalcWordWrapNextLineStartAPKcS0_.exit359.us ], [ %.6289, %.outer ] ; 2 uses
  %.0279.ph411 = phi i32 [ %.0279.ph459, %.thread386 ], [ %i.fo, %bb.ab ], [ %.0279.ph459, %bb.ae ], [ %.0279.ph459, %_ZL26CalcWordWrapNextLineStartAPKcS0_.exit359.us ], [ %.6, %.outer ]
  %i.lj = load i32, ptr %1, align 8, !tbaa !106   ; 3 uses
  %.not347 = icmp eq i32 %i.fp, %i.lj
  br i1 %.not347, label %bb.bk, label %bb.bf

bb.bf:                                            ; preds = %.loopexit
  %i.lk = add nsw i32 %i.lj, -1                   ; 6 uses
  store i32 %i.lk, ptr %1, align 8, !tbaa !88
  %i.ll = load ptr, ptr %i.aa, align 8, !tbaa !107 ; 2 uses
  %i.lm = sext i32 %i.lk to i64                   ; 2 uses
  %i.ln = getelementptr [72 x i8], ptr %i.ll, i64 %i.lm
  %i.lo = getelementptr i8, ptr %i.ln, i64 -32    ; 2 uses
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !109
  %i.lq = sub i32 %i.lp, %i.fk
  store i32 %i.lq, ptr %i.lo, align 8, !tbaa !109
  %i.lr = load i32, ptr %i.ab, align 8, !tbaa !132
  %i.ls = sub nsw i32 %i.lr, %i.fj
  store i32 %i.ls, ptr %i.ab, align 8, !tbaa !92
  %i.lt = load i32, ptr %i.u, align 8, !tbaa !112
  %i.lu = sub nsw i32 %i.lt, %i.fk                ; 2 uses
  store i32 %i.lu, ptr %i.u, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.16..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !118
  %i.lv = load i32, ptr %i.ae, align 8, !tbaa !119
  %i.lw = load i32, ptr %i.af, align 4, !tbaa !87
  %i.lx = icmp eq i32 %i.lk, %i.lw
  br i1 %i.lx, label %bb.bg, label %bb.bl

bb.bg:                                            ; preds = %bb.bf
  %.not.i.i.i = icmp eq i32 %i.lk, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ly = sdiv i32 %i.lk, 2
  %i.lz = add nsw i32 %i.ly, %i.lk
  br label %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i: ; preds = %bb.bh, %bb.bg
  %i.ma = phi i32 [ %i.lz, %bb.bh ], [ 8, %bb.bg ]
  %i.mb = call noundef i32 @llvm.smax.i32(i32 %i.ma, i32 %i.lj) ; 2 uses
  %i.mc = sext i32 %i.mb to i64
  %i.md = mul nsw i64 %i.mc, 72
  %i.me = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.md) #35 ; 3 uses
  %i.mf = load ptr, ptr %i.aa, align 8, !tbaa !86 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.mf, null
  br i1 %.not6.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i
  %i.mg = load i32, ptr %1, align 8, !tbaa !88
  %i.mh = sext i32 %i.mg to i64
  %i.mi = mul nsw i64 %i.mh, 72
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.me, ptr nonnull align 8 %i.mf, i64 %i.mi, i1 false)
  %i.mj = load ptr, ptr %i.aa, align 8, !tbaa !86
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.mj) #35
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i
  store ptr %i.me, ptr %i.aa, align 8, !tbaa !86
  store i32 %i.mb, ptr %i.af, align 4, !tbaa !87
  %.pre3.i.i = load i32, ptr %1, align 8, !tbaa !88
  %.pre488 = sext i32 %.pre3.i.i to i64
  br label %bb.bl

bb.bk:                                            ; preds = %.loopexit
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !133
  %i.mm = ptrtoint ptr %.0291.ph415 to i64
  %i.mn = ptrtoint ptr %i.ml to i64
  %i.mo = sub i64 %i.mm, %i.mn
  %i.mp = sdiv exact i64 %i.mo, 20
  %i.mq = trunc i64 %i.mp to i32
  store i32 %i.mq, ptr %i.ab, align 8, !tbaa !132
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !113
  %i.mt = ptrtoint ptr %.0283.ph413 to i64
  %i.mu = ptrtoint ptr %i.ms to i64
  %i.mv = sub i64 %i.mt, %i.mu
  %i.mw = lshr exact i64 %i.mv, 1
  %i.mx = trunc i64 %i.mw to i32                  ; 2 uses
  store i32 %i.mx, ptr %i.u, align 8, !tbaa !112
  %i.my = add i32 %i.fl, %i.fk
  %i.mz = load ptr, ptr %i.aa, align 8, !tbaa !86
  %i.na = sext i32 %i.fp to i64
  %i.nb = getelementptr [72 x i8], ptr %i.mz, i64 %i.na
  %i.nc = getelementptr i8, ptr %i.nb, i64 -32    ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !109
  %.neg = sub i32 %i.nd, %i.my
  %i.ne = add i32 %.neg, %i.mx
  store i32 %i.ne, ptr %i.nc, align 8, !tbaa !109
  store ptr %.0291.ph415, ptr %i.v, align 8, !tbaa !134
  store ptr %.0283.ph413, ptr %i.w, align 8, !tbaa !115
  store i32 %.0279.ph411, ptr %i.x, align 4, !tbaa !94
  br label %.loopexit403

bb.bl:                                            ; preds = %bb.bj, %bb.bf
  %.pre-phi = phi i64 [ %.pre488, %bb.bj ], [ %i.lm, %bb.bf ]
  %i.nf = phi ptr [ %i.me, %bb.bj ], [ %i.ll, %bb.bf ]
  %i.ng = getelementptr inbounds [72 x i8], ptr %i.nf, i64 %.pre-phi ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ng, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i, i64 32, i1 false)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ng, i64 32
  store i32 %i.lv, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ng, i64 36
  store i32 %i.lu, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ng, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx.i, i8 0, i64 32, i1 false)
  %i.nh = load i32, ptr %1, align 8, !tbaa !88
  %i.ni = add nsw i32 %i.nh, 1
  store i32 %i.ni, ptr %1, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.nj = load float, ptr %i.c, align 4, !tbaa !130
  %i.nk = fptosi float %i.nj to i32
  %i.nl = sitofp i32 %i.nk to float               ; 2 uses
  %i.nm = load float, ptr %i.d, align 4, !tbaa !149
  %i.nn = fcmp olt float %i.nm, %i.nl
  br i1 %i.nn, label %.loopexit403, label %bb.b

.loopexit403:                                     ; preds = %.loopexit400, %bb.bl, %bb.a, %bb.bk
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #6 align 2 {
bb.a:
  %5 = alloca %struct.ImVec4, align 4             ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load float, ptr %i.e, align 8, !tbaa !148
  %i.g = icmp ult i32 %2, 16777216
  %i.h = icmp eq ptr %3, %4
  %or.cond.i = or i1 %i.g, %i.h
  br i1 %or.cond.i, label %_ZN10ImDrawList7AddTextEP6ImFontfRK6ImVec2jPKcS6_fPK6ImVec4.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %3, align 1, !tbaa !53
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %_ZN10ImDrawList7AddTextEP6ImFontfRK6ImVec2jPKcS6_fPK6ImVec4.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !32
  call void @_ZN6ImFont10RenderTextEP10ImDrawListfRK6ImVec2jRK6ImVec4PKcS9_fb(ptr noundef nonnull align 8 dereferenceable(76) %i.d, ptr noundef nonnull align 8 dereferenceable(224) %0, float noundef %i.f, ptr noundef nonnull readonly align 4 dereferenceable(8) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull %3, ptr noundef %4, float noundef 0.000000e+00, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %_ZN10ImDrawList7AddTextEP6ImFontfRK6ImVec2jPKcS6_fPK6ImVec4.exit

_ZN10ImDrawList7AddTextEP6ImFontfRK6ImVec2jPKcS6_fPK6ImVec4.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN10ImDrawList8AddImageE12ImTextureRefRK6ImVec2S3_S3_S3_j(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr %1, i64 %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %6, i32 noundef %7) local_unnamed_addr #6 align 2 {
bb.a:
  %8 = alloca %struct.ImTextureRef, align 8       ; 5 uses
  %i.a = icmp ult i32 %7, 16777216
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !128
  %.not.i = icmp ne i64 %2, %i.d
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = icmp ne ptr %1, %i.e
  %i.g = select i1 %.not.i, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 7 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !98   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !97
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %._ZN8ImVectorI12ImTextureRefE7reserveEi.exit_crit_edge.i.i

._ZN8ImVectorI12ImTextureRefE7reserveEi.exit_crit_edge.i.i: ; preds = %bb.c
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !81
  br label %_ZN10ImDrawList11PushTextureE12ImTextureRef.exit

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i32 %i.i, 1
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorI12ImTextureRefE14_grow_capacityEi.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sdiv i32 %i.i, 2
  %i.o = add nsw i32 %i.n, %i.i
  br label %_ZNK8ImVectorI12ImTextureRefE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorI12ImTextureRefE14_grow_capacityEi.exit.i.i: ; preds = %bb.e, %bb.d
  %i.p = phi i32 [ %i.o, %bb.e ], [ 8, %bb.d ]
  %i.q = tail call noundef i32 @llvm.smax.i32(i32 %i.p, i32 %i.m) ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 4
  %i.t = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.s) #35 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !81   ; 2 uses
end_hunk_0
