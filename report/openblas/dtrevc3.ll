Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrevc3?download=true
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@dtrevc3_:bb.a
  %.not1402.not1577 = icmp slt i32 %i.ra, %i.qz
  br i1 %.not1402.not1577, label %.lr.ph1580.preheader, label %.loopexit1499

.lr.ph1580.preheader:                             ; preds = %bb.bd
  %i.rb = add nsw i32 %i.ra, 1
  %i.rc = add i32 %i.rb, %i.qm
  %i.rd = sext i32 %i.rc to i64
  %i.re = shl nsw i64 %i.rd, 3
  %scevgep1760 = getelementptr i8, ptr %scevgep1739, i64 %i.re
  %i.rf = xor i32 %i.ra, -1
  %i.rg = add i32 %i.qz, %i.rf
  %i.rh = zext i32 %i.rg to i64
  %i.ri = shl nuw nsw i64 %i.rh, 3
  %i.rj = add nuw nsw i64 %i.ri, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1760, i8 0, i64 %i.rj, i1 false), !tbaa !74
  br label %.loopexit1499

bb.be:                                            ; preds = %._crit_edge1571
  br i1 %i.hu, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.rk = load i32, ptr %i.s, align 4, !tbaa !63  ; 5 uses
  %i.rl = icmp sgt i32 %i.rk, 1
  br i1 %i.rl, label %bb.bg, label %.thread1449

bb.bg:                                            ; preds = %bb.bf
  %i.rm = add nsw i32 %i.rk, -1
  store i32 %i.rm, ptr %i.e, align 4, !tbaa !63
  %i.rn = load i32, ptr %i.t, align 4, !tbaa !63
  %i.ro = load i32, ptr %3, align 4, !tbaa !63
  %i.rp = mul nsw i32 %i.ro, %i.rn                ; 2 uses
  %i.rq = sext i32 %i.rp to i64
  %i.rr = getelementptr [8 x i8], ptr %i.ah, i64 %i.rq
  %i.rs = getelementptr i8, ptr %i.rr, i64 8
  %i.rt = add nsw i32 %i.rp, %i.rk
  %i.ru = sext i32 %i.rt to i64
  %i.rv = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ru
  %i.rw = mul nsw i32 %i.rk, %i.ae
  %i.rx = sext i32 %i.rw to i64
  %i.ry = getelementptr [8 x i8], ptr %i.ag, i64 %i.rx
  %i.rz = getelementptr i8, ptr %i.ry, i64 8
  call void @dgemv_(ptr noundef nonnull @.str.10, ptr noundef nonnull %3, ptr noundef nonnull %i.e, ptr noundef nonnull @c_b29, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %i.rs, ptr noundef nonnull @c__1, ptr noundef nonnull %i.rv, ptr noundef %i.rz, ptr noundef nonnull @c__1) #7
  %.pre1840 = load i32, ptr %i.s, align 4, !tbaa !63
  br label %.thread1449

.thread1449:                                      ; preds = %bb.bf, %bb.bg
  %i.sa = phi i32 [ %i.rk, %bb.bf ], [ %.pre1840, %bb.bg ]
  %i.sb = mul nsw i32 %i.sa, %i.ae
  %i.sc = sext i32 %i.sb to i64
  %i.sd = getelementptr [8 x i8], ptr %i.ag, i64 %i.sc
  %i.se = getelementptr i8, ptr %i.sd, i64 8
  %i.sf = call i32 @idamax_(ptr noundef nonnull %3, ptr noundef %i.se, ptr noundef nonnull @c__1) #7
  %i.sg = load i32, ptr %i.s, align 4, !tbaa !63
  %i.sh = mul nsw i32 %i.sg, %i.ae                ; 2 uses
  %i.si = add nsw i32 %i.sh, %i.sf
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.sj
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !74 ; 4 uses
  store double %i.sl, ptr %i.h, align 8, !tbaa !74
  %i.sm = fcmp oge double %i.sl, 0.000000e+00
  %i.sn = fneg double %i.sl
  %i.so = select i1 %i.sm, double %i.sl, double %i.sn
  %i.sp = fdiv double 1.000000e+00, %i.so
  store double %i.sp, ptr %i.p, align 8, !tbaa !74
  %i.sq = sext i32 %i.sh to i64
  %i.sr = getelementptr [8 x i8], ptr %i.ag, i64 %i.sq
  %i.ss = getelementptr i8, ptr %i.sr, i64 8
  call void @dscal_(ptr noundef nonnull %3, ptr noundef nonnull %i.p, ptr noundef %i.ss, ptr noundef nonnull @c__1) #7
  br label %bb.cp

bb.bh:                                            ; preds = %bb.be
  %i.st = load i32, ptr %3, align 4, !tbaa !63    ; 4 uses
  store i32 %i.st, ptr %i.e, align 4, !tbaa !63
  %i.su = load i32, ptr %i.s, align 4, !tbaa !63  ; 3 uses
  %.not1403.not1572 = icmp slt i32 %i.su, %i.st
  %.pre1839 = load i32, ptr %i.t, align 4, !tbaa !63 ; 2 uses
  br i1 %.not1403.not1572, label %.lr.ph1575, label %._crit_edge1576

.lr.ph1575:                                       ; preds = %bb.bh
  %i.sv = mul nsw i32 %.pre1839, %i.st
  %i.sw = add nsw i32 %i.su, 1
  %i.sx = add i32 %i.sw, %i.sv
  %i.sy = sext i32 %i.sx to i64
  %i.sz = shl nsw i64 %i.sy, 3
  %scevgep1755 = getelementptr i8, ptr %i.ah, i64 %i.sz
  %i.ta = xor i32 %i.su, -1
  %i.tb = add i32 %i.st, %i.ta
  %i.tc = zext i32 %i.tb to i64
  %i.td = shl nuw nsw i64 %i.tc, 3
  %i.te = add nuw nsw i64 %i.td, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1755, i8 0, i64 %i.te, i1 false), !tbaa !74
  br label %._crit_edge1576

._crit_edge1576:                                  ; preds = %.lr.ph1575, %bb.bh
  %i.tf = sext i32 %.pre1839 to i64
  %i.tg = getelementptr [4 x i8], ptr %i.r, i64 %i.tf
  %i.th = getelementptr i8, ptr %i.tg, i64 -4
  store i32 0, ptr %i.th, align 4, !tbaa !63
  br label %.loopexit1499

