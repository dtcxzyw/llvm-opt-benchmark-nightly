Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 195
begin_hunk_0_@dradb4:bb.a

middle.block823:                                  ; preds = %vector.body786
  br i1 %cmp.n824, label %._crit_edge247, label %scalar.ph782.preheader

scalar.ph782.preheader:                           ; preds = %vector.memcheck410, %vector.scevcheck400, %.lr.ph246, %middle.block823
  %indvars.iv281.ph = phi i64 [ 2, %vector.memcheck410 ], [ 2, %vector.scevcheck400 ], [ 2, %.lr.ph246 ], [ %i.pi, %middle.block823 ]
  %indvars.iv279.ph = phi i64 [ %i.ps, %vector.memcheck410 ], [ %i.ps, %vector.scevcheck400 ], [ %i.ps, %.lr.ph246 ], [ %i.sc, %middle.block823 ]
  %indvars.iv275.ph = phi i64 [ %i.pr, %vector.memcheck410 ], [ %i.pr, %vector.scevcheck400 ], [ %i.pr, %.lr.ph246 ], [ %i.sd, %middle.block823 ]
  %indvars.iv273.ph = phi i64 [ %i.pr, %vector.memcheck410 ], [ %i.pr, %vector.scevcheck400 ], [ %i.pr, %.lr.ph246 ], [ %i.se, %middle.block823 ]
  %indvars.iv269.ph = phi i64 [ %i.pq, %vector.memcheck410 ], [ %i.pq, %vector.scevcheck400 ], [ %i.pq, %.lr.ph246 ], [ %i.sf, %middle.block823 ]
  %indvars.iv265.ph = phi i64 [ %indvars.iv263, %vector.memcheck410 ], [ %indvars.iv263, %vector.scevcheck400 ], [ %indvars.iv263, %.lr.ph246 ], [ %i.sg, %middle.block823 ]
  br label %scalar.ph782

