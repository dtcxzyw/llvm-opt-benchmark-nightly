Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 194
begin_hunk_0_@bark_noise_hybridmp:bb.a
  %i.ef = fmul float %i.do, %i.ed
  %i.eg = fsub float %i.ee, %i.ef                 ; 2 uses
  %i.eh = fmul float %i.dj, %i.ed
  %i.ei = fmul float %i.do, %i.dy
  %i.ej = fsub float %i.eh, %i.ei                 ; 2 uses
  %i.ek = fmul float %i.dj, %i.dt
  %i.el = fmul float %i.do, %i.do
  %i.em = fsub float %i.ek, %i.el                 ; 2 uses
  %i.en = fmul float %.2356, %i.ej
  %i.eo = fadd float %i.eg, %i.en
  %i.ep = fdiv float %i.eo, %i.em                 ; 2 uses
  %i.eq = fcmp olt float %i.ep, 0.000000e+00
  %spec.store.select3 = select i1 %i.eq, float 0.000000e+00, float %i.ep
  %i.er = fsub float %spec.store.select3, %4
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv410
  store float %i.er, ptr %i.es, align 4
  %indvars.iv.next411 = add nuw nsw i64 %indvars.iv410, 1 ; 3 uses
  %i.et = fadd float %.2356, 1.000000e+00         ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next411
  %i.ev = load i64, ptr %i.eu, align 8            ; 2 uses
  %i.ew = trunc i64 %i.ev to i32
  %i.ex = and i32 %i.ew, 65535
  %.not = icmp samesign ult i32 %i.ex, %0
  br i1 %.not, label %.lr.ph357, label %.preheader337.loopexit

.lr.ph365:                                        ; preds = %.lr.ph365.prol.loopexit, %.lr.ph365
  %indvars.iv413 = phi i64 [ %indvars.iv.next414.1, %.lr.ph365 ], [ %indvars.iv413.unr, %.lr.ph365.prol.loopexit ] ; 3 uses
  %.3364 = phi float [ %i.fm, %.lr.ph365 ], [ %.3364.unr, %.lr.ph365.prol.loopexit ] ; 2 uses
  %i.ey = fmul float %.1306.lcssa, %.3364
  %i.ez = fadd float %.1310.lcssa, %i.ey
  %i.fa = fdiv float %i.ez, %.1302.lcssa          ; 2 uses
  %i.fb = fcmp olt float %i.fa, 0.000000e+00
  %spec.store.select4 = select i1 %i.fb, float 0.000000e+00, float %i.fa
  %i.fc = fsub float %spec.store.select4, %4
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv413
  store float %i.fc, ptr %i.fd, align 4
  %i.fe = fadd float %.3364, 1.000000e+00         ; 2 uses
  %i.ff = fmul float %.1306.lcssa, %i.fe
  %i.fg = fadd float %.1310.lcssa, %i.ff
  %i.fh = fdiv float %i.fg, %.1302.lcssa          ; 2 uses
  %i.fi = fcmp olt float %i.fh, 0.000000e+00
  %spec.store.select4.1 = select i1 %i.fi, float 0.000000e+00, float %i.fh
  %i.fj = fsub float %spec.store.select4.1, %4
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv413
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  store float %i.fj, ptr %i.fl, align 4
  %indvars.iv.next414.1 = add nuw nsw i64 %indvars.iv413, 2 ; 2 uses
  %i.fm = fadd float %i.fe, 1.000000e+00
  %i.fn = trunc nuw i64 %indvars.iv.next414.1 to i32
  %i.fo = icmp sgt i32 %0, %i.fn
  br i1 %i.fo, label %.lr.ph365, label %._crit_edge, !llvm.loop !582

._crit_edge:                                      ; preds = %.lr.ph365.prol.loopexit, %.lr.ph365, %.preheader337
  %i.fp = icmp slt i32 %5, 1
  br i1 %i.fp, label %.loopexit, label %.preheader336

.preheader336:                                    ; preds = %._crit_edge
  %i.fq = lshr i32 %5, 1                          ; 5 uses
  %i.fr = sub nsw i32 %i.fq, %5                   ; 2 uses
  %i.fs = icmp sgt i32 %i.fr, -1
  br i1 %i.fs, label %.preheader335, label %.lr.ph368.preheader

