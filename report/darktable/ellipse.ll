Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/ellipse?download=true
inline.NumInlined: 96
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ellipse_get_distance:bb.a
  %.promoted73 = load float, ptr %10, align 4, !tbaa !26
  %i.fy = load float, ptr %i.g, align 4, !tbaa !26
  %i.fz = fsub reassoc nsz arcp contract afn float %0, %i.fy ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !26
  %i.gc = fsub reassoc nsz arcp contract afn float %1, %i.gb ; 2 uses
  %i.gd = fmul reassoc nsz arcp contract afn float %i.fz, %i.fz
  %i.ge = fmul reassoc nsz arcp contract afn float %i.gc, %i.gc
  %i.gf = fadd reassoc nsz arcp contract afn float %i.ge, %i.gd
  %i.gg = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.promoted73, float %i.gf) ; 2 uses
  store float %i.gg, ptr %10, align 4, !tbaa !26
  %i.gh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !26
  %i.gj = fsub reassoc nsz arcp contract afn float %0, %i.gi ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !26
  %i.gm = fsub reassoc nsz arcp contract afn float %1, %i.gl ; 2 uses
  %i.gn = fmul reassoc nsz arcp contract afn float %i.gj, %i.gj
  %i.go = fmul reassoc nsz arcp contract afn float %i.gm, %i.gm
  %i.gp = fadd reassoc nsz arcp contract afn float %i.go, %i.gn
  %i.gq = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gg, float %i.gp) ; 2 uses
  store float %i.gq, ptr %10, align 4, !tbaa !26
  %i.gr = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !26
  %i.gt = fsub reassoc nsz arcp contract afn float %0, %i.gs ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !26
  %i.gw = fsub reassoc nsz arcp contract afn float %1, %i.gv ; 2 uses
  %i.gx = fmul reassoc nsz arcp contract afn float %i.gt, %i.gt
  %i.gy = fmul reassoc nsz arcp contract afn float %i.gw, %i.gw
  %i.gz = fadd reassoc nsz arcp contract afn float %i.gy, %i.gx
  %i.ha = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gq, float %i.gz) ; 2 uses
  store float %i.ha, ptr %10, align 4, !tbaa !26
  %i.hb = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !26
  %i.hd = fsub reassoc nsz arcp contract afn float %0, %i.hc ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.hf = load float, ptr %i.he, align 4, !tbaa !26
  %i.hg = fsub reassoc nsz arcp contract afn float %1, %i.hf ; 2 uses
  %i.hh = fmul reassoc nsz arcp contract afn float %i.hd, %i.hd
  %i.hi = fmul reassoc nsz arcp contract afn float %i.hg, %i.hg
  %i.hj = fadd reassoc nsz arcp contract afn float %i.hi, %i.hh
  %i.hk = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ha, float %i.hj) ; 2 uses
  store float %i.hk, ptr %10, align 4, !tbaa !26
  %i.hl = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !26
  %i.hn = fsub reassoc nsz arcp contract afn float %0, %i.hm ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !26
  %i.hq = fsub reassoc nsz arcp contract afn float %1, %i.hp ; 2 uses
  %i.hr = fmul reassoc nsz arcp contract afn float %i.hn, %i.hn
  %i.hs = fmul reassoc nsz arcp contract afn float %i.hq, %i.hq
  %i.ht = fadd reassoc nsz arcp contract afn float %i.hs, %i.hr
  %i.hu = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.hk, float %i.ht)
  store float %i.hu, ptr %10, align 4, !tbaa !26
  br label %.loopexit

bb.s:                                             ; preds = %_ellipse_point_in_polygon.exit, %bb.c
  %i.hv = load ptr, ptr %i.b, align 8, !tbaa !41  ; 10 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !42 ; 10 uses
  %.promoted = load float, ptr %10, align 4, !tbaa !26
  %i.hy = load float, ptr %i.hv, align 4, !tbaa !26
  %i.hz = fsub reassoc nsz arcp contract afn float %0, %i.hy ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !26
  %i.ic = fsub reassoc nsz arcp contract afn float %1, %i.ib ; 2 uses
  %i.id = fmul reassoc nsz arcp contract afn float %i.hz, %i.hz
  %i.ie = fmul reassoc nsz arcp contract afn float %i.ic, %i.ic
  %i.if = fadd reassoc nsz arcp contract afn float %i.ie, %i.id
  %i.ig = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.promoted, float %i.if) ; 2 uses
  store float %i.ig, ptr %10, align 4, !tbaa !26
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !26
  %i.ij = fsub reassoc nsz arcp contract afn float %1, %i.ii ; 2 uses
  %i.ik = load float, ptr %i.hx, align 4, !tbaa !26
  %i.il = fsub reassoc nsz arcp contract afn float %0, %i.ik ; 2 uses
  %i.im = fmul reassoc nsz arcp contract afn float %i.il, %i.il
  %i.in = fmul reassoc nsz arcp contract afn float %i.ij, %i.ij
  %i.io = fadd reassoc nsz arcp contract afn float %i.im, %i.in
  %i.ip = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ig, float %i.io) ; 2 uses
  store float %i.ip, ptr %10, align 4, !tbaa !26
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !26
  %i.is = fsub reassoc nsz arcp contract afn float %0, %i.ir ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  %i.iu = load float, ptr %i.it, align 4, !tbaa !26
  %i.iv = fsub reassoc nsz arcp contract afn float %1, %i.iu ; 2 uses
  %i.iw = fmul reassoc nsz arcp contract afn float %i.is, %i.is
  %i.ix = fmul reassoc nsz arcp contract afn float %i.iv, %i.iv
  %i.iy = fadd reassoc nsz arcp contract afn float %i.ix, %i.iw
  %i.iz = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ip, float %i.iy) ; 2 uses
  store float %i.iz, ptr %10, align 4, !tbaa !26
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !26
  %i.jc = fsub reassoc nsz arcp contract afn float %1, %i.jb ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.je = load float, ptr %i.jd, align 4, !tbaa !26
  %i.jf = fsub reassoc nsz arcp contract afn float %0, %i.je ; 2 uses
  %i.jg = fmul reassoc nsz arcp contract afn float %i.jf, %i.jf
  %i.jh = fmul reassoc nsz arcp contract afn float %i.jc, %i.jc
  %i.ji = fadd reassoc nsz arcp contract afn float %i.jg, %i.jh
  %i.jj = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.iz, float %i.ji) ; 2 uses
  store float %i.jj, ptr %10, align 4, !tbaa !26
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !26
  %i.jm = fsub reassoc nsz arcp contract afn float %0, %i.jl ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.hv, i64 20
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !26
  %i.jp = fsub reassoc nsz arcp contract afn float %1, %i.jo ; 2 uses
  %i.jq = fmul reassoc nsz arcp contract afn float %i.jm, %i.jm
  %i.jr = fmul reassoc nsz arcp contract afn float %i.jp, %i.jp
  %i.js = fadd reassoc nsz arcp contract afn float %i.jr, %i.jq
  %i.jt = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.jj, float %i.js) ; 2 uses
  store float %i.jt, ptr %10, align 4, !tbaa !26
  %i.ju = getelementptr inbounds nuw i8, ptr %i.hx, i64 20
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !26
  %i.jw = fsub reassoc nsz arcp contract afn float %1, %i.jv ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !26
  %i.jz = fsub reassoc nsz arcp contract afn float %0, %i.jy ; 2 uses
  %i.ka = fmul reassoc nsz arcp contract afn float %i.jz, %i.jz
  %i.kb = fmul reassoc nsz arcp contract afn float %i.jw, %i.jw
  %i.kc = fadd reassoc nsz arcp contract afn float %i.ka, %i.kb
  %i.kd = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.jt, float %i.kc) ; 2 uses
  store float %i.kd, ptr %10, align 4, !tbaa !26
  %i.ke = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !26
  %i.kg = fsub reassoc nsz arcp contract afn float %0, %i.kf ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.hv, i64 28
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !26
  %i.kj = fsub reassoc nsz arcp contract afn float %1, %i.ki ; 2 uses
  %i.kk = fmul reassoc nsz arcp contract afn float %i.kg, %i.kg
  %i.kl = fmul reassoc nsz arcp contract afn float %i.kj, %i.kj
  %i.km = fadd reassoc nsz arcp contract afn float %i.kl, %i.kk
  %i.kn = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.kd, float %i.km) ; 2 uses
  store float %i.kn, ptr %10, align 4, !tbaa !26
  %i.ko = getelementptr inbounds nuw i8, ptr %i.hx, i64 28
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !26
  %i.kq = fsub reassoc nsz arcp contract afn float %1, %i.kp ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !26
  %i.kt = fsub reassoc nsz arcp contract afn float %0, %i.ks ; 2 uses
  %i.ku = fmul reassoc nsz arcp contract afn float %i.kt, %i.kt
  %i.kv = fmul reassoc nsz arcp contract afn float %i.kq, %i.kq
  %i.kw = fadd reassoc nsz arcp contract afn float %i.ku, %i.kv
  %i.kx = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.kn, float %i.kw) ; 2 uses
  store float %i.kx, ptr %10, align 4, !tbaa !26
  %i.ky = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !26
  %i.la = fsub reassoc nsz arcp contract afn float %0, %i.kz ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.hv, i64 36
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !26
  %i.ld = fsub reassoc nsz arcp contract afn float %1, %i.lc ; 2 uses
  %i.le = fmul reassoc nsz arcp contract afn float %i.la, %i.la
  %i.lf = fmul reassoc nsz arcp contract afn float %i.ld, %i.ld
  %i.lg = fadd reassoc nsz arcp contract afn float %i.lf, %i.le
  %i.lh = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.kx, float %i.lg) ; 2 uses
  store float %i.lh, ptr %10, align 4, !tbaa !26
  %i.li = getelementptr inbounds nuw i8, ptr %i.hx, i64 36
  %i.lj = load float, ptr %i.li, align 4, !tbaa !26
  %i.lk = fsub reassoc nsz arcp contract afn float %1, %i.lj ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !26
  %i.ln = fsub reassoc nsz arcp contract afn float %0, %i.lm ; 2 uses
  %i.lo = fmul reassoc nsz arcp contract afn float %i.ln, %i.ln
  %i.lp = fmul reassoc nsz arcp contract afn float %i.lk, %i.lk
  %i.lq = fadd reassoc nsz arcp contract afn float %i.lo, %i.lp
  %i.lr = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.lh, float %i.lq)
  store float %i.lr, ptr %10, align 4, !tbaa !26
  store i32 -1, ptr %8, align 4, !tbaa !32
  %i.ls = load ptr, ptr %i.hw, align 8, !tbaa !42
  %i.lt = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !43
  %i.lv = tail call i32 @dt_masks_point_in_form_near(float noundef %0, float noundef %1, ptr noundef %i.ls, i32 noundef 6, i32 noundef %i.lu, float noundef %2, ptr noundef nonnull %8) #12
  %.not70 = icmp eq i32 %i.lv, 0
  br i1 %.not70, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.lw = load i32, ptr %8, align 4, !tbaa !32
  %.not71 = icmp eq i32 %i.lw, -1
  br i1 %.not71, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  store i32 1, ptr %7, align 4, !tbaa !32
  store i32 1, ptr %6, align 4, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.u, %bb.b, %bb.t, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_ellipse_get_points(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, ptr nofree noundef captures(none) initializes((0, 8)) %6, ptr nofree noundef captures(none) initializes((0, 4)) %7) #0 {
dt_masks_get_image_size.exit:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !114
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.e = load <2 x i32>, ptr %i.d, align 16, !tbaa !32
  %i.f = sitofp reassoc nsz arcp contract afn <2 x i32> %i.e to <2 x float> ; 2 uses
  %i.g = extractelement <2 x float> %i.f, i64 0
  %i.h = extractelement <2 x float> %i.f, i64 1
  %i.i = tail call fastcc ptr @_points_to_transform(float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %i.g, float noundef %i.h, ptr noundef %7) ; 3 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !115
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.a

bb.a:                                             ; preds = %dt_masks_get_image_size.exit
  %i.j = load i32, ptr %7, align 4, !tbaa !32
  %i.k = sext i32 %i.j to i64
  %i.l = tail call i32 @dt_dev_distort_transform(ptr noundef %0, ptr noundef nonnull %i.i, i64 noundef %i.k) #12
  %.not15 = icmp eq i32 %i.l, 0
  br i1 %.not15, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %6, align 8, !tbaa !115
  tail call void @free(ptr noundef %i.m) #12
  store ptr null, ptr %6, align 8, !tbaa !115
  store i32 0, ptr %7, align 4, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %dt_masks_get_image_size.exit, %bb.b
  %.0 = phi i32 [ 0, %dt_masks_get_image_size.exit ], [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_ellipse_get_points_border(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 8)) %2, ptr nofree noundef captures(none) initializes((0, 4)) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7) #0 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 8 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !26 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !26 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !26 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.j = load float, ptr %i.i, align 4, !tbaa !26 ; 4 uses
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.m = load float, ptr %i.l, align 4, !tbaa !31
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !114
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %i.r = load <2 x float>, ptr %i.k, align 8, !tbaa !26
  %i.s = load <2 x i32>, ptr %i.q, align 16, !tbaa !32
  %i.t = sitofp reassoc nsz arcp contract afn <2 x i32> %i.s to <2 x float> ; 3 uses
  %i.u = extractelement <2 x float> %i.t, i64 0
  %i.v = extractelement <2 x float> %i.t, i64 1
  %i.w = tail call fastcc ptr @_points_to_transform(float noundef %i.d, float noundef %i.f, float noundef %i.h, float noundef %i.j, float noundef %i.m, float noundef %i.u, float noundef %i.v, ptr noundef %3) ; 3 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !115
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ellipse_get_points_source.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !114
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 480 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 16, !tbaa !126
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.aa to double
  %i.ac = load i32, ptr %3, align 4, !tbaa !32
  %i.ad = sext i32 %i.ac to i64
  %i.ae = tail call i32 @dt_dev_distort_transform_plus(ptr noundef %0, ptr noundef %i.y, double noundef %i.ab, i32 noundef 4, ptr noundef nonnull %i.w, i64 noundef %i.ad) #12
  %.not48.i = icmp eq i32 %i.ae, 0
  br i1 %.not48.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.af = fmul reassoc nsz arcp contract afn <2 x float> %i.r, %i.t
  store <2 x float> %i.af, ptr %i.a, align 8, !tbaa !26
  %i.ag = load ptr, ptr %i.x, align 16, !tbaa !114
  %i.ah = load i32, ptr %i.z, align 16, !tbaa !126
  %i.ai = sitofp reassoc nsz arcp contract afn i32 %i.ah to double
  %i.aj = call i32 @dt_dev_distort_transform_plus(ptr noundef nonnull %0, ptr noundef %i.ag, double noundef %i.ai, i32 noundef 4, ptr noundef nonnull %i.a, i64 noundef 1) #12
  %.not49.i = icmp eq i32 %i.aj, 0
  br i1 %.not49.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.al = load ptr, ptr %2, align 8, !tbaa !115   ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load <2 x float>, ptr %i.a, align 8, !tbaa !26 ; 2 uses
  %i.ao = load <2 x float>, ptr %i.al, align 64, !tbaa !26
  %i.ap = fsub reassoc nsz arcp contract afn <2 x float> %i.an, %i.ao ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.al, i64 64) ]
  %i.aq = extractelement <2 x float> %i.an, i64 0
  store float %i.aq, ptr %i.al, align 64, !tbaa !26
  %i.ar = load float, ptr %i.ak, align 4, !tbaa !26
  store float %i.ar, ptr %i.am, align 4, !tbaa !26
  %i.as = load i32, ptr %3, align 4, !tbaa !32    ; 3 uses
  %i.at = icmp sgt i32 %i.as, 5
  br i1 %i.at, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.as to i64 ; 2 uses
  %i.au = add nsw i64 %wide.trip.count.i, -5      ; 3 uses
  %min.iters.check = icmp ult i64 %i.au, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.au, -8                      ; 3 uses
  %i.av = or disjoint i64 %n.vec, 5
  %broadcast.splat = shufflevector <2 x float> %i.ap, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat63 = shufflevector <2 x float> %i.ap, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.ay, align 8, !tbaa !26 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec64 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.az = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %strided.vec
  %i.ba = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat63, %strided.vec64
  %interleaved.vec = shufflevector <8 x float> %i.az, <8 x float> %i.ba, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.ay, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 5, %.lr.ph.preheader.i ], [ %i.av, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.e
  %i.bc = load ptr, ptr %i.x, align 16, !tbaa !114
  %i.bd = load i32, ptr %i.z, align 16, !tbaa !126
  %i.be = sitofp reassoc nsz arcp contract afn i32 %i.bd to double
  %i.bf = sext i32 %i.as to i64
  %i.bg = call i32 @dt_dev_distort_transform_plus(ptr noundef nonnull %0, ptr noundef %i.bc, double noundef %i.be, i32 noundef 1, ptr noundef nonnull %i.al, i64 noundef %i.bf) #12
  %.not50.i = icmp eq i32 %i.bg, 0
  br i1 %.not50.i, label %.critedge.i, label %bb.f

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i ; 2 uses
  %i.bi = load <2 x float>, ptr %i.bh, align 8, !tbaa !26
  %i.bj = fadd reassoc nsz arcp contract afn <2 x float> %i.ap, %i.bi
  store <2 x float> %i.bj, ptr %i.bh, align 8, !tbaa !26
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !183

.critedge.i:                                      ; preds = %._crit_edge.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ellipse_get_points_source.exit

bb.g:                                             ; preds = %.critedge.i, %bb.c
  %i.bk = load ptr, ptr %2, align 8, !tbaa !115
  call void @free(ptr noundef %i.bk) #12
  store ptr null, ptr %2, align 8, !tbaa !115
  store i32 0, ptr %3, align 4, !tbaa !32
  br label %_ellipse_get_points_source.exit

bb.h:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !31
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 96
  %i.bp = load ptr, ptr %i.bo, align 16, !tbaa !114
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 144
  %i.br = load <2 x i32>, ptr %i.bq, align 16, !tbaa !32
  %i.bs = sitofp reassoc nsz arcp contract afn <2 x i32> %i.br to <2 x float> ; 2 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0
  %i.bu = extractelement <2 x float> %i.bs, i64 1
  %i.bv = tail call fastcc ptr @_points_to_transform(float noundef %i.d, float noundef %i.f, float noundef %i.h, float noundef %i.j, float noundef %i.bm, float noundef %i.bt, float noundef %i.bu, ptr noundef %3) ; 3 uses
  store ptr %i.bv, ptr %2, align 8, !tbaa !115
  %.not.i49 = icmp eq ptr %i.bv, null
  br i1 %.not.i49, label %_ellipse_get_points_source.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = load i32, ptr %3, align 4, !tbaa !32
  %i.bx = sext i32 %i.bw to i64
  %i.by = tail call i32 @dt_dev_distort_transform(ptr noundef %0, ptr noundef nonnull %i.bv, i64 noundef %i.bx) #12
  %.not15.i = icmp eq i32 %i.by, 0
  br i1 %.not15.i, label %bb.j, label %_ellipse_get_points.exit

bb.j:                                             ; preds = %bb.i
  %i.bz = load ptr, ptr %2, align 8, !tbaa !115
  tail call void @free(ptr noundef %i.bz) #12
  store ptr null, ptr %2, align 8, !tbaa !115
  store i32 0, ptr %3, align 4, !tbaa !32
  br label %_ellipse_get_points_source.exit

_ellipse_get_points.exit:                         ; preds = %bb.i
  %.not47 = icmp eq ptr %4, null
  br i1 %.not47, label %_ellipse_get_points_source.exit, label %bb.k

bb.k:                                             ; preds = %_ellipse_get_points.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !29
  %i.cc = and i32 %i.cb, 1
  %.not48 = icmp eq i32 %i.cc, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !30 ; 3 uses
  br i1 %.not48, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cf = fadd reassoc nsz arcp contract afn float %i.ce, 1.000000e+00 ; 2 uses
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %i.h
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cf, %i.j
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ci = fadd reassoc nsz arcp contract afn float %i.ce, %i.h
  %i.cj = fadd reassoc nsz arcp contract afn float %i.ce, %i.j
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ck = phi float [ %i.cg, %bb.l ], [ %i.ci, %bb.m ]
  %i.cl = phi reassoc nsz arcp contract afn float [ %i.ch, %bb.l ], [ %i.cj, %bb.m ]
  %i.cm = load float, ptr %i.bl, align 4, !tbaa !31
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 96
  %i.cp = load ptr, ptr %i.co, align 16, !tbaa !114
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 144
  %i.cr = load <2 x i32>, ptr %i.cq, align 16, !tbaa !32
  %i.cs = sitofp reassoc nsz arcp contract afn <2 x i32> %i.cr to <2 x float> ; 2 uses
  %i.ct = extractelement <2 x float> %i.cs, i64 0
  %i.cu = extractelement <2 x float> %i.cs, i64 1
  %i.cv = tail call fastcc ptr @_points_to_transform(float noundef %i.d, float noundef %i.f, float noundef %i.ck, float noundef %i.cl, float noundef %i.cm, float noundef %i.ct, float noundef %i.cu, ptr noundef %5) ; 3 uses
  store ptr %i.cv, ptr %4, align 8, !tbaa !115
  %.not.i50 = icmp eq ptr %i.cv, null
  br i1 %.not.i50, label %_ellipse_get_points_source.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = load i32, ptr %5, align 4, !tbaa !32
  %i.cx = sext i32 %i.cw to i64
  %i.cy = tail call i32 @dt_dev_distort_transform(ptr noundef %0, ptr noundef nonnull %i.cv, i64 noundef %i.cx) #12
  %.not15.i51 = icmp eq i32 %i.cy, 0
  br i1 %.not15.i51, label %bb.p, label %_ellipse_get_points_source.exit

bb.p:                                             ; preds = %bb.o
  %i.cz = load ptr, ptr %4, align 8, !tbaa !115
  tail call void @free(ptr noundef %i.cz) #12
  store ptr null, ptr %4, align 8, !tbaa !115
  store i32 0, ptr %5, align 4, !tbaa !32
  br label %_ellipse_get_points_source.exit

_ellipse_get_points_source.exit:                  ; preds = %bb.j, %bb.h, %bb.p, %bb.o, %bb.n, %bb.g, %bb.f, %bb.b, %_ellipse_get_points.exit
  %.0 = phi i32 [ 1, %bb.o ], [ 0, %bb.b ], [ 1, %_ellipse_get_points.exit ], [ 0, %bb.g ], [ 1, %bb.f ], [ 0, %bb.n ], [ 0, %bb.p ], [ 0, %bb.h ], [ 0, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_ellipse_get_mask(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7) #0 {
bb.a:
  %8 = alloca %struct.timeval, align 8            ; 5 uses
  %9 = alloca %struct.timeval, align 8            ; 5 uses
  %10 = alloca %struct.timeval, align 8           ; 5 uses
  %11 = alloca %struct.timeval, align 8           ; 5 uses
  %12 = alloca %struct.timeval, align 8           ; 5 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !127
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.b = call i32 @gettimeofday(ptr noundef nonnull %12, ptr noundef null) #12 ; 0 uses
  %i.c = load i64, ptr %12, align 8, !tbaa !129
  %i.d = add nsw i64 %i.c, -1290608000
  %i.e = sitofp reassoc nsz arcp contract afn i64 %i.d to double
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !130
  %i.h = sitofp reassoc nsz arcp contract afn i64 %i.g to double
  %i.i = fmul reassoc nnan nsz arcp contract afn double %i.h, f0x3EB0C6F7A0B5ED8D
  %i.j = fadd reassoc nsz arcp contract afn double %i.i, %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  br label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit:                          ; preds = %bb.a, %bb.b
  %i.k = phi reassoc nsz arcp contract afn double [ %i.j, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.l = tail call i32 @_ellipse_get_area(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.t, label %bb.c

bb.c:                                             ; preds = %dt_get_debug_wtime.exit
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !127
  %i.n = and i32 %i.m, 4112
  %or.cond.not = icmp eq i32 %i.n, 4112
  br i1 %or.cond.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.p = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #12 ; 0 uses
  %i.q = load i64, ptr %11, align 8, !tbaa !129
  %i.r = add nsw i64 %i.q, -1290608000
  %i.s = sitofp reassoc nsz arcp contract afn i64 %i.r to double
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !130
  %i.v = sitofp reassoc nsz arcp contract afn i64 %i.u to double
  %i.w = fmul reassoc nnan nsz arcp contract afn double %i.v, f0x3EB0C6F7A0B5ED8D
  %i.x = fadd reassoc nsz arcp contract afn double %i.w, %i.s ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.y = fsub reassoc nsz arcp contract afn double %i.x, %i.k
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.19, ptr noundef nonnull %i.o, double noundef %i.y) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0133 = phi nsz double [ %i.k, %bb.c ], [ %i.x, %bb.d ] ; 2 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !23
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25  ; 6 uses
  %i.ab = load i32, ptr %4, align 4, !tbaa !32    ; 5 uses
  %i.ac = load i32, ptr %5, align 4, !tbaa !32    ; 3 uses
  %i.ad = sext i32 %i.ab to i64                   ; 3 uses
  %i.ae = sext i32 %i.ac to i64                   ; 3 uses
  %i.af = shl nsw i64 %i.ad, 3
  %i.ag = mul i64 %i.af, %i.ae
  %i.ah = tail call ptr @dt_alloc_aligned(i64 noundef %i.ag) #12 ; 16 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ah, i64 64) ]
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.t, label %.preheader135

.preheader135:                                    ; preds = %bb.e
  %i.aj = icmp sgt i32 %i.ac, 0
  %i.ak = icmp sgt i32 %i.ab, 0
  %or.cond = and i1 %i.aj, %i.ak
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge138.split

.preheader.lr.ph.split:                           ; preds = %.preheader135
  %i.al = load i32, ptr %6, align 4, !tbaa !32    ; 3 uses
  %i.am = load i32, ptr %7, align 4, !tbaa !32
  %i.an = zext nneg i32 %i.ab to i64              ; 7 uses
  %wide.trip.count143 = zext nneg i32 %i.ac to i64
  %min.iters.check = icmp ult i32 %i.ab, 4
  %min.iters.check154 = icmp ult i32 %i.ab, 32
  %i.ao = and i64 %i.an, 28
  %n.vec = and i64 %i.an, 2147483616              ; 4 uses
  %broadcast.splatinsert155 = insertelement <8 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat156 = shufflevector <8 x i32> %broadcast.splatinsert155, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = add <8 x i32> splat (i32 8), %broadcast.splat156
  %invariant.op209 = add <8 x i32> splat (i32 16), %broadcast.splat156
  %invariant.op211 = add <8 x i32> splat (i32 24), %broadcast.splat156
  %cmp.n = icmp eq i64 %n.vec, %i.an
  %min.epilog.iters.check = icmp eq i64 %i.ao, 0
  %n.vec160 = and i64 %i.an, 2147483644           ; 3 uses
  %broadcast.splatinsert163 = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat164 = shufflevector <4 x i32> %broadcast.splatinsert163, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n172 = icmp eq i64 %n.vec160, %i.an
  br label %iter.check

iter.check:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv140 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next141, %._crit_edge ] ; 3 uses
  %i.ap = mul nuw nsw i64 %indvars.iv140, %i.an   ; 6 uses
  %i.aq = trunc i64 %indvars.iv140 to i32
  %i.ar = add i32 %i.am, %i.aq
  %i.as = sitofp reassoc nsz arcp contract afn i32 %i.ar to float ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check154, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.as, i64 0 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.at = or disjoint i64 %index, 8
  %i.au = or disjoint i64 %index, 16
  %i.av = or disjoint i64 %index, 24
  %i.aw = add <8 x i32> %broadcast.splat156, %vec.ind
  %.reass = add <8 x i32> %vec.ind, %invariant.op
  %.reass210 = add <8 x i32> %vec.ind, %invariant.op209
  %.reass212 = add <8 x i32> %vec.ind, %invariant.op211
  %i.ax = sitofp reassoc nsz arcp contract afn <8 x i32> %i.aw to <8 x float>
  %i.ay = sitofp reassoc nsz arcp contract afn <8 x i32> %.reass to <8 x float>
  %i.az = sitofp reassoc nsz arcp contract afn <8 x i32> %.reass210 to <8 x float>
  %i.ba = sitofp reassoc nsz arcp contract afn <8 x i32> %.reass212 to <8 x float>
  %i.bb = add nuw nsw i64 %index, %i.ap
  %i.bc = add nuw nsw i64 %i.at, %i.ap
  %i.bd = add nuw nsw i64 %i.au, %i.ap
  %i.be = add nuw nsw i64 %i.av, %i.ap
  %i.bf = shl nuw nsw i64 %i.bb, 3
  %i.bg = shl nuw nsw i64 %i.bc, 3
  %i.bh = shl nuw nsw i64 %i.bd, 3
  %i.bi = shl nuw nsw i64 %i.be, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bf
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bg
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bh
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bi
  %interleaved.vec = shufflevector <8 x float> %i.ax, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec, ptr %i.bj, align 8, !tbaa !26
  %interleaved.vec157 = shufflevector <8 x float> %i.ay, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec157, ptr %i.bk, align 8, !tbaa !26
  %interleaved.vec158 = shufflevector <8 x float> %i.az, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec158, ptr %i.bl, align 8, !tbaa !26
  %interleaved.vec159 = shufflevector <8 x float> %i.ba, <8 x float> %broadcast.splatinsert, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec159, ptr %i.bm, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !184

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !131

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert161 = insertelement <4 x float> poison, float %i.as, i64 0
  %i.bo = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert165 = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %broadcast.splat166 = shufflevector <4 x i32> %broadcast.splatinsert165, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat166, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index167 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next170, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind168 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next171, %vec.epilog.vector.body ] ; 2 uses
  %i.bp = add <4 x i32> %broadcast.splat164, %vec.ind168
  %i.bq = sitofp reassoc nsz arcp contract afn <4 x i32> %i.bp to <4 x float>
  %i.br = add nuw nsw i64 %index167, %i.ap
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bs
  %interleaved.vec169 = shufflevector <4 x float> %i.bq, <4 x float> %broadcast.splatinsert161, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x float> %interleaved.vec169, ptr %i.bt, align 8, !tbaa !26
  %index.next170 = add nuw i64 %index167, 4       ; 2 uses
  %vec.ind.next171 = add <4 x i32> %vec.ind168, splat (i32 4)
  %i.bu = icmp eq i64 %index.next170, %n.vec160
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !185

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n172, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec160, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge138.split:                             ; preds = %._crit_edge, %.preheader135
  %i.bv = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !127
  %i.bw = and i32 %i.bv, 4112
  %or.cond125.not = icmp eq i32 %i.bw, 4112
  br i1 %or.cond125.not, label %bb.f, label %bb.g

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %._crit_edge138.split, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bx = trunc i64 %indvars.iv to i32
  %i.by = add i32 %i.al, %i.bx
  %i.bz = sitofp reassoc nsz arcp contract afn i32 %i.by to float
  %i.ca = add nuw nsw i64 %indvars.iv, %i.ap
  %.idx = shl nuw nsw i64 %i.ca, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx ; 2 uses
  store float %i.bz, ptr %i.cb, align 8, !tbaa !26
  %i.cc = getelementptr i8, ptr %i.cb, i64 4
  store float %i.as, ptr %i.cc, align 4, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.an
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !186

bb.f:                                             ; preds = %._crit_edge138.split
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.ce = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #12 ; 0 uses
  %i.cf = load i64, ptr %10, align 8, !tbaa !129
  %i.cg = add nsw i64 %i.cf, -1290608000
  %i.ch = sitofp reassoc nsz arcp contract afn i64 %i.cg to double
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !130
  %i.ck = sitofp reassoc nsz arcp contract afn i64 %i.cj to double
  %i.cl = fmul reassoc nnan nsz arcp contract afn double %i.ck, f0x3EB0C6F7A0B5ED8D
  %i.cm = fadd reassoc nsz arcp contract afn double %i.cl, %i.ch ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.cn = fsub reassoc nsz arcp contract afn double %i.cm, %.0133
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.cd, double noundef %i.cn) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge138.split
  %.1134 = phi nsz double [ %.0133, %._crit_edge138.split ], [ %i.cm, %bb.f ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !132
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !138
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ct = load i32, ptr %i.cs, align 16, !tbaa !126
  %i.cu = sitofp reassoc nsz arcp contract afn i32 %i.ct to double
  %i.cv = mul nsw i64 %i.ae, %i.ad                ; 7 uses
  %i.cw = tail call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.cp, ptr noundef %i.cr, double noundef %i.cu, i32 noundef 3, ptr noundef nonnull %i.ah, i64 noundef %i.cv) #12
  %.not118 = icmp eq i32 %i.cw, 0
  br i1 %.not118, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.ah) #12
  br label %bb.t