bb.bi:                                            ; preds = %bb.an
  %i.ti = add nsw i32 %storemerge13721594, -1     ; 7 uses
  %i.tj = mul nsw i32 %storemerge13721594, %i.y   ; 2 uses
  %i.tk = add nsw i32 %i.ti, %i.tj
  %i.tl = sext i32 %i.tk to i64
  %i.tm = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.tl ; 2 uses
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !74 ; 2 uses
  store double %i.tn, ptr %i.h, align 8, !tbaa !74
  %i.to = call double @llvm.fabs.f64(double %i.tn)
  %i.tp = mul nsw i32 %i.ti, %i.y                 ; 2 uses
  %i.tq = add nsw i32 %i.tp, %storemerge13721594
  %i.tr = sext i32 %i.tq to i64
  %i.ts = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.tr
  %i.tt = load double, ptr %i.ts, align 8, !tbaa !74 ; 2 uses
  %i.tu = call double @llvm.fabs.f64(double %i.tt)
  %i.tv = fcmp ult double %i.to, %i.tu
  br i1 %i.tv, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.tw = load i32, ptr %i.t, align 4, !tbaa !63  ; 3 uses
  %i.tx = add nsw i32 %i.tw, -1                   ; 2 uses
  %i.ty = load i32, ptr %3, align 4, !tbaa !63    ; 2 uses
  %i.tz = mul nsw i32 %i.tx, %i.ty                ; 2 uses
  %i.ua = add nsw i32 %i.tz, %i.ti
  %i.ub = sext i32 %i.ua to i64
  %i.uc = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ub
  store double 1.000000e+00, ptr %i.uc, align 8, !tbaa !74
  %i.ud = load double, ptr %i.tm, align 8, !tbaa !74
  %i.ue = fdiv double %i.jw, %i.ud
  %i.uf = mul nsw i32 %i.ty, %i.tw
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.ug = fdiv double %i.kd, %i.tt
  %i.uh = load i32, ptr %i.t, align 4, !tbaa !63  ; 3 uses
  %i.ui = add nsw i32 %i.uh, -1                   ; 2 uses
  %i.uj = load i32, ptr %3, align 4, !tbaa !63    ; 2 uses
  %i.uk = mul nsw i32 %i.ui, %i.uj                ; 2 uses
  %i.ul = add nsw i32 %i.uk, %i.ti
  %i.um = sext i32 %i.ul to i64
  %i.un = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.um
  store double %i.ug, ptr %i.un, align 8, !tbaa !74
  %i.uo = mul nsw i32 %i.uj, %i.uh
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.sink2034 = phi i32 [ %i.uo, %bb.bk ], [ %i.uf, %bb.bj ] ; 4 uses
  %.sink2030 = phi double [ 1.000000e+00, %bb.bk ], [ %i.ue, %bb.bj ]
  %.pre-phi1875 = phi i32 [ %i.uk, %bb.bk ], [ %i.tz, %bb.bj ] ; 3 uses
  %.pre-phi1874 = phi i32 [ %i.ui, %bb.bk ], [ %i.tx, %bb.bj ] ; 7 uses
  %i.up = phi i32 [ %i.uh, %bb.bk ], [ %i.tw, %bb.bj ] ; 6 uses
  %i.uq = add nsw i32 %.sink2034, %storemerge13721594
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ur
  store double %.sink2030, ptr %i.us, align 8, !tbaa !74
  %i.ut = add nsw i32 %.pre-phi1875, %storemerge13721594
  %i.uu = sext i32 %i.ut to i64
  %i.uv = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.uu
  store double 0.000000e+00, ptr %i.uv, align 8, !tbaa !74
  %i.uw = add nsw i32 %.sink2034, %i.ti
  %i.ux = sext i32 %i.uw to i64
  %i.uy = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ux
  store double 0.000000e+00, ptr %i.uy, align 8, !tbaa !74
  %i.uz = add i32 %storemerge13721594, -2         ; 3 uses
  store i32 %i.uz, ptr %i.e, align 4, !tbaa !63
  %.not13951531 = icmp slt i32 %storemerge13721594, 3
  br i1 %.not13951531, label %._crit_edge1538, label %.lr.ph1534

.lr.ph1534:                                       ; preds = %bb.bl
  %i.va = add nsw i32 %.pre-phi1875, %i.ti
  %i.vb = sext i32 %i.va to i64                   ; 2 uses
  %i.vc = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.vb ; 6 uses
  %i.vd = add nsw i32 %.sink2034, %storemerge13721594
  %i.ve = sext i32 %i.vd to i64                   ; 2 uses
  %i.vf = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ve ; 6 uses
  %i.vg = sext i32 %i.tp to i64                   ; 2 uses
  %i.vh = sext i32 %.pre-phi1875 to i64           ; 2 uses
  %i.vi = sext i32 %i.tj to i64                   ; 2 uses
  %i.vj = sext i32 %.sink2034 to i64              ; 2 uses
  %wide.trip.count1717 = zext nneg i32 %i.ti to i64 ; 4 uses
  %invariant.gep1974 = getelementptr [8 x i8], ptr %i.aa, i64 %i.vg ; 4 uses
  %invariant.gep1976 = getelementptr [8 x i8], ptr %i.ah, i64 %i.vh ; 4 uses
  %invariant.gep1978 = getelementptr [8 x i8], ptr %i.aa, i64 %i.vi ; 4 uses
  %invariant.gep1980 = getelementptr [8 x i8], ptr %i.ah, i64 %i.vj ; 4 uses
  %i.vk = add nsw i64 %wide.trip.count1717, -1    ; 3 uses
  %min.iters.check2245 = icmp ult i64 %i.vk, 20
  br i1 %min.iters.check2245, label %scalar.ph2244.preheader, label %vector.memcheck2246

vector.memcheck2246:                              ; preds = %.lr.ph1534
  %i.vl = shl nsw i64 %i.vh, 3                    ; 2 uses
  %i.vm = getelementptr i8, ptr %12, i64 %i.vl    ; 5 uses
  %i.vn = shl nuw nsw i64 %wide.trip.count1717, 3 ; 4 uses
  %i.vo = getelementptr i8, ptr %i.ah, i64 %i.vl
  %i.vp = getelementptr i8, ptr %i.vo, i64 %i.vn  ; 5 uses
  %i.vq = shl nsw i64 %i.vj, 3                    ; 2 uses
  %i.vr = getelementptr i8, ptr %12, i64 %i.vq    ; 5 uses
  %i.vs = getelementptr i8, ptr %i.ah, i64 %i.vq
  %i.vt = getelementptr i8, ptr %i.vs, i64 %i.vn  ; 5 uses
  %i.vu = shl nsw i64 %i.vb, 3
  %i.vv = getelementptr i8, ptr %12, i64 %i.vu    ; 2 uses
  %i.vw = shl nsw i64 %i.vi, 3                    ; 2 uses
  %i.vx = getelementptr i8, ptr %scevgep2243, i64 %i.vw ; 2 uses
  %i.vy = getelementptr i8, ptr %i.aa, i64 %i.vw
  %i.vz = getelementptr i8, ptr %i.vy, i64 %i.vn  ; 2 uses
  %i.wa = shl nsw i64 %i.vg, 3                    ; 2 uses
  %i.wb = getelementptr i8, ptr %scevgep2243, i64 %i.wa ; 2 uses
  %i.wc = getelementptr i8, ptr %i.aa, i64 %i.wa
  %i.wd = getelementptr i8, ptr %i.wc, i64 %i.vn  ; 2 uses
  %i.we = shl nsw i64 %i.ve, 3
  %i.wf = getelementptr i8, ptr %12, i64 %i.we    ; 2 uses
  %bound0 = icmp ult ptr %i.vm, %i.vt
  %bound1 = icmp ult ptr %i.vr, %i.vp
  %found.conflict = and i1 %bound0, %bound1
  %bound02247 = icmp ult ptr %i.vm, %i.vv
  %bound12248 = icmp ult ptr %i.vc, %i.vp
  %found.conflict2249 = and i1 %bound02247, %bound12248
  %conflict.rdx = or i1 %found.conflict, %found.conflict2249
  %bound02250 = icmp ult ptr %i.vm, %i.vz
  %bound12251 = icmp ult ptr %i.vx, %i.vp
  %found.conflict2252 = and i1 %bound02250, %bound12251
  %conflict.rdx2253 = or i1 %conflict.rdx, %found.conflict2252
  %bound02254 = icmp ult ptr %i.vm, %i.wd
  %bound12255 = icmp ult ptr %i.wb, %i.vp
  %found.conflict2256 = and i1 %bound02254, %bound12255
  %conflict.rdx2257 = or i1 %conflict.rdx2253, %found.conflict2256
  %bound02258 = icmp ult ptr %i.vm, %i.wf
  %bound12259 = icmp ult ptr %i.vf, %i.vp
  %found.conflict2260 = and i1 %bound02258, %bound12259
  %conflict.rdx2261 = or i1 %conflict.rdx2257, %found.conflict2260
  %bound02262 = icmp ult ptr %i.vr, %i.vv
  %bound12263 = icmp ult ptr %i.vc, %i.vt
  %found.conflict2264 = and i1 %bound02262, %bound12263
  %conflict.rdx2265 = or i1 %conflict.rdx2261, %found.conflict2264
  %bound02266 = icmp ult ptr %i.vr, %i.vz
  %bound12267 = icmp ult ptr %i.vx, %i.vt
  %found.conflict2268 = and i1 %bound02266, %bound12267
  %conflict.rdx2269 = or i1 %conflict.rdx2265, %found.conflict2268
  %bound02270 = icmp ult ptr %i.vr, %i.wd
  %bound12271 = icmp ult ptr %i.wb, %i.vt
  %found.conflict2272 = and i1 %bound02270, %bound12271
  %conflict.rdx2273 = or i1 %conflict.rdx2269, %found.conflict2272
  %bound02274 = icmp ult ptr %i.vr, %i.wf
  %bound12275 = icmp ult ptr %i.vf, %i.vt
  %found.conflict2276 = and i1 %bound02274, %bound12275
  %conflict.rdx2277 = or i1 %conflict.rdx2273, %found.conflict2276
  br i1 %conflict.rdx2277, label %scalar.ph2244.preheader, label %vector.ph2278