scalar.ph782:                                     ; preds = %scalar.ph782.preheader, %scalar.ph782
  %indvars.iv281 = phi i64 [ %indvars.iv.next282, %scalar.ph782 ], [ %indvars.iv281.ph, %scalar.ph782.preheader ] ; 3 uses
  %indvars.iv279 = phi i64 [ %indvars.iv.next280, %scalar.ph782 ], [ %indvars.iv279.ph, %scalar.ph782.preheader ] ; 2 uses
  %indvars.iv275 = phi i64 [ %indvars.iv.next276, %scalar.ph782 ], [ %indvars.iv275.ph, %scalar.ph782.preheader ] ; 2 uses
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %scalar.ph782 ], [ %indvars.iv273.ph, %scalar.ph782.preheader ] ; 2 uses
  %indvars.iv269 = phi i64 [ %indvars.iv.next270, %scalar.ph782 ], [ %indvars.iv269.ph, %scalar.ph782.preheader ] ; 2 uses
  %indvars.iv265 = phi i64 [ %indvars.iv.next266, %scalar.ph782 ], [ %indvars.iv265.ph, %scalar.ph782.preheader ] ; 2 uses
  %indvars.iv.next280 = add nsw i64 %indvars.iv279, 2 ; 2 uses
  %indvars.iv.next276 = add nsw i64 %indvars.iv275, 2 ; 2 uses
  %indvars.iv.next274 = add nsw i64 %indvars.iv273, -2 ; 2 uses
  %indvars.iv.next270 = add nsw i64 %indvars.iv269, -2 ; 2 uses
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 2 ; 3 uses
  %i.uj = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next280
  %i.uk = load float, ptr %i.uj, align 4          ; 2 uses
  %i.ul = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next270
  %i.um = load float, ptr %i.ul, align 4          ; 2 uses
  %i.un = fadd float %i.uk, %i.um                 ; 2 uses
  %i.uo = fsub float %i.uk, %i.um                 ; 2 uses
  %i.up = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next276
  %i.uq = load float, ptr %i.up, align 4          ; 2 uses
  %i.ur = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next274
  %i.us = load float, ptr %i.ur, align 4          ; 2 uses
  %i.ut = fsub float %i.uq, %i.us                 ; 2 uses
  %i.uu = fadd float %i.uq, %i.us                 ; 2 uses
  %i.uv = getelementptr [4 x i8], ptr %2, i64 %indvars.iv279
  %i.uw = getelementptr i8, ptr %i.uv, i64 4
  %i.ux = load float, ptr %i.uw, align 4          ; 2 uses
  %i.uy = getelementptr [4 x i8], ptr %2, i64 %indvars.iv269
  %i.uz = getelementptr i8, ptr %i.uy, i64 -12
  %i.va = load float, ptr %i.uz, align 4          ; 2 uses
  %i.vb = fsub float %i.ux, %i.va                 ; 2 uses
  %i.vc = fadd float %i.ux, %i.va                 ; 2 uses
  %i.vd = getelementptr [4 x i8], ptr %2, i64 %indvars.iv275
  %i.ve = getelementptr i8, ptr %i.vd, i64 4
  %i.vf = load float, ptr %i.ve, align 4          ; 2 uses
  %i.vg = getelementptr [4 x i8], ptr %2, i64 %indvars.iv273
  %i.vh = getelementptr i8, ptr %i.vg, i64 -12
  %i.vi = load float, ptr %i.vh, align 4          ; 2 uses
  %i.vj = fsub float %i.vf, %i.vi                 ; 2 uses
  %i.vk = fadd float %i.vf, %i.vi                 ; 2 uses
  %i.vl = fadd float %i.vc, %i.vk
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv265
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 4
  store float %i.vl, ptr %i.vn, align 4
  %i.vo = fsub float %i.vc, %i.vk                 ; 2 uses
  %i.vp = fadd float %i.uo, %i.ut
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next266
  store float %i.vp, ptr %i.vq, align 4
  %i.vr = fsub float %i.uo, %i.ut                 ; 2 uses
  %i.vs = fsub float %i.vb, %i.uu                 ; 2 uses
  %i.vt = fadd float %i.uu, %i.vb                 ; 2 uses
  %i.vu = fadd float %i.un, %i.vj                 ; 2 uses
  %i.vv = fsub float %i.un, %i.vj                 ; 2 uses
  %i.vw = add nsw i64 %indvars.iv281, -2          ; 3 uses
  %i.vx = getelementptr inbounds [4 x i8], ptr %4, i64 %i.vw ; 2 uses
  %i.vy = load float, ptr %i.vx, align 4
  %i.vz = fmul float %i.vs, %i.vy
  %i.wa = add nsw i64 %indvars.iv281, -1          ; 3 uses
  %i.wb = getelementptr inbounds [4 x i8], ptr %4, i64 %i.wa ; 2 uses
  %i.wc = load float, ptr %i.wb, align 4
  %i.wd = fmul float %i.vu, %i.wc
  %i.we = fsub float %i.vz, %i.wd
  %i.wf = add nuw nsw i64 %indvars.iv.next266, %i.er ; 2 uses
  %i.wg = getelementptr [4 x i8], ptr %3, i64 %i.wf ; 2 uses
  %i.wh = getelementptr i8, ptr %i.wg, i64 -4
  store float %i.we, ptr %i.wh, align 4
  %i.wi = load float, ptr %i.vx, align 4
  %i.wj = fmul float %i.vu, %i.wi
  %i.wk = load float, ptr %i.wb, align 4
  %i.wl = fmul float %i.vs, %i.wk
  %i.wm = fadd float %i.wj, %i.wl
  store float %i.wm, ptr %i.wg, align 4
  %i.wn = getelementptr inbounds [4 x i8], ptr %5, i64 %i.vw ; 2 uses
  %i.wo = load float, ptr %i.wn, align 4
  %i.wp = fmul float %i.vo, %i.wo
  %i.wq = getelementptr inbounds [4 x i8], ptr %5, i64 %i.wa ; 2 uses
  %i.wr = load float, ptr %i.wq, align 4
  %i.ws = fmul float %i.vr, %i.wr
  %i.wt = fsub float %i.wp, %i.ws
  %i.wu = add nuw nsw i64 %i.wf, %i.er            ; 2 uses
  %i.wv = getelementptr [4 x i8], ptr %3, i64 %i.wu ; 2 uses
  %i.ww = getelementptr i8, ptr %i.wv, i64 -4
  store float %i.wt, ptr %i.ww, align 4
  %i.wx = load float, ptr %i.wn, align 4
  %i.wy = fmul float %i.vr, %i.wx
  %i.wz = load float, ptr %i.wq, align 4
  %i.xa = fmul float %i.vo, %i.wz
  %i.xb = fadd float %i.wy, %i.xa
  store float %i.xb, ptr %i.wv, align 4
  %i.xc = getelementptr inbounds [4 x i8], ptr %6, i64 %i.vw ; 2 uses
  %i.xd = load float, ptr %i.xc, align 4
  %i.xe = fmul float %i.vt, %i.xd
  %i.xf = getelementptr inbounds [4 x i8], ptr %6, i64 %i.wa ; 2 uses
  %i.xg = load float, ptr %i.xf, align 4
  %i.xh = fmul float %i.vv, %i.xg
  %i.xi = fsub float %i.xe, %i.xh
  %gep314 = getelementptr [4 x i8], ptr %invariant.gep313, i64 %i.wu ; 2 uses
  %i.xj = getelementptr i8, ptr %gep314, i64 -4
  store float %i.xi, ptr %i.xj, align 4
  %i.xk = load float, ptr %i.xc, align 4
  %i.xl = fmul float %i.vv, %i.xk
  %i.xm = load float, ptr %i.xf, align 4
  %i.xn = fmul float %i.vt, %i.xm
  %i.xo = fadd float %i.xl, %i.xn
  store float %i.xo, ptr %gep314, align 4
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 2 ; 2 uses
  %i.xp = icmp samesign ult i64 %indvars.iv.next282, %i.eq
  br i1 %i.xp, label %scalar.ph782, label %._crit_edge247, !llvm.loop !1074

