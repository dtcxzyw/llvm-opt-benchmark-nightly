Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 195
begin_hunk_0_@dradb4:bb.a
  %i.vp = fsub float %i.vl, %i.vo                 ; 2 uses
  %i.vq = fadd float %i.vl, %i.vo                 ; 2 uses
  %i.vr = fadd float %i.vi, %i.vq
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv265
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 4
  store float %i.vr, ptr %i.vt, align 4
  %i.vu = fsub float %i.vi, %i.vq                 ; 2 uses
  %i.vv = fadd float %i.uu, %i.uz
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next266
  store float %i.vv, ptr %i.vw, align 4
  %i.vx = fsub float %i.uu, %i.uz                 ; 2 uses
  %i.vy = fsub float %i.vh, %i.va                 ; 2 uses
  %i.vz = fadd float %i.va, %i.vh                 ; 2 uses
  %i.wa = fadd float %i.ut, %i.vp                 ; 2 uses
  %i.wb = fsub float %i.ut, %i.vp                 ; 2 uses
  %i.wc = add nsw i64 %indvars.iv281, -2          ; 3 uses
  %i.wd = getelementptr inbounds [4 x i8], ptr %4, i64 %i.wc ; 2 uses
  %i.we = load float, ptr %i.wd, align 4
  %i.wf = fmul float %i.vy, %i.we
  %i.wg = add nsw i64 %indvars.iv281, -1          ; 3 uses
  %i.wh = getelementptr inbounds [4 x i8], ptr %4, i64 %i.wg ; 2 uses
  %i.wi = load float, ptr %i.wh, align 4
  %i.wj = fmul float %i.wa, %i.wi
  %i.wk = fsub float %i.wf, %i.wj
  %i.wl = add nuw nsw i64 %indvars.iv.next266, %i.er ; 2 uses
  %i.wm = getelementptr [4 x i8], ptr %3, i64 %i.wl ; 2 uses
  %i.wn = getelementptr i8, ptr %i.wm, i64 -4
  store float %i.wk, ptr %i.wn, align 4
  %i.wo = load float, ptr %i.wd, align 4
  %i.wp = fmul float %i.wa, %i.wo
  %i.wq = load float, ptr %i.wh, align 4
  %i.wr = fmul float %i.vy, %i.wq
  %i.ws = fadd float %i.wp, %i.wr
  store float %i.ws, ptr %i.wm, align 4
  %i.wt = getelementptr inbounds [4 x i8], ptr %5, i64 %i.wc ; 2 uses
  %i.wu = load float, ptr %i.wt, align 4
  %i.wv = fmul float %i.vu, %i.wu
  %i.ww = getelementptr inbounds [4 x i8], ptr %5, i64 %i.wg ; 2 uses
  %i.wx = load float, ptr %i.ww, align 4
  %i.wy = fmul float %i.vx, %i.wx
  %i.wz = fsub float %i.wv, %i.wy
  %i.xa = add nuw nsw i64 %i.wl, %i.er            ; 2 uses
  %i.xb = getelementptr [4 x i8], ptr %3, i64 %i.xa ; 2 uses
  %i.xc = getelementptr i8, ptr %i.xb, i64 -4
  store float %i.wz, ptr %i.xc, align 4
  %i.xd = load float, ptr %i.wt, align 4
  %i.xe = fmul float %i.vx, %i.xd
  %i.xf = load float, ptr %i.ww, align 4
  %i.xg = fmul float %i.vu, %i.xf
  %i.xh = fadd float %i.xe, %i.xg
  store float %i.xh, ptr %i.xb, align 4
  %i.xi = getelementptr inbounds [4 x i8], ptr %6, i64 %i.wc ; 2 uses
  %i.xj = load float, ptr %i.xi, align 4
  %i.xk = fmul float %i.vz, %i.xj
  %i.xl = getelementptr inbounds [4 x i8], ptr %6, i64 %i.wg ; 2 uses
  %i.xm = load float, ptr %i.xl, align 4
  %i.xn = fmul float %i.wb, %i.xm
  %i.xo = fsub float %i.xk, %i.xn
  %gep314 = getelementptr [4 x i8], ptr %invariant.gep313, i64 %i.xa ; 2 uses
  %i.xp = getelementptr i8, ptr %gep314, i64 -4
  store float %i.xo, ptr %i.xp, align 4
  %i.xq = load float, ptr %i.xi, align 4
  %i.xr = fmul float %i.wb, %i.xq
  %i.xs = load float, ptr %i.xl, align 4
  %i.xt = fmul float %i.vz, %i.xs
  %i.xu = fadd float %i.xr, %i.xt
  store float %i.xu, ptr %gep314, align 4
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 2 ; 2 uses
  %i.xv = icmp samesign ult i64 %indvars.iv.next282, %i.eq
  br i1 %i.xv, label %scalar.ph806, label %._crit_edge247, !llvm.loop !4591