.lr.ph368.preheader:                              ; preds = %.preheader336
  %i.ft = zext i32 %i.fr to i64
  %i.fu = zext nneg i32 %i.fq to i64
  %i.fv = sub nsw i32 %5, %i.fq                   ; 2 uses
  %wide.trip.count423 = zext i32 %i.fv to i64
  br label %.lr.ph368

.preheader335:                                    ; preds = %bb.c, %.preheader336
  %.4317.lcssa = phi i32 [ 0, %.preheader336 ], [ %i.fv, %bb.c ] ; 3 uses
  %.2311.lcssa = phi float [ %.1310.lcssa, %.preheader336 ], [ %i.hh, %bb.c ]
  %.2307.lcssa = phi float [ %.1306.lcssa, %.preheader336 ], [ %i.hk, %bb.c ]
  %.2303.lcssa = phi float [ %.1302.lcssa, %.preheader336 ], [ %i.hn, %bb.c ]
  %.4.lcssa = phi float [ 0.000000e+00, %.preheader336 ], [ %i.hv, %bb.c ] ; 2 uses
  %i.fw = add nuw nsw i32 %.4317.lcssa, %i.fq
  %.not334375 = icmp slt i32 %i.fw, %0
  br i1 %.not334375, label %.lr.ph378.preheader, label %.preheader

.lr.ph378.preheader:                              ; preds = %.preheader335
  %i.fx = lshr i32 %5, 1
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = zext nneg i32 %.4317.lcssa to i64       ; 2 uses
  %i.ga = add nuw nsw i64 %i.fy, %i.fz
  %i.gb = zext nneg i32 %5 to i64
  %i.gc = zext nneg i32 %i.fq to i64
  %invariant.op = sub nsw i64 %i.a, %i.gc
  br label %.lr.ph378

.lr.ph368:                                        ; preds = %.lr.ph368.preheader, %bb.c
  %indvars.iv418 = phi i64 [ 0, %.lr.ph368.preheader ], [ %indvars.iv.next419, %bb.c ] ; 3 uses
  %indvars.iv416 = phi i64 [ %i.ft, %.lr.ph368.preheader ], [ %indvars.iv.next417, %bb.c ] ; 2 uses
  %.4367 = phi float [ 0.000000e+00, %.lr.ph368.preheader ], [ %i.hv, %bb.c ] ; 2 uses
  %i.gd = add nuw nsw i64 %indvars.iv418, %i.fu   ; 5 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gd
  %i.gf = load float, ptr %i.ge, align 4
  %i.gg = sub nsw i64 0, %indvars.iv416
  %i.gh = and i64 %i.gg, 4294967295               ; 5 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gh
  %i.gj = load float, ptr %i.gi, align 4
  %i.gk = fadd float %i.gf, %i.gj                 ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.gd
  %i.gm = load float, ptr %i.gl, align 4
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.gh
  %i.go = load float, ptr %i.gn, align 4
  %i.gp = fsub float %i.gm, %i.go                 ; 4 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.gd
  %i.gr = load float, ptr %i.gq, align 4
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.gh
  %i.gt = load float, ptr %i.gs, align 4
  %i.gu = fadd float %i.gr, %i.gt                 ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gd
  %i.gw = load float, ptr %i.gv, align 4
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gh
  %i.gy = load float, ptr %i.gx, align 4
  %i.gz = fadd float %i.gw, %i.gy                 ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.gd
  %i.hb = load float, ptr %i.ha, align 4
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.gh
  %i.hd = load float, ptr %i.hc, align 4
  %i.he = fsub float %i.hb, %i.hd                 ; 2 uses
  %i.hf = fmul float %i.gu, %i.gz
  %i.hg = fmul float %i.gp, %i.he
  %i.hh = fsub float %i.hf, %i.hg                 ; 2 uses
  %i.hi = fmul float %i.gk, %i.he
  %i.hj = fmul float %i.gp, %i.gz
  %i.hk = fsub float %i.hi, %i.hj                 ; 2 uses
  %i.hl = fmul float %i.gk, %i.gu
  %i.hm = fmul float %i.gp, %i.gp
  %i.hn = fsub float %i.hl, %i.hm                 ; 2 uses
  %i.ho = fmul float %.4367, %i.hk
  %i.hp = fadd float %i.hh, %i.ho
  %i.hq = fdiv float %i.hp, %i.hn
  %i.hr = fsub float %i.hq, %4                    ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv418 ; 2 uses
  %i.ht = load float, ptr %i.hs, align 4
  %i.hu = fcmp olt float %i.hr, %i.ht
  br i1 %i.hu, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph368
  store float %i.hr, ptr %i.hs, align 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph368, %bb.b
  %indvars.iv.next419 = add nuw nsw i64 %indvars.iv418, 1 ; 2 uses
  %i.hv = fadd float %.4367, 1.000000e+00         ; 2 uses
  %indvars.iv.next417 = add nuw nsw i64 %indvars.iv416, 1
  %exitcond424 = icmp eq i64 %indvars.iv.next419, %wide.trip.count423
  br i1 %exitcond424, label %.preheader335, label %.lr.ph368