._crit_edge247:                                   ; preds = %scalar.ph782, %middle.block823
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, %i.eq
  %i.xq = add nuw nsw i32 %.1231248, 1            ; 2 uses
  %indvars.iv.next268 = add i32 %indvars.iv267, %i.b
  %indvars.iv.next272 = add i32 %indvars.iv271, %i.b
  %indvars.iv.next278 = add i32 %indvars.iv277, %i.b
  %exitcond295.not = icmp eq i32 %i.xq, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond295.not, label %._crit_edge251.split, label %.lr.ph246, !llvm.loop !1075

._crit_edge251.split:                             ; preds = %._crit_edge247, %.preheader
  %.not = trunc i32 %0 to i1
  %brmerge = or i1 %i.d, %.not
  br i1 %brmerge, label %.loopexit, label %.lr.ph257.preheader

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %.loopexit, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %._crit_edge251.split, %bb.c
  %i.xr = mul i32 %0, 3
  %i.xs = add nsw i32 %0, -1
  %i.xt = sext i32 %i.xr to i64
  %i.xu = sext i32 %i.b to i64                    ; 2 uses
  %i.xv = zext nneg i32 %i.xs to i64
  %i.xw = zext nneg i32 %0 to i64                 ; 2 uses
  %i.xx = zext nneg i32 %i.a to i64               ; 3 uses
  %invariant.gep315 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xx
  br label %.lr.ph257

.lr.ph257:                                        ; preds = %.lr.ph257.preheader, %.lr.ph257
  %indvars.iv300 = phi i64 [ %i.xw, %.lr.ph257.preheader ], [ %indvars.iv.next301, %.lr.ph257 ] ; 2 uses
  %indvars.iv298 = phi i64 [ %i.xv, %.lr.ph257.preheader ], [ %indvars.iv.next299, %.lr.ph257 ] ; 3 uses
  %indvars.iv296 = phi i64 [ %i.xt, %.lr.ph257.preheader ], [ %indvars.iv.next297, %.lr.ph257 ] ; 2 uses
  %.2232252 = phi i32 [ 0, %.lr.ph257.preheader ], [ %i.yv, %.lr.ph257 ]
  %i.xy = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv300 ; 2 uses
  %i.xz = load float, ptr %i.xy, align 4          ; 2 uses
  %i.ya = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv296 ; 2 uses
  %i.yb = load float, ptr %i.ya, align 4          ; 2 uses
  %i.yc = fadd float %i.xz, %i.yb                 ; 2 uses
  %i.yd = fsub float %i.yb, %i.xz                 ; 2 uses
  %i.ye = getelementptr i8, ptr %i.xy, i64 -4
  %i.yf = load float, ptr %i.ye, align 4          ; 2 uses
  %i.yg = getelementptr i8, ptr %i.ya, i64 -4
  %i.yh = load float, ptr %i.yg, align 4          ; 2 uses
  %i.yi = fsub float %i.yf, %i.yh                 ; 2 uses
  %i.yj = fadd float %i.yf, %i.yh                 ; 2 uses
  %i.yk = fadd float %i.yj, %i.yj
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv298
  store float %i.yk, ptr %i.yl, align 4
  %i.ym = fsub float %i.yi, %i.yc
  %i.yn = fmul float %i.ym, f0x3FB504F3
  %i.yo = add nuw nsw i64 %indvars.iv298, %i.xx   ; 2 uses
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.yo
  store float %i.yn, ptr %i.yp, align 4
  %i.yq = fadd float %i.yd, %i.yd
  %i.yr = add nuw nsw i64 %i.yo, %i.xx            ; 2 uses
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.yr
  store float %i.yq, ptr %i.ys, align 4
  %i.yt = fadd float %i.yc, %i.yi
  %i.yu = fmul float %i.yt, f0xBFB504F3
  %gep316 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep315, i64 %i.yr
  store float %i.yu, ptr %gep316, align 4
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, %i.xw
  %indvars.iv.next301 = add nsw i64 %indvars.iv300, %i.xu
  %indvars.iv.next297 = add nsw i64 %indvars.iv296, %i.xu
  %i.yv = add nuw nsw i32 %.2232252, 1            ; 2 uses
  %exitcond307.not = icmp eq i32 %i.yv, %1
  br i1 %exitcond307.not, label %.loopexit, label %.lr.ph257, !llvm.loop !1076