vector.ph2278:                                    ; preds = %vector.memcheck2246
  %n.vec2279 = and i64 %i.vk, -8                  ; 3 uses
  %i.wg = or disjoint i64 %n.vec2279, 1
  %i.wh = load double, ptr %i.vc, align 8, !tbaa !74, !alias.scope !76
  %.scalar = fneg double %i.wh
  %i.wi = insertelement <4 x double> poison, double %.scalar, i64 0
  %i.wj = shufflevector <4 x double> %i.wi, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wk = load double, ptr %i.vf, align 8, !tbaa !74, !alias.scope !77
  %.scalar2522 = fneg double %i.wk
  %i.wl = insertelement <4 x double> poison, double %.scalar2522, i64 0
  %i.wm = shufflevector <4 x double> %i.wl, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2282

vector.body2282:                                  ; preds = %vector.body2282, %vector.ph2278
  %index2283 = phi i64 [ 0, %vector.ph2278 ], [ %index.next2288, %vector.body2282 ] ; 2 uses
  %i.wn = or disjoint i64 %index2283, 1           ; 4 uses
  %i.wo = getelementptr [8 x i8], ptr %invariant.gep1974, i64 %i.wn ; 2 uses
  %i.wp = getelementptr i8, ptr %i.wo, i64 32
  %wide.load2284 = load <4 x double>, ptr %i.wo, align 8, !tbaa !74, !alias.scope !78
  %wide.load2285 = load <4 x double>, ptr %i.wp, align 8, !tbaa !74, !alias.scope !78
  %i.wq = fmul <4 x double> %wide.load2284, %i.wj
  %i.wr = fmul <4 x double> %wide.load2285, %i.wj
  %i.ws = getelementptr [8 x i8], ptr %invariant.gep1976, i64 %i.wn ; 2 uses
  %i.wt = getelementptr i8, ptr %i.ws, i64 32
  store <4 x double> %i.wq, ptr %i.ws, align 8, !tbaa !74, !alias.scope !79, !noalias !80
  store <4 x double> %i.wr, ptr %i.wt, align 8, !tbaa !74, !alias.scope !79, !noalias !80
  %i.wu = getelementptr [8 x i8], ptr %invariant.gep1978, i64 %i.wn ; 2 uses
  %i.wv = getelementptr i8, ptr %i.wu, i64 32
  %wide.load2286 = load <4 x double>, ptr %i.wu, align 8, !tbaa !74, !alias.scope !81
  %wide.load2287 = load <4 x double>, ptr %i.wv, align 8, !tbaa !74, !alias.scope !81
  %i.ww = fmul <4 x double> %wide.load2286, %i.wm
  %i.wx = fmul <4 x double> %wide.load2287, %i.wm
  %i.wy = getelementptr [8 x i8], ptr %invariant.gep1980, i64 %i.wn ; 2 uses
  %i.wz = getelementptr i8, ptr %i.wy, i64 32
  store <4 x double> %i.ww, ptr %i.wy, align 8, !tbaa !74, !alias.scope !82, !noalias !83
  store <4 x double> %i.wx, ptr %i.wz, align 8, !tbaa !74, !alias.scope !82, !noalias !83
  %index.next2288 = add nuw i64 %index2283, 8     ; 2 uses
  %i.xa = icmp eq i64 %index.next2288, %n.vec2279
  br i1 %i.xa, label %middle.block2289, label %vector.body2282, !llvm.loop !29

middle.block2289:                                 ; preds = %vector.body2282
  %cmp.n2290 = icmp eq i64 %i.vk, %n.vec2279
  br i1 %cmp.n2290, label %.lr.ph1537, label %scalar.ph2244.preheader

scalar.ph2244.preheader:                          ; preds = %vector.memcheck2246, %.lr.ph1534, %middle.block2289
  %indvars.iv1714.ph = phi i64 [ 1, %vector.memcheck2246 ], [ 1, %.lr.ph1534 ], [ %i.wg, %middle.block2289 ] ; 7 uses
  %i.xb = and i32 %storemerge13721594, 1
  %lcmp.mod2581.not = icmp eq i32 %i.xb, 0
  br i1 %lcmp.mod2581.not, label %scalar.ph2244.prol.loopexit, label %scalar.ph2244.prol

scalar.ph2244.prol:                               ; preds = %scalar.ph2244.preheader
  %i.xc = load double, ptr %i.vc, align 8, !tbaa !74
  %i.xd = fneg double %i.xc
  %gep1975.prol = getelementptr [8 x i8], ptr %invariant.gep1974, i64 %indvars.iv1714.ph
  %i.xe = load double, ptr %gep1975.prol, align 8, !tbaa !74
  %i.xf = fmul double %i.xe, %i.xd
  %gep1977.prol = getelementptr [8 x i8], ptr %invariant.gep1976, i64 %indvars.iv1714.ph
  store double %i.xf, ptr %gep1977.prol, align 8, !tbaa !74
  %i.xg = load double, ptr %i.vf, align 8, !tbaa !74
  %i.xh = fneg double %i.xg
  %gep1979.prol = getelementptr [8 x i8], ptr %invariant.gep1978, i64 %indvars.iv1714.ph
  %i.xi = load double, ptr %gep1979.prol, align 8, !tbaa !74
  %i.xj = fmul double %i.xi, %i.xh
  %gep1981.prol = getelementptr [8 x i8], ptr %invariant.gep1980, i64 %indvars.iv1714.ph
  store double %i.xj, ptr %gep1981.prol, align 8, !tbaa !74
  %indvars.iv.next1715.prol = add nuw nsw i64 %indvars.iv1714.ph, 1
  br label %scalar.ph2244.prol.loopexit

scalar.ph2244.prol.loopexit:                      ; preds = %scalar.ph2244.prol, %scalar.ph2244.preheader
  %indvars.iv1714.unr = phi i64 [ %indvars.iv1714.ph, %scalar.ph2244.preheader ], [ %indvars.iv.next1715.prol, %scalar.ph2244.prol ]
  %i.xk = add nsw i64 %wide.trip.count1717, -1
  %i.xl = icmp eq i64 %indvars.iv1714.ph, %i.xk
  br i1 %i.xl, label %.lr.ph1537, label %scalar.ph2244

.lr.ph1537:                                       ; preds = %scalar.ph2244.prol.loopexit, %scalar.ph2244, %middle.block2289
  %i.xm = zext nneg i32 %i.uz to i64
  br label %bb.bm