bb.i:                                             ; preds = %bb.g
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !127
  %i.cy = and i32 %i.cx, 4112
  %or.cond126.not = icmp eq i32 %i.cy, 4112
  br i1 %or.cond126.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.da = call i32 @gettimeofday(ptr noundef nonnull %9, ptr noundef null) #12 ; 0 uses
  %i.db = load i64, ptr %9, align 8, !tbaa !129
  %i.dc = add nsw i64 %i.db, -1290608000
  %i.dd = sitofp reassoc nsz arcp contract afn i64 %i.dc to double
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !130
  %i.dg = sitofp reassoc nsz arcp contract afn i64 %i.df to double
  %i.dh = fmul reassoc nnan nsz arcp contract afn double %i.dg, f0x3EB0C6F7A0B5ED8D
  %i.di = fadd reassoc nsz arcp contract afn double %i.dh, %i.dd ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.dj = fsub reassoc nsz arcp contract afn double %i.di, %.1134
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.21, ptr noundef nonnull %i.cz, double noundef %i.dj) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2 = phi nsz double [ %.1134, %bb.i ], [ %i.di, %bb.j ]
  %i.dk = shl i64 %i.cv, 2
  %i.dl = tail call ptr @dt_alloc_aligned(i64 noundef %i.dk) #12 ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dl, i64 64) ]
  store ptr %i.dl, ptr %3, align 8, !tbaa !115
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.ah) #12
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.dn = load ptr, ptr %i.cq, align 8, !tbaa !138
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 144
  %i.dp = load <2 x i32>, ptr %i.do, align 16, !tbaa !32 ; 3 uses
  %i.dq = load <2 x float>, ptr %i.aa, align 4, !tbaa !26
  %i.dr = sitofp reassoc nsz arcp contract afn <2 x i32> %i.dp to <2 x float>
  %i.ds = fmul reassoc nsz arcp contract afn <2 x float> %i.dq, %i.dr ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.du = load float, ptr %i.dt, align 4, !tbaa !26 ; 3 uses
  %i.dv = extractelement <2 x i32> %i.dp, i64 0
  %i.dw = extractelement <2 x i32> %i.dp, i64 1
  %i.dx = tail call i32 @llvm.smin.i32(i32 %i.dv, i32 %i.dw)
  %i.dy = sitofp reassoc nsz arcp contract afn i32 %i.dx to float ; 4 uses
  %i.dz = fmul reassoc nsz arcp contract afn float %i.du, %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !26 ; 3 uses
  %i.ec = fmul reassoc nsz arcp contract afn float %i.eb, %i.dy ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !29
  %i.ef = and i32 %i.ee, 1
  %.not121 = icmp eq i32 %i.ef, 0
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !30 ; 3 uses
  br i1 %.not121, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ei = fadd reassoc nsz arcp contract afn float %i.eh, 1.000000e+00 ; 2 uses
  %i.ej = fmul reassoc nsz arcp contract afn float %i.ei, %i.du
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ei, %i.eb
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.el = fadd reassoc nsz arcp contract afn float %i.eh, %i.du
  %i.em = fadd reassoc nsz arcp contract afn float %i.eh, %i.eb
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi float [ %i.ej, %bb.n ], [ %i.el, %bb.o ]
  %i.en = phi reassoc nsz arcp contract afn float [ %i.ek, %bb.n ], [ %i.em, %bb.o ]
  %i.eo = fmul reassoc nsz arcp contract afn float %.pn, %i.dy ; 2 uses
  %i.ep = fmul reassoc nsz arcp contract afn float %i.en, %i.dy ; 2 uses
  %i.eq = fcmp reassoc nsz arcp contract afn ult float %i.dz, %i.ec
  %i.er = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.es = load float, ptr %i.er, align 4, !tbaa !31
  %i.et = fmul reassoc nsz arcp contract afn float %i.es, f0x3C8EFA36 ; 2 uses
  %i.eu = insertelement <2 x float> poison, float %i.ec, i64 0 ; 2 uses
  %i.ev = insertelement <2 x float> %i.eu, float %i.ep, i64 1 ; 2 uses
  %i.ew = insertelement <2 x float> poison, float %i.dz, i64 0 ; 2 uses
  %i.ex = insertelement <2 x float> %i.ew, float %i.eo, i64 1 ; 2 uses
  %i.ey = insertelement <2 x float> %i.ew, float %i.ep, i64 1 ; 2 uses
  %i.ez = insertelement <2 x float> %i.eu, float %i.eo, i64 1 ; 2 uses
  br i1 %i.eq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fa = fadd reassoc nsz arcp contract afn float %i.et, f0xBFC90FDC
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.0 = phi nsz float [ %i.fa, %bb.q ], [ %i.et, %bb.p ]
  %i.fb = phi <2 x float> [ %i.ex, %bb.q ], [ %i.ev, %bb.p ] ; 4 uses
  %i.fc = phi <2 x float> [ %i.ev, %bb.q ], [ %i.ex, %bb.p ] ; 4 uses
  %i.fd = phi <2 x float> [ %i.ez, %bb.q ], [ %i.ey, %bb.p ]
  %i.fe = phi <2 x float> [ %i.ey, %bb.q ], [ %i.ez, %bb.p ]
  %sincos.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %.0) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0 ; 2 uses
  %cos.i = extractvalue { float, float } %sincos.i, 1 ; 2 uses
  %i.ff = shufflevector <2 x float> %i.fb, <2 x float> %i.fc, <2 x i32> <i32 0, i32 3>
  %i.fg = fmul reassoc nsz arcp contract afn <2 x float> %i.fc, %i.fc ; 3 uses
  %i.fh = fmul reassoc nsz arcp contract afn <2 x float> %i.fe, %i.ff
  %i.fi = shufflevector <2 x float> %i.fc, <2 x float> %i.fb, <2 x i32> <i32 0, i32 3>
  %i.fj = fmul reassoc nsz arcp contract afn <2 x float> %i.fb, %i.fb ; 3 uses
  %i.fk = fmul reassoc nsz arcp contract afn <2 x float> %i.fd, %i.fi
  %.not.i129 = icmp eq i64 %i.cv, 0
  br i1 %.not.i129, label %_fill_mask.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r
  %i.fl = fmul reassoc nsz arcp contract afn <2 x float> %i.fj, %i.fg ; 3 uses
  %min.iters.check174 = icmp ult i64 %i.cv, 8
  br i1 %min.iters.check174, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.fm = mul nsw i64 %i.ae, %i.ad                ; 2 uses
  %i.fn = shl i64 %i.fm, 2
  %i.fo = getelementptr i8, ptr %i.dl, i64 %i.fn
  %i.fp = shl i64 %i.fm, 3
  %i.fq = getelementptr i8, ptr %i.ah, i64 %i.fp
  %bound0 = icmp ult ptr %i.dl, %i.fq
  %bound1 = icmp ult ptr %i.ah, %i.fo
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %vector.memcheck
  %n.vec176 = and i64 %i.cv, -8                   ; 3 uses
  %broadcast.splat178 = shufflevector <2 x float> %i.fl, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat180 = shufflevector <2 x float> %i.fl, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat182 = shufflevector <2 x float> %i.ds, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat184 = shufflevector <2 x float> %i.ds, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert185 = insertelement <8 x float> poison, float %cos.i, i64 0
  %broadcast.splat186 = shufflevector <8 x float> %broadcast.splatinsert185, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert187 = insertelement <8 x float> poison, float %sin.i, i64 0
  %broadcast.splat188 = shufflevector <8 x float> %broadcast.splatinsert187, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat190 = shufflevector <2 x float> %i.fg, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat192 = shufflevector <2 x float> %i.fj, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat194 = shufflevector <2 x float> %i.fg, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat196 = shufflevector <2 x float> %i.fj, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph175
  %index198 = phi i64 [ 0, %vector.ph175 ], [ %index.next200, %vector.body197 ] ; 3 uses
  %i.fr = shl i64 %index198, 3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.fr
  %wide.vec = load <16 x float>, ptr %i.fs, align 64, !tbaa !26, !alias.scope !192 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec199 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ft = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat182 ; 3 uses
  %i.fu = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec199, %broadcast.splat184 ; 3 uses
  %i.fv = fmul reassoc nsz arcp contract afn <8 x float> %i.ft, %i.ft
  %i.fw = fmul reassoc nsz arcp contract afn <8 x float> %i.fu, %i.fu
  %i.fx = fadd reassoc nsz arcp contract afn <8 x float> %i.fw, %i.fv ; 3 uses
  %i.fy = tail call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.fx) ; 2 uses
  %i.fz = fcmp reassoc nsz arcp contract afn une <8 x float> %i.fx, zeroinitializer ; 2 uses
  %i.ga = fdiv reassoc nsz arcp contract afn <8 x float> %i.ft, %i.fy
  %i.gb = select reassoc nsz arcp contract afn <8 x i1> %i.fz, <8 x float> %i.ga, <8 x float> zeroinitializer ; 2 uses
  %i.gc = fdiv reassoc nsz arcp contract afn <8 x float> %i.fu, %i.fy
  %i.gd = select reassoc nsz arcp contract afn <8 x i1> %i.fz, <8 x float> %i.gc, <8 x float> splat (float 1.000000e+00) ; 2 uses
  %i.ge = fmul reassoc nsz arcp contract afn <8 x float> %i.gb, %broadcast.splat186
  %i.gf = fmul reassoc nsz arcp contract afn <8 x float> %i.gd, %broadcast.splat188
  %i.gg = fadd reassoc nsz arcp contract afn <8 x float> %i.ge, %i.gf ; 2 uses
  %i.gh = fmul reassoc nsz arcp contract afn <8 x float> %i.gd, %broadcast.splat186
  %i.gi = fmul reassoc nsz arcp contract afn <8 x float> %i.gb, %broadcast.splat188
  %i.gj = fsub reassoc nsz arcp contract afn <8 x float> %i.gh, %i.gi ; 2 uses
  %i.gk = fmul reassoc nsz arcp contract afn <8 x float> %i.gg, %i.gg ; 2 uses
  %i.gl = fmul reassoc nsz arcp contract afn <8 x float> %i.gj, %i.gj ; 2 uses
  %i.gm = fmul reassoc nsz arcp contract afn <8 x float> %i.gl, %broadcast.splat190
  %i.gn = fmul reassoc nsz arcp contract afn <8 x float> %i.gk, %broadcast.splat192
  %i.go = fadd reassoc nsz arcp contract afn <8 x float> %i.gm, %i.gn
  %i.gp = fdiv reassoc nsz arcp contract afn <8 x float> %broadcast.splat178, %i.go
  %i.gq = fmul reassoc nsz arcp contract afn <8 x float> %i.gl, %broadcast.splat194
  %i.gr = fmul reassoc nsz arcp contract afn <8 x float> %i.gk, %broadcast.splat196
  %i.gs = fadd reassoc nsz arcp contract afn <8 x float> %i.gq, %i.gr
  %i.gt = fdiv reassoc nsz arcp contract afn <8 x float> %broadcast.splat180, %i.gs ; 2 uses
  %i.gu = fsub reassoc nsz arcp contract afn <8 x float> %i.gt, %i.fx
  %i.gv = fsub reassoc nsz arcp contract afn <8 x float> %i.gt, %i.gp
  %i.gw = fdiv reassoc nsz arcp contract afn <8 x float> %i.gu, %i.gv ; 3 uses
  %i.gx = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.gw, zeroinitializer
  %i.gy = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.gw, splat (float 1.000000e+00)
  %i.gz = select reassoc nsz arcp contract afn <8 x i1> %i.gy, <8 x float> %i.gw, <8 x float> splat (float 1.000000e+00)
  %i.ha = select reassoc nsz arcp contract afn <8 x i1> %i.gx, <8 x float> %i.gz, <8 x float> zeroinitializer ; 2 uses
  %i.hb = fmul reassoc nsz arcp contract afn <8 x float> %i.ha, %i.ha
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index198
  store <8 x float> %i.hb, ptr %i.hc, align 32, !tbaa !26, !alias.scope !193, !noalias !192
  %index.next200 = add nuw i64 %index198, 8       ; 2 uses
  %i.hd = icmp eq i64 %index.next200, %n.vec176
  br i1 %i.hd, label %middle.block201, label %vector.body197, !llvm.loop !190

middle.block201:                                  ; preds = %vector.body197
  %cmp.n202 = icmp eq i64 %i.cv, %n.vec176
  br i1 %cmp.n202, label %_fill_mask.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block201
  %.01.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec176, %middle.block201 ]
  %i.he = insertelement <2 x float> poison, float %cos.i, i64 0
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = insertelement <2 x float> poison, float %sin.i, i64 0
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01.i = phi i64 [ %i.ir, %scalar.ph ], [ %.01.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.idx.i = shl i64 %.01.i, 3
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i
  %i.hj = load <2 x float>, ptr %i.hi, align 8, !tbaa !26
  %i.hk = fsub reassoc nsz arcp contract afn <2 x float> %i.hj, %i.ds ; 5 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x float> %i.hk, %i.hk
  %foldExtExtBinop205 = fmul reassoc nsz arcp contract afn <2 x float> %i.hk, %i.hk
  %shift = shufflevector <2 x float> %foldExtExtBinop205, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop207 = fadd reassoc nsz arcp contract afn <2 x float> %shift, %foldExtExtBinop
  %i.hl = extractelement <2 x float> %foldExtExtBinop207, i64 0 ; 3 uses
  %i.hm = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.hl)
  %i.hn = fcmp reassoc nsz arcp contract afn une float %i.hl, 0.000000e+00
  %i.ho = insertelement <2 x float> poison, float %i.hm, i64 0
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hq = fdiv reassoc nsz arcp contract afn <2 x float> %i.hk, %i.hp
  %i.hr = insertelement <2 x i1> poison, i1 %i.hn, i64 0
  %i.hs = shufflevector <2 x i1> %i.hr, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ht = select <2 x i1> %i.hs, <2 x float> %i.hq, <2 x float> <float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.hu = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hv = fmul reassoc nsz arcp contract afn <2 x float> %i.hu, %i.hf ; 2 uses
  %i.hw = fmul reassoc nsz arcp contract afn <2 x float> %i.ht, %i.hh ; 2 uses
  %i.hx = fadd reassoc nsz arcp contract afn <2 x float> %i.hv, %i.hw
  %i.hy = fsub reassoc nsz arcp contract afn <2 x float> %i.hv, %i.hw
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> %i.hx, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ia = fmul reassoc nsz arcp contract afn <2 x float> %i.hz, %i.hz ; 2 uses
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ic = fmul reassoc nsz arcp contract afn <2 x float> %i.ib, %i.fh
  %i.id = fmul reassoc nsz arcp contract afn <2 x float> %i.ia, %i.fk
  %i.ie = fadd reassoc nsz arcp contract afn <2 x float> %i.id, %i.ic
  %i.if = fdiv reassoc nsz arcp contract afn <2 x float> %i.fl, %i.ie ; 2 uses
  %i.ig = extractelement <2 x float> %i.if, i64 1 ; 2 uses
  %i.ih = fsub reassoc nsz arcp contract afn float %i.ig, %i.hl
  %i.ii = extractelement <2 x float> %i.if, i64 0
  %i.ij = fsub reassoc nsz arcp contract afn float %i.ig, %i.ii
  %i.ik = fdiv reassoc nsz arcp contract afn float %i.ih, %i.ij ; 3 uses
  %i.il = fcmp reassoc nsz arcp contract afn oge float %i.ik, 0.000000e+00
  %i.im = fcmp reassoc nsz arcp contract afn ole float %i.ik, 1.000000e+00
  %i.in = select reassoc nsz arcp contract afn i1 %i.im, float %i.ik, float 1.000000e+00
  %i.io = select reassoc nsz arcp contract afn i1 %i.il, float %i.in, float 0.000000e+00 ; 2 uses
  %i.ip = fmul reassoc nsz arcp contract afn float %i.io, %i.io
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %.01.i
  store float %i.ip, ptr %i.iq, align 4, !tbaa !26
  %i.ir = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ir, %i.cv
  br i1 %exitcond.not.i, label %_fill_mask.exit, label %scalar.ph, !llvm.loop !191

_fill_mask.exit:                                  ; preds = %scalar.ph, %middle.block201, %bb.r
  tail call void @free(ptr noundef nonnull %i.ah) #12
  %i.is = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !127
  %i.it = and i32 %i.is, 4112
  %or.cond127.not = icmp eq i32 %i.it, 4112
  br i1 %or.cond127.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_fill_mask.exit
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.iv = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #12 ; 0 uses
  %i.iw = load i64, ptr %8, align 8, !tbaa !129
  %i.ix = add nsw i64 %i.iw, -1290608000
  %i.iy = sitofp reassoc nsz arcp contract afn i64 %i.ix to double
  %i.iz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !130
  %i.jb = sitofp reassoc nsz arcp contract afn i64 %i.ja to double
  %i.jc = fmul reassoc nnan nsz arcp contract afn double %i.jb, f0x3EB0C6F7A0B5ED8D
  %i.jd = fadd reassoc nsz arcp contract afn double %i.jc, %i.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.je = fsub reassoc nsz arcp contract afn double %i.jd, %.2
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.iu, double noundef %i.je) #12
  br label %bb.t