.preheader.loopexit:                              ; preds = %bb.f
  %i.hw = trunc nsw i64 %indvars.iv.next428 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader335
  %.5318.lcssa = phi i32 [ %.4317.lcssa, %.preheader335 ], [ %i.hw, %.preheader.loopexit ] ; 4 uses
  %.3312.lcssa = phi float [ %.2311.lcssa, %.preheader335 ], [ %i.jl, %.preheader.loopexit ] ; 3 uses
  %.3308.lcssa = phi float [ %.2307.lcssa, %.preheader335 ], [ %i.jo, %.preheader.loopexit ] ; 3 uses
  %.3304.lcssa = phi float [ %.2303.lcssa, %.preheader335 ], [ %i.jr, %.preheader.loopexit ] ; 3 uses
  %.5.lcssa = phi float [ %.4.lcssa, %.preheader335 ], [ %i.jz, %.preheader.loopexit ] ; 3 uses
  %i.hx = icmp slt i32 %.5318.lcssa, %0
  br i1 %i.hx, label %.lr.ph386.preheader, label %.loopexit

.lr.ph386.preheader:                              ; preds = %.preheader
  %i.hy = zext i32 %.5318.lcssa to i64            ; 3 uses
  %i.hz = sub i32 %0, %.5318.lcssa
  %.neg488 = add i32 %.5318.lcssa, 1
  %xtraiter486 = and i32 %i.hz, 1
  %lcmp.mod487.not = icmp eq i32 %xtraiter486, 0
  br i1 %lcmp.mod487.not, label %.lr.ph386.prol.loopexit, label %.lr.ph386.prol

.lr.ph386.prol:                                   ; preds = %.lr.ph386.preheader
  %i.ia = fmul float %.3308.lcssa, %.5.lcssa
  %i.ib = fadd float %.3312.lcssa, %i.ia
  %i.ic = fdiv float %i.ib, %.3304.lcssa
  %i.id = fsub float %i.ic, %4                    ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.hy ; 2 uses
  %i.if = load float, ptr %i.ie, align 4
  %i.ig = fcmp olt float %i.id, %i.if
  br i1 %i.ig, label %bb.d, label %.lr.ph386.prol.loopexit.unr-lcssa

bb.d:                                             ; preds = %.lr.ph386.prol
  store float %i.id, ptr %i.ie, align 4
  br label %.lr.ph386.prol.loopexit.unr-lcssa

.lr.ph386.prol.loopexit.unr-lcssa:                ; preds = %bb.d, %.lr.ph386.prol
  %indvars.iv.next431.prol = add nuw nsw i64 %i.hy, 1
  %i.ih = fadd float %.5.lcssa, 1.000000e+00
  br label %.lr.ph386.prol.loopexit

.lr.ph386.prol.loopexit:                          ; preds = %.lr.ph386.prol.loopexit.unr-lcssa, %.lr.ph386.preheader
  %indvars.iv430.unr = phi i64 [ %i.hy, %.lr.ph386.preheader ], [ %indvars.iv.next431.prol, %.lr.ph386.prol.loopexit.unr-lcssa ]
  %.6385.unr = phi float [ %.5.lcssa, %.lr.ph386.preheader ], [ %i.ih, %.lr.ph386.prol.loopexit.unr-lcssa ]
  %i.ii = icmp eq i32 %0, %.neg488
  br i1 %i.ii, label %.loopexit, label %.lr.ph386