scalar.ph2244:                                    ; preds = %scalar.ph2244.prol.loopexit, %scalar.ph2244
  %indvars.iv1714 = phi i64 [ %indvars.iv.next1715.1, %scalar.ph2244 ], [ %indvars.iv1714.unr, %scalar.ph2244.prol.loopexit ] ; 6 uses
  %i.xn = load double, ptr %i.vc, align 8, !tbaa !74
  %i.xo = fneg double %i.xn
  %gep1975 = getelementptr [8 x i8], ptr %invariant.gep1974, i64 %indvars.iv1714
  %i.xp = load double, ptr %gep1975, align 8, !tbaa !74
  %i.xq = fmul double %i.xp, %i.xo
  %gep1977 = getelementptr [8 x i8], ptr %invariant.gep1976, i64 %indvars.iv1714
  store double %i.xq, ptr %gep1977, align 8, !tbaa !74
  %i.xr = load double, ptr %i.vf, align 8, !tbaa !74
  %i.xs = fneg double %i.xr
  %gep1979 = getelementptr [8 x i8], ptr %invariant.gep1978, i64 %indvars.iv1714
  %i.xt = load double, ptr %gep1979, align 8, !tbaa !74
  %i.xu = fmul double %i.xt, %i.xs
  %gep1981 = getelementptr [8 x i8], ptr %invariant.gep1980, i64 %indvars.iv1714
  store double %i.xu, ptr %gep1981, align 8, !tbaa !74
  %indvars.iv.next1715 = add nuw nsw i64 %indvars.iv1714, 1 ; 4 uses
  %i.xv = load double, ptr %i.vc, align 8, !tbaa !74
  %i.xw = fneg double %i.xv
  %gep1975.1 = getelementptr [8 x i8], ptr %invariant.gep1974, i64 %indvars.iv.next1715
  %i.xx = load double, ptr %gep1975.1, align 8, !tbaa !74
  %i.xy = fmul double %i.xx, %i.xw
  %gep1977.1 = getelementptr [8 x i8], ptr %invariant.gep1976, i64 %indvars.iv.next1715
  store double %i.xy, ptr %gep1977.1, align 8, !tbaa !74
  %i.xz = load double, ptr %i.vf, align 8, !tbaa !74
  %i.ya = fneg double %i.xz
  %gep1979.1 = getelementptr [8 x i8], ptr %invariant.gep1978, i64 %indvars.iv.next1715
  %i.yb = load double, ptr %gep1979.1, align 8, !tbaa !74
  %i.yc = fmul double %i.yb, %i.ya
  %gep1981.1 = getelementptr [8 x i8], ptr %invariant.gep1980, i64 %indvars.iv.next1715
  store double %i.yc, ptr %gep1981.1, align 8, !tbaa !74
  %indvars.iv.next1715.1 = add nuw nsw i64 %indvars.iv1714, 2 ; 2 uses
  %exitcond1718.not.1 = icmp eq i64 %indvars.iv.next1715.1, %wide.trip.count1717
  br i1 %exitcond1718.not.1, label %.lr.ph1537, label %scalar.ph2244, !llvm.loop !30

bb.bm:                                            ; preds = %.lr.ph1537, %._crit_edge1878
  %indvars.iv1719 = phi i64 [ %i.xm, %.lr.ph1537 ], [ %.pre1892, %._crit_edge1878 ] ; 15 uses
  %.313121535 = phi i32 [ %i.uz, %.lr.ph1537 ], [ %.51314, %._crit_edge1878 ] ; 2 uses
  %indvars1721 = trunc i64 %indvars.iv1719 to i32 ; 2 uses
  %i.yd = sext i32 %.313121535 to i64
  %i.ye = icmp sgt i64 %indvars.iv1719, %i.yd
  %.pre1892 = add nsw i64 %indvars.iv1719, -1     ; 8 uses
  br i1 %i.ye, label %._crit_edge1878, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.not1400 = icmp eq i64 %indvars.iv1719, 1
  br i1 %.not1400, label %..thread1441_crit_edge, label %bb.bo

..thread1441_crit_edge:                           ; preds = %bb.bn
  %.pre1833 = load i32, ptr %3, align 4, !tbaa !63
  br label %.thread1441

bb.bo:                                            ; preds = %bb.bn
  %i.yf = add nsw i32 %indvars1721, -1            ; 2 uses
  %i.yg = mul nsw i32 %i.yf, %i.y
  %i.yh = sext i32 %i.yg to i64                   ; 2 uses
  %i.yi = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv1719
  %i.yj = getelementptr [8 x i8], ptr %i.yi, i64 %i.yh
  %i.yk = load double, ptr %i.yj, align 8, !tbaa !74
  %i.yl = fcmp oeq double %i.yk, 0.000000e+00
  %i.ym = trunc i64 %indvars.iv1719 to i32
  %i.yn = add i32 %i.ym, -2                       ; 5 uses
  %.pre1834 = load i32, ptr %3, align 4, !tbaa !63 ; 2 uses
  br i1 %i.yl, label %.thread1441, label %bb.bu

.thread1441:                                      ; preds = %..thread1441_crit_edge, %bb.bo
  %i.yo = phi i32 [ %.pre1834, %bb.bo ], [ %.pre1833, %..thread1441_crit_edge ]
  %.413131444 = phi i32 [ %i.yf, %bb.bo ], [ 0, %..thread1441_crit_edge ]
  %i.yp = mul nsw i64 %indvars.iv1719, %i.hx
  %i.yq = mul nsw i32 %i.y, %indvars1721
  %i.yr = sext i32 %i.yq to i64
  %i.ys = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv1719
  %i.yt = getelementptr [8 x i8], ptr %i.ys, i64 %i.yr
  %i.yu = mul nsw i32 %.pre-phi1874, %i.yo
  %i.yv = sext i32 %i.yu to i64
  %i.yw = getelementptr [8 x i8], ptr %i.ah, i64 %indvars.iv1719
  %i.yx = getelementptr [8 x i8], ptr %i.yw, i64 %i.yv
  call void @dlaln2_(ptr noundef nonnull @c_false, ptr noundef nonnull @c__1, ptr noundef nonnull @c__2, ptr noundef nonnull %i.m, ptr noundef nonnull @c_b29, ptr noundef %i.yt, ptr noundef nonnull %5, ptr noundef nonnull @c_b29, ptr noundef nonnull @c_b29, ptr noundef nonnull %i.yx, ptr noundef nonnull %3, ptr noundef nonnull %i.v, ptr noundef nonnull %i.u, ptr noundef nonnull %i.o, ptr noundef nonnull @c__2, ptr noundef nonnull %i.n, ptr noundef nonnull %i.q, ptr noundef nonnull %i.j) #7
  %i.yy = load double, ptr %i.q, align 8, !tbaa !74 ; 4 uses
  %i.yz = fcmp ogt double %i.yy, 1.000000e+00
end_hunk_0
begin_hunk_1_@dtrevc3_:bb.a
  %i.bhp = add i32 %i.bho, -1                     ; 2 uses
  store i32 %i.bhp, ptr %i.f, align 4, !tbaa !63
  %.not1386.not1657 = icmp sgt i32 %i.bho, 1
  br i1 %.not1386.not1657, label %.lr.ph1660.preheader, label %.loopexit

.lr.ph1660.preheader:                             ; preds = %bb.dn
  %i.bhq = add i32 %i.bgn, 1
  %i.bhr = sext i32 %i.bhq to i64
  %i.bhs = shl nsw i64 %i.bhr, 3
  %scevgep1815 = getelementptr i8, ptr %scevgep1794, i64 %i.bhs
  %i.bht = zext nneg i32 %i.bhp to i64
  %i.bhu = shl nuw nsw i64 %i.bht, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1815, i8 0, i64 %i.bhu, i1 false), !tbaa !74
  br label %.loopexit

bb.do:                                            ; preds = %._crit_edge1651
  br i1 %i.auw, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %bb.do
  %i.bhv = icmp slt i32 %i.bgg, %i.bge
  br i1 %i.bhv, label %bb.dq, label %.thread1458

bb.dq:                                            ; preds = %bb.dp
  %i.bhw = sub nsw i32 %i.bge, %i.bgg
  store i32 %i.bhw, ptr %i.f, align 4, !tbaa !63
  %i.bhx = add nsw i32 %i.bgg, 1                  ; 2 uses
  %i.bhy = mul nsw i32 %i.bhx, %i.ab
  %i.bhz = sext i32 %i.bhy to i64
  %i.bia = getelementptr [8 x i8], ptr %i.ad, i64 %i.bhz
  %i.bib = getelementptr i8, ptr %i.bia, i64 8
  %i.bic = mul nsw i32 %i.bgf, %i.bge             ; 2 uses
  %i.bid = add nsw i32 %i.bic, %i.bhx
  %i.bie = sext i32 %i.bid to i64
  %i.bif = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bie
  %i.big = add nsw i32 %i.bic, %i.bgg
  %i.bih = sext i32 %i.big to i64
  %i.bii = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bih
  %i.bij = mul nsw i32 %i.bgg, %i.ab
  %i.bik = sext i32 %i.bij to i64
  %i.bil = getelementptr [8 x i8], ptr %i.ad, i64 %i.bik
  %i.bim = getelementptr i8, ptr %i.bil, i64 8
  call void @dgemv_(ptr noundef nonnull @.str.10, ptr noundef nonnull %3, ptr noundef nonnull %i.f, ptr noundef nonnull @c_b29, ptr noundef %i.bib, ptr noundef nonnull %7, ptr noundef nonnull %i.bif, ptr noundef nonnull @c__1, ptr noundef nonnull %i.bii, ptr noundef %i.bim, ptr noundef nonnull @c__1) #7
  %.pre1862 = load i32, ptr %i.s, align 4, !tbaa !63
  br label %.thread1458