bb.t:                                             ; preds = %_fill_mask.exit, %bb.s, %bb.h, %bb.l, %bb.e, %dt_get_debug_wtime.exit
  %.1 = phi i32 [ 0, %dt_get_debug_wtime.exit ], [ 0, %bb.h ], [ 0, %bb.l ], [ 0, %bb.e ], [ 1, %bb.s ], [ 1, %_fill_mask.exit ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_ellipse_get_mask_roi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) #0 {
bb.a:
  %5 = alloca %struct.timeval, align 8            ; 5 uses
  %6 = alloca %struct.timeval, align 8            ; 5 uses
  %7 = alloca %struct.timeval, align 8            ; 5 uses
  %8 = alloca %struct.timeval, align 8            ; 5 uses
  %9 = alloca %struct.timeval, align 8            ; 5 uses
  %10 = alloca %struct.timeval, align 8           ; 5 uses
  %11 = alloca %struct.timeval, align 8           ; 5 uses
  %12 = alloca %struct.timeval, align 8           ; 5 uses
  %13 = alloca %struct.timeval, align 8           ; 5 uses
  %14 = alloca %struct.timeval, align 8           ; 5 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !127
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.b = call i32 @gettimeofday(ptr noundef nonnull %14, ptr noundef null) #12 ; 0 uses
  %i.c = load i64, ptr %14, align 8, !tbaa !129
  %i.d = add nsw i64 %i.c, -1290608000
  %i.e = sitofp reassoc nsz arcp contract afn i64 %i.d to double
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !130
  %i.h = sitofp reassoc nsz arcp contract afn i64 %i.g to double
  %i.i = fmul reassoc nnan nsz arcp contract afn double %i.h, f0x3EB0C6F7A0B5ED8D
  %i.j = fadd reassoc nsz arcp contract afn double %i.i, %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  br label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit:                          ; preds = %bb.a, %bb.b
  %i.k = phi reassoc nsz arcp contract afn double [ %i.j, %bb.b ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !23
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !138
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.q = load <2 x i32>, ptr %i.p, align 16, !tbaa !32 ; 3 uses
  %i.r = load <2 x float>, ptr %i.m, align 4, !tbaa !26
  %i.s = sitofp reassoc nsz arcp contract afn <2 x i32> %i.q to <2 x float>
  %i.t = fmul reassoc nsz arcp contract afn <2 x float> %i.r, %i.s ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !26 ; 3 uses
  %i.w = extractelement <2 x i32> %i.q, i64 0
  %i.x = extractelement <2 x i32> %i.q, i64 1
  %i.y = tail call i32 @llvm.smin.i32(i32 %i.w, i32 %i.x)
  %i.z = sitofp reassoc nsz arcp contract afn i32 %i.y to float ; 4 uses
  %i.aa = fmul reassoc nsz arcp contract afn float %i.v, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !26 ; 3 uses
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.z ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !29
  %i.ag = and i32 %i.af, 1
  %.not = icmp eq i32 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !30 ; 3 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %dt_get_debug_wtime.exit
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, 1.000000e+00 ; 2 uses
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %i.v
  %i.al = fmul reassoc nsz arcp contract afn float %i.aj, %i.ac
  br label %bb.e

bb.d:                                             ; preds = %dt_get_debug_wtime.exit
  %i.am = fadd reassoc nsz arcp contract afn float %i.ai, %i.v
  %i.an = fadd reassoc nsz arcp contract afn float %i.ai, %i.ac
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi float [ %i.ak, %bb.c ], [ %i.am, %bb.d ]
  %i.ao = phi reassoc nsz arcp contract afn float [ %i.al, %bb.c ], [ %i.an, %bb.d ]
  %i.ap = fmul reassoc nsz arcp contract afn float %.pn, %i.z ; 4 uses
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ao, %i.z ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !31
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, f0x3C8EFA36
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.at) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 3 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load float, ptr %i.av, align 4, !tbaa !201 ; 3 uses
  %i.ax = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aw ; 4 uses
  %i.ay = fmul reassoc nsz arcp contract afn float %i.aw, f0x40555556
  %i.az = fadd reassoc nsz arcp contract afn float %i.ay, f0x3F2AAAAB ; 3 uses
  %i.ba = fcmp reassoc nsz arcp contract afn ogt float %i.az, 4.000000e+00
  %.inv = fcmp reassoc nsz arcp contract afn ole float %i.az, 1.000000e+00
  %spec.select398 = select i1 %.inv, float 1.000000e+00, float %i.az
  %spec.select = fptosi float %spec.select398 to i32
  %i.bb = select i1 %i.ba, i32 4, i32 %spec.select ; 18 uses
  %i.bc = add i32 %i.bb, -1
  %i.bd = load <2 x i32>, ptr %i.au, align 4, !tbaa !32 ; 3 uses
  %i.be = load <2 x i32>, ptr %3, align 4, !tbaa !32 ; 5 uses
  %i.bf = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.bg = shufflevector <2 x i32> %i.bf, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bh = add <2 x i32> %i.bg, %i.bd
  %i.bi = insertelement <2 x i32> poison, i32 %i.bb, i64 0
  %i.bj = shufflevector <2 x i32> %i.bi, <2 x i32> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bk = sdiv <2 x i32> %i.bh, %i.bj             ; 4 uses
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !127
  %i.bm = and i32 %i.bl, 4112
  %or.cond374.not = icmp eq i32 %i.bm, 4112
  br i1 %or.cond374.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.bo = call i32 @gettimeofday(ptr noundef nonnull %13, ptr noundef null) #12 ; 0 uses
  %i.bp = load i64, ptr %13, align 8, !tbaa !129
  %i.bq = add nsw i64 %i.bp, -1290608000
  %i.br = sitofp reassoc nsz arcp contract afn i64 %i.bq to double
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !130
  %i.bu = sitofp reassoc nsz arcp contract afn i64 %i.bt to double
  %i.bv = fmul reassoc nnan nsz arcp contract afn double %i.bu, f0x3EB0C6F7A0B5ED8D
  %i.bw = fadd reassoc nsz arcp contract afn double %i.bv, %i.br ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  %i.bx = fsub reassoc nsz arcp contract afn double %i.bw, %i.k
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, ptr noundef nonnull %i.bn, double noundef %i.bx) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi nsz double [ %i.k, %bb.e ], [ %i.bw, %bb.f ] ; 2 uses
  %i.by = fsub reassoc nsz arcp contract afn float %i.ap, %i.aq
  %i.bz = fadd reassoc nsz arcp contract afn float %i.aq, %i.ap ; 2 uses
  %i.ca = fdiv reassoc nsz arcp contract afn float %i.by, %i.bz ; 2 uses
  %i.cb = fpext reassoc nsz arcp contract afn float %i.bz to double
  %i.cc = fmul reassoc nsz arcp contract afn double %i.cb, f0x400921FB54442D18
  %i.cd = fmul reassoc nsz arcp contract afn float %i.ca, %i.ca
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cd, 3.000000e+00 ; 2 uses
  %i.cf = fsub reassoc nsz arcp contract afn float 4.000000e+00, %i.ce
  %i.cg = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.cf)
  %i.ch = fadd reassoc nsz arcp contract afn float %i.cg, 1.000000e+01
  %i.ci = fdiv reassoc nsz arcp contract afn float %i.ce, %i.ch
  %i.cj = fadd reassoc nsz arcp contract afn float %i.ci, 1.000000e+00
  %i.ck = fpext reassoc nsz arcp contract afn float %i.cj to double
  %i.cl = fmul reassoc nsz arcp contract afn double %i.cc, %i.ck
  %i.cm = fptosi double %i.cl to i32              ; 3 uses
  %i.cn = tail call i32 @llvm.smin.i32(i32 %i.cm, i32 360) ; 5 uses
  %i.co = sext i32 %i.cn to i64                   ; 3 uses
  %i.cp = shl nsw i64 %i.co, 3
  %i.cq = tail call ptr @dt_alloc_aligned(i64 noundef %i.cp) #12 ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cq, i64 64) ]
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.ai, label %.preheader406

.preheader406:                                    ; preds = %bb.g
  %.not434 = icmp eq i32 %i.cm, 0                 ; 2 uses
  br i1 %.not434, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader406
  %i.cs = uitofp reassoc nsz arcp contract afn i64 %i.co to float ; 2 uses
  %i.ct = fneg reassoc nsz arcp contract afn float %i.aq
  %i.cu = insertelement <2 x float> poison, float %cos, i64 0
  %i.cv = insertelement <2 x float> %i.cu, float %sin, i64 1 ; 2 uses
  %i.cw = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fmul reassoc nsz arcp contract afn <2 x float> %i.cv, %i.cx ; 3 uses
  %i.cz = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.ct, i64 1
  %i.db = fmul reassoc nsz arcp contract afn <2 x float> %i.cv, %i.da ; 3 uses
  %wide.trip.count = zext i32 %i.cn to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.cn, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.cs, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat474 = shufflevector <2 x float> %i.cy, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat476 = shufflevector <2 x float> %i.db, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat478 = shufflevector <2 x float> %i.cy, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat480 = shufflevector <2 x float> %i.db, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat482 = shufflevector <2 x float> %i.t, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat484 = shufflevector <2 x float> %i.t, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.dc = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.dd = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.de = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.dd, splat (float f0x40C90FDB)
  %i.df = fmul reassoc nsz arcp contract afn <8 x float> %i.de, %i.dc
  %i.dg = tail call reassoc nsz arcp contract afn { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float> %i.df) ; 2 uses
  %i.dh = extractvalue { <8 x float>, <8 x float> } %i.dg, 0 ; 2 uses
  %i.di = extractvalue { <8 x float>, <8 x float> } %i.dg, 1 ; 2 uses
  %i.dj = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat474, %i.di
  %i.dk = fadd reassoc nsz arcp contract afn <8 x float> %i.dj, %broadcast.splat482
  %i.dl = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat476, %i.dh
  %i.dm = fadd reassoc nsz arcp contract afn <8 x float> %i.dk, %i.dl
  %i.dn = shl nuw nsw i64 %index, 3
  %i.do = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.dn
  %i.dp = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat478, %i.di
  %i.dq = fadd reassoc nsz arcp contract afn <8 x float> %i.dp, %broadcast.splat484
  %i.dr = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat480, %i.dh
  %i.ds = fadd reassoc nsz arcp contract afn <8 x float> %i.dq, %i.dr
  %interleaved.vec = shufflevector <8 x float> %i.dm, <8 x float> %i.ds, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.do, align 64, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !194

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.du = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.cs
  %i.dv = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader406
  %i.dw = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !127
  %i.dx = and i32 %i.dw, 4112
  %or.cond375.not = icmp eq i32 %i.dx, 4112
  br i1 %or.cond375.not, label %bb.h, label %bb.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dy = trunc nuw nsw i64 %indvars.iv to i32
  %i.dz = uitofp nsz nneg i32 %i.dy to float
  %i.ea = fmul reassoc nnan nsz arcp contract afn float %i.dz, f0x40C90FDB
  %i.eb = fmul reassoc nsz arcp contract afn float %i.ea, %i.du
  %sincos371 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.eb) ; 2 uses
  %sin372 = extractvalue { float, float } %sincos371, 0
  %cos373 = extractvalue { float, float } %sincos371, 1
  %.idx471 = shl nuw nsw i64 %indvars.iv, 3
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx471
  %i.ed = insertelement <2 x float> poison, float %cos373, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = fmul reassoc nsz arcp contract afn <2 x float> %i.cy, %i.ee
  %i.eg = fadd reassoc nsz arcp contract afn <2 x float> %i.ef, %i.t
  %i.eh = insertelement <2 x float> poison, float %sin372, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = fmul reassoc nsz arcp contract afn <2 x float> %i.dv, %i.ei
  %i.ek = fadd reassoc nsz arcp contract afn <2 x float> %i.eg, %i.ej
  store <2 x float> %i.ek, ptr %i.ec, align 8, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !195

bb.h:                                             ; preds = %._crit_edge
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.em = call i32 @gettimeofday(ptr noundef nonnull %12, ptr noundef null) #12 ; 0 uses
  %i.en = load i64, ptr %12, align 8, !tbaa !129
  %i.eo = add nsw i64 %i.en, -1290608000
  %i.ep = sitofp reassoc nsz arcp contract afn i64 %i.eo to double
  %i.eq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !130
  %i.es = sitofp reassoc nsz arcp contract afn i64 %i.er to double
  %i.et = fmul reassoc nnan nsz arcp contract afn double %i.es, f0x3EB0C6F7A0B5ED8D
  %i.eu = fadd reassoc nsz arcp contract afn double %i.et, %i.ep ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.ev = fsub reassoc nsz arcp contract afn double %i.eu, %.0
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.24, ptr noundef nonnull %i.el, double noundef %i.ev) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %.1 = phi nsz double [ %.0, %._crit_edge ], [ %i.eu, %bb.h ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !132
  %i.ey = load ptr, ptr %i.n, align 8, !tbaa !138
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 16, !tbaa !126
  %i.fb = sitofp reassoc nsz arcp contract afn i32 %i.fa to double
  %i.fc = tail call i32 @dt_dev_distort_transform_plus(ptr noundef %i.ex, ptr noundef %i.ey, double noundef %i.fb, i32 noundef 3, ptr noundef nonnull %i.cq, i64 noundef %i.co) #12
  %.not348 = icmp eq i32 %i.fc, 0
  br i1 %.not348, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.cq) #12
  br label %bb.ai

bb.k:                                             ; preds = %bb.i
  %i.fd = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !127
  %i.fe = and i32 %i.fd, 4112
  %or.cond376.not = icmp eq i32 %i.fe, 4112
  br i1 %or.cond376.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.fg = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #12 ; 0 uses
  %i.fh = load i64, ptr %11, align 8, !tbaa !129
  %i.fi = add nsw i64 %i.fh, -1290608000
  %i.fj = sitofp reassoc nsz arcp contract afn i64 %i.fi to double
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !130
  %i.fm = sitofp reassoc nsz arcp contract afn i64 %i.fl to double
  %i.fn = fmul reassoc nnan nsz arcp contract afn double %i.fm, f0x3EB0C6F7A0B5ED8D
  %i.fo = fadd reassoc nsz arcp contract afn double %i.fn, %i.fj ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.fp = fsub reassoc nsz arcp contract afn double %i.fo, %.1
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.25, ptr noundef nonnull %i.ff, double noundef %i.fp) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2397 = phi nsz double [ %.1, %bb.k ], [ %i.fo, %bb.l ] ; 2 uses
  br i1 %.not434, label %._crit_edge415, label %.lr.ph414.preheader

.lr.ph414.preheader:                              ; preds = %bb.m
  %wide.trip.count441 = zext i32 %i.cn to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count441, 1
  %i.fq = icmp eq i32 %i.cm, 1
  br i1 %i.fq, label %.lr.ph414.epil.preheader, label %.lr.ph414.preheader.new

.lr.ph414.preheader.new:                          ; preds = %.lr.ph414.preheader
  %unroll_iter = and i64 %wide.trip.count441, 4294967294
  br label %.lr.ph414

._crit_edge415.loopexit.unr-lcssa:                ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge415, label %.lr.ph414.epil.preheader

.lr.ph414.epil.preheader:                         ; preds = %._crit_edge415.loopexit.unr-lcssa, %.lr.ph414.preheader
  %indvars.iv437.epil.init = phi i64 [ 0, %.lr.ph414.preheader ], [ %indvars.iv.next438.1, %._crit_edge415.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ splat (float f0x00800000), %.lr.ph414.preheader ], [ %i.ij, %._crit_edge415.loopexit.unr-lcssa ] ; 4 uses
  %.epil.init571 = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph414.preheader ], [ %i.ik, %._crit_edge415.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod574 = trunc i32 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod574)
  %.idx472.epil = shl nuw nsw i64 %indvars.iv437.epil.init, 3
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx472.epil ; 2 uses
  %i.fs = load float, ptr %i.fr, align 8, !tbaa !26 ; 2 uses
  %i.ft = tail call i1 @llvm.is.fpclass.f32(float %i.fs, /* (nan inf zero sub) */ i32 759)
  br i1 %i.ft, label %._crit_edge415, label %bb.n

bb.n:                                             ; preds = %.lr.ph414.epil.preheader
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !26 ; 2 uses
  %i.fw = tail call i1 @llvm.is.fpclass.f32(float %i.fv, /* (nan inf zero sub) */ i32 759)
  br i1 %i.fw, label %._crit_edge415, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fx = insertelement <2 x float> poison, float %i.fs, i64 0
  %i.fy = insertelement <2 x float> %i.fx, float %i.fv, i64 1 ; 4 uses
  %i.fz = fcmp reassoc nsz arcp contract afn olt <2 x float> %.epil.init571, %i.fy
  %i.ga = fcmp reassoc nsz arcp contract afn ogt <2 x float> %.epil.init, %i.fy
  %i.gb = select <2 x i1> %i.fz, <2 x float> %.epil.init571, <2 x float> %i.fy
  %i.gc = select <2 x i1> %i.ga, <2 x float> %.epil.init, <2 x float> %i.fy
  br label %._crit_edge415

._crit_edge415:                                   ; preds = %._crit_edge415.loopexit.unr-lcssa, %bb.o, %bb.n, %.lr.ph414.epil.preheader, %bb.m
  %i.gd = phi <2 x float> [ splat (float f0x00800000), %bb.m ], [ %i.ij, %._crit_edge415.loopexit.unr-lcssa ], [ %i.gc, %bb.o ], [ %.epil.init, %bb.n ], [ %.epil.init, %.lr.ph414.epil.preheader ]
  %i.ge = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.m ], [ %i.ik, %._crit_edge415.loopexit.unr-lcssa ], [ %i.gb, %bb.o ], [ %.epil.init571, %bb.n ], [ %.epil.init571, %.lr.ph414.epil.preheader ]
  %i.gf = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gh = fmul reassoc nsz arcp contract afn <2 x float> %i.ge, %i.gg
  %i.gi = sitofp reassoc nsz arcp contract afn <2 x i32> %i.be to <2 x float> ; 2 uses
  %i.gj = fmul reassoc nsz arcp contract afn <2 x float> %i.gd, %i.gg
  %i.gk = fsub reassoc nsz arcp contract afn <2 x float> %i.gh, %i.gi
  %i.gl = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.gk)
  %i.gm = fptosi <2 x float> %i.gl to <2 x i32>
  %i.gn = sdiv <2 x i32> %i.gm, %i.bj             ; 2 uses
  %i.go = add nsw <2 x i32> %i.gn, splat (i32 -1) ; 2 uses
  %i.gp = icmp sgt <2 x i32> %i.go, %i.bk
  %i.gq = icmp sgt <2 x i32> %i.gn, zeroinitializer
  %i.gr = select <2 x i1> %i.gq, <2 x i32> %i.go, <2 x i32> zeroinitializer
  %i.gs = select <2 x i1> %i.gp, <2 x i32> %i.bk, <2 x i32> %i.gr ; 6 uses
  %i.gt = fsub reassoc nsz arcp contract afn <2 x float> %i.gj, %i.gi
  %i.gu = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.gt)
  %i.gv = fptosi <2 x float> %i.gu to <2 x i32>
  %i.gw = sdiv <2 x i32> %i.gv, %i.bj             ; 2 uses
  %i.gx = add nsw <2 x i32> %i.gw, splat (i32 2)  ; 2 uses
  %i.gy = icmp sgt <2 x i32> %i.gx, %i.bk
  %i.gz = icmp slt <2 x i32> %i.gw, splat (i32 -2)
  %i.ha = select <2 x i1> %i.gz, <2 x i32> zeroinitializer, <2 x i32> %i.gx
  %i.hb = select <2 x i1> %i.gy, <2 x i32> %i.bk, <2 x i32> %i.ha ; 5 uses
  %i.hc = sub nsw <2 x i32> %i.hb, %i.gs          ; 3 uses
  %i.hd = add nuw nsw <2 x i32> %i.hc, splat (i32 1) ; 2 uses
  tail call void @free(ptr noundef nonnull %i.cq) #12
  %i.he = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !127
  %i.hf = and i32 %i.he, 4112
  %or.cond381.not = icmp eq i32 %i.hf, 4112
  br i1 %or.cond381.not, label %bb.u, label %bb.v

.lr.ph414:                                        ; preds = %bb.t, %.lr.ph414.preheader.new
  %indvars.iv437 = phi i64 [ 0, %.lr.ph414.preheader.new ], [ %indvars.iv.next438.1, %bb.t ] ; 3 uses
  %i.hg = phi <2 x float> [ splat (float f0x00800000), %.lr.ph414.preheader.new ], [ %i.ij, %bb.t ] ; 4 uses
  %i.hh = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph414.preheader.new ], [ %i.ik, %bb.t ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph414.preheader.new ], [ %niter.next.1, %bb.t ]
  %.idx472 = shl nuw nsw i64 %indvars.iv437, 3
  %i.hi = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx472 ; 2 uses
  %i.hj = load float, ptr %i.hi, align 16, !tbaa !26 ; 2 uses
  %i.hk = tail call i1 @llvm.is.fpclass.f32(float %i.hj, /* (nan inf zero sub) */ i32 759)
  br i1 %i.hk, label %.lr.ph414.1, label %bb.p

bb.p:                                             ; preds = %.lr.ph414
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !26 ; 2 uses
  %i.hn = tail call i1 @llvm.is.fpclass.f32(float %i.hm, /* (nan inf zero sub) */ i32 759)
  br i1 %i.hn, label %.lr.ph414.1, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ho = insertelement <2 x float> poison, float %i.hj, i64 0
  %i.hp = insertelement <2 x float> %i.ho, float %i.hm, i64 1 ; 4 uses
  %i.hq = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.hh, %i.hp
  %i.hr = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.hg, %i.hp
  %i.hs = select <2 x i1> %i.hq, <2 x float> %i.hh, <2 x float> %i.hp
  %i.ht = select <2 x i1> %i.hr, <2 x float> %i.hg, <2 x float> %i.hp
  br label %.lr.ph414.1

.lr.ph414.1:                                      ; preds = %.lr.ph414, %bb.p, %bb.q
  %i.hu = phi <2 x float> [ %i.ht, %bb.q ], [ %i.hg, %bb.p ], [ %i.hg, %.lr.ph414 ] ; 4 uses
  %i.hv = phi <2 x float> [ %i.hs, %bb.q ], [ %i.hh, %bb.p ], [ %i.hh, %.lr.ph414 ] ; 4 uses
  %indvars.iv.next438 = shl i64 %indvars.iv437, 3
  %i.hw = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.next438 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load float, ptr %i.hx, align 8, !tbaa !26 ; 2 uses
  %i.hz = tail call i1 @llvm.is.fpclass.f32(float %i.hy, /* (nan inf zero sub) */ i32 759)
  br i1 %i.hz, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.lr.ph414.1
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 12
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !26 ; 2 uses
  %i.ic = tail call i1 @llvm.is.fpclass.f32(float %i.ib, /* (nan inf zero sub) */ i32 759)
  br i1 %i.ic, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.id = insertelement <2 x float> poison, float %i.hy, i64 0
  %i.ie = insertelement <2 x float> %i.id, float %i.ib, i64 1 ; 4 uses
  %i.if = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.hv, %i.ie
  %i.ig = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.hu, %i.ie
  %i.ih = select <2 x i1> %i.if, <2 x float> %i.hv, <2 x float> %i.ie
  %i.ii = select <2 x i1> %i.ig, <2 x float> %i.hu, <2 x float> %i.ie
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.lr.ph414.1
  %i.ij = phi <2 x float> [ %i.ii, %bb.s ], [ %i.hu, %bb.r ], [ %i.hu, %.lr.ph414.1 ] ; 3 uses
  %i.ik = phi <2 x float> [ %i.ih, %bb.s ], [ %i.hv, %bb.r ], [ %i.hv, %.lr.ph414.1 ] ; 3 uses
  %indvars.iv.next438.1 = add nuw nsw i64 %indvars.iv437, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge415.loopexit.unr-lcssa, label %.lr.ph414

bb.u:                                             ; preds = %._crit_edge415
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.im = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #12 ; 0 uses
  %i.in = load i64, ptr %10, align 8, !tbaa !129
  %i.io = add nsw i64 %i.in, -1290608000
  %i.ip = sitofp reassoc nsz arcp contract afn i64 %i.io to double
  %i.iq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !130
  %i.is = sitofp reassoc nsz arcp contract afn i64 %i.ir to double
  %i.it = fmul reassoc nnan nsz arcp contract afn double %i.is, f0x3EB0C6F7A0B5ED8D
  %i.iu = fadd reassoc nsz arcp contract afn double %i.it, %i.ip ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.iv = fsub reassoc nsz arcp contract afn double %i.iu, %.2397
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.26, ptr noundef nonnull %i.il, double noundef %i.iv) #12
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge415
  %.3 = phi nsz double [ %.2397, %._crit_edge415 ], [ %i.iu, %bb.u ] ; 2 uses
  %i.iw = icmp slt <2 x i32> %i.hc, splat (i32 1) ; 2 uses
  %i.ix = extractelement <2 x i1> %i.iw, i64 0
  %i.iy = extractelement <2 x i1> %i.iw, i64 1
  %or.cond = select i1 %i.ix, i1 true, i1 %i.iy
  br i1 %or.cond, label %bb.ai, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.iz = extractelement <2 x i32> %i.hd, i64 0
  %i.ja = zext nneg i32 %i.iz to i64              ; 10 uses
  %i.jb = extractelement <2 x i32> %i.hd, i64 1
  %i.jc = zext nneg i32 %i.jb to i64              ; 2 uses
  %i.jd = shl nuw nsw i64 %i.ja, 3
  %i.je = mul i64 %i.jd, %i.jc
  %i.jf = tail call ptr @dt_alloc_aligned(i64 noundef %i.je) #12 ; 15 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jf, i64 64) ]
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %bb.ai, label %.preheader405