.lr.ph378:                                        ; preds = %.lr.ph378.preheader, %bb.f
  %indvars.iv427 = phi i64 [ %i.fz, %.lr.ph378.preheader ], [ %indvars.iv.next428, %bb.f ] ; 2 uses
  %indvars.iv425 = phi i64 [ %i.ga, %.lr.ph378.preheader ], [ %indvars.iv.next426, %bb.f ] ; 7 uses
  %.5377 = phi float [ %.4.lcssa, %.lr.ph378.preheader ], [ %i.jz, %bb.f ] ; 2 uses
  %i.ij = sub nsw i64 %indvars.iv425, %i.gb       ; 5 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv425
  %i.il = load float, ptr %i.ik, align 4
  %i.im = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ij
  %i.in = load float, ptr %i.im, align 4
  %i.io = fsub float %i.il, %i.in                 ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv425
  %i.iq = load float, ptr %i.ip, align 4
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ij
  %i.is = load float, ptr %i.ir, align 4
  %i.it = fsub float %i.iq, %i.is                 ; 4 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv425
  %i.iv = load float, ptr %i.iu, align 4
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ij
  %i.ix = load float, ptr %i.iw, align 4
  %i.iy = fsub float %i.iv, %i.ix                 ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv425
  %i.ja = load float, ptr %i.iz, align 4
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ij
  %i.jc = load float, ptr %i.jb, align 4
  %i.jd = fsub float %i.ja, %i.jc                 ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv425
  %i.jf = load float, ptr %i.je, align 4
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ij
  %i.jh = load float, ptr %i.jg, align 4
  %i.ji = fsub float %i.jf, %i.jh                 ; 2 uses
  %i.jj = fmul float %i.iy, %i.jd
  %i.jk = fmul float %i.it, %i.ji
  %i.jl = fsub float %i.jj, %i.jk                 ; 2 uses
  %i.jm = fmul float %i.io, %i.ji
  %i.jn = fmul float %i.it, %i.jd
  %i.jo = fsub float %i.jm, %i.jn                 ; 2 uses
  %i.jp = fmul float %i.io, %i.iy
  %i.jq = fmul float %i.it, %i.it
  %i.jr = fsub float %i.jp, %i.jq                 ; 2 uses
  %i.js = fmul float %.5377, %i.jo
  %i.jt = fadd float %i.jl, %i.js
  %i.ju = fdiv float %i.jt, %i.jr
  %i.jv = fsub float %i.ju, %4                    ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv427 ; 2 uses
  %i.jx = load float, ptr %i.jw, align 4
  %i.jy = fcmp olt float %i.jv, %i.jx
  br i1 %i.jy, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph378
  store float %i.jv, ptr %i.jw, align 4
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph378, %bb.e
  %indvars.iv.next428 = add nuw nsw i64 %indvars.iv427, 1 ; 3 uses
  %i.jz = fadd float %.5377, 1.000000e+00         ; 2 uses
  %.not334 = icmp slt i64 %indvars.iv.next428, %invariant.op
  %indvars.iv.next426 = add nuw nsw i64 %indvars.iv425, 1
  br i1 %.not334, label %.lr.ph378, label %.preheader.loopexit

.lr.ph386:                                        ; preds = %.lr.ph386.prol.loopexit, %bb.i
  %indvars.iv430 = phi i64 [ %indvars.iv.next431.1, %bb.i ], [ %indvars.iv430.unr, %.lr.ph386.prol.loopexit ] ; 3 uses
  %.6385 = phi float [ %i.kq, %bb.i ], [ %.6385.unr, %.lr.ph386.prol.loopexit ] ; 2 uses
  %i.ka = fmul float %.3308.lcssa, %.6385
  %i.kb = fadd float %.3312.lcssa, %i.ka
  %i.kc = fdiv float %i.kb, %.3304.lcssa
  %i.kd = fsub float %i.kc, %4                    ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv430 ; 2 uses
  %i.kf = load float, ptr %i.ke, align 4
  %i.kg = fcmp olt float %i.kd, %i.kf
  br i1 %i.kg, label %bb.g, label %.lr.ph386.1

bb.g:                                             ; preds = %.lr.ph386
  store float %i.kd, ptr %i.ke, align 4
  br label %.lr.ph386.1