._crit_edge247:                                   ; preds = %scalar.ph806, %middle.block1183
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, %i.eq
  %i.xw = add nuw nsw i32 %.1231248, 1            ; 2 uses
  %indvars.iv.next268 = add i32 %indvars.iv267, %i.b
  %indvars.iv.next272 = add i32 %indvars.iv271, %i.b
  %indvars.iv.next278 = add i32 %indvars.iv277, %i.b
  %exitcond295.not = icmp eq i32 %i.xw, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond295.not, label %._crit_edge251.split, label %.lr.ph246, !llvm.loop !4592

._crit_edge251.split:                             ; preds = %._crit_edge247, %.preheader
  %.not = trunc i32 %0 to i1
  %brmerge = or i1 %i.d, %.not
  br i1 %brmerge, label %.loopexit, label %.lr.ph257.preheader

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %.loopexit, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %._crit_edge251.split, %bb.c
  %i.xx = mul i32 %0, 3
  %i.xy = add nsw i32 %0, -1
  %i.xz = sext i32 %i.xx to i64
  %i.ya = sext i32 %i.b to i64                    ; 2 uses
  %i.yb = zext nneg i32 %i.xy to i64
  %i.yc = zext nneg i32 %0 to i64                 ; 2 uses
  %i.yd = zext nneg i32 %i.a to i64               ; 3 uses
  %invariant.gep315 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.yd
  br label %.lr.ph257

.lr.ph257:                                        ; preds = %.lr.ph257.preheader, %.lr.ph257
  %indvars.iv300 = phi i64 [ %i.yc, %.lr.ph257.preheader ], [ %indvars.iv.next301, %.lr.ph257 ] ; 2 uses
  %indvars.iv298 = phi i64 [ %i.yb, %.lr.ph257.preheader ], [ %indvars.iv.next299, %.lr.ph257 ] ; 3 uses
  %indvars.iv296 = phi i64 [ %i.xz, %.lr.ph257.preheader ], [ %indvars.iv.next297, %.lr.ph257 ] ; 2 uses
  %.2232252 = phi i32 [ 0, %.lr.ph257.preheader ], [ %i.zb, %.lr.ph257 ]
  %i.ye = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv300 ; 2 uses
  %i.yf = load float, ptr %i.ye, align 4          ; 2 uses
  %i.yg = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv296 ; 2 uses
  %i.yh = load float, ptr %i.yg, align 4          ; 2 uses
  %i.yi = fadd float %i.yf, %i.yh                 ; 2 uses
  %i.yj = fsub float %i.yh, %i.yf                 ; 2 uses
  %i.yk = getelementptr i8, ptr %i.ye, i64 -4
  %i.yl = load float, ptr %i.yk, align 4          ; 2 uses
  %i.ym = getelementptr i8, ptr %i.yg, i64 -4
  %i.yn = load float, ptr %i.ym, align 4          ; 2 uses
  %i.yo = fsub float %i.yl, %i.yn                 ; 2 uses
  %i.yp = fadd float %i.yl, %i.yn                 ; 2 uses
  %i.yq = fadd float %i.yp, %i.yp
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv298
  store float %i.yq, ptr %i.yr, align 4
  %i.ys = fsub float %i.yo, %i.yi
  %i.yt = fmul float %i.ys, f0x3FB504F3
  %i.yu = add nuw nsw i64 %indvars.iv298, %i.yd   ; 2 uses
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.yu
  store float %i.yt, ptr %i.yv, align 4
  %i.yw = fadd float %i.yj, %i.yj
  %i.yx = add nuw nsw i64 %i.yu, %i.yd            ; 2 uses
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.yx
  store float %i.yw, ptr %i.yy, align 4
  %i.yz = fadd float %i.yi, %i.yo
  %i.za = fmul float %i.yz, f0xBFB504F3
  %gep316 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep315, i64 %i.yx
  store float %i.za, ptr %gep316, align 4
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, %i.yc
  %indvars.iv.next301 = add nsw i64 %indvars.iv300, %i.ya
  %indvars.iv.next297 = add nsw i64 %indvars.iv296, %i.ya
  %i.zb = add nuw nsw i32 %.2232252, 1            ; 2 uses
  %exitcond307.not = icmp eq i32 %i.zb, %1
  br i1 %exitcond307.not, label %.loopexit, label %.lr.ph257, !llvm.loop !4593