.preheader405:                                    ; preds = %bb.w
  %i.jh = extractelement <2 x i32> %i.hb, i64 1   ; 2 uses
  %i.ji = extractelement <2 x i32> %i.gs, i64 1   ; 4 uses
  %.not353423 = icmp sgt i32 %i.ji, %i.jh
  br i1 %.not353423, label %._crit_edge425.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader405
  %i.jj = extractelement <2 x i32> %i.gs, i64 0
  %i.jk = icmp sgt <2 x i32> %i.gs, %i.hb
  %.not368419 = extractelement <2 x i1> %i.jk, i64 0
  %i.jl = sext i32 %i.jj to i64                   ; 6 uses
  br i1 %.not368419, label %._crit_edge425.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.jm = sext i32 %i.ji to i64                   ; 2 uses
  %i.jn = add <2 x i32> %i.hb, splat (i32 1)      ; 2 uses
  %i.jo = extractelement <2 x i32> %i.hc, i64 0   ; 2 uses
  %i.jp = extractelement <2 x i32> %i.be, i64 1
  %i.jq = extractelement <2 x i32> %i.jn, i64 1
  %min.iters.check486 = icmp ult i32 %i.jo, 3
  %min.iters.check487 = icmp ult i32 %i.jo, 31
  %i.jr = and i64 %i.ja, 28
  %n.vec489 = and i64 %i.ja, 2147483616           ; 4 uses
  %i.js = add nsw i64 %n.vec489, %i.jl            ; 2 uses
  %broadcast.splatinsert492 = insertelement <8 x i32> poison, i32 %i.bb, i64 0
  %broadcast.splat493 = shufflevector <8 x i32> %broadcast.splatinsert492, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat495 = shufflevector <2 x i32> %i.be, <2 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert496 = insertelement <8 x float> poison, float %i.ax, i64 0
  %broadcast.splat497 = shufflevector <8 x float> %broadcast.splatinsert496, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat499 = shufflevector <2 x i32> %i.gs, <2 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat499, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %cmp.n510 = icmp eq i64 %n.vec489, %i.ja
  %min.epilog.iters.check = icmp eq i64 %i.jr, 0
  %n.vec512 = and i64 %i.ja, 2147483644           ; 3 uses
  %i.jt = add nsw i64 %n.vec512, %i.jl
  %broadcast.splatinsert515 = insertelement <4 x i32> poison, i32 %i.bb, i64 0
  %broadcast.splat516 = shufflevector <4 x i32> %broadcast.splatinsert515, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat518 = shufflevector <2 x i32> %i.be, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert519 = insertelement <4 x float> poison, float %i.ax, i64 0
  %broadcast.splat520 = shufflevector <4 x float> %broadcast.splatinsert519, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n529 = icmp eq i64 %n.vec512, %i.ja
  %i.ju = extractelement <2 x i32> %i.be, i64 0
  %i.jv = extractelement <2 x i32> %i.jn, i64 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge422
  %indvars.iv447 = phi i64 [ %i.jm, %.preheader.preheader ], [ %indvars.iv.next448, %._crit_edge422 ] ; 3 uses
  %i.jw = sub nsw i64 %indvars.iv447, %i.jm
  %i.jx = mul nuw nsw i64 %i.jw, %i.ja            ; 3 uses
  %i.jy = sub i64 %i.jx, %i.jl                    ; 4 uses
  %i.jz = trunc i64 %indvars.iv447 to i32
  %i.ka = mul i32 %i.bb, %i.jz
  %i.kb = add i32 %i.ka, %i.jp
  %i.kc = sitofp reassoc nsz arcp contract afn i32 %i.kb to float
  %i.kd = fmul reassoc nsz arcp contract afn float %i.ax, %i.kc ; 3 uses
  br i1 %min.iters.check486, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check487, label %vec.epilog.ph, label %vector.ph488

vector.ph488:                                     ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert490 = insertelement <8 x float> poison, float %i.kd, i64 0 ; 4 uses
  %invariant.op = add i64 8, %i.jy
  %invariant.op577 = add i64 16, %i.jy
  %invariant.op579 = add i64 24, %i.jy
  br label %vector.body500

vector.body500:                                   ; preds = %vector.ph488, %vector.body500
  %index501 = phi i64 [ 0, %vector.ph488 ], [ %index.next507, %vector.body500 ] ; 3 uses
  %vec.ind502 = phi <8 x i32> [ %induction, %vector.ph488 ], [ %vec.ind.next508, %vector.body500 ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind502, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind502, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind502, splat (i32 24)
  %i.ke = add i64 %index501, %i.jl                ; 3 uses
  %i.kf = add i64 %index501, %i.jx
  %.reass = add i64 %i.ke, %invariant.op
  %.reass578 = add i64 %i.ke, %invariant.op577
end_hunk_0
begin_hunk_1_@_ellipse_get_mask_roi:bb.a
  %i.po = shufflevector <2 x float> %i.pn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pp = fmul reassoc nsz arcp contract afn <2 x float> %i.po, %i.oz ; 2 uses
  %i.pq = fmul reassoc nsz arcp contract afn <2 x float> %i.pn, %i.pb ; 2 uses
  %i.pr = fadd reassoc nsz arcp contract afn <2 x float> %i.pp, %i.pq
  %i.ps = fsub reassoc nsz arcp contract afn <2 x float> %i.pp, %i.pq
  %i.pt = shufflevector <2 x float> %i.ps, <2 x float> %i.pr, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.pu = fmul reassoc nsz arcp contract afn <2 x float> %i.pt, %i.pt ; 2 uses
  %i.pv = shufflevector <2 x float> %i.pu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pw = fmul reassoc nsz arcp contract afn <2 x float> %i.pv, %i.nk
  %i.px = fmul reassoc nsz arcp contract afn <2 x float> %i.pu, %i.ng
  %i.py = fadd reassoc nsz arcp contract afn <2 x float> %i.px, %i.pw
  %i.pz = fdiv reassoc nsz arcp contract afn <2 x float> %i.nl, %i.py ; 2 uses
  %i.qa = extractelement <2 x float> %i.pz, i64 1 ; 2 uses
  %i.qb = fsub reassoc nsz arcp contract afn float %i.qa, %i.pf
  %i.qc = extractelement <2 x float> %i.pz, i64 0
  %i.qd = fsub reassoc nsz arcp contract afn float %i.qa, %i.qc
  %i.qe = fdiv reassoc nsz arcp contract afn float %i.qb, %i.qd ; 3 uses
  %i.qf = fcmp reassoc nsz arcp contract afn oge float %i.qe, 0.000000e+00
  %i.qg = fcmp reassoc nsz arcp contract afn ole float %i.qe, 1.000000e+00
  %i.qh = select reassoc nsz arcp contract afn i1 %i.qg, float %i.qe, float 1.000000e+00
  %i.qi = select reassoc nsz arcp contract afn i1 %i.qf, float %i.qh, float 0.000000e+00 ; 2 uses
  %i.qj = fmul reassoc nsz arcp contract afn float %i.qi, %i.qi
  store float %i.qj, ptr %i.pc, align 8, !tbaa !26
  %i.qk = add nuw nsw i64 %.01.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.qk, %i.mn
  br i1 %exitcond.not.i, label %_fill_mask.exit, label %scalar.ph531, !llvm.loop !200

_fill_mask.exit:                                  ; preds = %scalar.ph531, %middle.block561
  %i.ql = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !127
  %i.qm = and i32 %i.ql, 4112
  %or.cond384.not = icmp eq i32 %i.qm, 4112
  br i1 %or.cond384.not, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_fill_mask.exit
  %i.qn = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.qo = call i32 @gettimeofday(ptr noundef nonnull %7, ptr noundef null) #12 ; 0 uses
  %i.qp = load i64, ptr %7, align 8, !tbaa !129
  %i.qq = add nsw i64 %i.qp, -1290608000
  %i.qr = sitofp reassoc nsz arcp contract afn i64 %i.qq to double
  %i.qs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !130
  %i.qu = sitofp reassoc nsz arcp contract afn i64 %i.qt to double
  %i.qv = fmul reassoc nnan nsz arcp contract afn double %i.qu, f0x3EB0C6F7A0B5ED8D
  %i.qw = fadd reassoc nsz arcp contract afn double %i.qv, %i.qr
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.qx = fsub reassoc nsz arcp contract afn double %i.qw, %.5
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.qn, double noundef %i.qx) #12
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_fill_mask.exit
  %i.qy = extractelement <2 x i32> %i.hb, i64 0
  %i.qz = mul i32 %i.qy, %i.bb
  %i.ra = extractelement <2 x i32> %i.bd, i64 0   ; 2 uses
  %i.rb = tail call i32 @llvm.smin.i32(i32 %i.ra, i32 %i.qz) ; 2 uses
  %i.rc = mul nsw i32 %i.jh, %i.bb
  %i.rd = extractelement <2 x i32> %i.bd, i64 1
  %i.re = tail call i32 @llvm.smin.i32(i32 %i.rd, i32 %i.rc) ; 2 uses
  %i.rf = mul nsw i32 %i.ji, %i.bb                ; 2 uses
  %i.rg = icmp slt i32 %i.rf, %i.re
  br i1 %i.rg, label %.lr.ph432, label %._crit_edge433.split

.lr.ph432:                                        ; preds = %bb.ad
  %i.rh = extractelement <2 x i32> %i.gs, i64 0   ; 2 uses
  %i.ri = mul nsw i32 %i.rh, %i.bb                ; 2 uses
  %i.rj = icmp slt i32 %i.ri, %i.rb
  %i.rk = sext i32 %i.ra to i64
  br i1 %i.rj, label %.lr.ph428.preheader, label %._crit_edge433.split

.lr.ph428.preheader:                              ; preds = %.lr.ph432
  %i.rl = mul nuw nsw i32 %i.bb, %i.bb
  %i.rm = uitofp nsz nneg i32 %i.rl to float
  %i.rn = sext i32 %i.ri to i64
  %i.ro = sext i32 %i.rf to i64
  %wide.trip.count460 = sext i32 %i.re to i64
  %wide.trip.count455 = sext i32 %i.rb to i64
  %i.rp = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.rm
  br label %.lr.ph428

._crit_edge433.split:                             ; preds = %._crit_edge429, %.lr.ph432, %bb.ad
  tail call void @free(ptr noundef nonnull %i.jf) #12
  %i.rq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !127 ; 2 uses
  %i.rr = and i32 %i.rq, 4112
  %or.cond385.not = icmp eq i32 %i.rr, 4112
  br i1 %or.cond385.not, label %bb.af, label %bb.ag

.lr.ph428:                                        ; preds = %.lr.ph428.preheader, %._crit_edge429
  %indvars.iv457 = phi i64 [ %i.ro, %.lr.ph428.preheader ], [ %indvars.iv.next458, %._crit_edge429 ] ; 3 uses
  %i.rs = trunc nsw i64 %indvars.iv457 to i32     ; 2 uses
  %i.rt = srem i32 %i.rs, %i.bb                   ; 2 uses
  %i.ru = sdiv i32 %i.rs, %i.bb
  %i.rv = sub nsw i32 %i.ru, %i.ji
  %i.rw = sext i32 %i.rv to i64
  %i.rx = mul nsw i64 %i.rw, %i.ja
  %i.ry = sub nsw i32 %i.bb, %i.rt
  %i.rz = sitofp reassoc nsz arcp contract afn i32 %i.ry to float
  %i.sa = sitofp reassoc nsz arcp contract afn i32 %i.rt to float
  %i.sb = mul nsw i64 %indvars.iv457, %i.rk
  %i.sc = getelementptr [4 x i8], ptr %4, i64 %i.sb
  br label %bb.ae

._crit_edge429:                                   ; preds = %bb.ae
  %indvars.iv.next458 = add nsw i64 %indvars.iv457, 1 ; 2 uses
  %exitcond461.not = icmp eq i64 %indvars.iv.next458, %wide.trip.count460
  br i1 %exitcond461.not, label %._crit_edge433.split, label %.lr.ph428

bb.ae:                                            ; preds = %.lr.ph428, %bb.ae
  %indvars.iv452 = phi i64 [ %i.rn, %.lr.ph428 ], [ %indvars.iv.next453, %bb.ae ] ; 3 uses
  %i.sd = trunc nsw i64 %indvars.iv452 to i32     ; 2 uses
  %i.se = srem i32 %i.sd, %i.bb                   ; 2 uses
  %i.sf = sdiv i32 %i.sd, %i.bb
  %i.sg = sub nsw i32 %i.sf, %i.rh
  %i.sh = sext i32 %i.sg to i64
  %i.si = add nsw i64 %i.rx, %i.sh                ; 2 uses
  %.idx = shl nsw i64 %i.si, 3
  %i.sj = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.idx ; 2 uses
  %i.sk = load float, ptr %i.sj, align 8, !tbaa !26
  %i.sl = sub nsw i32 %i.bb, %i.se
  %i.sm = sitofp reassoc nsz arcp contract afn i32 %i.sl to float ; 2 uses
  %i.sn = fmul reassoc nsz arcp contract afn float %i.sk, %i.sm
  %i.so = getelementptr i8, ptr %i.sj, i64 8
  %i.sp = load float, ptr %i.so, align 8, !tbaa !26
  %i.sq = sitofp reassoc nsz arcp contract afn i32 %i.se to float ; 2 uses
  %i.sr = fmul reassoc nsz arcp contract afn float %i.sp, %i.sq
  %i.ss = fadd reassoc nsz arcp contract afn float %i.sr, %i.sn
  %i.st = fmul reassoc nsz arcp contract afn float %i.ss, %i.rz
  %i.su = add nsw i64 %i.si, %i.ja
  %.idx366 = shl nsw i64 %i.su, 3
  %i.sv = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.idx366 ; 2 uses
  %i.sw = load float, ptr %i.sv, align 8, !tbaa !26
  %i.sx = fmul reassoc nsz arcp contract afn float %i.sw, %i.sm
  %i.sy = getelementptr i8, ptr %i.sv, i64 8
  %i.sz = load float, ptr %i.sy, align 8, !tbaa !26
  %i.ta = fmul reassoc nsz arcp contract afn float %i.sz, %i.sq
  %reass.add = fadd reassoc nsz arcp contract afn float %i.ta, %i.sx
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add, %i.sa
  %i.tb = fadd reassoc nsz arcp contract afn float %reass.mul, %i.st
  %i.tc = fmul reassoc nsz arcp contract afn float %i.tb, %i.rp
  %i.td = getelementptr [4 x i8], ptr %i.sc, i64 %indvars.iv452
  store float %i.tc, ptr %i.td, align 4, !tbaa !26
  %indvars.iv.next453 = add nsw i64 %indvars.iv452, 1 ; 2 uses
  %exitcond456.not = icmp eq i64 %indvars.iv.next453, %wide.trip.count455
  br i1 %exitcond456.not, label %._crit_edge429, label %bb.ae

bb.af:                                            ; preds = %._crit_edge433.split
  %i.te = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.tf = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #12 ; 0 uses
  %i.tg = load i64, ptr %6, align 8, !tbaa !129
  %i.th = add nsw i64 %i.tg, -1290608000
  %i.ti = sitofp reassoc nsz arcp contract afn i64 %i.th to double
  %i.tj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !130
  %i.tl = sitofp reassoc nsz arcp contract afn i64 %i.tk to double
  %i.tm = fmul reassoc nnan nsz arcp contract afn double %i.tl, f0x3EB0C6F7A0B5ED8D
  %i.tn = fadd reassoc nsz arcp contract afn double %i.tm, %i.ti
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.to = fsub reassoc nsz arcp contract afn double %i.tn, %.5
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.te, double noundef %i.to) #12
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !127
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge433.split, %bb.af
  %i.tp = phi i32 [ %i.rq, %._crit_edge433.split ], [ %.pre, %bb.af ]
  %i.tq = and i32 %i.tp, 4112
  %or.cond386.not = icmp eq i32 %i.tq, 4112
  br i1 %or.cond386.not, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.tr = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.ts = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #12 ; 0 uses
  %i.tt = load i64, ptr %5, align 8, !tbaa !129
  %i.tu = add nsw i64 %i.tt, -1290608000
  %i.tv = sitofp reassoc nsz arcp contract afn i64 %i.tu to double
  %i.tw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !130
  %i.ty = sitofp reassoc nsz arcp contract afn i64 %i.tx to double
  %i.tz = fmul reassoc nnan nsz arcp contract afn double %i.ty, f0x3EB0C6F7A0B5ED8D
  %i.ua = fadd reassoc nsz arcp contract afn double %i.tz, %i.tv
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.ub = fsub reassoc nsz arcp contract afn double %i.ua, %i.k
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.28, ptr noundef nonnull %i.tr, double noundef %i.ub) #12
  br label %bb.ai

bb.ai:                                            ; preds = %bb.v, %bb.ag, %bb.ah, %bb.w, %bb.z, %bb.g, %bb.j
  %.2 = phi i32 [ 0, %bb.j ], [ 0, %bb.g ], [ 1, %bb.v ], [ 0, %bb.z ], [ 0, %bb.w ], [ 1, %bb.ah ], [ 1, %bb.ag ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_ellipse_get_area(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !23
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !138
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.g = load <2 x i32>, ptr %i.f, align 16, !tbaa !32
  %i.h = sitofp reassoc nsz arcp contract afn <2 x i32> %i.g to <2 x float> ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = load i32, ptr %i.i, align 4, !tbaa !29
  %i.k = and i32 %i.j, 1
  %.not = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !26 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.o = load float, ptr %i.n, align 4, !tbaa !30 ; 3 uses
  %i.p = extractelement <2 x float> %i.h, i64 0   ; 3 uses
  %i.q = extractelement <2 x float> %i.h, i64 1   ; 3 uses
  %i.r = fcmp reassoc nsz arcp contract afn olt float %i.p, %i.q
  %i.s = select reassoc nsz arcp contract afn i1 %i.r, float %i.p, float %i.q ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = fadd reassoc nsz arcp contract afn float %i.o, 1.000000e+00 ; 2 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.m, %i.s
  %i.v = fmul reassoc nsz arcp contract afn float %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.x = load float, ptr %i.w, align 4, !tbaa !26
  %i.y = fmul reassoc nsz arcp contract afn float %i.t, %i.x
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.z = fadd reassoc nsz arcp contract afn float %i.o, %i.m
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, %i.s
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !26
  %i.ad = fadd reassoc nsz arcp contract afn float %i.o, %i.ac
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ae = phi float [ %i.v, %bb.b ], [ %i.aa, %bb.c ]
  %i.af = phi reassoc nsz arcp contract afn float [ %i.y, %bb.b ], [ %i.ad, %bb.c ]
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8, !tbaa !139
  %i.ah = load float, ptr %i.c, align 4, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.al = load float, ptr %i.ak, align 4, !tbaa !31
  %i.am = call fastcc ptr @_ellipse_points_to_transform(float noundef %i.ah, float noundef %i.aj, float noundef %i.ae, float noundef %i.ag, float noundef %i.al, float noundef %i.p, float noundef %i.q, ptr noundef %i.a) ; 8 uses
  %.not40 = icmp eq ptr %i.am, null
  br i1 %.not40, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !132
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !138
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ar = load i32, ptr %i.aq, align 16, !tbaa !126
  %i.as = sitofp reassoc nsz arcp contract afn i32 %i.ar to double
  %i.at = load i64, ptr %i.a, align 8, !tbaa !139 ; 3 uses
  %i.au = tail call i32 @dt_dev_distort_transform_plus(ptr noundef %i.ao, ptr noundef %i.ap, double noundef %i.as, i32 noundef 3, ptr noundef nonnull %i.am, i64 noundef %i.at) #12
  %.not41 = icmp eq i32 %i.au, 0
  br i1 %.not41, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = trunc i64 %i.at to i32
  %i.aw = icmp sgt i32 %i.av, 1
  br i1 %i.aw, label %.lr.ph.preheader.i, label %_bounding_box.exit

.lr.ph.preheader.i:                               ; preds = %bb.f
  %wide.trip.count.i = and i64 %i.at, 2147483647  ; 2 uses
  %i.ax = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ax, 32
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.ax, -32                     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <8 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.ce, %vector.body ] ; 2 uses
  %vec.phi55 = phi <8 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.cf, %vector.body ] ; 2 uses
  %vec.phi56 = phi <8 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.cg, %vector.body ] ; 2 uses
  %vec.phi57 = phi <8 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.ch, %vector.body ] ; 2 uses
  %vec.phi58 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.ca, %vector.body ] ; 2 uses
  %vec.phi59 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.cb, %vector.body ] ; 2 uses
  %vec.phi60 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.cc, %vector.body ] ; 2 uses
  %vec.phi61 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.cd, %vector.body ] ; 2 uses
  %vec.phi62 = phi <8 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.bs, %vector.body ] ; 2 uses
  %vec.phi63 = phi <8 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.bt, %vector.body ] ; 2 uses
  %vec.phi64 = phi <8 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.bu, %vector.body ] ; 2 uses
  %vec.phi65 = phi <8 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.bv, %vector.body ] ; 2 uses
  %vec.phi66 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.bo, %vector.body ] ; 2 uses
  %vec.phi67 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.bp, %vector.body ] ; 2 uses
  %vec.phi68 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.bq, %vector.body ] ; 2 uses
  %vec.phi69 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.br, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 3
  %i.az = shl i64 %index, 3
  %i.ba = shl i64 %index, 3
  %i.bb = shl i64 %index, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ay
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ba
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 136
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bb
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 200
  %wide.vec = load <16 x float>, ptr %i.bd, align 4, !tbaa !26 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec70 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec71 = load <16 x float>, ptr %i.bf, align 4, !tbaa !26 ; 2 uses
  %strided.vec72 = shufflevector <16 x float> %wide.vec71, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec73 = shufflevector <16 x float> %wide.vec71, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec74 = load <16 x float>, ptr %i.bh, align 4, !tbaa !26 ; 2 uses
  %strided.vec75 = shufflevector <16 x float> %wide.vec74, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec76 = shufflevector <16 x float> %wide.vec74, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec77 = load <16 x float>, ptr %i.bj, align 4, !tbaa !26 ; 2 uses
  %strided.vec78 = shufflevector <16 x float> %wide.vec77, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec79 = shufflevector <16 x float> %wide.vec77, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.bk = freeze <8 x float> %strided.vec         ; 3 uses
  %i.bl = freeze <8 x float> %strided.vec72       ; 3 uses
  %i.bm = freeze <8 x float> %strided.vec75       ; 3 uses
  %i.bn = freeze <8 x float> %strided.vec78       ; 3 uses
  %i.bo = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bk, <8 x float> %vec.phi66) ; 2 uses
  %i.bp = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bl, <8 x float> %vec.phi67) ; 2 uses
  %i.bq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bm, <8 x float> %vec.phi68) ; 2 uses
  %i.br = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bn, <8 x float> %vec.phi69) ; 2 uses
  %i.bs = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bk, <8 x float> %vec.phi62) ; 2 uses
  %i.bt = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bl, <8 x float> %vec.phi63) ; 2 uses
  %i.bu = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bm, <8 x float> %vec.phi64) ; 2 uses
  %i.bv = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bn, <8 x float> %vec.phi65) ; 2 uses
  %i.bw = freeze <8 x float> %strided.vec70       ; 3 uses
  %i.bx = freeze <8 x float> %strided.vec73       ; 3 uses
  %i.by = freeze <8 x float> %strided.vec76       ; 3 uses
  %i.bz = freeze <8 x float> %strided.vec79       ; 3 uses
  %i.ca = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bw, <8 x float> %vec.phi58) ; 2 uses
  %i.cb = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bx, <8 x float> %vec.phi59) ; 2 uses
  %i.cc = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.by, <8 x float> %vec.phi60) ; 2 uses
  %i.cd = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bz, <8 x float> %vec.phi61) ; 2 uses
  %i.ce = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bw, <8 x float> %vec.phi) ; 2 uses
  %i.cf = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bx, <8 x float> %vec.phi55) ; 2 uses
  %i.cg = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.by, <8 x float> %vec.phi56) ; 2 uses
  %i.ch = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bz, <8 x float> %vec.phi57) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ci = fcmp uno <8 x float> %i.bw, %i.bk
  %i.cj = fcmp uno <8 x float> %i.bx, %i.bl
  %i.ck = fcmp uno <8 x float> %i.by, %i.bm
  %i.cl = fcmp uno <8 x float> %i.bz, %i.bn
  %i.cm = or <8 x i1> %i.ci, %i.cj
  %i.cn = or <8 x i1> %i.cm, %i.ck
  %i.co = or <8 x i1> %i.cn, %i.cl
  %i.cp = bitcast <8 x i1> %i.co to i8
  %i.cq = icmp ne i8 %i.cp, 0                     ; 19 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  %i.cs = or i1 %i.cq, %i.cr
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %i.ct = select i1 %i.cq, <8 x float> %vec.phi, <8 x float> %i.ce
  %i.cu = select i1 %i.cq, <8 x float> %vec.phi55, <8 x float> %i.cf
  %i.cv = select i1 %i.cq, <8 x float> %vec.phi56, <8 x float> %i.cg
  %i.cw = select i1 %i.cq, <8 x float> %vec.phi57, <8 x float> %i.ch
  %i.cx = select i1 %i.cq, <8 x float> %vec.phi58, <8 x float> %i.ca
  %i.cy = select i1 %i.cq, <8 x float> %vec.phi59, <8 x float> %i.cb
  %i.cz = select i1 %i.cq, <8 x float> %vec.phi60, <8 x float> %i.cc
  %i.da = select i1 %i.cq, <8 x float> %vec.phi61, <8 x float> %i.cd
  %i.db = select i1 %i.cq, <8 x float> %vec.phi62, <8 x float> %i.bs
  %i.dc = select i1 %i.cq, <8 x float> %vec.phi63, <8 x float> %i.bt
  %i.dd = select i1 %i.cq, <8 x float> %vec.phi64, <8 x float> %i.bu
  %i.de = select i1 %i.cq, <8 x float> %vec.phi65, <8 x float> %i.bv
  %i.df = select i1 %i.cq, <8 x float> %vec.phi66, <8 x float> %i.bo
  %i.dg = select i1 %i.cq, <8 x float> %vec.phi67, <8 x float> %i.bp
  %i.dh = select i1 %i.cq, <8 x float> %vec.phi68, <8 x float> %i.bq
  %i.di = select i1 %i.cq, <8 x float> %vec.phi69, <8 x float> %i.br
  %i.dj = select i1 %i.cq, i64 %index, i64 %n.vec
  %rdx.minmax = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ct, <8 x float> %i.cu)
  %rdx.minmax80 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax, <8 x float> %i.cv)
  %rdx.minmax81 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax80, <8 x float> %i.cw)
  %i.dk = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax81)
  %i.dl = or disjoint i64 %i.dj, 1
  %rdx.minmax82 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.cx, <8 x float> %i.cy)
  %rdx.minmax83 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax82, <8 x float> %i.cz)
  %rdx.minmax84 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax83, <8 x float> %i.da)
  %i.dm = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax84)
  %rdx.minmax85 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.db, <8 x float> %i.dc)
  %rdx.minmax86 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax85, <8 x float> %i.dd)
  %rdx.minmax87 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax86, <8 x float> %i.de)
  %i.dn = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax87)
  %rdx.minmax88 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.df, <8 x float> %i.dg)
  %rdx.minmax89 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax88, <8 x float> %i.dh)
  %rdx.minmax90 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax89, <8 x float> %i.di)
  %i.do = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax90)
  %cmp.n = icmp ne i64 %i.ax, %n.vec
  %.not94 = or i1 %cmp.n, %i.cq
  %i.dp = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dq = insertelement <2 x float> %i.dp, float %i.dk, i64 1 ; 2 uses
  %i.dr = insertelement <2 x float> poison, float %i.do, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.dm, i64 1 ; 2 uses
  br i1 %.not94, label %.lr.ph.i.preheader, label %_bounding_box.exit

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.dl, %middle.block ]
  %.ph = phi <2 x float> [ splat (float f0x00800000), %.lr.ph.preheader.i ], [ %i.dq, %middle.block ]
  %.ph95 = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph.preheader.i ], [ %i.ds, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.dt = phi <2 x float> [ %i.dy, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ]
  %i.du = phi <2 x float> [ %i.dx, %.lr.ph.i ], [ %.ph95, %.lr.ph.i.preheader ]
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i
  %i.dw = load <2 x float>, ptr %i.dv, align 4, !tbaa !26 ; 2 uses
  %i.dx = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.dw, <2 x float> %i.du) ; 2 uses
  %i.dy = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dw, <2 x float> %i.dt) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_bounding_box.exit, label %.lr.ph.i, !llvm.loop !203

