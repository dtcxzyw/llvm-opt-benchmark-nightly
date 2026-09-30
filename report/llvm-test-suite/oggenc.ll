Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 194
begin_hunk_0_@dradb4:bb.a

middle.block823:                                  ; preds = %vector.body786
  br i1 %cmp.n824, label %._crit_edge247, label %scalar.ph782.preheader

scalar.ph782.preheader:                           ; preds = %vector.memcheck410, %vector.scevcheck400, %.lr.ph246, %middle.block823
  %indvars.iv281.ph = phi i64 [ 2, %vector.memcheck410 ], [ 2, %vector.scevcheck400 ], [ 2, %.lr.ph246 ], [ %i.me, %middle.block823 ]
  %indvars.iv279.ph = phi i64 [ %i.mo, %vector.memcheck410 ], [ %i.mo, %vector.scevcheck400 ], [ %i.mo, %.lr.ph246 ], [ %i.rj, %middle.block823 ]
  %indvars.iv275.ph = phi i64 [ %i.mn, %vector.memcheck410 ], [ %i.mn, %vector.scevcheck400 ], [ %i.mn, %.lr.ph246 ], [ %i.rk, %middle.block823 ]
  %indvars.iv273.ph = phi i64 [ %i.mn, %vector.memcheck410 ], [ %i.mn, %vector.scevcheck400 ], [ %i.mn, %.lr.ph246 ], [ %i.rl, %middle.block823 ]
  %indvars.iv269.ph = phi i64 [ %i.mm, %vector.memcheck410 ], [ %i.mm, %vector.scevcheck400 ], [ %i.mm, %.lr.ph246 ], [ %i.rm, %middle.block823 ]
  %indvars.iv265.ph = phi i64 [ %indvars.iv263, %vector.memcheck410 ], [ %indvars.iv263, %vector.scevcheck400 ], [ %indvars.iv263, %.lr.ph246 ], [ %i.rn, %middle.block823 ]
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
  %i.tq = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next280
  %i.tr = load float, ptr %i.tq, align 4          ; 2 uses
  %i.ts = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next270
  %i.tt = load float, ptr %i.ts, align 4          ; 2 uses
  %i.tu = fadd float %i.tr, %i.tt                 ; 2 uses
  %i.tv = fsub float %i.tr, %i.tt                 ; 2 uses
  %i.tw = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next276
  %i.tx = load float, ptr %i.tw, align 4          ; 2 uses
  %i.ty = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next274
  %i.tz = load float, ptr %i.ty, align 4          ; 2 uses
  %i.ua = fsub float %i.tx, %i.tz                 ; 2 uses
  %i.ub = fadd float %i.tx, %i.tz                 ; 2 uses
  %i.uc = getelementptr [4 x i8], ptr %2, i64 %indvars.iv279
  %i.ud = getelementptr i8, ptr %i.uc, i64 4
  %i.ue = load float, ptr %i.ud, align 4          ; 2 uses
  %i.uf = getelementptr [4 x i8], ptr %2, i64 %indvars.iv269
  %i.ug = getelementptr i8, ptr %i.uf, i64 -12
  %i.uh = load float, ptr %i.ug, align 4          ; 2 uses
  %i.ui = fsub float %i.ue, %i.uh                 ; 2 uses
  %i.uj = fadd float %i.ue, %i.uh                 ; 2 uses
  %i.uk = getelementptr [4 x i8], ptr %2, i64 %indvars.iv275
  %i.ul = getelementptr i8, ptr %i.uk, i64 4
  %i.um = load float, ptr %i.ul, align 4          ; 2 uses
  %i.un = getelementptr [4 x i8], ptr %2, i64 %indvars.iv273
  %i.uo = getelementptr i8, ptr %i.un, i64 -12
  %i.up = load float, ptr %i.uo, align 4          ; 2 uses
  %i.uq = fsub float %i.um, %i.up                 ; 2 uses
  %i.ur = fadd float %i.um, %i.up                 ; 2 uses
  %i.us = fadd float %i.uj, %i.ur
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv265
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 4
  store float %i.us, ptr %i.uu, align 4
  %i.uv = fsub float %i.uj, %i.ur                 ; 2 uses
  %i.uw = fadd float %i.tv, %i.ua
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next266
  store float %i.uw, ptr %i.ux, align 4
  %i.uy = fsub float %i.tv, %i.ua                 ; 2 uses
  %i.uz = fsub float %i.ui, %i.ub                 ; 2 uses
  %i.va = fadd float %i.ub, %i.ui                 ; 2 uses
  %i.vb = fadd float %i.tu, %i.uq                 ; 2 uses
  %i.vc = fsub float %i.tu, %i.uq                 ; 2 uses
  %i.vd = add nsw i64 %indvars.iv281, -2          ; 3 uses
  %i.ve = getelementptr inbounds [4 x i8], ptr %4, i64 %i.vd ; 2 uses
  %i.vf = load float, ptr %i.ve, align 4
  %i.vg = fmul float %i.uz, %i.vf
  %i.vh = add nsw i64 %indvars.iv281, -1          ; 3 uses
  %i.vi = getelementptr inbounds [4 x i8], ptr %4, i64 %i.vh ; 2 uses
  %i.vj = load float, ptr %i.vi, align 4
  %i.vk = fmul float %i.vb, %i.vj
  %i.vl = fsub float %i.vg, %i.vk
  %i.vm = add nuw nsw i64 %indvars.iv.next266, %i.er ; 2 uses
  %i.vn = getelementptr [4 x i8], ptr %3, i64 %i.vm ; 2 uses
  %i.vo = getelementptr i8, ptr %i.vn, i64 -4
  store float %i.vl, ptr %i.vo, align 4
  %i.vp = load float, ptr %i.ve, align 4
  %i.vq = fmul float %i.vb, %i.vp
  %i.vr = load float, ptr %i.vi, align 4
  %i.vs = fmul float %i.uz, %i.vr
  %i.vt = fadd float %i.vq, %i.vs
  store float %i.vt, ptr %i.vn, align 4
  %i.vu = getelementptr inbounds [4 x i8], ptr %5, i64 %i.vd ; 2 uses
  %i.vv = load float, ptr %i.vu, align 4
  %i.vw = fmul float %i.uv, %i.vv
  %i.vx = getelementptr inbounds [4 x i8], ptr %5, i64 %i.vh ; 2 uses
  %i.vy = load float, ptr %i.vx, align 4
  %i.vz = fmul float %i.uy, %i.vy
  %i.wa = fsub float %i.vw, %i.vz
  %i.wb = add nuw nsw i64 %i.vm, %i.er            ; 2 uses
  %i.wc = getelementptr [4 x i8], ptr %3, i64 %i.wb ; 2 uses
  %i.wd = getelementptr i8, ptr %i.wc, i64 -4
  store float %i.wa, ptr %i.wd, align 4
  %i.we = load float, ptr %i.vu, align 4
  %i.wf = fmul float %i.uy, %i.we
  %i.wg = load float, ptr %i.vx, align 4
  %i.wh = fmul float %i.uv, %i.wg
  %i.wi = fadd float %i.wf, %i.wh
  store float %i.wi, ptr %i.wc, align 4
  %i.wj = getelementptr inbounds [4 x i8], ptr %6, i64 %i.vd ; 2 uses
  %i.wk = load float, ptr %i.wj, align 4
  %i.wl = fmul float %i.va, %i.wk
  %i.wm = getelementptr inbounds [4 x i8], ptr %6, i64 %i.vh ; 2 uses
  %i.wn = load float, ptr %i.wm, align 4
  %i.wo = fmul float %i.vc, %i.wn
  %i.wp = fsub float %i.wl, %i.wo
  %gep314 = getelementptr [4 x i8], ptr %invariant.gep313, i64 %i.wb ; 2 uses
  %i.wq = getelementptr i8, ptr %gep314, i64 -4
  store float %i.wp, ptr %i.wq, align 4
  %i.wr = load float, ptr %i.wj, align 4
  %i.ws = fmul float %i.vc, %i.wr
  %i.wt = load float, ptr %i.wm, align 4
  %i.wu = fmul float %i.va, %i.wt
  %i.wv = fadd float %i.ws, %i.wu
  store float %i.wv, ptr %gep314, align 4
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 2 ; 2 uses
  %i.ww = icmp samesign ult i64 %indvars.iv.next282, %i.eq
  br i1 %i.ww, label %scalar.ph782, label %._crit_edge247, !llvm.loop !1090