.loopexit:                                        ; preds = %.lr.ph257, %._crit_edge251.split, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @dradb2(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #43 !guid !4624 {
bb.a:
  %i.a = mul i32 %1, %0                           ; 3 uses
  %i.b = shl i32 %0, 1                            ; 5 uses
  %i.c = add nsw i32 %i.b, -1                     ; 5 uses
  %i.d = icmp sgt i32 %1, 0                       ; 3 uses
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = sext i32 %0 to i64
  %i.f = sext i32 %i.a to i64
  %invariant.gep = getelementptr [4 x i8], ptr %3, i64 %i.f ; 2 uses
  %i.g = zext nneg i32 %1 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %1, 17
  br i1 %min.iters.check, label %.lr.ph.preheader458, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %ident.check = icmp ne i32 %0, 1
  %i.h = shl nuw i32 %1, 1
  %mul.result = add i32 %i.h, -2
  %i.i = icmp slt i32 %mul.result, 0
  %i.j = or i1 %ident.check, %i.i
  br i1 %i.j, label %.lr.ph.preheader458, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.k = zext nneg i32 %1 to i64
  %i.l = shl nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.m = getelementptr i8, ptr %3, i64 %i.l
  %i.n = add nsw i32 %1, -1
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 2 uses
  %i.q = getelementptr i8, ptr %3, i64 %i.l
  %i.r = getelementptr i8, ptr %i.q, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %i.t = shl nuw nsw i64 %i.o, 3
  %i.u = getelementptr i8, ptr %2, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 8        ; 2 uses
  %i.w = getelementptr i8, ptr %3, i64 %i.p
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %bound0 = icmp ult ptr %i.m, %i.v
  %bound1 = icmp ult ptr %2, %i.s
  %found.conflict = and i1 %bound0, %bound1
  %bound0186 = icmp ult ptr %3, %i.v
  %bound1187 = icmp ult ptr %2, %i.x
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx = or i1 %found.conflict, %found.conflict188
  br i1 %conflict.rdx, label %.lr.ph.preheader458, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.y = and i64 %i.g, 3                          ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 4, i64 %i.y
  %n.vec = sub nsw i64 %i.g, %i.aa                ; 3 uses
  %i.ab = trunc i64 %n.vec to i32                 ; 2 uses
  %i.ac = shl i32 %i.ab, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ad = trunc i64 %index to i32
  %i.ae = shl i32 %i.ad, 1                        ; 5 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %2, i64 %i.af ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.ag, align 4, !alias.scope !4625
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ah = or disjoint i32 %i.c, %i.ae
  %.reass = or disjoint i32 %i.ae, %i.c
  %.reass461 = or disjoint i32 %i.ae, %i.c
  %.reass463 = or disjoint i32 %i.ae, %i.c
  %i.ai = sext i32 %i.ah to i64
  %5 = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ai ; 2 uses
  %i.aj = sext i32 %.reass to i64
  %6 = getelementptr [4 x i8], ptr %2, i64 %i.aj
  %7 = getelementptr i8, ptr %6, i64 8            ; 2 uses
  %i.ak = sext i32 %.reass461 to i64
  %i.al = getelementptr [4 x i8], ptr %2, i64 %i.ak
  %8 = getelementptr i8, ptr %i.al, i64 16        ; 2 uses
  %9 = sext i32 %.reass463 to i64
  %i.am = getelementptr [4 x i8], ptr %2, i64 %9
  %10 = getelementptr i8, ptr %i.am, i64 24       ; 2 uses
  %i.an = load float, ptr %5, align 4, !alias.scope !4625
  %i.ao = load float, ptr %7, align 4, !alias.scope !4625
  %i.ap = load float, ptr %8, align 4, !alias.scope !4625
  %i.aq = load float, ptr %10, align 4, !alias.scope !4625
  %i.ar = insertelement <4 x float> poison, float %i.an, i64 0
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 1
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 2
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 3
  %i.av = fadd <4 x float> %strided.vec, %i.au
  %i.aw = getelementptr inbounds [4 x i8], ptr %3, i64 %index
  store <4 x float> %i.av, ptr %i.aw, align 4, !alias.scope !4626, !noalias !4625
  %wide.vec189 = load <8 x float>, ptr %i.ag, align 4, !alias.scope !4625
  %strided.vec190 = shufflevector <8 x float> %wide.vec189, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ax = load float, ptr %5, align 4, !alias.scope !4625
  %i.ay = load float, ptr %7, align 4, !alias.scope !4625
  %i.az = load float, ptr %8, align 4, !alias.scope !4625
  %i.ba = load float, ptr %10, align 4, !alias.scope !4625
  %i.bb = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.bc = insertelement <4 x float> %i.bb, float %i.ay, i64 1
  %i.bd = insertelement <4 x float> %i.bc, float %i.az, i64 2
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 3
  %i.bf = fsub <4 x float> %strided.vec190, %i.be
  %i.bg = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  store <4 x float> %i.bf, ptr %i.bg, align 4, !alias.scope !4627, !noalias !4625
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %.lr.ph.preheader458, label %vector.body, !llvm.loop !4614

.lr.ph.preheader458:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.0103115.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.ac, %vector.body ]
  %.0107113.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.ab, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader458, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader458 ] ; 3 uses
  %.0103115 = phi i32 [ %i.bv, %.lr.ph ], [ %.0103115.ph, %.lr.ph.preheader458 ] ; 2 uses
  %.0107113 = phi i32 [ %i.bw, %.lr.ph ], [ %.0107113.ph, %.lr.ph.preheader458 ]
  %i.bi = sext i32 %.0103115 to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bi ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4
  %i.bl = add nsw i32 %i.c, %.0103115
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bm ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4
  %i.bp = fadd float %i.bk, %i.bo
  %i.bq = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv
  store float %i.bp, ptr %i.bq, align 4
  %i.br = load float, ptr %i.bj, align 4
  %i.bs = load float, ptr %i.bn, align 4
  %i.bt = fsub float %i.br, %i.bs
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.bt, ptr %gep, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.e ; 2 uses
  %i.bu = trunc nsw i64 %indvars.iv.next to i32
  %i.bv = shl i32 %i.bu, 1
  %i.bw = add nuw nsw i32 %.0107113, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bw, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !4615

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.bx = icmp slt i32 %0, 2
  br i1 %i.bx, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.by = icmp eq i32 %0, 2
  br i1 %i.by, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  br i1 %i.d, label %.lr.ph122.preheader, label %.loopexit