.thread1458:                                      ; preds = %bb.dp, %bb.dq
  %i.bin = phi i32 [ %i.bgg, %bb.dp ], [ %.pre1862, %bb.dq ]
  %i.bio = mul nsw i32 %i.bin, %i.ab
  %i.bip = sext i32 %i.bio to i64
  %i.biq = getelementptr [8 x i8], ptr %i.ad, i64 %i.bip
  %i.bir = getelementptr i8, ptr %i.biq, i64 8
  %i.bis = call i32 @idamax_(ptr noundef nonnull %3, ptr noundef %i.bir, ptr noundef nonnull @c__1) #7
  %i.bit = load i32, ptr %i.s, align 4, !tbaa !63
  %i.biu = mul nsw i32 %i.bit, %i.ab              ; 2 uses
  %i.biv = add nsw i32 %i.biu, %i.bis
  %i.biw = sext i32 %i.biv to i64
  %i.bix = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.biw
  %i.biy = load double, ptr %i.bix, align 8, !tbaa !74 ; 4 uses
  store double %i.biy, ptr %i.h, align 8, !tbaa !74
  %i.biz = fcmp oge double %i.biy, 0.000000e+00
  %i.bja = fneg double %i.biy
  %i.bjb = select i1 %i.biz, double %i.biy, double %i.bja
  %i.bjc = fdiv double 1.000000e+00, %i.bjb
  store double %i.bjc, ptr %i.p, align 8, !tbaa !74
  %i.bjd = sext i32 %i.biu to i64
  %i.bje = getelementptr [8 x i8], ptr %i.ad, i64 %i.bjd
  %i.bjf = getelementptr i8, ptr %i.bje, i64 8
  call void @dscal_(ptr noundef nonnull %3, ptr noundef nonnull %i.p, ptr noundef %i.bjf, ptr noundef nonnull @c__1) #7
  br label %bb.eu

bb.dr:                                            ; preds = %bb.do
  %i.bjg = add i32 %i.bgg, -1                     ; 2 uses
  store i32 %i.bjg, ptr %i.f, align 4, !tbaa !63
  %.not1387.not1652 = icmp sgt i32 %i.bgg, 1
  br i1 %.not1387.not1652, label %.lr.ph1655, label %._crit_edge1656

.lr.ph1655:                                       ; preds = %bb.dr
  %i.bjh = mul nsw i32 %i.bge, %i.bgf
  %i.bji = sext i32 %i.bjh to i64
  %i.bjj = shl nsw i64 %i.bji, 3
  %scevgep1809 = getelementptr i8, ptr %12, i64 %i.bjj
  %i.bjk = zext nneg i32 %i.bjg to i64
  %i.bjl = shl nuw nsw i64 %i.bjk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1809, i8 0, i64 %i.bjl, i1 false), !tbaa !74
  br label %._crit_edge1656

._crit_edge1656:                                  ; preds = %.lr.ph1655, %bb.dr
  %i.bjm = sext i32 %i.bgf to i64
  %i.bjn = getelementptr [4 x i8], ptr %i.r, i64 %i.bjm
  %i.bjo = getelementptr i8, ptr %i.bjn, i64 -4
  store i32 0, ptr %i.bjo, align 4, !tbaa !63
  br label %.loopexit

bb.ds:                                            ; preds = %bb.cz
  %i.bjp = add nsw i32 %storemerge13731675, 1     ; 6 uses
  %i.bjq = mul nsw i32 %i.bjp, %i.y
  %i.bjr = add nsw i32 %i.bjq, %storemerge13731675
  %i.bjs = sext i32 %i.bjr to i64
  %i.bjt = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bjs
  %i.bju = load double, ptr %i.bjt, align 8, !tbaa !74 ; 3 uses
  store double %i.bju, ptr %i.h, align 8, !tbaa !74
  %i.bjv = call double @llvm.fabs.f64(double %i.bju)
  %i.bjw = mul nsw i32 %storemerge13731675, %i.y
  %i.bjx = add nsw i32 %i.bjp, %i.bjw
  %i.bjy = sext i32 %i.bjx to i64
  %i.bjz = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bjy ; 2 uses
  %i.bka = load double, ptr %i.bjz, align 8, !tbaa !74
  %i.bkb = call double @llvm.fabs.f64(double %i.bka)
  %i.bkc = fcmp ult double %i.bjv, %i.bkb
  br i1 %i.bkc, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.bkd = fdiv double %i.awr, %i.bju
  %i.bke = load i32, ptr %i.t, align 4, !tbaa !63 ; 2 uses
  %i.bkf = load i32, ptr %3, align 4, !tbaa !63   ; 2 uses
  %i.bkg = mul nsw i32 %i.bkf, %i.bke             ; 2 uses
  %i.bkh = add nsw i32 %i.bkg, %storemerge13731675
  %i.bki = sext i32 %i.bkh to i64
  %i.bkj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bki
  store double %i.bkd, ptr %i.bkj, align 8, !tbaa !74
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds
  %i.bkk = load i32, ptr %i.t, align 4, !tbaa !63 ; 2 uses
  %i.bkl = load i32, ptr %3, align 4, !tbaa !63   ; 2 uses
  %i.bkm = mul nsw i32 %i.bkl, %i.bkk             ; 2 uses
  %i.bkn = add nsw i32 %i.bkm, %storemerge13731675
  %i.bko = sext i32 %i.bkn to i64
  %i.bkp = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bko
  store double 1.000000e+00, ptr %i.bkp, align 8, !tbaa !74
  %i.bkq = load double, ptr %i.bjz, align 8, !tbaa !74
  %i.bkr = fdiv double %i.aww, %i.bkq
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.sink2050 = phi i32 [ %i.bkk, %bb.du ], [ %i.bke, %bb.dt ] ; 3 uses
  %.sink2049 = phi i32 [ %i.bkl, %bb.du ], [ %i.bkf, %bb.dt ] ; 10 uses
  %.sink2043 = phi double [ %i.bkr, %bb.du ], [ 1.000000e+00, %bb.dt ]
  %.pre-phi = phi i32 [ %i.bkm, %bb.du ], [ %i.bkg, %bb.dt ] ; 3 uses
  %i.bks = add nsw i32 %.sink2050, 1
  %i.bkt = mul nsw i32 %i.bks, %.sink2049         ; 4 uses
  %i.bku = add nsw i32 %i.bkt, %i.bjp
  %i.bkv = sext i32 %i.bku to i64
  %i.bkw = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bkv
  store double %.sink2043, ptr %i.bkw, align 8, !tbaa !74
  %i.bkx = add nsw i32 %.pre-phi, %i.bjp
  %i.bky = sext i32 %i.bkx to i64
  %i.bkz = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bky
  store double 0.000000e+00, ptr %i.bkz, align 8, !tbaa !74
  %i.bla = add nsw i32 %i.bkt, %storemerge13731675
  %i.blb = sext i32 %i.bla to i64
  %i.blc = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.blb
  store double 0.000000e+00, ptr %i.blc, align 8, !tbaa !74
  %i.bld = add nsw i32 %storemerge13731675, 2     ; 4 uses
  %.not13781599 = icmp sgt i32 %i.bld, %.sink2049
  br i1 %.not13781599, label %._crit_edge1603.thread, label %.lr.ph1602

._crit_edge1603.thread:                           ; preds = %bb.dv
  store i32 %.sink2049, ptr %i.f, align 4, !tbaa !63
  br label %._crit_edge1611