._crit_edge247:                                   ; preds = %scalar.ph782, %middle.block823
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, %i.eq
  %i.wx = add nuw nsw i32 %.1231248, 1            ; 2 uses
  %indvars.iv.next268 = add i32 %indvars.iv267, %i.b
  %indvars.iv.next272 = add i32 %indvars.iv271, %i.b
  %indvars.iv.next278 = add i32 %indvars.iv277, %i.b
  %exitcond295.not = icmp eq i32 %i.wx, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond295.not, label %._crit_edge251.split, label %.lr.ph246, !llvm.loop !1091

._crit_edge251.split:                             ; preds = %._crit_edge247, %.preheader
  %.not = trunc i32 %0 to i1
  %brmerge = or i1 %i.d, %.not
  br i1 %brmerge, label %.loopexit, label %.lr.ph257.preheader

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %.loopexit, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %._crit_edge251.split, %bb.c
  %i.wy = mul i32 %0, 3
  %i.wz = add nsw i32 %0, -1
  %i.xa = sext i32 %i.wy to i64
  %i.xb = sext i32 %i.b to i64                    ; 2 uses
  %i.xc = zext nneg i32 %i.wz to i64
  %i.xd = zext nneg i32 %0 to i64                 ; 2 uses
  %i.xe = zext nneg i32 %i.a to i64               ; 3 uses
  %invariant.gep315 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xe
  br label %.lr.ph257