.loopexit:                                        ; preds = %.lr.ph257, %._crit_edge251.split, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @dradb2(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #43 {
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
  br i1 %min.iters.check, label %.lr.ph.preheader376, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %ident.check = icmp ne i32 %0, 1
  %i.h = shl nuw i32 %1, 1
  %mul.result = add i32 %i.h, -2
  %i.i = icmp slt i32 %mul.result, 0
  %i.j = or i1 %ident.check, %i.i
  br i1 %i.j, label %.lr.ph.preheader376, label %vector.memcheck

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
  br i1 %conflict.rdx, label %.lr.ph.preheader376, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.y = and i64 %i.g, 3                          ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 4, i64 %i.y
  %n.vec = sub nsw i64 %i.g, %i.aa                ; 3 uses
  %i.ab = trunc i64 %n.vec to i32                 ; 2 uses
  %i.ac = shl i32 %i.ab, 1
  %invariant.op = or disjoint i32 2, %i.c
  %invariant.op378 = or disjoint i32 4, %i.c
  %invariant.op380 = or disjoint i32 6, %i.c
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ad = trunc i64 %index to i32
  %i.ae = shl i32 %i.ad, 1                        ; 5 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %2, i64 %i.af ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.ag, align 4, !alias.scope !1106
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ah = or disjoint i32 %i.c, %i.ae
  %.reass = or disjoint i32 %i.ae, %invariant.op
  %.reass379 = or disjoint i32 %i.ae, %invariant.op378
  %.reass381 = or disjoint i32 %i.ae, %invariant.op380
  %5 = sext i32 %i.ah to i64
  %6 = sext i32 %.reass to i64
  %i.ai = sext i32 %.reass379 to i64
  %7 = sext i32 %.reass381 to i64
  %8 = getelementptr inbounds [4 x i8], ptr %2, i64 %5 ; 2 uses
  %9 = getelementptr inbounds [4 x i8], ptr %2, i64 %6 ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ai ; 2 uses
  %10 = getelementptr inbounds [4 x i8], ptr %2, i64 %7 ; 2 uses
  %i.ak = load float, ptr %8, align 4, !alias.scope !1106
  %i.al = load float, ptr %9, align 4, !alias.scope !1106
  %i.am = load float, ptr %i.aj, align 4, !alias.scope !1106
  %i.an = load float, ptr %10, align 4, !alias.scope !1106
  %i.ao = insertelement <4 x float> poison, float %i.ak, i64 0
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 1
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 2
  %i.ar = insertelement <4 x float> %i.aq, float %i.an, i64 3
  %i.as = fadd <4 x float> %strided.vec, %i.ar
  %i.at = getelementptr inbounds [4 x i8], ptr %3, i64 %index
  store <4 x float> %i.as, ptr %i.at, align 4, !alias.scope !1107, !noalias !1106
  %wide.vec189 = load <8 x float>, ptr %i.ag, align 4, !alias.scope !1106
  %strided.vec190 = shufflevector <8 x float> %wide.vec189, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.au = load float, ptr %8, align 4, !alias.scope !1106
  %i.av = load float, ptr %9, align 4, !alias.scope !1106
  %i.aw = load float, ptr %i.aj, align 4, !alias.scope !1106
  %i.ax = load float, ptr %10, align 4, !alias.scope !1106
  %i.ay = insertelement <4 x float> poison, float %i.au, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 3
  %i.bc = fsub <4 x float> %strided.vec190, %i.bb
  %i.bd = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  store <4 x float> %i.bc, ptr %i.bd, align 4, !alias.scope !1108, !noalias !1106
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %.lr.ph.preheader376, label %vector.body, !llvm.loop !1096

.lr.ph.preheader376:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.0103115.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.ac, %vector.body ]
  %.0107113.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.ab, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader376, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader376 ] ; 3 uses
  %.0103115 = phi i32 [ %i.bs, %.lr.ph ], [ %.0103115.ph, %.lr.ph.preheader376 ] ; 2 uses
  %.0107113 = phi i32 [ %i.bt, %.lr.ph ], [ %.0107113.ph, %.lr.ph.preheader376 ]
  %i.bf = sext i32 %.0103115 to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bf ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4
  %i.bi = add nsw i32 %i.c, %.0103115
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bj ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4
  %i.bm = fadd float %i.bh, %i.bl
  %i.bn = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv
  store float %i.bm, ptr %i.bn, align 4
  %i.bo = load float, ptr %i.bg, align 4
  %i.bp = load float, ptr %i.bk, align 4
  %i.bq = fsub float %i.bo, %i.bp
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.bq, ptr %gep, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.e ; 2 uses
  %i.br = trunc nsw i64 %indvars.iv.next to i32
  %i.bs = shl i32 %i.br, 1
  %i.bt = add nuw nsw i32 %.0107113, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bt, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1097

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.bu = icmp slt i32 %0, 2
  br i1 %i.bu, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.bv = icmp eq i32 %0, 2
  br i1 %i.bv, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  br i1 %i.d, label %.lr.ph122.preheader, label %.loopexit