.lr.ph122.preheader:                              ; preds = %.preheader
  %i.bz = zext nneg i32 %0 to i64
  %i.ca = zext nneg i32 %0 to i64                 ; 4 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ca, i64 4)
  %i.cb = shl nuw nsw i64 %umax, 2
  %i.cc = add nsw i64 %i.cb, -12
  %i.cd = and i64 %i.cc, -8                       ; 4 uses
  %i.ce = add nuw nsw i64 %i.cd, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.ce  ; 4 uses
  %i.cf = add nuw nsw i64 %i.cd, 12               ; 2 uses
  %scevgep285 = getelementptr i8, ptr %2, i64 %i.cf
  %scevgep286 = getelementptr i8, ptr %2, i64 4
  %scevgep287 = getelementptr i8, ptr %2, i64 -4
  %i.cg = sub nsw i64 -12, %i.cd
  %scevgep288 = getelementptr i8, ptr %2, i64 %i.cg
  %scevgep289 = getelementptr i8, ptr %3, i64 %i.cf
  %scevgep290 = getelementptr i8, ptr %3, i64 %i.ce
  %i.ch = add nsw i32 %1, -1
  %i.ci = zext i32 %i.ch to i64
  %i.cj = mul nuw nsw i64 %i.ca, %i.ci
  %i.ck = shl i64 %i.cj, 2
  %i.cl = add i64 %i.ck, %i.cd                    ; 2 uses
  %i.cm = getelementptr i8, ptr %3, i64 %i.cl
  %scevgep291 = getelementptr i8, ptr %i.cm, i64 12 ; 3 uses
  %scevgep292 = getelementptr i8, ptr %3, i64 8   ; 4 uses
  %i.cn = getelementptr i8, ptr %3, i64 %i.cl
  %scevgep293 = getelementptr i8, ptr %i.cn, i64 8 ; 3 uses
  %scevgep294 = getelementptr i8, ptr %3, i64 4   ; 4 uses
  %i.co = insertelement <4 x ptr> poison, ptr %scevgep294, i64 0
  %i.cp = shufflevector <4 x ptr> %i.co, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cq = insertelement <4 x ptr> poison, ptr %scevgep293, i64 0
  %i.cr = shufflevector <4 x ptr> %i.cq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cs = insertelement <4 x ptr> poison, ptr %scevgep292, i64 0
  %i.ct = shufflevector <4 x ptr> %i.cs, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cu = insertelement <4 x ptr> poison, ptr %scevgep291, i64 0
  %i.cv = shufflevector <4 x ptr> %i.cu, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cw = tail call i64 @llvm.umax.i64(i64 %i.ca, i64 4)
  %i.cx = add nsw i64 %i.cw, -3                   ; 2 uses
  %i.cy = lshr i64 %i.cx, 1
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 2 uses
  %min.iters.check296 = icmp ult i64 %i.cx, 22
  %bound0298 = icmp ult ptr %scevgep294, %scevgep291
  %bound1299 = icmp ult ptr %scevgep292, %scevgep293
  %found.conflict300 = and i1 %bound0298, %bound1299
  %bound0317 = icmp ult ptr %scevgep294, %scevgep
  %bound1318 = icmp ult ptr %4, %scevgep293
  %found.conflict319 = and i1 %bound0317, %bound1318
  %bound0337 = icmp ult ptr %scevgep292, %scevgep
  %bound1338 = icmp ult ptr %4, %scevgep291
  %found.conflict339 = and i1 %bound0337, %bound1338
  %op.rdx449 = or i1 %found.conflict319, %found.conflict339
  %invariant.op468 = or i1 %found.conflict300, %op.rdx449
  %n.vec370 = and i64 %i.cz, 9223372036854775804  ; 4 uses
  %i.da = shl nuw i64 %n.vec370, 1                ; 4 uses
  %i.db = or disjoint i64 %i.da, 2
  %i.dc = shl nuw i64 %n.vec370, 1
  %cmp.n = icmp eq i64 %i.cz, %n.vec370
  br label %.lr.ph122

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %._crit_edge123
  %indvars.iv149 = phi i64 [ 0, %.lr.ph122.preheader ], [ %indvars.iv.next150, %._crit_edge123 ] ; 5 uses
  %indvars.iv145 = phi i32 [ 0, %.lr.ph122.preheader ], [ %indvars.iv.next146, %._crit_edge123 ] ; 2 uses
  %indvars.iv141 = phi i32 [ %i.b, %.lr.ph122.preheader ], [ %indvars.iv.next142, %._crit_edge123 ] ; 2 uses
  %indvars.iv137 = phi i32 [ %i.a, %.lr.ph122.preheader ], [ %indvars.iv.next138, %._crit_edge123 ] ; 2 uses
  %.1108124 = phi i32 [ 0, %.lr.ph122.preheader ], [ %i.gt, %._crit_edge123 ]
  %i.dd = zext i32 %indvars.iv137 to i64          ; 5 uses
  %i.de = sext i32 %indvars.iv141 to i64          ; 5 uses
  %i.df = sext i32 %indvars.iv145 to i64          ; 5 uses
  br i1 %min.iters.check296, label %scalar.ph295.preheader, label %vector.memcheck297