_bounding_box.exit:                               ; preds = %.lr.ph.i, %middle.block, %bb.f
  %i.dz = phi <2 x float> [ splat (float f0x00800000), %bb.f ], [ %i.dq, %middle.block ], [ %i.dy, %.lr.ph.i ]
  %i.ea = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.f ], [ %i.ds, %middle.block ], [ %i.dx, %.lr.ph.i ] ; 3 uses
  %i.eb = extractelement <2 x float> %i.ea, i64 0
  %i.ec = fptosi float %i.eb to i32
  store i32 %i.ec, ptr %5, align 4, !tbaa !32
  %i.ed = extractelement <2 x float> %i.ea, i64 1
  %i.ee = fptosi float %i.ed to i32
  store i32 %i.ee, ptr %6, align 4, !tbaa !32
  %i.ef = fsub reassoc nsz arcp contract afn <2 x float> %i.dz, %i.ea
  %i.eg = fptosi <2 x float> %i.ef to <2 x i32>   ; 2 uses
  %i.eh = extractelement <2 x i32> %i.eg, i64 0
  store i32 %i.eh, ptr %3, align 4, !tbaa !32
  %i.ei = extractelement <2 x i32> %i.eg, i64 1
  store i32 %i.ei, ptr %4, align 4, !tbaa !32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %_bounding_box.exit
  %.0.ph = phi i32 [ 1, %_bounding_box.exit ], [ 0, %bb.e ]
  tail call void @free(ptr noundef nonnull %i.am) #12
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_ellipse_get_source_area(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !23
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !138
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.g = load <2 x i32>, ptr %i.f, align 16, !tbaa !32
  %i.h = sitofp reassoc nsz arcp contract afn <2 x i32> %i.g to <2 x float> ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = load i32, ptr %i.i, align 4, !tbaa !29
  %i.k = and i32 %i.j, 1
  %.not = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !26 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.o = load float, ptr %i.n, align 4, !tbaa !30 ; 3 uses
  %i.p = extractelement <2 x float> %i.h, i64 0   ; 3 uses
  %i.q = extractelement <2 x float> %i.h, i64 1   ; 3 uses
  %i.r = fcmp reassoc nsz arcp contract afn olt float %i.p, %i.q
  %i.s = select reassoc nsz arcp contract afn i1 %i.r, float %i.p, float %i.q ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = fadd reassoc nsz arcp contract afn float %i.o, 1.000000e+00 ; 2 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.m, %i.s
  %i.v = fmul reassoc nsz arcp contract afn float %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.x = load float, ptr %i.w, align 4, !tbaa !26
  %i.y = fmul reassoc nsz arcp contract afn float %i.t, %i.x
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.z = fadd reassoc nsz arcp contract afn float %i.o, %i.m
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, %i.s
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !26
  %i.ad = fadd reassoc nsz arcp contract afn float %i.o, %i.ac
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ae = phi float [ %i.v, %bb.b ], [ %i.aa, %bb.c ]
  %i.af = phi reassoc nsz arcp contract afn float [ %i.y, %bb.b ], [ %i.ad, %bb.c ]
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8, !tbaa !139
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.am = load float, ptr %i.al, align 4, !tbaa !31
  %i.an = call fastcc ptr @_ellipse_points_to_transform(float noundef %i.ai, float noundef %i.ak, float noundef %i.ae, float noundef %i.ag, float noundef %i.am, float noundef %i.p, float noundef %i.q, ptr noundef %i.a) ; 8 uses
  %.not39 = icmp eq ptr %i.an, null
  br i1 %.not39, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !138
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ar = load i32, ptr %i.aq, align 16, !tbaa !126
  %i.as = sitofp reassoc nsz arcp contract afn i32 %i.ar to double
  %i.at = load i64, ptr %i.a, align 8, !tbaa !139 ; 3 uses
  %i.au = tail call i32 @dt_dev_distort_transform_plus(ptr noundef %i.ao, ptr noundef %i.ap, double noundef %i.as, i32 noundef 3, ptr noundef nonnull %i.an, i64 noundef %i.at) #12
  %.not40 = icmp eq i32 %i.au, 0
  br i1 %.not40, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = trunc i64 %i.at to i32
  %i.aw = icmp sgt i32 %i.av, 1
  br i1 %i.aw, label %.lr.ph.preheader.i, label %_bounding_box.exit

.lr.ph.preheader.i:                               ; preds = %bb.f
  %wide.trip.count.i = and i64 %i.at, 2147483647  ; 2 uses
  %i.ax = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ax, 32
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.ax, -32                     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <8 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.ce, %vector.body ] ; 2 uses
  %vec.phi54 = phi <8 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.cf, %vector.body ] ; 2 uses
  %vec.phi55 = phi <8 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.cg, %vector.body ] ; 2 uses
  %vec.phi56 = phi <8 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.ch, %vector.body ] ; 2 uses
  %vec.phi57 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.ca, %vector.body ] ; 2 uses
  %vec.phi58 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.cb, %vector.body ] ; 2 uses
  %vec.phi59 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.cc, %vector.body ] ; 2 uses
  %vec.phi60 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.cd, %vector.body ] ; 2 uses
  %vec.phi61 = phi <8 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.bs, %vector.body ] ; 2 uses
  %vec.phi62 = phi <8 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.bt, %vector.body ] ; 2 uses
  %vec.phi63 = phi <8 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.bu, %vector.body ] ; 2 uses
  %vec.phi64 = phi <8 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.bv, %vector.body ] ; 2 uses
  %vec.phi65 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.bo, %vector.body ] ; 2 uses
  %vec.phi66 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.bp, %vector.body ] ; 2 uses
  %vec.phi67 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.bq, %vector.body ] ; 2 uses
  %vec.phi68 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.br, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 3
  %i.az = shl i64 %index, 3
  %i.ba = shl i64 %index, 3
  %i.bb = shl i64 %index, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ay
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ba
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 136
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bb
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 200
  %wide.vec = load <16 x float>, ptr %i.bd, align 4, !tbaa !26 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec69 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec70 = load <16 x float>, ptr %i.bf, align 4, !tbaa !26 ; 2 uses
  %strided.vec71 = shufflevector <16 x float> %wide.vec70, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec72 = shufflevector <16 x float> %wide.vec70, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec73 = load <16 x float>, ptr %i.bh, align 4, !tbaa !26 ; 2 uses
  %strided.vec74 = shufflevector <16 x float> %wide.vec73, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec75 = shufflevector <16 x float> %wide.vec73, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec76 = load <16 x float>, ptr %i.bj, align 4, !tbaa !26 ; 2 uses
  %strided.vec77 = shufflevector <16 x float> %wide.vec76, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec78 = shufflevector <16 x float> %wide.vec76, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.bk = freeze <8 x float> %strided.vec         ; 3 uses
  %i.bl = freeze <8 x float> %strided.vec71       ; 3 uses
  %i.bm = freeze <8 x float> %strided.vec74       ; 3 uses
  %i.bn = freeze <8 x float> %strided.vec77       ; 3 uses
  %i.bo = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bk, <8 x float> %vec.phi65) ; 2 uses
  %i.bp = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bl, <8 x float> %vec.phi66) ; 2 uses
  %i.bq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bm, <8 x float> %vec.phi67) ; 2 uses
  %i.br = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bn, <8 x float> %vec.phi68) ; 2 uses
  %i.bs = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bk, <8 x float> %vec.phi61) ; 2 uses
  %i.bt = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bl, <8 x float> %vec.phi62) ; 2 uses
  %i.bu = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bm, <8 x float> %vec.phi63) ; 2 uses
  %i.bv = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bn, <8 x float> %vec.phi64) ; 2 uses
  %i.bw = freeze <8 x float> %strided.vec69       ; 3 uses
  %i.bx = freeze <8 x float> %strided.vec72       ; 3 uses
  %i.by = freeze <8 x float> %strided.vec75       ; 3 uses
  %i.bz = freeze <8 x float> %strided.vec78       ; 3 uses
  %i.ca = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bw, <8 x float> %vec.phi57) ; 2 uses
  %i.cb = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bx, <8 x float> %vec.phi58) ; 2 uses
  %i.cc = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.by, <8 x float> %vec.phi59) ; 2 uses
  %i.cd = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bz, <8 x float> %vec.phi60) ; 2 uses
  %i.ce = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bw, <8 x float> %vec.phi) ; 2 uses
  %i.cf = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bx, <8 x float> %vec.phi54) ; 2 uses
  %i.cg = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.by, <8 x float> %vec.phi55) ; 2 uses
  %i.ch = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bz, <8 x float> %vec.phi56) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ci = fcmp uno <8 x float> %i.bw, %i.bk
  %i.cj = fcmp uno <8 x float> %i.bx, %i.bl
  %i.ck = fcmp uno <8 x float> %i.by, %i.bm
  %i.cl = fcmp uno <8 x float> %i.bz, %i.bn
  %i.cm = or <8 x i1> %i.ci, %i.cj
  %i.cn = or <8 x i1> %i.cm, %i.ck
  %i.co = or <8 x i1> %i.cn, %i.cl
  %i.cp = bitcast <8 x i1> %i.co to i8
  %i.cq = icmp ne i8 %i.cp, 0                     ; 19 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  %i.cs = or i1 %i.cq, %i.cr
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  %i.ct = select i1 %i.cq, <8 x float> %vec.phi, <8 x float> %i.ce
  %i.cu = select i1 %i.cq, <8 x float> %vec.phi54, <8 x float> %i.cf
  %i.cv = select i1 %i.cq, <8 x float> %vec.phi55, <8 x float> %i.cg
  %i.cw = select i1 %i.cq, <8 x float> %vec.phi56, <8 x float> %i.ch
  %i.cx = select i1 %i.cq, <8 x float> %vec.phi57, <8 x float> %i.ca
  %i.cy = select i1 %i.cq, <8 x float> %vec.phi58, <8 x float> %i.cb
  %i.cz = select i1 %i.cq, <8 x float> %vec.phi59, <8 x float> %i.cc
  %i.da = select i1 %i.cq, <8 x float> %vec.phi60, <8 x float> %i.cd
  %i.db = select i1 %i.cq, <8 x float> %vec.phi61, <8 x float> %i.bs
  %i.dc = select i1 %i.cq, <8 x float> %vec.phi62, <8 x float> %i.bt
  %i.dd = select i1 %i.cq, <8 x float> %vec.phi63, <8 x float> %i.bu
  %i.de = select i1 %i.cq, <8 x float> %vec.phi64, <8 x float> %i.bv
  %i.df = select i1 %i.cq, <8 x float> %vec.phi65, <8 x float> %i.bo
  %i.dg = select i1 %i.cq, <8 x float> %vec.phi66, <8 x float> %i.bp
  %i.dh = select i1 %i.cq, <8 x float> %vec.phi67, <8 x float> %i.bq
  %i.di = select i1 %i.cq, <8 x float> %vec.phi68, <8 x float> %i.br
  %i.dj = select i1 %i.cq, i64 %index, i64 %n.vec
  %rdx.minmax = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ct, <8 x float> %i.cu)
  %rdx.minmax79 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax, <8 x float> %i.cv)
  %rdx.minmax80 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax79, <8 x float> %i.cw)
  %i.dk = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax80)
  %i.dl = or disjoint i64 %i.dj, 1
  %rdx.minmax81 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.cx, <8 x float> %i.cy)
  %rdx.minmax82 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax81, <8 x float> %i.cz)
  %rdx.minmax83 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax82, <8 x float> %i.da)
  %i.dm = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax83)
  %rdx.minmax84 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.db, <8 x float> %i.dc)
  %rdx.minmax85 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax84, <8 x float> %i.dd)
  %rdx.minmax86 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax85, <8 x float> %i.de)
  %i.dn = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax86)
  %rdx.minmax87 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.df, <8 x float> %i.dg)
  %rdx.minmax88 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax87, <8 x float> %i.dh)
  %rdx.minmax89 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax88, <8 x float> %i.di)
  %i.do = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax89)
  %cmp.n = icmp ne i64 %i.ax, %n.vec
  %.not93 = or i1 %cmp.n, %i.cq
  %i.dp = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dq = insertelement <2 x float> %i.dp, float %i.dk, i64 1 ; 2 uses
  %i.dr = insertelement <2 x float> poison, float %i.do, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.dm, i64 1 ; 2 uses
  br i1 %.not93, label %.lr.ph.i.preheader, label %_bounding_box.exit

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.dl, %middle.block ]
  %.ph = phi <2 x float> [ splat (float f0x00800000), %.lr.ph.preheader.i ], [ %i.dq, %middle.block ]
  %.ph94 = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph.preheader.i ], [ %i.ds, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.dt = phi <2 x float> [ %i.dy, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ]
  %i.du = phi <2 x float> [ %i.dx, %.lr.ph.i ], [ %.ph94, %.lr.ph.i.preheader ]
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx.i
  %i.dw = load <2 x float>, ptr %i.dv, align 4, !tbaa !26 ; 2 uses
  %i.dx = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.dw, <2 x float> %i.du) ; 2 uses
  %i.dy = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dw, <2 x float> %i.dt) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_bounding_box.exit, label %.lr.ph.i, !llvm.loop !205

_bounding_box.exit:                               ; preds = %.lr.ph.i, %middle.block, %bb.f
  %i.dz = phi <2 x float> [ splat (float f0x00800000), %bb.f ], [ %i.dq, %middle.block ], [ %i.dy, %.lr.ph.i ]
  %i.ea = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.f ], [ %i.ds, %middle.block ], [ %i.dx, %.lr.ph.i ] ; 3 uses
  %i.eb = extractelement <2 x float> %i.ea, i64 0
  %i.ec = fptosi float %i.eb to i32
  store i32 %i.ec, ptr %5, align 4, !tbaa !32
  %i.ed = extractelement <2 x float> %i.ea, i64 1
  %i.ee = fptosi float %i.ed to i32
  store i32 %i.ee, ptr %6, align 4, !tbaa !32
  %i.ef = fsub reassoc nsz arcp contract afn <2 x float> %i.dz, %i.ea
  %i.eg = fptosi <2 x float> %i.ef to <2 x i32>   ; 2 uses
  %i.eh = extractelement <2 x i32> %i.eg, i64 0
  store i32 %i.eh, ptr %3, align 4, !tbaa !32
  %i.ei = extractelement <2 x i32> %i.eg, i64 1
  store i32 %i.ei, ptr %4, align 4, !tbaa !32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %_bounding_box.exit
  %.0.ph = phi i32 [ 1, %_bounding_box.exit ], [ 0, %bb.e ]
  tail call void @free(ptr noundef nonnull %i.an) #12
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_ellipse_events_mouse_moved(ptr noundef %0, float noundef %1, float noundef %2, double %3, i32 %4, float noundef %5, ptr noundef %6, i32 %7, ptr noundef %8, i32 noundef %9) #0 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 7 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 3 uses
  %i.e = alloca float, align 4                    ; 3 uses
  %i.f = alloca [8 x float], align 16             ; 12 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = alloca float, align 4                    ; 4 uses
  %i.i = alloca float, align 4                    ; 3 uses
  %i.j = alloca float, align 4                    ; 3 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca float, align 4                    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !140
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 116
  %i.s = load i32, ptr %i.r, align 4, !tbaa !141
  %.not243 = icmp eq i32 %i.s, 0
  br i1 %.not243, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !114 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  %i.x = load float, ptr %i.w, align 8, !tbaa !149 ; 2 uses
  %i.y = fcmp reassoc nsz arcp contract afn ogt float %i.x, 0.000000e+00
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.y, float %i.x, float 1.000000e+00
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 156
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !150 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = uitofp nneg i32 %i.aa to float
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.ae = load i32, ptr %i.ad, align 16, !tbaa !151
  %i.af = sitofp reassoc nsz arcp contract afn i32 %i.ae to float
  %i.ag = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.af, i64 1
  br label %dt_masks_get_image_size.exit

bb.e:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 2760
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !152 ; 3 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 156
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !150 ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 160
  %i.ao = load i32, ptr %i.an, align 16, !tbaa !151
  %i.ap = uitofp nneg i32 %i.al to float
  %i.aq = sitofp reassoc nsz arcp contract afn i32 %i.ao to float
  %i.ar = insertelement <2 x float> poison, float %spec.select.i, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.au = insertelement <2 x float> %i.at, float %i.aq, i64 1
  %i.av = fdiv reassoc nsz arcp contract afn <2 x float> %i.au, %i.as
  br label %dt_masks_get_image_size.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 376
  %i.ax = load <2 x i32>, ptr %i.aw, align 8, !tbaa !32
  %i.ay = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ax to <2 x float>
  br label %dt_masks_get_image_size.exit