.lr.ph1602:                                       ; preds = %bb.dv
  %i.ble = add nsw i32 %.pre-phi, %storemerge13731675
  %i.blf = sext i32 %i.ble to i64                 ; 2 uses
  %i.blg = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.blf ; 6 uses
  %i.blh = add nsw i32 %i.bkt, %i.bjp
  %i.bli = sext i32 %i.blh to i64                 ; 2 uses
  %i.blj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bli ; 6 uses
  %i.blk = sext i32 %i.bld to i64                 ; 8 uses
  %i.bll = sext i32 %storemerge13731675 to i64    ; 2 uses
  %i.blm = sext i32 %i.bjp to i64                 ; 2 uses
  %i.bln = sext i32 %.pre-phi to i64              ; 2 uses
  %i.blo = sext i32 %i.bkt to i64                 ; 2 uses
  %i.blp = add i32 %.sink2049, 1
  %invariant.gep1998 = getelementptr [8 x i8], ptr %i.aa, i64 %i.bll ; 4 uses
  %invariant.gep2000 = getelementptr [8 x i8], ptr %i.ah, i64 %i.bln ; 4 uses
  %invariant.gep2002 = getelementptr [8 x i8], ptr %i.aa, i64 %i.blm ; 4 uses
  %invariant.gep2004 = getelementptr [8 x i8], ptr %i.ah, i64 %i.blo ; 4 uses
  %i.blq = add i32 %.sink2049, -2
  %i.blr = sub i32 %i.blq, %storemerge13731675    ; 2 uses
  %i.bls = zext i32 %i.blr to i64                 ; 2 uses
  %i.blt = add nuw nsw i64 %i.bls, 1              ; 2 uses
  %min.iters.check2460 = icmp ugt i32 %i.blr, 22
  %or.cond2521 = select i1 %min.iters.check2460, i1 %ident.check2404.not, i1 false
  br i1 %or.cond2521, label %vector.memcheck2461, label %scalar.ph2459.preheader

vector.memcheck2461:                              ; preds = %.lr.ph1602
  %i.blu = add nsw i64 %i.bln, %i.blk
  %i.blv = shl nsw i64 %i.blu, 3                  ; 2 uses
  %i.blw = getelementptr i8, ptr %i.ah, i64 %i.blv ; 5 uses
  %i.blx = shl nuw nsw i64 %i.bls, 3              ; 4 uses
  %i.bly = getelementptr i8, ptr %12, i64 %i.blv
  %i.blz = getelementptr i8, ptr %i.bly, i64 %i.blx ; 5 uses
  %i.bma = add nsw i64 %i.blo, %i.blk
  %i.bmb = shl nsw i64 %i.bma, 3                  ; 2 uses
  %i.bmc = getelementptr i8, ptr %i.ah, i64 %i.bmb ; 5 uses
  %i.bmd = getelementptr i8, ptr %12, i64 %i.bmb
  %i.bme = getelementptr i8, ptr %i.bmd, i64 %i.blx ; 5 uses
  %i.bmf = shl nsw i64 %i.blf, 3
  %i.bmg = getelementptr i8, ptr %12, i64 %i.bmf  ; 2 uses
  %i.bmh = add nsw i64 %i.blk, %i.blm
  %i.bmi = shl nsw i64 %i.bmh, 3                  ; 2 uses
  %i.bmj = getelementptr i8, ptr %scevgep2458, i64 %i.bmi ; 2 uses
  %i.bmk = getelementptr i8, ptr %scevgep2457, i64 %i.bmi
  %i.bml = getelementptr i8, ptr %i.bmk, i64 %i.blx ; 2 uses
  %i.bmm = add nsw i64 %i.bll, %i.blk
  %i.bmn = shl nsw i64 %i.bmm, 3                  ; 2 uses
  %i.bmo = getelementptr i8, ptr %scevgep2458, i64 %i.bmn ; 2 uses
  %i.bmp = getelementptr i8, ptr %scevgep2457, i64 %i.bmn
  %i.bmq = getelementptr i8, ptr %i.bmp, i64 %i.blx ; 2 uses
  %i.bmr = shl nsw i64 %i.bli, 3
  %i.bms = getelementptr i8, ptr %12, i64 %i.bmr  ; 2 uses
  %bound02462 = icmp ult ptr %i.blw, %i.bme
  %bound12463 = icmp ult ptr %i.bmc, %i.blz
  %found.conflict2464 = and i1 %bound02462, %bound12463
  %bound02465 = icmp ult ptr %i.blw, %i.bmg
  %bound12466 = icmp ult ptr %i.blg, %i.blz
  %found.conflict2467 = and i1 %bound02465, %bound12466
  %conflict.rdx2468 = or i1 %found.conflict2464, %found.conflict2467
  %bound02469 = icmp ult ptr %i.blw, %i.bml
  %bound12470 = icmp ult ptr %i.bmj, %i.blz
  %found.conflict2471 = and i1 %bound02469, %bound12470
  %conflict.rdx2472 = or i1 %conflict.rdx2468, %found.conflict2471
  %bound02473 = icmp ult ptr %i.blw, %i.bmq
  %bound12474 = icmp ult ptr %i.bmo, %i.blz
  %found.conflict2475 = and i1 %bound02473, %bound12474
  %conflict.rdx2476 = or i1 %conflict.rdx2472, %found.conflict2475
  %bound02477 = icmp ult ptr %i.blw, %i.bms
  %bound12478 = icmp ult ptr %i.blj, %i.blz
  %found.conflict2479 = and i1 %bound02477, %bound12478
  %conflict.rdx2480 = or i1 %conflict.rdx2476, %found.conflict2479
  %bound02481 = icmp ult ptr %i.bmc, %i.bmg
  %bound12482 = icmp ult ptr %i.blg, %i.bme
  %found.conflict2483 = and i1 %bound02481, %bound12482
  %conflict.rdx2484 = or i1 %conflict.rdx2480, %found.conflict2483
  %bound02485 = icmp ult ptr %i.bmc, %i.bml
  %bound12486 = icmp ult ptr %i.bmj, %i.bme
  %found.conflict2487 = and i1 %bound02485, %bound12486
  %conflict.rdx2488 = or i1 %conflict.rdx2484, %found.conflict2487
  %bound02489 = icmp ult ptr %i.bmc, %i.bmq
  %bound12490 = icmp ult ptr %i.bmo, %i.bme
  %found.conflict2491 = and i1 %bound02489, %bound12490
  %conflict.rdx2492 = or i1 %conflict.rdx2488, %found.conflict2491
  %bound02493 = icmp ult ptr %i.bmc, %i.bms
  %bound12494 = icmp ult ptr %i.blj, %i.bme
  %found.conflict2495 = and i1 %bound02493, %bound12494
  %conflict.rdx2496 = or i1 %conflict.rdx2492, %found.conflict2495
  br i1 %conflict.rdx2496, label %scalar.ph2459.preheader, label %vector.ph2497

vector.ph2497:                                    ; preds = %vector.memcheck2461
  %n.vec2498 = and i64 %i.blt, 8589934584         ; 3 uses
  %i.bmt = add nsw i64 %n.vec2498, %i.blk
  %i.bmu = load double, ptr %i.blg, align 8, !tbaa !74, !alias.scope !84
  %.scalar2523 = fneg double %i.bmu
  %i.bmv = insertelement <4 x double> poison, double %.scalar2523, i64 0
  %i.bmw = shufflevector <4 x double> %i.bmv, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bmx = load double, ptr %i.blj, align 8, !tbaa !74, !alias.scope !85
  %.scalar2524 = fneg double %i.bmx
  %i.bmy = insertelement <4 x double> poison, double %.scalar2524, i64 0
  %i.bmz = shufflevector <4 x double> %i.bmy, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2503