vector.memcheck297:                               ; preds = %.lr.ph122
  %i.dg = shl nuw nsw i64 %i.dd, 2                ; 4 uses
  %i.dh = getelementptr i8, ptr %scevgep294, i64 %i.dg ; 5 uses
  %i.di = getelementptr i8, ptr %scevgep290, i64 %i.dg ; 5 uses
  %i.dj = getelementptr i8, ptr %scevgep292, i64 %i.dg ; 5 uses
  %i.dk = getelementptr i8, ptr %scevgep289, i64 %i.dg ; 5 uses
  %i.dl = shl nsw i64 %i.de, 2                    ; 2 uses
  %i.dm = getelementptr i8, ptr %scevgep288, i64 %i.dl ; 3 uses
  %i.dn = getelementptr i8, ptr %scevgep287, i64 %i.dl ; 3 uses
  %i.do = shl nsw i64 %i.df, 2                    ; 2 uses
  %i.dp = getelementptr i8, ptr %scevgep286, i64 %i.do ; 3 uses
  %i.dq = getelementptr i8, ptr %scevgep285, i64 %i.do ; 3 uses
  %i.dr = insertelement <4 x ptr> poison, ptr %i.di, i64 0
  %i.ds = insertelement <4 x ptr> %i.dr, ptr %i.dk, i64 1
  %i.dt = insertelement <4 x ptr> %i.ds, ptr %i.dn, i64 2
  %i.du = insertelement <4 x ptr> %i.dt, ptr %i.dq, i64 3 ; 2 uses
  %i.dv = icmp ult <4 x ptr> %i.cp, %i.du
  %i.dw = insertelement <4 x ptr> poison, ptr %i.dh, i64 0
  %i.dx = insertelement <4 x ptr> %i.dw, ptr %i.dj, i64 1
  %i.dy = insertelement <4 x ptr> %i.dx, ptr %i.dm, i64 2
  %i.dz = insertelement <4 x ptr> %i.dy, ptr %i.dp, i64 3 ; 2 uses
  %i.ea = icmp ult <4 x ptr> %i.dz, %i.cr
  %i.eb = and <4 x i1> %i.dv, %i.ea
  %i.ec = icmp ult <4 x ptr> %i.ct, %i.du
  %i.ed = icmp ult <4 x ptr> %i.dz, %i.cv
  %i.ee = and <4 x i1> %i.ec, %i.ed
  %bound0341 = icmp ult ptr %i.dh, %i.dk
  %bound1342 = icmp ult ptr %i.dj, %i.di
  %found.conflict343 = and i1 %bound0341, %bound1342
  %bound0345 = icmp ult ptr %i.dh, %i.dn
  %bound1346 = icmp ult ptr %i.dm, %i.di
  %found.conflict347 = and i1 %bound0345, %bound1346
  %bound0349 = icmp ult ptr %i.dh, %i.dq
  %bound1350 = icmp ult ptr %i.dp, %i.di
  %found.conflict351 = and i1 %bound0349, %bound1350
  %bound0353 = icmp ult ptr %i.dh, %scevgep
  %bound1354 = icmp ult ptr %4, %i.di
  %found.conflict355 = and i1 %bound0353, %bound1354
  %bound0357 = icmp ult ptr %i.dj, %i.dn
  %bound1358 = icmp ult ptr %i.dm, %i.dk
  %found.conflict359 = and i1 %bound0357, %bound1358
  %bound0361 = icmp ult ptr %i.dj, %i.dq
  %bound1362 = icmp ult ptr %i.dp, %i.dk
  %found.conflict363 = and i1 %bound0361, %bound1362
  %bound0365 = icmp ult ptr %i.dj, %scevgep
  %bound1366 = icmp ult ptr %4, %i.dk
  %found.conflict367 = and i1 %bound0365, %bound1366
  %rdx.op = or <4 x i1> %i.eb, %i.ee
  %i.ef = bitcast <4 x i1> %rdx.op to i4
  %i.eg = icmp ne i4 %i.ef, 0
  %op.rdx450 = or i1 %found.conflict343, %found.conflict347
  %op.rdx451 = or i1 %found.conflict351, %found.conflict355
  %op.rdx452 = or i1 %found.conflict359, %found.conflict363
  %op.rdx453.reass = or i1 %i.eg, %invariant.op468
  %op.rdx454 = or i1 %op.rdx450, %op.rdx451
  %op.rdx455 = or i1 %op.rdx452, %found.conflict367
  %op.rdx456 = or i1 %op.rdx453.reass, %op.rdx454
  %op.rdx457 = or i1 %op.rdx456, %op.rdx455
  br i1 %op.rdx457, label %scalar.ph295.preheader, label %vector.ph369

vector.ph369:                                     ; preds = %vector.memcheck297
  %i.eh = add i64 %indvars.iv149, %i.da
  %i.ei = add i64 %i.da, %i.df
  %i.ej = sub i64 %i.de, %i.dc
  %i.ek = add i64 %i.da, %i.dd
  %invariant.gep464 = getelementptr [4 x i8], ptr %2, i64 %i.df
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv149
  %invariant.gep466 = getelementptr [4 x i8], ptr %3, i64 %i.dd
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph369
  %index372 = phi i64 [ 0, %vector.ph369 ], [ %index.next395, %vector.body371 ] ; 3 uses
  %i.em = shl i64 %index372, 1                    ; 4 uses
  %i.en = shl i64 %index372, 1
  %i.eo = sub i64 %i.de, %i.en
  %gep465 = getelementptr [4 x i8], ptr %invariant.gep464, i64 %i.em
end_hunk_0