dt_masks_get_image_size.exit:                     ; preds = %bb.d, %bb.g, %bb.h
  %i.az = phi <2 x float> [ %i.ah, %bb.d ], [ %i.ay, %bb.h ], [ %i.av, %bb.g ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.bb = load <2 x i32>, ptr %i.ba, align 16, !tbaa !32
  %i.bc = sitofp reassoc nsz arcp contract afn <2 x i32> %i.bb to <2 x float> ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.bd = insertelement <2 x float> poison, float %1, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %2, i64 1
  %i.bf = fmul reassoc nsz arcp contract afn <2 x float> %i.az, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.bh = load <2 x float>, ptr %i.bg, align 4, !tbaa !26
  %i.bi = fadd reassoc nsz arcp contract afn <2 x float> %i.bh, %i.bf
  store <2 x float> %i.bi, ptr %i.a, align 8, !tbaa !26
  %i.bj = call i32 @dt_dev_distort_backtransform(ptr noundef nonnull %i.t, ptr noundef nonnull %i.a, i64 noundef 1) #12 ; 0 uses
  %i.bk = load i32, ptr %i.p, align 8, !tbaa !140
  %.not261 = icmp eq i32 %i.bk, 0
  br i1 %.not261, label %bb.j, label %bb.i

bb.i:                                             ; preds = %dt_masks_get_image_size.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bm = load ptr, ptr %6, align 8, !tbaa !23
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !25 ; 2 uses
  %i.bo = load float, ptr %i.a, align 8, !tbaa !26
  %i.bp = extractelement <2 x float> %i.bc, i64 0
  %i.bq = fdiv reassoc nsz arcp contract afn float %i.bo, %i.bp
  store float %i.bq, ptr %i.bn, align 4, !tbaa !26
  %i.br = load float, ptr %i.bl, align 4, !tbaa !26
  %i.bs = extractelement <2 x float> %i.bc, i64 1
  %i.bt = fdiv reassoc nsz arcp contract afn float %i.br, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store float %i.bt, ptr %i.bu, align 4, !tbaa !26
  br label %bb.k

bb.j:                                             ; preds = %dt_masks_get_image_size.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bw = load <2 x float>, ptr %i.a, align 8, !tbaa !26
  %i.bx = fdiv reassoc nsz arcp contract afn <2 x float> %i.bw, %i.bc
  store <2 x float> %i.bx, ptr %i.bv, align 8, !tbaa !26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @dt_masks_gui_form_create(ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef %9, ptr noundef %0) #12
  call void @dt_control_queue_redraw_center() #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.be

bb.l:                                             ; preds = %bb.b
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 132 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !153 ; 8 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %bb.m, label %bb.z

bb.m:                                             ; preds = %bb.l
  %i.cb = load ptr, ptr %6, align 8, !tbaa !23
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !25 ; 2 uses
  %i.cd = tail call reassoc nsz arcp contract afn float @dt_masks_drag_factor(ptr noundef nonnull %8, i32 noundef %9, i32 noundef %i.bz, i32 noundef 0) #12 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 3 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !26 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 12 ; 3 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !26 ; 3 uses
  %i.ci = fcmp reassoc nsz arcp contract afn ogt float %i.cf, %i.ch ; 3 uses
  %i.cj = icmp eq i32 %i.bz, 1                    ; 2 uses
  %or.cond = icmp samesign ult i32 %i.bz, 3
  %brmerge.not = select i1 %or.cond, i1 %i.ci, i1 false
  br i1 %brmerge.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = add nsw i32 %i.bz, -5
  %or.cond3 = icmp ult i32 %i.ck, -2
  %i.cl = fcmp reassoc nsz arcp contract afn ugt float %i.cf, %i.ch
  %or.cond276 = select i1 %or.cond3, i1 true, i1 %i.cl
  br i1 %or.cond276, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cm = fmul reassoc nsz arcp contract afn float %i.cf, %i.cd ; 2 uses
  %i.cn = fcmp reassoc nsz arcp contract afn olt float %i.cm, 2.000000e-03
  %spec.select = select reassoc nsz arcp contract afn i1 %i.cn, float 2.000000e-03, float %i.cm ; 2 uses
  store float %spec.select, ptr %i.ce, align 4, !tbaa !26
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !27
  %i.cq = and i32 %i.cp, 136
  %.not259 = icmp eq i32 %i.cq, 0
  %i.cr = select i1 %.not259, ptr @.str.5, ptr @.str.4
  tail call void @dt_conf_set_float(ptr noundef nonnull %i.cr, float noundef %spec.select) #12
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cs = fmul reassoc nsz arcp contract afn float %i.ch, %i.cd ; 2 uses
  %i.ct = fcmp reassoc nsz arcp contract afn olt float %i.cs, 2.000000e-03
  %spec.select263 = select reassoc nsz arcp contract afn i1 %i.ct, float 2.000000e-03, float %i.cs ; 2 uses
  store float %spec.select263, ptr %i.cg, align 4, !tbaa !26
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !27
  %i.cw = and i32 %i.cv, 136
  %.not258 = icmp eq i32 %i.cw, 0
  %i.cx = select i1 %.not258, ptr @.str.7, ptr @.str.6
  tail call void @dt_conf_set_float(ptr noundef nonnull %i.cx, float noundef %spec.select263) #12
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cy = load float, ptr %i.ce, align 4, !tbaa !26
  %i.cz = load float, ptr %i.cg, align 4, !tbaa !26
  %i.da = fcmp ule float %i.cy, %i.cz
  %.not260 = xor i1 %i.ci, %i.da
  br i1 %.not260, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.db = icmp ult i32 %i.bz, 3                   ; 2 uses
  br i1 %i.ci, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %.mux = select i1 %i.cj, i32 4, i32 3
  br i1 %i.db, label %.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  switch i32 %i.bz, label %bb.y [
    i32 3, label %.sink.split
    i32 4, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  br label %.sink.split

bb.v:                                             ; preds = %bb.r
  %.mux307 = select i1 %i.cj, i32 3, i32 4
  br i1 %i.db, label %.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  switch i32 %i.bz, label %bb.y [
    i32 3, label %.sink.split
    i32 4, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  br label %.sink.split

.sink.split:                                      ; preds = %bb.v, %bb.s, %bb.w, %bb.t, %bb.x, %bb.u
  %.sink = phi i32 [ %.mux, %bb.s ], [ 2, %bb.u ], [ 2, %bb.w ], [ 1, %bb.t ], [ %.mux307, %bb.v ], [ 1, %bb.x ]
  store i32 %.sink, ptr %i.by, align 4, !tbaa !153
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.w, %bb.t, %bb.q
  tail call void @dt_masks_gui_form_create(ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef %9, ptr noundef %0) #12
  tail call void @dt_control_queue_redraw_center() #12
  br label %bb.be

bb.z:                                             ; preds = %bb.l
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 144 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !154 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.df = load ptr, ptr %6, align 8, !tbaa !23
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !25 ; 8 uses
  %i.dh = tail call reassoc nsz arcp contract afn float @dt_masks_drag_factor(ptr noundef nonnull %8, i32 noundef %9, i32 noundef %i.dd, i32 noundef 1) #12 ; 7 uses
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !27
  %i.dk = and i32 %i.dj, 136
  %.not256 = icmp eq i32 %i.dk, 0
  %i.dl = select reassoc nsz arcp contract afn i1 %.not256, float 1.000000e+00, float 5.000000e-01 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !29
  %i.do = and i32 %i.dn, 1
  %.not257 = icmp eq i32 %i.do, 0
  br i1 %.not257, label %bb.ab, label %.thread272

bb.ab:                                            ; preds = %bb.aa
  %i.dp = load i32, ptr %i.dc, align 8, !tbaa !154
  %i.dq = icmp sgt i32 %i.dp, 2
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !26 ; 7 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.du = load float, ptr %i.dt, align 4, !tbaa !26 ; 7 uses
  %i.dv = fcmp reassoc nsz arcp contract afn ogt float %i.ds, %i.du
  %i.dw = xor i1 %i.dq, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dg, i64 20
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !30 ; 6 uses
  br i1 %i.dw, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.dz = fadd reassoc nsz arcp contract afn float %i.dy, %i.ds
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dz, %i.dh
  %i.eb = fsub reassoc nsz arcp contract afn float %i.ea, %i.ds
  %i.ec = fcmp reassoc nsz arcp contract afn ogt float %i.eb, %i.dl
  br i1 %i.ec, label %.thread275, label %bb.ad

.thread:                                          ; preds = %bb.ab
  %i.ed = fadd reassoc nsz arcp contract afn float %i.dy, %i.du
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ed, %i.dh
  %i.ef = fsub reassoc nsz arcp contract afn float %i.ee, %i.du
  %i.eg = fcmp reassoc nsz arcp contract afn ogt float %i.ef, %i.dl
  br i1 %i.eg, label %.thread275, label %.thread300

.thread272:                                       ; preds = %bb.aa
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !26
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !26
  %i.el = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ei, float %i.ek)
  %i.em = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.el ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dg, i64 20
  %i.eo = load float, ptr %i.en, align 4, !tbaa !30
  %i.ep = fadd reassoc nsz arcp contract afn float %i.eo, 1.000000e+00
  %i.eq = fmul reassoc nsz arcp contract afn float %i.ep, %i.dh
end_hunk_1
begin_hunk_2_@_ellipse_events_mouse_scrolled:bb.a
  br i1 %.not139, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !161
  %i.cm = icmp eq i32 %i.cl, 1
  br i1 %i.cm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 4 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !31
  %i.cp = tail call reassoc nsz arcp contract afn float @dt_masks_change_rotation(i32 noundef %3, float noundef %i.co, i32 noundef 1) #12
  store float %i.cp, ptr %i.cn, align 4, !tbaa !31
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87
  tail call void @dt_dev_add_masks_history_item(ptr noundef %i.cq, ptr noundef %0, i32 noundef 1) #12
  tail call void @dt_masks_gui_form_create(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef %8, ptr noundef %0) #12
  %i.cr = load i32, ptr %i.a, align 8, !tbaa !27
  %i.cs = and i32 %i.cr, 136
  %.not112 = icmp eq i32 %i.cs, 0
  %i.ct = select i1 %.not112, ptr @.str.1, ptr @.str
  %i.cu = load float, ptr %i.cn, align 4, !tbaa !31
  tail call void @dt_conf_set_float(ptr noundef nonnull %i.ct, float noundef %i.cu) #12
  %i.cv = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #12
  %i.cw = load float, ptr %i.cn, align 4, !tbaa !31
  %i.cx = fpext reassoc nsz arcp contract afn float %i.cw to double
  tail call void (ptr, ...) @dt_toast_log(ptr noundef %i.cv, double noundef %i.cx) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.cy = tail call i32 @gtk_accelerator_get_default_mod_mask() #12
  %i.cz = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !32
  %i.da = or i32 %i.cz, %4
  %i.db = and i32 %i.da, %i.cy
  %.not140 = icmp eq i32 %i.db, 1
  br i1 %.not140, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !29
  %i.de = and i32 %i.dd, 1
  %.not118 = icmp eq i32 %i.de, 0
  br i1 %.not118, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.dg = load float, ptr %i.df, align 4, !tbaa !26
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.di = load float, ptr %i.dh, align 4, !tbaa !26
  %i.dj = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.dg, float %i.di)
  %i.dk = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.dj
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.dl = phi float [ %i.dk, %bb.t ], [ 1.000000e+00, %bb.s ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cf, i64 20 ; 4 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !30
  %i.do = fmul reassoc nsz arcp contract afn float %i.dl, 1.000000e-03
  %i.dp = fmul reassoc nsz arcp contract afn float %i.dl, %i.d
  %i.dq = tail call reassoc nsz arcp contract afn float @dt_masks_change_size(i32 noundef %3, float noundef %i.dn, float noundef %i.do, float noundef %i.dp) #12
  store float %i.dq, ptr %i.dm, align 4, !tbaa !30
  %i.dr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87
  tail call void @dt_dev_add_masks_history_item(ptr noundef %i.dr, ptr noundef %0, i32 noundef 1) #12
  tail call void @dt_masks_gui_form_create(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef %8, ptr noundef %0) #12
  %i.ds = load i32, ptr %i.a, align 8, !tbaa !27
  %i.dt = and i32 %i.ds, 136
  %.not119 = icmp eq i32 %i.dt, 0
  %i.du = select i1 %.not119, ptr @.str.9, ptr @.str.8
  %i.dv = load float, ptr %i.dm, align 4, !tbaa !30
  tail call void @dt_conf_set_float(ptr noundef nonnull %i.du, float noundef %i.dv) #12
  %i.dw = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #12
  %i.dx = load float, ptr %i.dm, align 4, !tbaa !30
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, 1.000000e+02
  %i.dz = fpext reassoc nsz arcp contract afn float %i.dy to double
  tail call void (ptr, ...) @dt_toast_log(ptr noundef %i.dw, double noundef %i.dz) #12
  br label %.thread

bb.v:                                             ; preds = %bb.r
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !161
  %i.ec = icmp eq i32 %i.eb, 1
  br i1 %i.ec, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ed = tail call i32 @gtk_accelerator_get_default_mod_mask() #12
  %i.ee = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !32
  %i.ef = or i32 %i.ee, %4
  %i.eg = and i32 %i.ef, %i.ed
  %.not141 = icmp eq i32 %i.eg, 0
  br i1 %.not141, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 4 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !26 ; 2 uses
  %i.ej = tail call reassoc nsz arcp contract afn float @dt_masks_change_size(i32 noundef %3, float noundef %i.ei, float noundef 1.000000e-03, float noundef %i.d) #12 ; 2 uses
  store float %i.ej, ptr %i.eh, align 4, !tbaa !26
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cf, i64 12 ; 4 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !26
  %i.em = fmul reassoc nsz arcp contract afn float %i.el, %i.ej
  %i.en = fdiv reassoc nsz arcp contract afn float %i.em, %i.ei
  store float %i.en, ptr %i.ek, align 4, !tbaa !26
  %i.eo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87
  tail call void @dt_dev_add_masks_history_item(ptr noundef %i.eo, ptr noundef %0, i32 noundef 1) #12
  tail call void @dt_masks_gui_form_create(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef %8, ptr noundef %0) #12
  %i.ep = load i32, ptr %i.a, align 8, !tbaa !27
  %i.eq = and i32 %i.ep, 136
  %.not116 = icmp eq i32 %i.eq, 0
  %i.er = select i1 %.not116, ptr @.str.5, ptr @.str.4
  %i.es = load float, ptr %i.eh, align 4, !tbaa !26
  tail call void @dt_conf_set_float(ptr noundef nonnull %i.er, float noundef %i.es) #12
  %i.et = load i32, ptr %i.a, align 8, !tbaa !27
  %i.eu = and i32 %i.et, 136
  %.not117 = icmp eq i32 %i.eu, 0
  %i.ev = select i1 %.not117, ptr @.str.7, ptr @.str.6
  %i.ew = load float, ptr %i.ek, align 4, !tbaa !26
  tail call void @dt_conf_set_float(ptr noundef nonnull %i.ev, float noundef %i.ew) #12
  %i.ex = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #12
  %i.ey = load float, ptr %i.eh, align 4, !tbaa !26
  %i.ez = load float, ptr %i.ek, align 4, !tbaa !26
  %i.fa = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ey, float %i.ez)
  %i.fb = fmul reassoc nsz arcp contract afn float %i.fa, 1.000000e+02
  %i.fc = fpext reassoc nsz arcp contract afn float %i.fb to double
  tail call void (ptr, ...) @dt_toast_log(ptr noundef %i.ex, double noundef %i.fc) #12
  br label %.thread

bb.y:                                             ; preds = %bb.v, %bb.w
  %i.fd = tail call i32 @gtk_accelerator_get_default_mod_mask() #12
  %i.fe = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !32
  %i.ff = or i32 %i.fe, %4
  %i.fg = and i32 %i.ff, %i.fd
  %.not142 = icmp ne i32 %i.fg, 0
  %. = zext i1 %.not142 to i32
  br label %.thread

.thread:                                          ; preds = %bb.u, %bb.x, %bb.n, %bb.y, %bb.i, %bb.h
  %.1 = phi i32 [ 1, %bb.h ], [ 0, %bb.i ], [ %., %bb.y ], [ 1, %bb.n ], [ 1, %bb.x ], [ 1, %bb.u ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_ellipse_events_button_pressed(ptr noundef %0, float noundef %1, float noundef %2, double %3, i32 noundef %4, i32 %5, i32 noundef %6, ptr noundef %7, i32 %8, ptr noundef %9, i32 noundef %10) #0 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 6 uses
  %.not = icmp eq ptr %9, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !114 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.f = load float, ptr %i.e, align 8, !tbaa !149 ; 2 uses
  %i.g = fcmp reassoc nsz arcp contract afn ogt float %i.f, 0.000000e+00
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.g, float %i.f, float 1.000000e+00 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 156
  %i.i = load i32, ptr %i.h, align 4, !tbaa !150  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = uitofp nneg i32 %i.i to float
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.m = load i32, ptr %i.l, align 16, !tbaa !151
  %i.n = sitofp reassoc nsz arcp contract afn i32 %i.m to float
  br label %dt_masks_get_image_size.exit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 2760
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !152  ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 156
  %i.r = load i32, ptr %i.q, align 4, !tbaa !150  ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = uitofp nneg i32 %i.r to float
  %i.u = fdiv reassoc nsz arcp contract afn float %i.t, %spec.select.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %i.w = load i32, ptr %i.v, align 16, !tbaa !151
  %i.x = sitofp reassoc nsz arcp contract afn i32 %i.w to float
  %i.y = fdiv reassoc nsz arcp contract afn float %i.x, %spec.select.i
  br label %dt_masks_get_image_size.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 376
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !164
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.aa to float
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 380
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !165
  %i.ae = sitofp reassoc nsz arcp contract afn i32 %i.ad to float
  br label %dt_masks_get_image_size.exit

dt_masks_get_image_size.exit:                     ; preds = %bb.c, %bb.f, %bb.g
  %.0215 = phi nsz float [ %i.k, %bb.c ], [ %i.ab, %bb.g ], [ %i.u, %bb.f ]
  %.sink.i = phi float [ %i.n, %bb.c ], [ %i.ae, %bb.g ], [ %i.y, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.ag = load <2 x i32>, ptr %i.af, align 16, !tbaa !32
  %i.ah = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ag to <2 x float>
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 172
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !18
  %.not167 = icmp eq i32 %i.aj, 0
  br i1 %.not167, label %bb.h, label %bb.x

bb.h:                                             ; preds = %dt_masks_get_image_size.exit
  %i.ak = load ptr, ptr %9, align 8, !tbaa !34
  %i.al = tail call ptr @g_list_nth_data(ptr noundef %i.ak, i32 noundef %10) #12 ; 3 uses
  %.not168 = icmp eq ptr %i.al, null
  br i1 %.not168, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 60 ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !20
  %.not169 = icmp eq i32 %i.an, 0
  br i1 %.not169, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = tail call i32 @gtk_accelerator_get_default_mod_mask() #12
  %i.ap = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !32
  %i.aq = or i32 %i.ap, %6
  %i.ar = and i32 %i.aq, %i.ao
  %.not222 = icmp eq i32 %i.ar, 8
  br i1 %.not222, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 124
  store i32 1, ptr %i.as, align 4, !tbaa !166
  br label %.thread

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.au = load i32, ptr %i.at, align 8, !tbaa !161
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 68
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !158
  %.not171 = icmp eq i32 %i.ax, 0
  br i1 %.not171, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !38 ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !167
  %i.bd = fsub reassoc nsz arcp contract afn float %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 36
  store float %i.bd, ptr %i.be, align 4, !tbaa !156
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !26
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bi = load float, ptr %i.bh, align 8, !tbaa !168
  %i.bj = fsub reassoc nsz arcp contract afn float %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 40
  store float %i.bj, ptr %i.bk, align 8, !tbaa !157
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 116
  store i32 1, ptr %i.bl, align 4, !tbaa !141
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %i.al, align 8, !tbaa !41 ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !167
  %i.bq = fsub reassoc nsz arcp contract afn float %i.bn, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 36
  store float %i.bq, ptr %i.br, align 4, !tbaa !156
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !26
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !168
  %i.bw = fsub reassoc nsz arcp contract afn float %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 40
  store float %i.bw, ptr %i.bx, align 8, !tbaa !157
  %i.by = load i32, ptr %i.am, align 4, !tbaa !20
  %.not172 = icmp eq i32 %i.by, 0
  br i1 %.not172, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = tail call i32 @gtk_accelerator_get_default_mod_mask() #12
  %i.ca = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !32
  %i.cb = or i32 %i.ca, %6
  %i.cc = and i32 %i.cb, %i.bz
  %.not223 = icmp eq i32 %i.cc, 4
  br i1 %.not223, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 120
  store i32 1, ptr %i.cd, align 8, !tbaa !155
  br label %.thread

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 84
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !19 ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 132
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !153
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !160 ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 144
  store i32 %i.cj, ptr %i.cl, align 8, !tbaa !154
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %i.cm = load i32, ptr %i.am, align 4, !tbaa !20
  %.not174 = icmp eq i32 %i.cm, 0
  br i1 %.not174, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 112
  store i32 1, ptr %i.cn, align 8, !tbaa !140
  br label %.thread

bb.x:                                             ; preds = %dt_masks_get_image_size.exit
  switch i32 %4, label %bb.ad [
    i32 3, label %bb.y
    i32 1, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 176
  store i32 0, ptr %i.co, align 8, !tbaa !169
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 192
  store ptr null, ptr %i.cp, align 8, !tbaa !170
  tail call void @dt_masks_set_edit_mode(ptr noundef %0, i32 noundef 1) #12
  tail call void @dt_masks_iop_update(ptr noundef %0) #12
  tail call void @dt_control_queue_redraw_center() #12
  br label %.thread

bb.z:                                             ; preds = %bb.x
  %i.cq = tail call i32 @gtk_accelerator_get_default_mod_mask() #12
  %i.cr = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !32
  %i.cs = or i32 %i.cr, %6
  %i.ct = and i32 %i.cs, %i.cq
  %.not220 = icmp eq i32 %i.ct, 5
  br i1 %.not220, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cu = tail call i32 @gtk_accelerator_get_default_mod_mask() #12
  %i.cv = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !32
  %i.cw = or i32 %i.cv, %6
  %i.cx = and i32 %i.cw, %i.cu
  %.not221 = icmp eq i32 %i.cx, 1
  br i1 %.not221, label %bb.ab, label %._crit_edge232

._crit_edge232:                                   ; preds = %bb.aa
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87
  br label %bb.ad

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !27
  %i.da = and i32 %i.cz, 8
  %.not198 = icmp eq i32 %i.da, 0
  br i1 %.not198, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @dt_masks_set_source_pos_initial_state(ptr noundef nonnull %9, i32 noundef %6, float noundef %1, float noundef %2) #12
  br label %.thread

bb.ad:                                            ; preds = %._crit_edge232, %bb.x
  %i.db = phi ptr [ %.pre, %._crit_edge232 ], [ %i.b, %bb.x ]
  %i.dc = tail call noalias dereferenceable_or_null(28) ptr @malloc(i64 noundef 28) #13 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.dd = fmul reassoc nsz arcp contract afn float %.0215, %1 ; 2 uses
  store float %i.dd, ptr %i.a, align 8, !tbaa !26
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.df = fmul reassoc nsz arcp contract afn float %.sink.i, %2 ; 2 uses
  store float %i.df, ptr %i.de, align 4, !tbaa !26
  %i.dg = call i32 @dt_dev_distort_backtransform(ptr noundef %i.db, ptr noundef nonnull %i.a, i64 noundef 1) #12 ; 0 uses
  %i.dh = load <2 x float>, ptr %i.a, align 8, !tbaa !26
  %i.di = fdiv reassoc nsz arcp contract afn <2 x float> %i.dh, %i.ah
  store <2 x float> %i.di, ptr %i.dc, align 4, !tbaa !26
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 14 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !27 ; 2 uses
  %i.dl = and i32 %i.dk, 8
  %.not177 = icmp eq i32 %i.dl, 0
  br i1 %.not177, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @dt_masks_set_source_pos_initial_value(ptr noundef nonnull %9, i32 noundef 32, ptr noundef nonnull %7, float noundef %1, float noundef %2) #12
  %.pre233 = load i32, ptr %i.dj, align 8, !tbaa !27
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 24
  store <2 x float> zeroinitializer, ptr %i.dm, align 8, !tbaa !26
end_hunk_2
begin_hunk_3_@_ellipse_events_button_pressed:bb.a
  %i.ge = load i32, ptr %i.fc, align 8, !tbaa !172
  %i.gf = call ptr @dt_masks_get_from_id(ptr noundef nonnull %i.fg, i32 noundef %i.ge) #12
  call void @dt_masks_select_form(ptr noundef %0, ptr noundef %i.gf) #12
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.an
  %i.gg = getelementptr inbounds nuw i8, ptr %9, i64 176
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !169
  %.not195 = icmp eq i32 %i.gh, 0
  br i1 %.not195, label %.critedge, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %.not183, label %.critedge202, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gi = getelementptr i8, ptr %i.ep, i64 952    ; 2 uses
  %.val203 = load ptr, ptr %i.gi, align 8, !tbaa !214
  %i.gj = getelementptr inbounds nuw i8, ptr %.val203, i64 496
  %i.gk = call i32 @g_strcmp0(ptr noundef nonnull %i.gj, ptr noundef nonnull @.str.32) #12
  %.not.i208.not = icmp eq i32 %i.gk, 0
  br i1 %.not.i208.not, label %.critedge, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.val = load ptr, ptr %i.gi, align 8, !tbaa !214
  %i.gl = getelementptr inbounds nuw i8, ptr %.val, i64 496
  %i.gm = call i32 @g_strcmp0(ptr noundef nonnull %i.gl, ptr noundef nonnull @.str.33) #12
  %.not.i209.not = icmp eq i32 %i.gm, 0
  br i1 %.not.i209.not, label %.critedge, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ep, i64 784
  %i.go = load ptr, ptr %i.gn, align 16, !tbaa !216 ; 11 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 552
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !32
  %i.gr = load i32, ptr %i.dj, align 8, !tbaa !27 ; 2 uses
  %i.gs = icmp eq i32 %i.gq, %i.gr
  br i1 %i.gs, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 512
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !217
  call void @gtk_toggle_button_set_active(ptr noundef %i.gu, i32 noundef 1) #12
  %.pre234 = load i32, ptr %i.dj, align 8, !tbaa !27
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.gv = phi i32 [ %i.gr, %bb.ba ], [ %.pre234, %bb.bb ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 556
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !32
  %i.gy = icmp eq i32 %i.gx, %i.gv
  br i1 %i.gy, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.gz = getelementptr inbounds nuw i8, ptr %i.go, i64 520
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !217
  call void @gtk_toggle_button_set_active(ptr noundef %i.ha, i32 noundef 1) #12
  %.pre235 = load i32, ptr %i.dj, align 8, !tbaa !27
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.hb = phi i32 [ %.pre235, %bb.bd ], [ %i.gv, %bb.bc ] ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.go, i64 560
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !32
  %i.he = icmp eq i32 %i.hd, %i.hb
  br i1 %i.he, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.hf = getelementptr inbounds nuw i8, ptr %i.go, i64 528
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !217
  call void @gtk_toggle_button_set_active(ptr noundef %i.hg, i32 noundef 1) #12
  %.pre236 = load i32, ptr %i.dj, align 8, !tbaa !27
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.hh = phi i32 [ %.pre236, %bb.bf ], [ %i.hb, %bb.be ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.go, i64 564
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !32
  %i.hk = icmp eq i32 %i.hj, %i.hh
  br i1 %i.hk, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.hl = getelementptr inbounds nuw i8, ptr %i.go, i64 536
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !217
  call void @gtk_toggle_button_set_active(ptr noundef %i.hm, i32 noundef 1) #12
  %.pre237 = load i32, ptr %i.dj, align 8, !tbaa !27
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.hn = phi i32 [ %.pre237, %bb.bh ], [ %i.hh, %bb.bg ]
  %i.ho = getelementptr inbounds nuw i8, ptr %i.go, i64 568
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !32
  %i.hq = icmp eq i32 %i.hp, %i.hn
  br i1 %i.hq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.hr = getelementptr inbounds nuw i8, ptr %i.go, i64 544
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !217
  call void @gtk_toggle_button_set_active(ptr noundef %i.hs, i32 noundef 1) #12
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.ht = getelementptr inbounds nuw i8, ptr %i.go, i64 576
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !222
  call void @gtk_toggle_button_set_active(ptr noundef %i.hu, i32 noundef 0) #12
  %i.hv = load i32, ptr %i.dj, align 8, !tbaa !27
  %i.hw = call ptr @dt_masks_create(i32 noundef %i.hv) #12
  call void @dt_masks_change_form_gui(ptr noundef %i.hw) #12
  %i.hx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 2168
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !176 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 184
  store ptr %i.ep, ptr %i.ia, align 8, !tbaa !171
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 176
  store i32 1, ptr %i.ib, align 8, !tbaa !169
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 192
  store ptr %i.ep, ptr %i.ic, align 8, !tbaa !170
  br label %.critedge

.critedge202:                                     ; preds = %bb.ax
  %i.id = load i32, ptr %i.dj, align 8, !tbaa !27
  %i.ie = call ptr @dt_masks_create(i32 noundef %i.id) #12
  call void @dt_masks_change_form_gui(ptr noundef %i.ie) #12
  %i.if = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !170
  %i.ih = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 2168
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !176
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 184
  store ptr %i.ig, ptr %i.ik, align 8, !tbaa !171
  br label %.critedge

.critedge:                                        ; preds = %bb.ar, %.preheader, %._crit_edge, %bb.ao, %bb.ap, %bb.aw, %bb.ay, %bb.az, %.critedge202, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.w, %bb.u, %bb.s, %bb.q, %bb.n, %bb.k, %bb.y, %.critedge, %bb.ac, %bb.ab, %bb.v, %bb.l, %bb.a
  %.6 = phi i32 [ 0, %bb.a ], [ 1, %bb.y ], [ 1, %bb.ac ], [ 1, %.critedge ], [ 1, %bb.ab ], [ 0, %bb.v ], [ 0, %bb.l ], [ 0, %bb.h ], [ 1, %bb.w ], [ 1, %bb.u ], [ 1, %bb.s ], [ 1, %bb.q ], [ 1, %bb.n ], [ 1, %bb.k ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_ellipse_events_button_released(ptr noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) #0 {
bb.a:
  %i.a = alloca [2 x float], align 4              ; 6 uses
  %i.b = alloca [8 x float], align 16             ; 12 uses
  %i.c = alloca [2 x float], align 8              ; 6 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !114 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %i.h = load float, ptr %i.g, align 8, !tbaa !149 ; 2 uses
  %i.i = fcmp reassoc nsz arcp contract afn ogt float %i.h, 0.000000e+00
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.i, float %i.h, float 1.000000e+00 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 156
  %i.k = load i32, ptr %i.j, align 4, !tbaa !150  ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = uitofp nneg i32 %i.k to float
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.o = load i32, ptr %i.n, align 16, !tbaa !151
  %i.p = sitofp reassoc nsz arcp contract afn i32 %i.o to float
  br label %dt_masks_get_image_size.exit

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 2760
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !152  ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 156
  %i.t = load i32, ptr %i.s, align 4, !tbaa !150  ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = uitofp nneg i32 %i.t to float
  %i.w = fdiv reassoc nsz arcp contract afn float %i.v, %spec.select.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 160
  %i.y = load i32, ptr %i.x, align 16, !tbaa !151
  %i.z = sitofp reassoc nsz arcp contract afn i32 %i.y to float
  %i.aa = fdiv reassoc nsz arcp contract afn float %i.z, %spec.select.i
  br label %dt_masks_get_image_size.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !164
  %i.ad = sitofp reassoc nsz arcp contract afn i32 %i.ac to float
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 380
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !165
  %i.ag = sitofp reassoc nsz arcp contract afn i32 %i.af to float
  br label %dt_masks_get_image_size.exit

dt_masks_get_image_size.exit:                     ; preds = %bb.b, %bb.e, %bb.f
  %.0 = phi nsz float [ %i.m, %bb.b ], [ %i.ad, %bb.f ], [ %i.w, %bb.e ] ; 3 uses
  %.sink.i = phi float [ %i.p, %bb.b ], [ %i.ag, %bb.f ], [ %i.aa, %bb.e ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.ai = load <2 x i32>, ptr %i.ah, align 16, !tbaa !32
  %i.aj = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ai to <2 x float> ; 3 uses
  %i.ak = icmp eq i32 %3, 3
  %i.al = icmp sgt i32 %6, 0
  %or.cond = and i1 %i.ak, %i.al
  br i1 %or.cond, label %bb.g, label %bb.o

bb.g:                                             ; preds = %dt_masks_get_image_size.exit
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !161
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 2160
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !173 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !27
  %i.at = and i32 %i.as, 4
  %.not159 = icmp eq i32 %i.at, 0
  br i1 %.not159, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @dt_masks_change_form_gui(ptr noundef null) #12
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !23 ; 2 uses
  %.not6.i = icmp eq ptr %i.au, null
  br i1 %.not6.i, label %g_list_shorter_than.exit.thread, label %g_list_shorter_than.exit

g_list_shorter_than.exit:                         ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !223
  %.not6.1.i.not = icmp eq ptr %i.aw, null
  br i1 %.not6.1.i.not, label %g_list_shorter_than.exit.thread, label %bb.k

g_list_shorter_than.exit.thread:                  ; preds = %bb.j, %g_list_shorter_than.exit
  tail call void @dt_masks_change_form_gui(ptr noundef null) #12
  br label %bb.n

bb.k:                                             ; preds = %g_list_shorter_than.exit
  tail call void @dt_masks_clear_form_gui(ptr noundef nonnull %i.d) #12
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2160
  %i.az = load ptr, ptr %i.ay, align 16, !tbaa !173
  %.0141175 = load ptr, ptr %i.az, align 8, !tbaa !33 ; 3 uses
  %.not161176 = icmp eq ptr %.0141175, null
  br i1 %.not161176, label %.loopexit, label %.critedge.lr.ph

.critedge.lr.ph:                                  ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !172
  br label %.critedge

bb.l:                                             ; preds = %.critedge
  %i.bc = getelementptr inbounds nuw i8, ptr %.0141177, i64 8
  %.0141 = load ptr, ptr %i.bc, align 8, !tbaa !33 ; 2 uses
  %.not161 = icmp eq ptr %.0141, null
  br i1 %.not161, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.l
  %.0141177 = phi ptr [ %.0141175, %.critedge.lr.ph ], [ %.0141, %bb.l ] ; 2 uses
  %i.bd = load ptr, ptr %.0141177, align 8, !tbaa !25 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !175
  %.not162 = icmp eq i32 %i.be, %i.bb
  br i1 %.not162, label %bb.m, label %bb.l

bb.m:                                             ; preds = %.critedge
  %i.bf = tail call ptr @g_list_remove(ptr noundef nonnull %.0141175, ptr noundef nonnull %i.bd) #12
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2160
  %i.bi = load ptr, ptr %i.bh, align 16, !tbaa !173
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !23
  tail call void @free(ptr noundef nonnull %i.bd) #12
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.k, %bb.m
  store i32 1, ptr %i.am, align 8, !tbaa !161
  br label %bb.n

bb.n:                                             ; preds = %g_list_shorter_than.exit.thread, %.loopexit, %bb.i
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87
  %i.bk = tail call ptr @dt_masks_get_from_id(ptr noundef %i.bj, i32 noundef %6) #12
  tail call void @dt_masks_form_remove(ptr noundef %0, ptr noundef %i.bk, ptr noundef %5) #12
  br label %bb.ao

bb.o:                                             ; preds = %bb.g, %dt_masks_get_image_size.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !140
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = load ptr, ptr %5, align 8, !tbaa !23
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !25 ; 2 uses
  store i32 0, ptr %i.bl, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.bp = fmul reassoc nsz arcp contract afn float %.0, %1
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.br = load float, ptr %i.bq, align 4, !tbaa !156
  %i.bs = fadd reassoc nsz arcp contract afn float %i.br, %i.bp
  store float %i.bs, ptr %i.a, align 4, !tbaa !26
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.bu = fmul reassoc nsz arcp contract afn float %.sink.i, %2
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !157
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bw, %i.bu
  store float %i.bx, ptr %i.bt, align 4, !tbaa !26
  %i.by = call i32 @dt_dev_distort_backtransform(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i64 noundef 1) #12 ; 0 uses
  %i.bz = load float, ptr %i.a, align 4, !tbaa !26
  %i.ca = extractelement <2 x float> %i.aj, i64 0
  %i.cb = fdiv reassoc nsz arcp contract afn float %i.bz, %i.ca
  store float %i.cb, ptr %i.bo, align 4, !tbaa !26
  %i.cc = load float, ptr %i.bt, align 4, !tbaa !26
  %i.cd = extractelement <2 x float> %i.aj, i64 1
  %i.ce = fdiv reassoc nsz arcp contract afn float %i.cc, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store float %i.ce, ptr %i.cf, align 4, !tbaa !26
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87
  call void @dt_dev_add_masks_history_item(ptr noundef %i.cg, ptr noundef %0, i32 noundef 1) #12
  call void @dt_masks_gui_form_create(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef %8, ptr noundef %0) #12
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 176
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !169
  %.not158 = icmp eq i32 %i.ci, 0
  br i1 %.not158, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !27
  %i.cl = call ptr @dt_masks_create(i32 noundef %i.ck) #12
  call void @dt_masks_change_form_gui(ptr noundef %i.cl) #12
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 192
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !170
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 2168
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !176
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 184
  store ptr %i.cn, ptr %i.cr, align 8, !tbaa !171
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ao

bb.s:                                             ; preds = %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 124 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !166
  %.not149 = icmp eq i32 %i.ct, 0
  br i1 %.not149, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = load ptr, ptr %5, align 8, !tbaa !23
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !25 ; 5 uses
  store i32 0, ptr %i.cs, align 4, !tbaa !166
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !29 ; 3 uses
  %i.cy = and i32 %i.cx, 1
  %.not155 = icmp eq i32 %i.cy, 0
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.da = load float, ptr %i.cz, align 4, !tbaa !26
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  %i.dc = load float, ptr %i.db, align 4, !tbaa !26
  %i.dd = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.da, float %i.dc) ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 20 ; 3 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !30 ; 2 uses
  br i1 %.not155, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dg = fmul reassoc nsz arcp contract afn float %i.df, %i.dd ; 3 uses
  %i.dh = fcmp reassoc nsz arcp contract afn ogt float %i.dg, 1.000000e+00
  %i.di = fcmp reassoc nsz arcp contract afn olt float %i.dg, 1.000000e-03
  %spec.select = select reassoc nsz arcp contract afn i1 %i.di, float 1.000000e-03, float %i.dg
  %i.dj = select reassoc nsz arcp contract afn i1 %i.dh, float 1.000000e+00, float %spec.select
  store float %i.dj, ptr %i.de, align 4, !tbaa !30
  %i.dk = and i32 %i.cx, -2
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.dl = fdiv reassoc nsz arcp contract afn float %i.df, %i.dd ; 3 uses
  %i.dm = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.dd ; 2 uses
  %i.dn = fcmp reassoc nsz arcp contract afn ogt float %i.dl, %i.dm
  %i.do = fdiv reassoc nsz arcp contract afn float 1.000000e-03, %i.dd ; 2 uses
  %i.dp = fcmp reassoc nsz arcp contract afn olt float %i.dl, %i.do
  %. = select reassoc nsz arcp contract afn i1 %i.dp, float %i.do, float %i.dl
  %i.dq = select reassoc nsz arcp contract afn i1 %i.dn, float %i.dm, float %.
  store float %i.dq, ptr %i.de, align 4, !tbaa !30
  %i.dr = or disjoint i32 %i.cx, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %storemerge = phi i32 [ %i.dr, %bb.v ], [ %i.dk, %bb.u ] ; 2 uses
  store i32 %storemerge, ptr %i.cw, align 4, !tbaa !29
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !27
  %i.du = and i32 %i.dt, 136
  %.not156 = icmp eq i32 %i.du, 0
  %i.dv = select i1 %.not156, ptr @.str.3, ptr @.str.2
  tail call void @dt_conf_set_int(ptr noundef nonnull %i.dv, i32 noundef %storemerge) #12
  %i.dw = load i32, ptr %i.ds, align 8, !tbaa !27
  %i.dx = and i32 %i.dw, 136
  %.not157 = icmp eq i32 %i.dx, 0
end_hunk_3
begin_hunk_4_@_ellipse_events_button_released:bb.a
  %i.en = load ptr, ptr %i.ek, align 8, !tbaa !41
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !156
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.er = load float, ptr %i.eq, align 8, !tbaa !157
  %i.es = fneg reassoc nsz arcp contract afn float %i.er
  %i.et = fneg reassoc nsz arcp contract afn float %i.ep
  %i.eu = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.es, float %i.et)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ew = load <2 x float>, ptr %i.en, align 4, !tbaa !26 ; 3 uses
  %i.ex = extractelement <2 x float> %i.ew, i64 1 ; 3 uses
  %i.ey = fsub reassoc nsz arcp contract afn float %i.el, %i.ex
  %i.ez = extractelement <2 x float> %i.ew, i64 0 ; 3 uses
  %i.fa = fsub reassoc nsz arcp contract afn float %i.em, %i.ez
  %i.fb = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.ey, float %i.fa)
  %i.fc = fsub reassoc nsz arcp contract afn float %i.fb, %i.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store <2 x float> %i.ew, ptr %i.b, align 16, !tbaa !26
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %i.em, ptr %i.fd, align 8, !tbaa !26
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %i.el, ptr %i.fe, align 4, !tbaa !26
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.fg = fadd reassoc nsz arcp contract afn float %i.ez, 1.000000e+01
  store float %i.fg, ptr %i.ff, align 16, !tbaa !26
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  store float %i.ex, ptr %i.fh, align 4, !tbaa !26
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store float %i.ez, ptr %i.fi, align 8, !tbaa !26
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.fk = fadd reassoc nsz arcp contract afn float %i.ex, 1.000000e+01
  store float %i.fk, ptr %i.fj, align 4, !tbaa !26
  %i.fl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87
  %i.fm = call i32 @dt_dev_distort_backtransform(ptr noundef %i.fl, ptr noundef nonnull %i.b, i64 noundef 4) #12 ; 0 uses
  %i.fn = load float, ptr %i.fj, align 4, !tbaa !26
  %i.fo = load float, ptr %i.ev, align 4, !tbaa !26 ; 2 uses
  %i.fp = fsub reassoc nsz arcp contract afn float %i.fn, %i.fo
  %i.fq = load float, ptr %i.fi, align 8, !tbaa !26
  %i.fr = load float, ptr %i.b, align 16, !tbaa !26 ; 2 uses
  %i.fs = fsub reassoc nsz arcp contract afn float %i.fq, %i.fr
  %i.ft = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.fp, float %i.fs)
  %i.fu = load float, ptr %i.fh, align 4, !tbaa !26
  %i.fv = fsub reassoc nsz arcp contract afn float %i.fu, %i.fo
  %i.fw = load float, ptr %i.ff, align 16, !tbaa !26
  %i.fx = fsub reassoc nsz arcp contract afn float %i.fw, %i.fr
  %i.fy = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.fv, float %i.fx)
  %i.fz = fsub reassoc nsz arcp contract afn float %i.ft, %i.fy
  %sincos = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.fz) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.ga = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %sin, float %cos)
  %i.gb = fcmp reassoc nsz arcp contract afn olt float %i.ga, 0.000000e+00
  %i.gc = fmul reassoc nsz arcp contract afn float %i.fc, f0x42652EE0 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !31
  %i.gf = fneg reassoc nsz arcp contract afn float %i.gc
  %.sink.p = select i1 %i.gb, float %i.gf, float %i.gc
  %.sink = fadd reassoc nsz arcp contract afn float %i.ge, %.sink.p ; 2 uses
  store float %.sink, ptr %i.gd, align 4, !tbaa !31
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !27
  %i.gi = and i32 %i.gh, 136
  %.not154 = icmp eq i32 %i.gi, 0
  %i.gj = select i1 %.not154, ptr @.str.1, ptr @.str
  call void @dt_conf_set_float(ptr noundef nonnull %i.gj, float noundef %.sink) #12
  %i.gk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87
  call void @dt_dev_add_masks_history_item(ptr noundef %i.gk, ptr noundef %0, i32 noundef 1) #12
  call void @dt_masks_gui_form_create(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef %8, ptr noundef %0) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.ao

bb.ab:                                            ; preds = %bb.y, %bb.x
  %i.gl = getelementptr inbounds nuw i8, ptr %7, i64 132 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !153
  %i.gn = icmp sgt i32 %i.gm, 0
  br i1 %i.gn, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.go = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !161
  %i.gq = icmp eq i32 %i.gp, 1
  br i1 %i.gq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 -1, ptr %i.gl, align 4, !tbaa !153
  tail call void @dt_dev_add_masks_history_item(ptr noundef nonnull %i.d, ptr noundef %0, i32 noundef 1) #12
  br label %bb.ao

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.gr = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !154
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.gu = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !161
  %i.gw = icmp eq i32 %i.gv, 1
  br i1 %i.gw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 -1, ptr %i.gr, align 8, !tbaa !154
  tail call void @dt_dev_add_masks_history_item(ptr noundef nonnull %i.d, ptr noundef %0, i32 noundef 1) #12
  br label %bb.ao

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.gx = getelementptr inbounds nuw i8, ptr %7, i64 116 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !141
  %.not151 = icmp eq i32 %i.gy, 0
  br i1 %.not151, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.gx, align 4, !tbaa !141
  %i.gz = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !162
  %i.hb = fcmp reassoc nsz arcp contract afn une float %i.ha, 0.000000e+00
  br i1 %i.hb, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hc = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.hd = load float, ptr %i.hc, align 8, !tbaa !163
  %i.he = fcmp reassoc nsz arcp contract afn une float %i.hd, 0.000000e+00
  br i1 %i.he, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.hf = fmul reassoc nsz arcp contract afn float %.0, %1
  %i.hg = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !156
  %i.hi = fadd reassoc nsz arcp contract afn float %i.hh, %i.hf
  store float %i.hi, ptr %i.c, align 8, !tbaa !26
  %i.hj = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.hk = fmul reassoc nsz arcp contract afn float %.sink.i, %2
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.hm = load float, ptr %i.hl, align 8, !tbaa !157
  %i.hn = fadd reassoc nsz arcp contract afn float %i.hm, %i.hk
  store float %i.hn, ptr %i.hj, align 4, !tbaa !26
  %i.ho = call i32 @dt_dev_distort_backtransform(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, i64 noundef 1) #12 ; 0 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.hq = load <2 x float>, ptr %i.c, align 8, !tbaa !26
  %i.hr = fdiv reassoc nsz arcp contract afn <2 x float> %i.hq, %i.aj
  store <2 x float> %i.hr, ptr %i.hp, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.aj, %bb.ak
  %i.hs = phi ptr [ %i.d, %bb.ai ], [ %i.d, %bb.aj ], [ %.pre, %bb.ak ]
  call void @dt_dev_add_masks_history_item(ptr noundef %i.hs, ptr noundef %0, i32 noundef 1) #12
  call void @dt_masks_gui_form_create(ptr noundef %5, ptr noundef nonnull %7, i32 noundef %8, ptr noundef %0) #12
  %i.ht = getelementptr inbounds nuw i8, ptr %7, i64 176
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !169
  %.not152 = icmp eq i32 %i.hu, 0
  br i1 %.not152, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !27
  %i.hx = call ptr @dt_masks_create(i32 noundef %i.hw) #12
  call void @dt_masks_change_form_gui(ptr noundef %i.hx) #12
  %i.hy = getelementptr inbounds nuw i8, ptr %7, i64 192
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !170
  %i.ia = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 2168
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !176
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 184
  store ptr %i.hz, ptr %i.id, align 8, !tbaa !171
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ie = getelementptr inbounds nuw i8, ptr %7, i64 60
  store i32 1, ptr %i.ie, align 4, !tbaa !20
  %i.if = getelementptr inbounds nuw i8, ptr %7, i64 68
  store i32 1, ptr %i.if, align 4, !tbaa !158
  %i.ig = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 0, ptr %i.ig, align 8, !tbaa !159
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ah, %bb.aa, %bb.z, %bb.an, %bb.ag, %bb.ad, %bb.w, %bb.r, %bb.n
  %.1 = phi i32 [ 1, %bb.n ], [ 1, %bb.r ], [ 1, %bb.w ], [ 0, %bb.z ], [ 1, %bb.ad ], [ 1, %bb.ag ], [ 1, %bb.an ], [ 1, %bb.aa ], [ 0, %bb.ah ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal void @_ellipse_events_post_expose(ptr noundef %0, float noundef %1, ptr noundef %2, i32 noundef %3, i32 %4) #0 {
dt_masks_get_image_size.exit:
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %i.c = alloca [2 x float], align 8              ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca float, align 4                    ; 6 uses
  %i.g = alloca float, align 4                    ; 6 uses
  %i.h = alloca float, align 4                    ; 5 uses
  %i.i = alloca float, align 4                    ; 5 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !114
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.n = load <2 x i32>, ptr %i.m, align 16, !tbaa !32
  %i.o = sitofp reassoc nsz arcp contract afn <2 x i32> %i.n to <2 x float>
  %i.p = load ptr, ptr %2, align 8, !tbaa !34
  %i.q = tail call ptr @g_list_nth_data(ptr noundef %i.p, i32 noundef %3) #12 ; 14 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 172
  %i.s = load i32, ptr %i.r, align 4, !tbaa !18
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.r, label %bb.a

bb.a:                                             ; preds = %dt_masks_get_image_size.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !224
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2160
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !173 ; 2 uses
  %.not155.not = icmp eq ptr %i.y, null
  br i1 %.not155.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 6 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !27
  %i.ab = and i32 %i.aa, 136
  %.not156 = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not156, ptr @.str.9, ptr @.str.8
  %i.ad = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.ac) #12 ; 4 uses
  %i.ae = load i32, ptr %i.z, align 8, !tbaa !27
  %i.af = and i32 %i.ae, 136
  %.not157 = icmp eq i32 %i.af, 0
  %i.ag = select i1 %.not157, ptr @.str.3, ptr @.str.2
  %i.ah = tail call i32 @dt_conf_get_int(ptr noundef nonnull %i.ag) #12
  %i.ai = load i32, ptr %i.z, align 8, !tbaa !27
  %i.aj = and i32 %i.ai, 136
  %.not158 = icmp eq i32 %i.aj, 0
  %i.ak = select i1 %.not158, ptr @.str.5, ptr @.str.4
  %i.al = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.ak) #12 ; 3 uses
  %i.am = load i32, ptr %i.z, align 8, !tbaa !27
  %i.an = and i32 %i.am, 136
  %.not159 = icmp eq i32 %i.an, 0
  %i.ao = select i1 %.not159, ptr @.str.7, ptr @.str.6
  %i.ap = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.ao) #12 ; 3 uses
  %i.aq = load i32, ptr %i.z, align 8, !tbaa !27
  %i.ar = and i32 %i.aq, 136
  %.not160 = icmp eq i32 %i.ar, 0
  %i.as = select i1 %.not160, ptr @.str.1, ptr @.str
  %i.at = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.as) #12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aw = load <2 x float>, ptr %i.au, align 4, !tbaa !26
  store <2 x float> %i.aw, ptr %i.c, align 8, !tbaa !26
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87
  %i.ay = call i32 @dt_dev_distort_backtransform(ptr noundef %i.ax, ptr noundef nonnull %i.c, i64 noundef 1) #12 ; 0 uses
  %i.az = load <2 x float>, ptr %i.c, align 8, !tbaa !26
  %i.ba = fdiv reassoc nsz arcp contract afn <2 x float> %i.az, %i.o ; 2 uses
  %i.bb = extractelement <2 x float> %i.ba, i64 0 ; 3 uses
  store float %i.bb, ptr %i.a, align 4, !tbaa !26
  %i.bc = extractelement <2 x float> %i.ba, i64 1 ; 3 uses
  store float %i.bc, ptr %i.b, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 0, ptr %i.e, align 4, !tbaa !32
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  %i.bf = load ptr, ptr %i.be, align 16, !tbaa !114
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bh = load <2 x i32>, ptr %i.bg, align 16, !tbaa !32
  %i.bi = sitofp reassoc nsz arcp contract afn <2 x i32> %i.bh to <2 x float> ; 2 uses
  %i.bj = extractelement <2 x float> %i.bi, i64 0
  %i.bk = extractelement <2 x float> %i.bi, i64 1
  %i.bl = call fastcc ptr @_points_to_transform(float noundef %i.bb, float noundef %i.bc, float noundef %i.al, float noundef %i.ap, float noundef %i.at, float noundef %i.bj, float noundef %i.bk, ptr noundef nonnull %i.d) ; 10 uses
  %.not.i165 = icmp eq ptr %i.bl, null
  br i1 %.not.i165, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bm = load i32, ptr %i.d, align 4, !tbaa !32  ; 3 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = call i32 @dt_dev_distort_transform(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bl, i64 noundef %i.bn) #12
  %.not15.i = icmp eq i32 %i.bo, 0
  br i1 %.not15.i, label %bb.e, label %_ellipse_get_points.exit