.lr.ph386.1:                                      ; preds = %.lr.ph386, %bb.g
  %i.kh = fadd float %.6385, 1.000000e+00         ; 2 uses
  %i.ki = fmul float %.3308.lcssa, %i.kh
  %i.kj = fadd float %.3312.lcssa, %i.ki
  %i.kk = fdiv float %i.kj, %.3304.lcssa
  %i.kl = fsub float %i.kk, %4                    ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv430
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 4 ; 2 uses
  %i.ko = load float, ptr %i.kn, align 4
  %i.kp = fcmp olt float %i.kl, %i.ko
  br i1 %i.kp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph386.1
  store float %i.kl, ptr %i.kn, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph386.1
  %indvars.iv.next431.1 = add nuw nsw i64 %indvars.iv430, 2 ; 2 uses
  %i.kq = fadd float %i.kh, 1.000000e+00
  %i.kr = trunc nuw i64 %indvars.iv.next431.1 to i32
  %i.ks = icmp sgt i32 %0, %i.kr
  br i1 %i.ks, label %.lr.ph386, label %.loopexit, !llvm.loop !583

.loopexit:                                        ; preds = %.lr.ph386.prol.loopexit, %bb.i, %.preheader, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_vp_tonemask(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, float noundef %3, float noundef %4) local_unnamed_addr #32 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4              ; 4 uses
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 2
  %i.f = alloca i8, i64 %i.e, align 16            ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load float, ptr %i.i, align 4
  %i.k = fadd float %4, %i.j                      ; 2 uses
  %i.l = icmp sgt i32 %i.c, 0
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.c, 8
  br i1 %min.iters.check, label %.lr.ph.preheader99, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <4 x float> splat (float -9.999000e+03), ptr %i.m, align 16
  store <4 x float> splat (float -9.999000e+03), ptr %i.n, align 16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !584

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader99

.lr.ph.preheader99:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader99, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader99 ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store float -9.999000e+03, ptr %i.p, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !585

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.r = load float, ptr %i.q, align 8            ; 2 uses
  %i.s = fcmp olt float %i.k, %i.r
  %.0 = select i1 %i.s, float %i.r, float %i.k    ; 5 uses
  %i.t = icmp sgt i32 %i.a, 0
  br i1 %i.t, label %.lr.ph36, label %._crit_edge37.thread

._crit_edge37.thread:                             ; preds = %._crit_edge
  %i.u = sext i32 %i.a to i64
  br label %seed_loop.exit

.lr.ph36:                                         ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %wide.trip.count54 = zext nneg i32 %i.a to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count54, 3       ; 3 uses
  %i.w = icmp ult i32 %i.a, 4
  br i1 %i.w, label %.epil.preheader, label %.lr.ph36.new

.lr.ph36.new:                                     ; preds = %.lr.ph36
  %unroll_iter = and i64 %wide.trip.count54, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph36.new
  %indvars.iv51 = phi i64 [ 0, %.lr.ph36.new ], [ %indvars.iv.next52.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph36.new ], [ %niter.next.3, %bb.b ]
  %i.x = load ptr, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv51
  %i.z = load float, ptr %i.y, align 4
  %i.aa = fadd float %.0, %i.z
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv51
  store float %i.aa, ptr %i.ab, align 4
  %indvars.iv.next52 = or disjoint i64 %indvars.iv51, 1 ; 2 uses
  %i.ac = load ptr, ptr %i.v, align 8
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next52
  %i.ae = load float, ptr %i.ad, align 4
  %i.af = fadd float %.0, %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next52
  store float %i.af, ptr %i.ag, align 4
  %indvars.iv.next52.1 = or disjoint i64 %indvars.iv51, 2 ; 2 uses
  %i.ah = load ptr, ptr %i.v, align 8
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next52.1
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = fadd float %.0, %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next52.1
  store float %i.ak, ptr %i.al, align 4
  %indvars.iv.next52.2 = or disjoint i64 %indvars.iv51, 3 ; 2 uses
  %i.am = load ptr, ptr %i.v, align 8
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next52.2
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = fadd float %.0, %i.ao
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next52.2
  store float %i.ap, ptr %i.aq, align 4
  %indvars.iv.next52.3 = add nuw nsw i64 %indvars.iv51, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge37.unr-lcssa, label %bb.b, !llvm.loop !586

._crit_edge37.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge37, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge37.unr-lcssa, %.lr.ph36
  %indvars.iv51.epil.init = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next52.3, %._crit_edge37.unr-lcssa ]
  %lcmp.mod100 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod100)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv51.epil = phi i64 [ %indvars.iv51.epil.init, %.epil.preheader ], [ %indvars.iv.next52.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ar = load ptr, ptr %i.v, align 8
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv51.epil
  %i.at = load float, ptr %i.as, align 4
end_hunk_0