.lr.ph122.preheader:                              ; preds = %.preheader
  %i.bw = zext nneg i32 %0 to i64
  %i.bx = zext nneg i32 %0 to i64                 ; 4 uses
  %scevgep = getelementptr i8, ptr %3, i64 4      ; 3 uses
  %i.by = add nsw i32 %1, -1
  %i.bz = zext i32 %i.by to i64
  %i.ca = mul nuw nsw i64 %i.bx, %i.bz
  %i.cb = shl i64 %i.ca, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 4)
  %i.cc = shl nuw nsw i64 %umax, 2
  %i.cd = add nsw i64 %i.cc, -12
  %i.ce = and i64 %i.cd, -8                       ; 4 uses
  %i.cf = add i64 %i.cb, %i.ce                    ; 2 uses
  %i.cg = getelementptr i8, ptr %3, i64 %i.cf
  %scevgep194 = getelementptr i8, ptr %i.cg, i64 8 ; 3 uses
  %scevgep195 = getelementptr i8, ptr %3, i64 8   ; 3 uses
  %i.ch = getelementptr i8, ptr %3, i64 %i.cf
  %scevgep196 = getelementptr i8, ptr %i.ch, i64 12 ; 3 uses
  %scevgep197 = getelementptr i8, ptr %3, i64 4
  %i.ci = add nuw nsw i64 %i.ce, 8                ; 2 uses
  %scevgep199 = getelementptr i8, ptr %3, i64 %i.ci
  %scevgep201 = getelementptr i8, ptr %3, i64 8
  %i.cj = add nuw nsw i64 %i.ce, 12               ; 2 uses
  %scevgep203 = getelementptr i8, ptr %3, i64 %i.cj
  %i.ck = sub nsw i64 -12, %i.ce
  %scevgep205 = getelementptr i8, ptr %2, i64 %i.ck
  %scevgep207 = getelementptr i8, ptr %2, i64 -4
  %scevgep209 = getelementptr i8, ptr %2, i64 4
  %scevgep211 = getelementptr i8, ptr %2, i64 %i.cj
  %scevgep213 = getelementptr i8, ptr %4, i64 %i.ci ; 4 uses
  %i.cl = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.cm = shufflevector <4 x ptr> %i.cl, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cn = insertelement <4 x ptr> poison, ptr %scevgep194, i64 0
  %i.co = shufflevector <4 x ptr> %i.cn, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cp = insertelement <4 x ptr> poison, ptr %scevgep195, i64 0
  %i.cq = shufflevector <4 x ptr> %i.cp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cr = insertelement <4 x ptr> poison, ptr %scevgep196, i64 0
  %i.cs = shufflevector <4 x ptr> %i.cr, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ct = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 4)
  %i.cu = add nsw i64 %i.ct, -3                   ; 2 uses
  %i.cv = lshr i64 %i.cu, 1
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %min.iters.check286 = icmp ult i64 %i.cu, 22
  %bound0214 = icmp ult ptr %scevgep, %scevgep196
  %bound1215 = icmp ult ptr %scevgep195, %scevgep194
  %found.conflict216 = and i1 %bound0214, %bound1215
  %bound0233 = icmp ult ptr %scevgep, %scevgep213
  %bound1234 = icmp ult ptr %4, %scevgep194
  %found.conflict235 = and i1 %bound0233, %bound1234
  %bound0253 = icmp ult ptr %scevgep195, %scevgep213
  %bound1254 = icmp ult ptr %4, %scevgep196
  %found.conflict255 = and i1 %bound0253, %bound1254
  %op.rdx367 = or i1 %found.conflict235, %found.conflict255
  %invariant.op386 = or i1 %found.conflict216, %op.rdx367
  %n.vec288 = and i64 %i.cw, 9223372036854775804  ; 4 uses
  %i.cx = shl nuw i64 %n.vec288, 1                ; 4 uses
  %i.cy = or disjoint i64 %i.cx, 2
  %i.cz = shl nuw i64 %n.vec288, 1
  %cmp.n = icmp eq i64 %i.cw, %n.vec288
  br label %.lr.ph122

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %._crit_edge123
  %indvars.iv149 = phi i64 [ 0, %.lr.ph122.preheader ], [ %indvars.iv.next150, %._crit_edge123 ] ; 5 uses
  %indvars.iv145 = phi i32 [ 0, %.lr.ph122.preheader ], [ %indvars.iv.next146, %._crit_edge123 ] ; 3 uses
  %indvars.iv141 = phi i32 [ %i.b, %.lr.ph122.preheader ], [ %indvars.iv.next142, %._crit_edge123 ] ; 3 uses
  %indvars.iv137 = phi i32 [ %i.a, %.lr.ph122.preheader ], [ %indvars.iv.next138, %._crit_edge123 ] ; 3 uses
  %.1108124 = phi i32 [ 0, %.lr.ph122.preheader ], [ %i.gl, %._crit_edge123 ]
  %i.da = zext i32 %indvars.iv137 to i64          ; 4 uses
  %i.db = sext i32 %indvars.iv141 to i64          ; 4 uses
  %i.dc = sext i32 %indvars.iv145 to i64          ; 4 uses
  br i1 %min.iters.check286, label %scalar.ph285.preheader, label %vector.memcheck193