bb.e:                                             ; preds = %bb.d
  call void @free(ptr noundef nonnull %i.bl) #12
  store i32 0, ptr %i.d, align 4, !tbaa !32
  br label %.thread

_ellipse_get_points.exit:                         ; preds = %bb.d
  %i.bp = fcmp reassoc nsz arcp contract afn ogt float %i.ad, 0.000000e+00
  br i1 %i.bp, label %bb.f, label %_ellipse_get_points.exit169

bb.f:                                             ; preds = %_ellipse_get_points.exit
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87 ; 2 uses
  %i.br = and i32 %i.ah, 1
  %.not161 = icmp eq i32 %i.br, 0                 ; 2 uses
  %i.bs = fadd reassoc nnan nsz arcp contract afn float %i.ad, 1.000000e+00 ; 2 uses
  %i.bt = fmul reassoc nsz arcp contract afn float %i.al, %i.bs
  %i.bu = fadd reassoc nsz arcp contract afn float %i.al, %i.ad
  %i.bv = select reassoc nsz arcp contract afn i1 %.not161, float %i.bu, float %i.bt
  %i.bw = fmul reassoc nsz arcp contract afn float %i.ap, %i.bs
  %i.bx = fadd reassoc nsz arcp contract afn float %i.ap, %i.ad
  %i.by = select reassoc nsz arcp contract afn i1 %.not161, float %i.bx, float %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  %i.ca = load ptr, ptr %i.bz, align 16, !tbaa !114
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 144
  %i.cc = load <2 x i32>, ptr %i.cb, align 16, !tbaa !32
  %i.cd = sitofp reassoc nsz arcp contract afn <2 x i32> %i.cc to <2 x float> ; 2 uses
  %i.ce = extractelement <2 x float> %i.cd, i64 0
  %i.cf = extractelement <2 x float> %i.cd, i64 1
  %i.cg = call fastcc ptr @_points_to_transform(float noundef %i.bb, float noundef %i.bc, float noundef %i.bv, float noundef %i.by, float noundef %i.at, float noundef %i.ce, float noundef %i.cf, ptr noundef nonnull %i.e) ; 4 uses
  %.not.i166 = icmp eq ptr %i.cg, null
  br i1 %.not.i166, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ch = load i32, ptr %i.e, align 4, !tbaa !32  ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = call i32 @dt_dev_distort_transform(ptr noundef nonnull %i.bq, ptr noundef nonnull %i.cg, i64 noundef %i.ci) #12
  %.not15.i167 = icmp eq i32 %i.cj, 0
  br i1 %.not15.i167, label %bb.h, label %_ellipse_get_points.exit169

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.cg) #12
  store i32 0, ptr %i.e, align 4, !tbaa !32
  br label %.thread