vector.body2503:                                  ; preds = %vector.body2503, %vector.ph2497
  %index2504 = phi i64 [ 0, %vector.ph2497 ], [ %index.next2509, %vector.body2503 ] ; 2 uses
  %i.bna = add i64 %index2504, %i.blk             ; 4 uses
  %i.bnb = getelementptr [8 x i8], ptr %invariant.gep1998, i64 %i.bna ; 2 uses
  %i.bnc = getelementptr i8, ptr %i.bnb, i64 32
  %wide.load2505 = load <4 x double>, ptr %i.bnb, align 8, !tbaa !74, !alias.scope !86
  %wide.load2506 = load <4 x double>, ptr %i.bnc, align 8, !tbaa !74, !alias.scope !86
  %i.bnd = fmul <4 x double> %wide.load2505, %i.bmw
  %i.bne = fmul <4 x double> %wide.load2506, %i.bmw
  %i.bnf = getelementptr [8 x i8], ptr %invariant.gep2000, i64 %i.bna ; 2 uses
  %i.bng = getelementptr i8, ptr %i.bnf, i64 32
  store <4 x double> %i.bnd, ptr %i.bnf, align 8, !tbaa !74, !alias.scope !87, !noalias !88
  store <4 x double> %i.bne, ptr %i.bng, align 8, !tbaa !74, !alias.scope !87, !noalias !88
  %i.bnh = getelementptr [8 x i8], ptr %invariant.gep2002, i64 %i.bna ; 2 uses
  %i.bni = getelementptr i8, ptr %i.bnh, i64 32
  %wide.load2507 = load <4 x double>, ptr %i.bnh, align 8, !tbaa !74, !alias.scope !89
  %wide.load2508 = load <4 x double>, ptr %i.bni, align 8, !tbaa !74, !alias.scope !89
  %i.bnj = fmul <4 x double> %wide.load2507, %i.bmz
  %i.bnk = fmul <4 x double> %wide.load2508, %i.bmz
  %i.bnl = getelementptr [8 x i8], ptr %invariant.gep2004, i64 %i.bna ; 2 uses
  %i.bnm = getelementptr i8, ptr %i.bnl, i64 32
  store <4 x double> %i.bnj, ptr %i.bnl, align 8, !tbaa !74, !alias.scope !90, !noalias !91
  store <4 x double> %i.bnk, ptr %i.bnm, align 8, !tbaa !74, !alias.scope !90, !noalias !91
  %index.next2509 = add nuw i64 %index2504, 8     ; 2 uses
  %i.bnn = icmp eq i64 %index.next2509, %n.vec2498
  br i1 %i.bnn, label %middle.block2510, label %vector.body2503, !llvm.loop !52

middle.block2510:                                 ; preds = %vector.body2503
  %cmp.n2511 = icmp eq i64 %i.blt, %n.vec2498
  br i1 %cmp.n2511, label %.lr.ph1610.preheader, label %scalar.ph2459.preheader

scalar.ph2459.preheader:                          ; preds = %vector.memcheck2461, %.lr.ph1602, %middle.block2510
  %indvars.iv1772.ph = phi i64 [ %i.blk, %vector.memcheck2461 ], [ %i.blk, %.lr.ph1602 ], [ %i.bmt, %middle.block2510 ] ; 6 uses
  %i.bno = trunc i64 %indvars.iv1772.ph to i32    ; 2 uses
  %i.bnp = add i32 %.sink2049, %i.bno
  %i.bnq = and i32 %i.bnp, 1
  %lcmp.mod2587.not.not = icmp eq i32 %i.bnq, 0
  br i1 %lcmp.mod2587.not.not, label %scalar.ph2459.prol, label %scalar.ph2459.prol.loopexit

scalar.ph2459.prol:                               ; preds = %scalar.ph2459.preheader
  %i.bnr = load double, ptr %i.blg, align 8, !tbaa !74
  %i.bns = fneg double %i.bnr
  %i.bnt = mul nsw i64 %indvars.iv1772.ph, %i.ava ; 2 uses
  %gep1999.prol = getelementptr [8 x i8], ptr %invariant.gep1998, i64 %i.bnt
  %i.bnu = load double, ptr %gep1999.prol, align 8, !tbaa !74
  %i.bnv = fmul double %i.bnu, %i.bns
  %gep2001.prol = getelementptr [8 x i8], ptr %invariant.gep2000, i64 %indvars.iv1772.ph
  store double %i.bnv, ptr %gep2001.prol, align 8, !tbaa !74
  %i.bnw = load double, ptr %i.blj, align 8, !tbaa !74
  %i.bnx = fneg double %i.bnw
  %gep2003.prol = getelementptr [8 x i8], ptr %invariant.gep2002, i64 %i.bnt
  %i.bny = load double, ptr %gep2003.prol, align 8, !tbaa !74
  %i.bnz = fmul double %i.bny, %i.bnx
  %gep2005.prol = getelementptr [8 x i8], ptr %invariant.gep2004, i64 %indvars.iv1772.ph
  store double %i.bnz, ptr %gep2005.prol, align 8, !tbaa !74
  %indvars.iv.next1773.prol = add nsw i64 %indvars.iv1772.ph, 1
  br label %scalar.ph2459.prol.loopexit

scalar.ph2459.prol.loopexit:                      ; preds = %scalar.ph2459.prol, %scalar.ph2459.preheader
  %indvars.iv1772.unr = phi i64 [ %indvars.iv1772.ph, %scalar.ph2459.preheader ], [ %indvars.iv.next1773.prol, %scalar.ph2459.prol ]
  %i.boa = icmp eq i32 %.sink2049, %i.bno
  br i1 %i.boa, label %.lr.ph1610.preheader, label %scalar.ph2459

scalar.ph2459:                                    ; preds = %scalar.ph2459.prol.loopexit, %scalar.ph2459
  %indvars.iv1772 = phi i64 [ %indvars.iv.next1773.1, %scalar.ph2459 ], [ %indvars.iv1772.unr, %scalar.ph2459.prol.loopexit ] ; 5 uses
  %i.bob = load double, ptr %i.blg, align 8, !tbaa !74
  %i.boc = fneg double %i.bob
  %i.bod = mul nsw i64 %indvars.iv1772, %i.ava    ; 2 uses
  %gep1999 = getelementptr [8 x i8], ptr %invariant.gep1998, i64 %i.bod
  %i.boe = load double, ptr %gep1999, align 8, !tbaa !74
  %i.bof = fmul double %i.boe, %i.boc
  %gep2001 = getelementptr [8 x i8], ptr %invariant.gep2000, i64 %indvars.iv1772
  store double %i.bof, ptr %gep2001, align 8, !tbaa !74
  %i.bog = load double, ptr %i.blj, align 8, !tbaa !74
  %i.boh = fneg double %i.bog
  %gep2003 = getelementptr [8 x i8], ptr %invariant.gep2002, i64 %i.bod
  %i.boi = load double, ptr %gep2003, align 8, !tbaa !74
  %i.boj = fmul double %i.boi, %i.boh
  %gep2005 = getelementptr [8 x i8], ptr %invariant.gep2004, i64 %indvars.iv1772
  store double %i.boj, ptr %gep2005, align 8, !tbaa !74
  %indvars.iv.next1773 = add nsw i64 %indvars.iv1772, 1 ; 3 uses
  %i.bok = load double, ptr %i.blg, align 8, !tbaa !74
  %i.bol = fneg double %i.bok
  %i.bom = mul nsw i64 %indvars.iv.next1773, %i.ava ; 2 uses
  %gep1999.1 = getelementptr [8 x i8], ptr %invariant.gep1998, i64 %i.bom
  %i.bon = load double, ptr %gep1999.1, align 8, !tbaa !74
  %i.boo = fmul double %i.bon, %i.bol
  %gep2001.1 = getelementptr [8 x i8], ptr %invariant.gep2000, i64 %indvars.iv.next1773
  store double %i.boo, ptr %gep2001.1, align 8, !tbaa !74
  %i.bop = load double, ptr %i.blj, align 8, !tbaa !74
  %i.boq = fneg double %i.bop
  %gep2003.1 = getelementptr [8 x i8], ptr %invariant.gep2002, i64 %i.bom
  %i.bor = load double, ptr %gep2003.1, align 8, !tbaa !74
  %i.bos = fmul double %i.bor, %i.boq
  %gep2005.1 = getelementptr [8 x i8], ptr %invariant.gep2004, i64 %indvars.iv.next1773
  store double %i.bos, ptr %gep2005.1, align 8, !tbaa !74
  %indvars.iv.next1773.1 = add nsw i64 %indvars.iv1772, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next1773.1 to i32
  %exitcond1775.not.1 = icmp eq i32 %i.blp, %lftr.wideiv.1
  br i1 %exitcond1775.not.1, label %.lr.ph1610.preheader, label %scalar.ph2459, !llvm.loop !53

.lr.ph1610.preheader:                             ; preds = %scalar.ph2459.prol.loopexit, %scalar.ph2459, %middle.block2510
  store i32 %.sink2049, ptr %i.f, align 4, !tbaa !63
  %i.bot = sext i32 %i.bld to i64
  br label %.lr.ph1610