vector.memcheck193:                               ; preds = %.lr.ph122
  %i.dd = sext i32 %indvars.iv145 to i64
  %i.de = shl nsw i64 %i.dd, 2                    ; 2 uses
  %scevgep212 = getelementptr i8, ptr %scevgep211, i64 %i.de ; 3 uses
  %scevgep210 = getelementptr i8, ptr %scevgep209, i64 %i.de ; 3 uses
  %i.df = sext i32 %indvars.iv141 to i64
  %i.dg = shl nsw i64 %i.df, 2                    ; 2 uses
  %scevgep208 = getelementptr i8, ptr %scevgep207, i64 %i.dg ; 3 uses
  %scevgep206 = getelementptr i8, ptr %scevgep205, i64 %i.dg ; 3 uses
  %i.dh = zext i32 %indvars.iv137 to i64
  %i.di = shl nuw nsw i64 %i.dh, 2                ; 4 uses
  %scevgep204 = getelementptr i8, ptr %scevgep203, i64 %i.di ; 5 uses
  %scevgep202 = getelementptr i8, ptr %scevgep201, i64 %i.di ; 5 uses
  %scevgep200 = getelementptr i8, ptr %scevgep199, i64 %i.di ; 5 uses
  %scevgep198 = getelementptr i8, ptr %scevgep197, i64 %i.di ; 5 uses
  %i.dj = insertelement <4 x ptr> poison, ptr %scevgep200, i64 0
  %i.dk = insertelement <4 x ptr> %i.dj, ptr %scevgep204, i64 1
  %i.dl = insertelement <4 x ptr> %i.dk, ptr %scevgep208, i64 2
  %i.dm = insertelement <4 x ptr> %i.dl, ptr %scevgep212, i64 3 ; 2 uses
  %i.dn = icmp ult <4 x ptr> %i.cm, %i.dm
  %i.do = insertelement <4 x ptr> poison, ptr %scevgep198, i64 0
  %i.dp = insertelement <4 x ptr> %i.do, ptr %scevgep202, i64 1
  %i.dq = insertelement <4 x ptr> %i.dp, ptr %scevgep206, i64 2
  %i.dr = insertelement <4 x ptr> %i.dq, ptr %scevgep210, i64 3 ; 2 uses
  %i.ds = icmp ult <4 x ptr> %i.dr, %i.co
  %i.dt = and <4 x i1> %i.dn, %i.ds
  %i.du = icmp ult <4 x ptr> %i.cq, %i.dm
  %i.dv = icmp ult <4 x ptr> %i.dr, %i.cs
  %i.dw = and <4 x i1> %i.du, %i.dv
  %bound0257 = icmp ult ptr %scevgep198, %scevgep204
  %bound1258 = icmp ult ptr %scevgep202, %scevgep200
  %found.conflict259 = and i1 %bound0257, %bound1258
  %bound0261 = icmp ult ptr %scevgep198, %scevgep208
  %bound1262 = icmp ult ptr %scevgep206, %scevgep200
  %found.conflict263 = and i1 %bound0261, %bound1262
  %bound0265 = icmp ult ptr %scevgep198, %scevgep212
  %bound1266 = icmp ult ptr %scevgep210, %scevgep200
  %found.conflict267 = and i1 %bound0265, %bound1266
  %bound0269 = icmp ult ptr %scevgep198, %scevgep213
  %bound1270 = icmp ult ptr %4, %scevgep200
  %found.conflict271 = and i1 %bound0269, %bound1270
  %bound0273 = icmp ult ptr %scevgep202, %scevgep208
  %bound1274 = icmp ult ptr %scevgep206, %scevgep204
  %found.conflict275 = and i1 %bound0273, %bound1274
  %bound0277 = icmp ult ptr %scevgep202, %scevgep212
  %bound1278 = icmp ult ptr %scevgep210, %scevgep204
  %found.conflict279 = and i1 %bound0277, %bound1278
  %bound0281 = icmp ult ptr %scevgep202, %scevgep213
  %bound1282 = icmp ult ptr %4, %scevgep204
  %found.conflict283 = and i1 %bound0281, %bound1282
  %rdx.op = or <4 x i1> %i.dt, %i.dw
  %i.dx = bitcast <4 x i1> %rdx.op to i4
  %i.dy = icmp ne i4 %i.dx, 0
  %op.rdx368 = or i1 %found.conflict259, %found.conflict263
  %op.rdx369 = or i1 %found.conflict267, %found.conflict271
  %op.rdx370 = or i1 %found.conflict275, %found.conflict279
  %op.rdx371.reass = or i1 %i.dy, %invariant.op386
  %op.rdx372 = or i1 %op.rdx368, %op.rdx369
  %op.rdx373 = or i1 %op.rdx370, %found.conflict283
  %op.rdx374 = or i1 %op.rdx371.reass, %op.rdx372
  %op.rdx375 = or i1 %op.rdx374, %op.rdx373
  br i1 %op.rdx375, label %scalar.ph285.preheader, label %vector.ph287

vector.ph287:                                     ; preds = %vector.memcheck193
  %i.dz = add i64 %indvars.iv149, %i.cx
  %i.ea = add i64 %i.cx, %i.dc
  %i.eb = sub i64 %i.db, %i.cz
  %i.ec = add i64 %i.cx, %i.da
  %invariant.gep382 = getelementptr [4 x i8], ptr %2, i64 %i.dc
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv149
  %invariant.gep384 = getelementptr [4 x i8], ptr %3, i64 %i.da
  br label %vector.body289

vector.body289:                                   ; preds = %vector.body289, %vector.ph287
end_hunk_0