_ellipse_get_points.exit169:                      ; preds = %bb.g, %_ellipse_get_points.exit
  %i.ck = phi i32 [ %i.ch, %bb.g ], [ 0, %_ellipse_get_points.exit ] ; 2 uses
  %.0181 = phi ptr [ %i.cg, %bb.g ], [ null, %_ellipse_get_points.exit ] ; 5 uses
  %i.cl = icmp sgt i32 %i.bm, 1
  br i1 %i.cl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ellipse_get_points.exit169
  %i.cm = load float, ptr %i.bl, align 4, !tbaa !26
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.co = load float, ptr %i.cn, align 4, !tbaa !26
  call fastcc void @_ellipse_draw_shape(i32 noundef 0, i32 noundef 0, ptr noundef %0, i32 noundef 0, float noundef %1, float noundef %i.cm, float noundef %i.co, ptr noundef nonnull %i.bl, i32 noundef %i.bm)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ellipse_get_points.exit169
  %i.cp = icmp sgt i32 %i.ck, 1
  br i1 %i.cp, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cq = load float, ptr %.0181, align 4, !tbaa !26
  %i.cr = getelementptr inbounds nuw i8, ptr %.0181, i64 4
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !26
  call fastcc void @_ellipse_draw_shape(i32 noundef 1, i32 noundef 0, ptr noundef %0, i32 noundef 0, float noundef %1, float noundef %i.cq, float noundef %i.cs, ptr noundef nonnull %.0181, i32 noundef %i.ck)
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.h, %bb.c, %bb.e, %bb.k, %bb.j
  %.0182186191197 = phi ptr [ %i.bl, %bb.j ], [ %i.bl, %bb.k ], [ %i.bl, %bb.h ], [ %i.bl, %bb.f ], [ null, %bb.e ], [ null, %bb.c ] ; 2 uses
  %.0181192196 = phi ptr [ %.0181, %bb.j ], [ %.0181, %bb.k ], [ null, %bb.h ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.c ] ; 2 uses
  %i.ct = load i32, ptr %i.z, align 8, !tbaa !27
  %i.cu = and i32 %i.ct, 8
  %.not162 = icmp eq i32 %i.cu, 0
  br i1 %.not162, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !26
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !26
  %i.cv = load float, ptr %i.au, align 4, !tbaa !167 ; 2 uses
  %i.cw = load float, ptr %i.av, align 8, !tbaa !168 ; 2 uses
  call void @dt_masks_calculate_source_pos_value(ptr noundef nonnull %2, i32 noundef 32, float noundef %i.cv, float noundef %i.cw, float noundef %i.cv, float noundef %i.cw, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0) #12
  %i.cx = load float, ptr %i.a, align 4, !tbaa !26
  %i.cy = load float, ptr %i.b, align 4, !tbaa !26
  call void @dt_masks_draw_clone_source_pos(ptr noundef %0, float noundef %1, float noundef %i.cx, float noundef %i.cy) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread
  %.not163 = icmp eq ptr %.0182186191197, null
  br i1 %.not163, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %.0182186191197) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not164 = icmp eq ptr %.0181192196, null
  br i1 %.not164, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %.0181192196) #12
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.critedge

bb.r:                                             ; preds = %dt_masks_get_image_size.exit
  %.not152 = icmp eq ptr %i.q, null
  br i1 %.not152, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cz = load ptr, ptr %i.q, align 8, !tbaa !41  ; 3 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !26 ; 18 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dc = load float, ptr %i.db, align 4, !tbaa !26 ; 18 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 4 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !37
  %i.df = icmp sgt i32 %i.de, 10
  br i1 %i.df, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dg = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !38 ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !26
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !26
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0144 = phi nsz float [ %i.di, %bb.t ], [ 0.000000e+00, %bb.s ]
  %.0143 = phi nsz float [ %i.dk, %bb.t ], [ 0.000000e+00, %bb.s ]
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 164 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !177
  %i.dn = icmp eq i32 %i.dm, %3
  br i1 %i.dn, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !20
  %.not153 = icmp eq i32 %i.dp, 0
  br i1 %.not153, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !140
  %i.ds = icmp ne i32 %i.dr, 0
  %i.dt = zext i1 %i.ds to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u
  %i.du = phi i32 [ 0, %bb.u ], [ 1, %bb.v ], [ %i.dt, %bb.w ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !225
  tail call fastcc void @_ellipse_draw_shape(i32 noundef 0, i32 noundef 0, ptr noundef %0, i32 noundef %i.du, float noundef %1, float noundef %i.da, float noundef %i.dc, ptr noundef nonnull %i.cz, i32 noundef %i.dw)
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !226
  %.not154 = icmp eq i32 %i.dy, 0
  br i1 %.not154, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dz = load i32, ptr %i.dl, align 4, !tbaa !177
  %i.ea = icmp eq i32 %i.dz, %3
  br i1 %i.ea, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !159
  %i.ed = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !42
  %i.ef = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !43
  tail call fastcc void @_ellipse_draw_shape(i32 noundef 1, i32 noundef 0, ptr noundef %0, i32 noundef %i.ec, float noundef %1, float noundef %i.da, float noundef %i.dc, ptr noundef %i.ee, i32 noundef %i.eg)
  %i.eh = load ptr, ptr %i.q, align 8, !tbaa !41  ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !26 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.el = load float, ptr %i.ek, align 4, !tbaa !26
  %i.em = fsub reassoc nsz arcp contract afn float %i.ej, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.eo = load float, ptr %i.en, align 4, !tbaa !26 ; 2 uses
  %i.ep = load float, ptr %i.eh, align 4, !tbaa !26
  %i.eq = fsub reassoc nsz arcp contract afn float %i.eo, %i.ep
  %i.er = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.em, float %i.eq)
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.er) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 3 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 3 uses
  %i.es = fmul reassoc nsz arcp contract afn float %sin, %sin
  %i.et = fmul reassoc nsz arcp contract afn float %cos, %cos
  %i.eu = fadd reassoc nsz arcp contract afn float %i.et, %i.es ; 16 uses
  %i.ev = fmul reassoc nsz arcp contract afn float %cos, %sin ; 2 uses
  %i.ew = fsub reassoc nsz arcp contract afn float %i.ev, %i.ev ; 16 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.fb = fsub reassoc nsz arcp contract afn float %i.eo, %i.da ; 2 uses
  %i.fc = fmul reassoc nsz arcp contract afn float %i.fb, %i.eu
  %i.fd = fsub reassoc nsz arcp contract afn float %i.ej, %i.dc ; 2 uses
  %i.fe = fmul reassoc nsz arcp contract afn float %i.fd, %i.ew
  %i.ff = fmul reassoc nsz arcp contract afn float %i.fb, %i.ew
  %i.fg = fmul reassoc nsz arcp contract afn float %i.fd, %i.eu
  %i.fh = fadd reassoc nsz arcp contract afn float %i.fc, %i.da
  %i.fi = fadd reassoc nsz arcp contract afn float %i.fh, %i.fe
  %i.fj = fadd reassoc nsz arcp contract afn float %i.ff, %i.dc
  %i.fk = fadd reassoc nsz arcp contract afn float %i.fj, %i.fg
  %i.fl = load i32, ptr %i.ex, align 4, !tbaa !153
  %i.fm = icmp eq i32 %i.fl, 1
  br i1 %i.fm, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fn = load i32, ptr %i.ey, align 4, !tbaa !19
  %i.fo = icmp eq i32 %i.fn, 1
  %i.fp = zext i1 %i.fo to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fq = phi i32 [ 1, %bb.z ], [ %i.fp, %bb.aa ]
  tail call void @dt_masks_draw_anchor(ptr noundef %0, i32 noundef %i.fq, float noundef %1, float noundef %i.fi, float noundef %i.fk) #12
  %i.fr = load ptr, ptr %i.ed, align 8, !tbaa !42 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !26
end_hunk_4
begin_hunk_5_@_ellipse_events_post_expose:dt_masks_get_image_size.exit
  %i.lq = fcmp reassoc nsz arcp contract afn une float %i.lp, 0.000000e+00
  br i1 %i.lq, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !26
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !26
  %i.lv = fsub reassoc nsz arcp contract afn float %i.ls, %i.lu
  %i.lw = fcmp reassoc nsz arcp contract afn une float %i.lv, 0.000000e+00
  br i1 %i.lw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  tail call void @cairo_set_line_cap(ptr noundef %0, i32 noundef 1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !26
  %i.lx = load i32, ptr %i.dv, align 8, !tbaa !225
  %i.ly = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.lz = load ptr, ptr %i.lk, align 8, !tbaa !38 ; 2 uses
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !26
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !26
  call void @dt_masks_closest_point(i32 noundef %i.lx, i32 noundef 6, ptr noundef %i.ly, float noundef %i.ma, float noundef %i.mc, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #12
  %i.md = load i32, ptr %i.dd, align 8, !tbaa !37
  %i.me = load ptr, ptr %i.lk, align 8, !tbaa !38
  %i.mf = load float, ptr %i.f, align 4, !tbaa !26
  %i.mg = load float, ptr %i.g, align 4, !tbaa !26
  call void @dt_masks_closest_point(i32 noundef %i.md, i32 noundef 6, ptr noundef %i.me, float noundef %i.mf, float noundef %i.mg, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #12
  %i.mh = load float, ptr %i.h, align 4, !tbaa !26
  %i.mi = load float, ptr %i.i, align 4, !tbaa !26
  %i.mj = load float, ptr %i.f, align 4, !tbaa !26
  %i.mk = load float, ptr %i.g, align 4, !tbaa !26
  call void @dt_masks_draw_arrow(ptr noundef %0, float noundef %i.mh, float noundef %i.mi, float noundef %i.mj, float noundef %i.mk, float noundef %1, i32 noundef 0) #12
  call void @dt_masks_stroke_arrow(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %3, float noundef %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  %.pre = load ptr, ptr %i.lk, align 8, !tbaa !38
  %.pre200 = load i32, ptr %i.dd, align 8, !tbaa !37
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.ml = phi i32 [ %.pre200, %bb.ar ], [ %i.li, %bb.aq ], [ %i.li, %bb.ap ]
  %i.mm = phi ptr [ %.pre, %bb.ar ], [ %i.ll, %bb.aq ], [ %i.ll, %bb.ap ]
  call fastcc void @_ellipse_draw_shape(i32 noundef 0, i32 noundef 1, ptr noundef %0, i32 noundef %i.du, float noundef %1, float noundef %.0144, float noundef %.0143, ptr noundef %i.mm, i32 noundef %i.ml)
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.b, %.loopexit, %bb.as, %bb.r, %bb.a
  ret void
}

declare float @dt_conf_get_and_sanitize_float(ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @dt_conf_get_and_sanitize_int(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare float @dt_conf_get_float(ptr noundef) local_unnamed_addr #1

declare void @dt_conf_set_float(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @dt_mouse_action_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare i32 @g_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i64 @g_strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #5

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @g_list_nth_data(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @dt_masks_point_in_form_near(float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @dt_masks_get_image_size(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %3) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !114 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load float, ptr %i.d, align 8, !tbaa !149 ; 2 uses
  %i.f = fcmp reassoc nsz arcp contract afn ogt float %i.e, 0.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %i.f, float %i.e, float 1.000000e+00 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  %i.h = load i32, ptr %i.g, align 4, !tbaa !150  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not45 = icmp eq ptr %0, null
  br i1 %.not45, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = uitofp nneg i32 %i.h to float
  store float %i.j, ptr %0, align 4, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not46 = icmp eq ptr %1, null
  br i1 %.not46, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.l = load i32, ptr %i.k, align 16, !tbaa !151
  %i.m = sitofp reassoc nsz arcp contract afn i32 %i.l to float
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2760
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !152  ; 3 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 156
  %i.q = load i32, ptr %i.p, align 4, !tbaa !150  ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %.not43 = icmp eq ptr %0, null
  br i1 %.not43, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = uitofp nneg i32 %i.q to float
  %i.t = fdiv reassoc nsz arcp contract afn float %i.s, %spec.select
  store float %i.t, ptr %0, align 4, !tbaa !26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not44 = icmp eq ptr %1, null
  br i1 %.not44, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  %i.v = load i32, ptr %i.u, align 16, !tbaa !151
  %i.w = sitofp reassoc nsz arcp contract afn i32 %i.v to float
  %i.x = fdiv reassoc nsz arcp contract afn float %i.w, %spec.select
  br label %.sink.split

bb.l:                                             ; preds = %bb.g, %bb.f
  %.not41 = icmp eq ptr %0, null
  br i1 %.not41, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  %i.z = load i32, ptr %i.y, align 8, !tbaa !164
  %i.aa = sitofp reassoc nsz arcp contract afn i32 %i.z to float
  store float %i.aa, ptr %0, align 4, !tbaa !26
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not42 = icmp eq ptr %1, null
  br i1 %.not42, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 380
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !165
  %i.ad = sitofp reassoc nsz arcp contract afn i32 %i.ac to float
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.o, %bb.e
  %.sink = phi float [ %i.m, %bb.e ], [ %i.ad, %bb.o ], [ %i.x, %bb.k ]
  store float %.sink, ptr %1, align 4, !tbaa !26
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.d, %bb.n, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.af = load <2 x i32>, ptr %i.ae, align 16, !tbaa !32
  %i.ag = sitofp reassoc nsz arcp contract afn <2 x i32> %i.af to <2 x float> ; 2 uses
  %i.ah = extractelement <2 x float> %i.ag, i64 0
  store float %i.ah, ptr %2, align 4, !tbaa !26
  %i.ai = extractelement <2 x float> %i.ag, i64 1
  store float %i.ai, ptr %3, align 4, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_points_to_transform(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %7) unnamed_addr #0 {
bb.a:
  %i.a = fcmp reassoc nsz arcp contract afn ult float %2, %3 ; 3 uses
  %.sink141 = select i1 %i.a, float %3, float %2
  %.sink139 = select i1 %i.a, float %2, float %3
  %i.b = fcmp reassoc nsz arcp contract afn olt float %5, %6
  %i.c = select reassoc nsz arcp contract afn i1 %i.b, float %5, float %6 ; 2 uses
  %i.d = fmul reassoc nsz arcp contract afn float %i.c, %.sink141 ; 4 uses
  %i.e = fmul reassoc nsz arcp contract afn float %i.c, %.sink139 ; 6 uses
  %i.f = fsub reassoc nsz arcp contract afn float %i.d, %i.e
  %i.g = fadd reassoc nsz arcp contract afn float %i.e, %i.d ; 2 uses
  %i.h = fdiv reassoc nsz arcp contract afn float %i.f, %i.g ; 2 uses
  %i.i = fmul reassoc nsz arcp contract afn float %i.h, %i.h
  %i.j = fmul reassoc nsz arcp contract afn float %i.i, 3.000000e+00 ; 2 uses
  %i.k = fsub reassoc nsz arcp contract afn float 4.000000e+00, %i.j
  %i.l = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.k)
  %i.m = fadd reassoc nsz arcp contract afn float %i.l, 1.000000e+01
  %i.n = fdiv reassoc nsz arcp contract afn float %i.j, %i.m
  %i.o = fadd reassoc nsz arcp contract afn float %i.n, 1.000000e+00
  %i.p = fmul reassoc nsz arcp contract afn float %i.g, f0x3EA0D97C
  %i.q = fmul reassoc nsz arcp contract afn float %i.p, %i.o
  %i.r = fptosi float %i.q to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.r, i32 100) ; 3 uses
  %i.s = add nuw nsw i32 %spec.select, 5          ; 3 uses
  %i.t = shl nuw i32 %i.s, 1
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call ptr @dt_alloc_aligned(i64 noundef %i.v) #12 ; 15 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.w, i64 64) ]
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.b, label %vector.ph

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %7, align 4, !tbaa !32
  br label %.loopexit

vector.ph:                                        ; preds = %bb.a
  %i.x = fmul reassoc nsz arcp contract afn float %4, f0x3C8EFA36 ; 2 uses
  %i.y = fadd reassoc nsz arcp contract afn float %i.x, f0xBFC90FDC
  %.0112 = select nsz i1 %i.a, float %i.y, float %i.x ; 2 uses
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %.0112) ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  store i32 %i.s, ptr %7, align 4, !tbaa !32
  %i.z = fmul reassoc nsz arcp contract afn float %5, %0 ; 7 uses
  store float %i.z, ptr %i.w, align 64, !tbaa !26
  %i.aa = fmul reassoc nsz arcp contract afn float %6, %1 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store float %i.aa, ptr %i.ab, align 4, !tbaa !26
  %i.ac = fmul reassoc nsz arcp contract afn float %cos, %i.d ; 4 uses
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ac, %i.z
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store float %i.ad, ptr %i.ae, align 8, !tbaa !26
  %i.af = fmul reassoc nsz arcp contract afn float %sin, %i.d ; 4 uses
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store float %i.ag, ptr %i.ah, align 4, !tbaa !26
  %i.ai = fsub reassoc nsz arcp contract afn float %i.z, %i.ac
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store float %i.ai, ptr %i.aj, align 16, !tbaa !26
  %i.ak = fsub reassoc nsz arcp contract afn float %i.aa, %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  store float %i.ak, ptr %i.al, align 4, !tbaa !26
  %i.am = fadd reassoc nsz arcp contract afn float %.0112, f0xBFC90FDB
  %sincos120 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.am) ; 2 uses
  %sin121 = extractvalue { float, float } %sincos120, 0
  %cos122 = extractvalue { float, float } %sincos120, 1
  %i.an = fmul reassoc nsz arcp contract afn float %cos122, %i.e ; 2 uses
  %i.ao = fadd reassoc nsz arcp contract afn float %i.an, %i.z
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store float %i.ao, ptr %i.ap, align 8, !tbaa !26
  %i.aq = fmul reassoc nsz arcp contract afn float %sin121, %i.e ; 2 uses
  %i.ar = fadd reassoc nsz arcp contract afn float %i.aq, %i.aa
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  store float %i.ar, ptr %i.as, align 4, !tbaa !26
  %i.at = fsub reassoc nsz arcp contract afn float %i.z, %i.an
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store float %i.at, ptr %i.au, align 32, !tbaa !26
  %i.av = fsub reassoc nsz arcp contract afn float %i.aa, %i.aq
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  store float %i.av, ptr %i.aw, align 4, !tbaa !26
  %i.ax = uitofp nneg i32 %spec.select to float   ; 2 uses
  %i.ay = fneg reassoc nsz arcp contract afn float %sin
  %factor.op.fmul = fmul reassoc nsz arcp contract afn float %i.e, %i.ay ; 2 uses
  %factor.op.fmul130 = fmul reassoc nsz arcp contract afn float %i.e, %cos ; 2 uses
  %wide.trip.count = zext nneg i32 %i.s to i64
  %i.az = zext nneg i32 %spec.select to i64       ; 2 uses
  %n.vec = and i64 %i.az, 2147483640              ; 3 uses
  %i.ba = or disjoint i64 %n.vec, 5
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.z, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert143 = insertelement <8 x float> poison, float %i.aa, i64 0
  %broadcast.splat144 = shufflevector <8 x float> %broadcast.splatinsert143, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert145 = insertelement <8 x float> poison, float %i.ac, i64 0
  %broadcast.splat146 = shufflevector <8 x float> %broadcast.splatinsert145, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert147 = insertelement <8 x float> poison, float %i.af, i64 0
  %broadcast.splat148 = shufflevector <8 x float> %broadcast.splatinsert147, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert149 = insertelement <8 x float> poison, float %i.ax, i64 0
  %broadcast.splat150 = shufflevector <8 x float> %broadcast.splatinsert149, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert151 = insertelement <8 x float> poison, float %factor.op.fmul, i64 0
  %broadcast.splat152 = shufflevector <8 x float> %broadcast.splatinsert151, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert153 = insertelement <8 x float> poison, float %factor.op.fmul130, i64 0
  %broadcast.splat154 = shufflevector <8 x float> %broadcast.splatinsert153, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bb = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat150
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bc = add <8 x i32> %vec.ind, splat (i32 -5)
  %i.bd = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bc to <8 x float>
  %i.be = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.bd, splat (float f0x40C90FDB)
  %i.bf = fmul reassoc nsz arcp contract afn <8 x float> %i.be, %i.bb
  %i.bg = tail call reassoc nsz arcp contract afn { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float> %i.bf) ; 2 uses
  %i.bh = extractvalue { <8 x float>, <8 x float> } %i.bg, 0 ; 2 uses
  %i.bi = extractvalue { <8 x float>, <8 x float> } %i.bg, 1 ; 2 uses
  %i.bj = fmul reassoc nsz arcp contract afn <8 x float> %i.bi, %broadcast.splat148
  %i.bk = fmul reassoc nsz arcp contract afn <8 x float> %i.bi, %broadcast.splat146
  %i.bl = fadd reassoc nsz arcp contract afn <8 x float> %i.bk, %broadcast.splat
  %i.bm = fmul reassoc nsz arcp contract afn <8 x float> %i.bh, %broadcast.splat154
  %i.bn = fmul reassoc nsz arcp contract afn <8 x float> %i.bh, %broadcast.splat152
  %i.bo = fadd reassoc nsz arcp contract afn <8 x float> %i.bl, %i.bn
  %i.bp = shl i64 %index, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = fadd reassoc nsz arcp contract afn <8 x float> %i.bj, %broadcast.splat144
  %i.bt = fadd reassoc nsz arcp contract afn <8 x float> %i.bs, %i.bm
  %interleaved.vec = shufflevector <8 x float> %i.bo, <8 x float> %i.bt, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.br, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !227

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.az
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %middle.block
  %i.bv = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ax
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %i.ba, %scalar.ph.preheader ] ; 3 uses
  %i.bw = trunc i64 %indvars.iv to i32
  %i.bx = add i32 %i.bw, -5
  %i.by = sitofp reassoc nsz arcp contract afn i32 %i.bx to float
  %i.bz = fmul reassoc nnan nsz arcp contract afn float %i.by, f0x40C90FDB
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, %i.bv
  %sincos123 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ca) ; 2 uses
  %sin124 = extractvalue { float, float } %sincos123, 0 ; 2 uses
  %cos125 = extractvalue { float, float } %sincos123, 1 ; 2 uses
  %.reass129 = fmul reassoc nsz arcp contract afn float %cos125, %i.af
  %.reass = fmul reassoc nsz arcp contract afn float %cos125, %i.ac
  %i.cb = fadd reassoc nsz arcp contract afn float %.reass, %i.z
  %.reass131 = fmul reassoc nsz arcp contract afn float %sin124, %factor.op.fmul130
  %.reass127.reass = fmul reassoc nsz arcp contract afn float %sin124, %factor.op.fmul
  %i.cc = fadd reassoc nsz arcp contract afn float %i.cb, %.reass127.reass
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx ; 2 uses
  store float %i.cc, ptr %i.cd, align 8, !tbaa !26
  %i.ce = fadd reassoc nsz arcp contract afn float %.reass129, %i.aa
  %i.cf = fadd reassoc nsz arcp contract afn float %i.ce, %.reass131
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store float %i.cf, ptr %i.cg, align 4, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !228

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.b
  ret ptr %i.w
}

declare i32 @dt_dev_distort_transform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

declare i32 @dt_dev_distort_transform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #1

declare i32 @dt_dev_distort_backtransform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

end_hunk_5