.lr.ph1610:                                       ; preds = %.lr.ph1610.preheader, %.lr.ph1610._crit_edge
  %i.bou = phi i32 [ %.sink2050, %.lr.ph1610.preheader ], [ %i.cay, %.lr.ph1610._crit_edge ] ; 5 uses
  %i.bov = phi i32 [ %.sink2049, %.lr.ph1610.preheader ], [ %i.caz, %.lr.ph1610._crit_edge ] ; 8 uses
  %indvars.iv1776 = phi i64 [ %i.bot, %.lr.ph1610.preheader ], [ %.pre1890, %.lr.ph1610._crit_edge ] ; 29 uses
  %.212941608 = phi double [ %i.gc, %.lr.ph1610.preheader ], [ %.31295, %.lr.ph1610._crit_edge ] ; 3 uses
  %.913181606 = phi i32 [ %i.bld, %.lr.ph1610.preheader ], [ %.111320, %.lr.ph1610._crit_edge ] ; 2 uses
  %.413251605 = phi double [ 1.000000e+00, %.lr.ph1610.preheader ], [ %.71328, %.lr.ph1610._crit_edge ] ; 5 uses
  %indvars1778 = trunc i64 %indvars.iv1776 to i32 ; 3 uses
  %i.bow = sext i32 %.913181606 to i64
  %i.box = icmp slt i64 %indvars.iv1776, %i.bow
  %.pre1890 = add nsw i64 %indvars.iv1776, 1      ; 4 uses
  br i1 %i.box, label %.lr.ph1610._crit_edge, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph1610
  %i.boy = sext i32 %i.bov to i64
  %i.boz = icmp slt i64 %indvars.iv1776, %i.boy
  br i1 %i.boz, label %bb.dx, label %..thread1454_crit_edge

..thread1454_crit_edge:                           ; preds = %bb.dw
  %i.bpa = trunc nsw i64 %.pre1890 to i32
  %.pre1850.pre = load i32, ptr %i.s, align 4, !tbaa !63
  br label %.thread1454

bb.dx:                                            ; preds = %bb.dw
  %i.bpb = add nsw i32 %indvars1778, 1
  %i.bpc = mul nsw i64 %indvars.iv1776, %i.ava    ; 3 uses
  %i.bpd = getelementptr [8 x i8], ptr %i.aa, i64 %.pre1890
  %i.bpe = getelementptr [8 x i8], ptr %i.bpd, i64 %i.bpc
  %i.bpf = load double, ptr %i.bpe, align 8, !tbaa !74
  %i.bpg = fcmp oeq double %i.bpf, 0.000000e+00
  %i.bph = trunc nsw i64 %indvars.iv1776 to i32
  %i.bpi = add i32 %i.bph, 2
  %.pre1850.pre1868 = load i32, ptr %i.s, align 4, !tbaa !63 ; 4 uses
  br i1 %i.bpg, label %.thread1454, label %bb.ec

.thread1454:                                      ; preds = %..thread1454_crit_edge, %bb.dx
  %.pre1850 = phi i32 [ %.pre1850.pre1868, %bb.dx ], [ %.pre1850.pre, %..thread1454_crit_edge ] ; 3 uses
  %.1013191457 = phi i32 [ %i.bpb, %bb.dx ], [ %i.bpa, %..thread1454_crit_edge ]
end_hunk_1
begin_hunk_2_@dtrevc3_:bb.a
  %.pre1867 = load i32, ptr %i.e, align 4, !tbaa !63
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.cs, %bb.cw
  %i.css = phi i32 [ %i.avf, %bb.cw ], [ %i.avf, %bb.cs ], [ %.pre1867, %bb.eu ] ; 2 uses
  %i.cst = phi i32 [ %storemerge13731675, %bb.cw ], [ %storemerge13731675, %bb.cs ], [ %.pre1866, %bb.eu ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.cw ], [ -1, %bb.cs ], [ %spec.select1423, %bb.eu ]
  %.3 = phi i32 [ %.212801677, %bb.cw ], [ %.212801677, %bb.cs ], [ %spec.select1424, %bb.eu ]
  %i.csu = add nsw i32 %i.cst, 1                  ; 2 uses
  store i32 %i.csu, ptr %i.s, align 4, !tbaa !63
  %.not1374.not = icmp slt i32 %i.cst, %i.css
  br i1 %.not1374.not, label %bb.cs, label %.loopexit1498, !llvm.loop !62

.loopexit1498:                                    ; preds = %bb.ev, %bb.cr, %.loopexit1502, %bb.x, %bb.w, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare void @dlabad_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

declare void @dlaln2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @daxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @idamax_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @ddot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.maxnum.v4f64(<4 x double>, <4 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fmax.v4f64(<4 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i1> @llvm.is.fpclass.v4f64(<4 x double>, i32 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v3f64.p0(<3 x double>, ptr captures(none), <3 x i1>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !68, !69, !70}
!9 = distinct !{!9, !68, !69, !70}
!10 = distinct !{!10, !72}
!11 = distinct !{!11, !68, !69}
!12 = distinct !{!12, !68}
!13 = distinct !{!13, !68}
!14 = distinct !{!14, !68}
!15 = distinct !{!15, !72}
!16 = distinct !{!16, !68}
!17 = distinct !{!17, !68, !69, !70}
!18 = distinct !{!18, !68, !69, !70}
!19 = distinct !{!19, !72}
!20 = distinct !{!20, !68, !69}
!21 = distinct !{!21, !68}
!22 = distinct !{!22, i1 false, !"LVerDomain"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !22}
!26 = distinct !{!26, !22}
!27 = distinct !{!27, !22}
!28 = distinct !{!28, !22}
!29 = distinct !{!29, !68, !69, !70}
!30 = distinct !{!30, !68, !69}
!31 = distinct !{!31, !68}
!32 = distinct !{!32, !68, !69, !70}
!33 = distinct !{!33, !68, !70, !69}
!34 = distinct !{!34, !68, !69, !70}
!35 = distinct !{!35, !68, !70, !69}
!36 = distinct !{!36, !68, !69, !70}
!37 = distinct !{!37, !68, !70, !69}
!38 = distinct !{!38, !68}
!39 = distinct !{!39, !68}
!40 = distinct !{!40, !68, !69, !70}
!41 = distinct !{!41, !68, !69, !70}
!42 = distinct !{!42, !72}
!43 = distinct !{!43, !68, !69}
!44 = distinct !{!44, !68}
!45 = distinct !{!45, i1 false, !"LVerDomain"}
!46 = distinct !{!46, !45}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !45}
!49 = distinct !{!49, !45}
!50 = distinct !{!50, !45}
!51 = distinct !{!51, !45}
!52 = distinct !{!52, !68, !69, !70}
!53 = distinct !{!53, !68, !69}
!54 = distinct !{!54, !68}
!55 = distinct !{!55, !68, !69, !70}
!56 = distinct !{!56, !68, !70, !69}
!57 = distinct !{!57, !68, !69, !70}
!58 = distinct !{!58, !68, !70, !69}
!59 = distinct !{!59, !68, !69, !70}
!60 = distinct !{!60, !68, !70, !69}
!61 = distinct !{!61, !68}
!62 = distinct !{!62, !68}
!63 = !{!5, !5, i64 0}
!64 = !{!"any pointer", !4, i64 0}
!65 = !{!"p1 omnipotent char", !64, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!4, !4, i64 0}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!"branch_weights", i32 16, i32 112}
!72 = !{!"llvm.loop.unroll.disable"}
!73 = !{!"double", !4, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!"branch_weights", i32 4, i32 12}
!76 = !{!23}
!77 = !{!24}
!78 = !{!25}
!79 = !{!26}
!80 = !{!28, !23, !27, !25, !24}
!81 = !{!27}
!82 = !{!28}
!83 = !{!23, !27, !25, !24}
!84 = !{!46}
!85 = !{!47}
!86 = !{!48}
!87 = !{!49}
!88 = !{!51, !46, !50, !48, !47}
!89 = !{!50}
!90 = !{!51}
!91 = !{!46, !50, !48, !47}
end_hunk_2