.lr.ph257:                                        ; preds = %.lr.ph257.preheader, %.lr.ph257
  %indvars.iv300 = phi i64 [ %i.xd, %.lr.ph257.preheader ], [ %indvars.iv.next301, %.lr.ph257 ] ; 2 uses
  %indvars.iv298 = phi i64 [ %i.xc, %.lr.ph257.preheader ], [ %indvars.iv.next299, %.lr.ph257 ] ; 3 uses
  %indvars.iv296 = phi i64 [ %i.xa, %.lr.ph257.preheader ], [ %indvars.iv.next297, %.lr.ph257 ] ; 2 uses
  %.2232252 = phi i32 [ 0, %.lr.ph257.preheader ], [ %i.yc, %.lr.ph257 ]
  %i.xf = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv300 ; 2 uses
  %i.xg = load float, ptr %i.xf, align 4          ; 2 uses
  %i.xh = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv296 ; 2 uses
  %i.xi = load float, ptr %i.xh, align 4          ; 2 uses
  %i.xj = fadd float %i.xg, %i.xi                 ; 2 uses
  %i.xk = fsub float %i.xi, %i.xg                 ; 2 uses
  %i.xl = getelementptr i8, ptr %i.xf, i64 -4
  %i.xm = load float, ptr %i.xl, align 4          ; 2 uses
  %i.xn = getelementptr i8, ptr %i.xh, i64 -4
  %i.xo = load float, ptr %i.xn, align 4          ; 2 uses
  %i.xp = fsub float %i.xm, %i.xo                 ; 2 uses
  %i.xq = fadd float %i.xm, %i.xo                 ; 2 uses
  %i.xr = fadd float %i.xq, %i.xq
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv298
  store float %i.xr, ptr %i.xs, align 4
  %i.xt = fsub float %i.xp, %i.xj
  %i.xu = fmul float %i.xt, f0x3FB504F3
  %i.xv = add nuw nsw i64 %indvars.iv298, %i.xe   ; 2 uses
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xv
  store float %i.xu, ptr %i.xw, align 4
  %i.xx = fadd float %i.xk, %i.xk
  %i.xy = add nuw nsw i64 %i.xv, %i.xe            ; 2 uses
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xy
  store float %i.xx, ptr %i.xz, align 4
  %i.ya = fadd float %i.xj, %i.xp
  %i.yb = fmul float %i.ya, f0xBFB504F3
  %gep316 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep315, i64 %i.xy
  store float %i.yb, ptr %gep316, align 4
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, %i.xd
  %indvars.iv.next301 = add nsw i64 %indvars.iv300, %i.xb
  %indvars.iv.next297 = add nsw i64 %indvars.iv296, %i.xb
  %i.yc = add nuw nsw i32 %.2232252, 1            ; 2 uses
  %exitcond307.not = icmp eq i32 %i.yc, %1
  br i1 %exitcond307.not, label %.loopexit, label %.lr.ph257, !llvm.loop !1092

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
  br i1 %min.iters.check, label %.lr.ph.preheader367, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %ident.check = icmp ne i32 %0, 1
  %i.h = shl nuw i32 %1, 1
  %mul.result = add i32 %i.h, -2
  %i.i = icmp slt i32 %mul.result, 0
  %i.j = or i1 %ident.check, %i.i
  br i1 %i.j, label %.lr.ph.preheader367, label %vector.memcheck

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
  br i1 %conflict.rdx, label %.lr.ph.preheader367, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.y = and i64 %i.g, 3                          ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 4, i64 %i.y
  %n.vec = sub nsw i64 %i.g, %i.aa                ; 3 uses
  %i.ab = trunc i64 %n.vec to i32                 ; 2 uses
  %i.ac = shl i32 %i.ab, 1
  %invariant.op = or disjoint i32 2, %i.c
  %invariant.op369 = or disjoint i32 4, %i.c
  %invariant.op371 = or disjoint i32 6, %i.c
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ad = trunc i64 %index to i32
  %i.ae = shl i32 %i.ad, 1                        ; 5 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %2, i64 %i.af ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.ag, align 4, !alias.scope !1123
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ah = or disjoint i32 %i.c, %i.ae
  %.reass = or disjoint i32 %i.ae, %invariant.op
  %.reass370 = or disjoint i32 %i.ae, %invariant.op369
  %.reass372 = or disjoint i32 %i.ae, %invariant.op371
  %5 = sext i32 %i.ah to i64
  %6 = sext i32 %.reass to i64
  %i.ai = sext i32 %.reass370 to i64
  %7 = sext i32 %.reass372 to i64
  %8 = getelementptr inbounds [4 x i8], ptr %2, i64 %5 ; 2 uses
  %9 = getelementptr inbounds [4 x i8], ptr %2, i64 %6 ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ai ; 2 uses
  %10 = getelementptr inbounds [4 x i8], ptr %2, i64 %7 ; 2 uses
  %i.ak = load float, ptr %8, align 4, !alias.scope !1123
  %i.al = load float, ptr %9, align 4, !alias.scope !1123
  %i.am = load float, ptr %i.aj, align 4, !alias.scope !1123
  %i.an = load float, ptr %10, align 4, !alias.scope !1123
  %i.ao = insertelement <4 x float> poison, float %i.ak, i64 0
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 1
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 2
  %i.ar = insertelement <4 x float> %i.aq, float %i.an, i64 3
  %i.as = fadd <4 x float> %strided.vec, %i.ar
  %i.at = getelementptr inbounds [4 x i8], ptr %3, i64 %index
  store <4 x float> %i.as, ptr %i.at, align 4, !alias.scope !1124, !noalias !1123
  %wide.vec189 = load <8 x float>, ptr %i.ag, align 4, !alias.scope !1123
  %strided.vec190 = shufflevector <8 x float> %wide.vec189, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.au = load float, ptr %8, align 4, !alias.scope !1123
  %i.av = load float, ptr %9, align 4, !alias.scope !1123
  %i.aw = load float, ptr %i.aj, align 4, !alias.scope !1123
  %i.ax = load float, ptr %10, align 4, !alias.scope !1123
  %i.ay = insertelement <4 x float> poison, float %i.au, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 3
  %i.bc = fsub <4 x float> %strided.vec190, %i.bb
  %i.bd = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  store <4 x float> %i.bc, ptr %i.bd, align 4, !alias.scope !1125, !noalias !1123
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %.lr.ph.preheader367, label %vector.body, !llvm.loop !1113

.lr.ph.preheader367:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.0103115.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.ac, %vector.body ]
  %.0107113.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.ab, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader367, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader367 ] ; 3 uses
  %.0103115 = phi i32 [ %i.bs, %.lr.ph ], [ %.0103115.ph, %.lr.ph.preheader367 ] ; 2 uses
  %.0107113 = phi i32 [ %i.bt, %.lr.ph ], [ %.0107113.ph, %.lr.ph.preheader367 ]
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1114

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
  %scevgep = getelementptr i8, ptr %3, i64 4      ; 6 uses
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
  %scevgep194 = getelementptr i8, ptr %i.cg, i64 8 ; 6 uses
  %scevgep195 = getelementptr i8, ptr %3, i64 8   ; 6 uses
  %i.ch = getelementptr i8, ptr %3, i64 %i.cf
  %scevgep196 = getelementptr i8, ptr %i.ch, i64 12 ; 6 uses
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
  %i.cl = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 4)
  %i.cm = add nsw i64 %i.cl, -3                   ; 2 uses
  %i.cn = lshr i64 %i.cm, 1
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check286 = icmp ult i64 %i.cm, 22
  %bound0214 = icmp ult ptr %scevgep, %scevgep196
  %bound1215 = icmp ult ptr %scevgep195, %scevgep194
  %found.conflict216 = and i1 %bound0214, %bound1215
  %bound0233 = icmp ult ptr %scevgep, %scevgep213
  %bound1234 = icmp ult ptr %4, %scevgep194
  %found.conflict235 = and i1 %bound0233, %bound1234
  %bound0253 = icmp ult ptr %scevgep195, %scevgep213
  %bound1254 = icmp ult ptr %4, %scevgep196
  %found.conflict255 = and i1 %bound0253, %bound1254
  %n.vec288 = and i64 %i.co, 9223372036854775804  ; 4 uses
  %i.cp = shl nuw i64 %n.vec288, 1                ; 4 uses
  %i.cq = or disjoint i64 %i.cp, 2
  %i.cr = shl nuw i64 %n.vec288, 1
  %cmp.n = icmp eq i64 %i.co, %n.vec288
  br label %.lr.ph122

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %._crit_edge123
  %indvars.iv149 = phi i64 [ 0, %.lr.ph122.preheader ], [ %indvars.iv.next150, %._crit_edge123 ] ; 5 uses
  %indvars.iv145 = phi i32 [ 0, %.lr.ph122.preheader ], [ %indvars.iv.next146, %._crit_edge123 ] ; 3 uses
  %indvars.iv141 = phi i32 [ %i.b, %.lr.ph122.preheader ], [ %indvars.iv.next142, %._crit_edge123 ] ; 3 uses
  %indvars.iv137 = phi i32 [ %i.a, %.lr.ph122.preheader ], [ %indvars.iv.next138, %._crit_edge123 ] ; 3 uses
  %.1108124 = phi i32 [ 0, %.lr.ph122.preheader ], [ %i.fn, %._crit_edge123 ]
  %i.cs = zext i32 %indvars.iv137 to i64          ; 4 uses
  %i.ct = sext i32 %indvars.iv141 to i64          ; 4 uses
  %i.cu = sext i32 %indvars.iv145 to i64          ; 4 uses
  br i1 %min.iters.check286, label %scalar.ph285.preheader, label %vector.memcheck193

vector.memcheck193:                               ; preds = %.lr.ph122
  %i.cv = sext i32 %indvars.iv145 to i64
  %i.cw = shl nsw i64 %i.cv, 2                    ; 2 uses
  %scevgep212 = getelementptr i8, ptr %scevgep211, i64 %i.cw ; 4 uses
  %scevgep210 = getelementptr i8, ptr %scevgep209, i64 %i.cw ; 4 uses
  %i.cx = sext i32 %indvars.iv141 to i64
  %i.cy = shl nsw i64 %i.cx, 2                    ; 2 uses
  %scevgep208 = getelementptr i8, ptr %scevgep207, i64 %i.cy ; 4 uses
  %scevgep206 = getelementptr i8, ptr %scevgep205, i64 %i.cy ; 4 uses
  %i.cz = zext i32 %indvars.iv137 to i64
  %i.da = shl nuw nsw i64 %i.cz, 2                ; 4 uses
  %scevgep204 = getelementptr i8, ptr %scevgep203, i64 %i.da ; 6 uses
  %scevgep202 = getelementptr i8, ptr %scevgep201, i64 %i.da ; 6 uses
  %scevgep200 = getelementptr i8, ptr %scevgep199, i64 %i.da ; 6 uses
  %scevgep198 = getelementptr i8, ptr %scevgep197, i64 %i.da ; 6 uses
  %bound0217 = icmp ult ptr %scevgep, %scevgep200
  %bound1218 = icmp ult ptr %scevgep198, %scevgep194
  %found.conflict219 = and i1 %bound0217, %bound1218
  %conflict.rdx220 = or i1 %found.conflict216, %found.conflict219
  %bound0221 = icmp ult ptr %scevgep, %scevgep204
  %bound1222 = icmp ult ptr %scevgep202, %scevgep194
  %found.conflict223 = and i1 %bound0221, %bound1222
  %conflict.rdx224 = or i1 %conflict.rdx220, %found.conflict223
  %bound0225 = icmp ult ptr %scevgep, %scevgep208
  %bound1226 = icmp ult ptr %scevgep206, %scevgep194
  %found.conflict227 = and i1 %bound0225, %bound1226
  %conflict.rdx228 = or i1 %conflict.rdx224, %found.conflict227
  %bound0229 = icmp ult ptr %scevgep, %scevgep212
  %bound1230 = icmp ult ptr %scevgep210, %scevgep194
  %found.conflict231 = and i1 %bound0229, %bound1230
  %conflict.rdx232 = or i1 %conflict.rdx228, %found.conflict231
  %conflict.rdx236 = or i1 %conflict.rdx232, %found.conflict235
  %bound0237 = icmp ult ptr %scevgep195, %scevgep200
  %bound1238 = icmp ult ptr %scevgep198, %scevgep196
  %found.conflict239 = and i1 %bound0237, %bound1238
  %conflict.rdx240 = or i1 %conflict.rdx236, %found.conflict239
  %bound0241 = icmp ult ptr %scevgep195, %scevgep204
  %bound1242 = icmp ult ptr %scevgep202, %scevgep196
  %found.conflict243 = and i1 %bound0241, %bound1242
  %conflict.rdx244 = or i1 %conflict.rdx240, %found.conflict243
  %bound0245 = icmp ult ptr %scevgep195, %scevgep208
  %bound1246 = icmp ult ptr %scevgep206, %scevgep196
  %found.conflict247 = and i1 %bound0245, %bound1246
  %conflict.rdx248 = or i1 %conflict.rdx244, %found.conflict247
  %bound0249 = icmp ult ptr %scevgep195, %scevgep212
  %bound1250 = icmp ult ptr %scevgep210, %scevgep196
  %found.conflict251 = and i1 %bound0249, %bound1250
  %conflict.rdx252 = or i1 %conflict.rdx248, %found.conflict251
  %conflict.rdx256 = or i1 %conflict.rdx252, %found.conflict255
  %bound0257 = icmp ult ptr %scevgep198, %scevgep204
  %bound1258 = icmp ult ptr %scevgep202, %scevgep200
  %found.conflict259 = and i1 %bound0257, %bound1258
  %conflict.rdx260 = or i1 %conflict.rdx256, %found.conflict259
  %bound0261 = icmp ult ptr %scevgep198, %scevgep208
  %bound1262 = icmp ult ptr %scevgep206, %scevgep200
  %found.conflict263 = and i1 %bound0261, %bound1262
  %conflict.rdx264 = or i1 %conflict.rdx260, %found.conflict263
  %bound0265 = icmp ult ptr %scevgep198, %scevgep212
  %bound1266 = icmp ult ptr %scevgep210, %scevgep200
  %found.conflict267 = and i1 %bound0265, %bound1266
  %conflict.rdx268 = or i1 %conflict.rdx264, %found.conflict267
  %bound0269 = icmp ult ptr %scevgep198, %scevgep213
  %bound1270 = icmp ult ptr %4, %scevgep200
  %found.conflict271 = and i1 %bound0269, %bound1270
  %conflict.rdx272 = or i1 %conflict.rdx268, %found.conflict271
  %bound0273 = icmp ult ptr %scevgep202, %scevgep208
  %bound1274 = icmp ult ptr %scevgep206, %scevgep204
  %found.conflict275 = and i1 %bound0273, %bound1274
  %conflict.rdx276 = or i1 %conflict.rdx272, %found.conflict275
  %bound0277 = icmp ult ptr %scevgep202, %scevgep212
  %bound1278 = icmp ult ptr %scevgep210, %scevgep204
  %found.conflict279 = and i1 %bound0277, %bound1278
  %conflict.rdx280 = or i1 %conflict.rdx276, %found.conflict279
  %bound0281 = icmp ult ptr %scevgep202, %scevgep213
  %bound1282 = icmp ult ptr %4, %scevgep204
  %found.conflict283 = and i1 %bound0281, %bound1282
  %conflict.rdx284 = or i1 %conflict.rdx280, %found.conflict283
  br i1 %conflict.rdx284, label %scalar.ph285.preheader, label %vector.ph287

vector.ph287:                                     ; preds = %vector.memcheck193
  %i.db = add i64 %indvars.iv149, %i.cp
  %i.dc = add i64 %i.cp, %i.cu
  %i.dd = sub i64 %i.ct, %i.cr
  %i.de = add i64 %i.cp, %i.cs
end_hunk_0
