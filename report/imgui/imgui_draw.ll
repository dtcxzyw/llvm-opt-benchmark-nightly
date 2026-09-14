Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1479
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 352
begin_hunk_0_@_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi:bb.a
  %i.fm = getelementptr inbounds nuw i8, ptr %i.di, i64 6
  store i16 %i.fl, ptr %i.fm, align 2, !tbaa !243
  store i16 %i.fk, ptr %i.et, align 2, !tbaa !243
  store i16 %i.ep, ptr %i.fj, align 2, !tbaa !243
  %i.fn = getelementptr inbounds nuw i8, ptr %i.di, i64 12 ; 2 uses
  store ptr %i.fn, ptr %i.de, align 8, !tbaa !113
  %exitcond566.not611 = icmp eq i64 %indvars.iv.next563, %wide.trip.count565
  br i1 %exitcond566.not611, label %.lr.ph547, label %.backedge.backedge

.lr.ph547:                                        ; preds = %.thread609
  %i.fo = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !248
  %i.fr = zext nneg i32 %i.u to i64
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.fq, i64 %i.fr ; 2 uses
  %i.ft = load <2 x i32>, ptr %i.fs, align 4, !tbaa !29
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load <2 x i32>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !29
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %.pre592 = load ptr, ptr %i.fv, align 8, !tbaa !242
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph547, %bb.s
  %i.fw = phi ptr [ %.pre592, %.lr.ph547 ], [ %i.gk, %bb.s ]
  %indvars.iv567 = phi i64 [ 0, %.lr.ph547 ], [ %indvars.iv.next568, %bb.s ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv567, 4
  %i.fx = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 4
  store i64 %i.fy, ptr %i.fw, align 4
  %i.fz = load ptr, ptr %i.fv, align 8, !tbaa !242
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store <2 x i32> %i.ft, ptr %i.ga, align 4
  %i.gb = load ptr, ptr %i.fv, align 8, !tbaa !242 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store i32 %3, ptr %i.gc, align 4, !tbaa !245
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 20
  %i.gf = load i64, ptr %i.gd, align 4
  store i64 %i.gf, ptr %i.ge, align 4
  %i.gg = load ptr, ptr %i.fv, align 8, !tbaa !242
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 28
  store <2 x i32> %i.fu, ptr %i.gh, align 4
  %i.gi = load ptr, ptr %i.fv, align 8, !tbaa !242 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 36
  store i32 %3, ptr %i.gj, align 4, !tbaa !245
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 40 ; 2 uses
  store ptr %i.gk, ptr %i.fv, align 8, !tbaa !242
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond571.not = icmp eq i64 %indvars.iv.next568, %i.av
  br i1 %exitcond571.not, label %.loopexit535, label %bb.s, !llvm.loop !567

bb.t:                                             ; preds = %.lr.ph549, %bb.t
  %i.gl = phi ptr [ %.pre593, %.lr.ph549 ], [ %i.hg, %bb.t ]
  %indvars.iv572 = phi i64 [ 0, %.lr.ph549 ], [ %indvars.iv.next573, %bb.t ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv572
  %i.gn = load i64, ptr %i.gm, align 4
  store i64 %i.gn, ptr %i.gl, align 4
  %i.go = load ptr, ptr %i.dh, align 8, !tbaa !242
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i64 %i.f, ptr %i.gp, align 4
  %i.gq = load ptr, ptr %i.dh, align 8, !tbaa !242 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store i32 %3, ptr %i.gr, align 4, !tbaa !245
  %.idx607 = shl nuw nsw i64 %indvars.iv572, 4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx607 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 20
  %i.gu = load i64, ptr %i.gs, align 4
  store i64 %i.gu, ptr %i.gt, align 4
  %i.gv = load ptr, ptr %i.dh, align 8, !tbaa !242
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 28
  store i64 %i.f, ptr %i.gw, align 4
  %i.gx = load ptr, ptr %i.dh, align 8, !tbaa !242 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 36
  store i32 %i.r, ptr %i.gy, align 4, !tbaa !245
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  %i.hb = load i64, ptr %i.gz, align 4
  store i64 %i.hb, ptr %i.ha, align 4
  %i.hc = load ptr, ptr %i.dh, align 8, !tbaa !242
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  store i64 %i.f, ptr %i.hd, align 4
  %i.he = load ptr, ptr %i.dh, align 8, !tbaa !242 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 56
  store i32 %i.r, ptr %i.hf, align 4, !tbaa !245
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 60 ; 2 uses
  store ptr %i.hg, ptr %i.dh, align 8, !tbaa !242
  %indvars.iv.next573 = add nuw nsw i64 %indvars.iv572, 1 ; 2 uses
  %exitcond576.not = icmp eq i64 %indvars.iv.next573, %i.av
  br i1 %exitcond576.not, label %.loopexit535, label %bb.t, !llvm.loop !568

bb.u:                                             ; preds = %bb.n
  %i.hh = fsub float %i.t, %i.j
  %i.hi = fmul float %i.hh, 5.000000e-01          ; 3 uses
  %i.hj = fadd float %i.j, %i.hi
  %i.hk = load <2 x float>, ptr %i.au, align 4, !tbaa !29
  %i.hl = insertelement <2 x float> poison, float %i.hj, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hn = fmul <2 x float> %i.hm, %i.hk
  %i.ho = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.hp = fadd <2 x float> %i.hn, %i.ho
  store <2 x float> %i.hp, ptr %i.aw, align 4
  %i.hq = load <2 x float>, ptr %i.au, align 4, !tbaa !29 ; 2 uses
  %i.hr = insertelement <2 x float> poison, float %i.hi, i64 0
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ht = fmul <2 x float> %i.hs, %i.hq           ; 2 uses
  %i.hu = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.hv = fadd <2 x float> %i.ht, %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store <2 x float> %i.hv, ptr %i.hw, align 4
  %i.hx = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.hy = fsub <2 x float> %i.hx, %i.ht
  %i.hz = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <2 x float> %i.hy, ptr %i.hz, align 4
  %i.ia = fmul <2 x float> %i.hm, %i.hq
  %i.ib = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.ic = fsub <2 x float> %i.ib, %i.ia
  %i.id = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store <2 x float> %i.ic, ptr %i.id, align 4
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bt ; 4 uses
  %i.if = load <2 x float>, ptr %i.bu, align 4, !tbaa !29
  %i.ig = fmul <2 x float> %i.hm, %i.if
  %i.ih = load <2 x float>, ptr %i.ie, align 4, !tbaa !29
  %i.ii = fadd <2 x float> %i.ig, %i.ih
  %i.ij = shl nuw nsw i32 %i.g, 2
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ik ; 4 uses
  store <2 x float> %i.ii, ptr %i.il, align 4
  %i.im = load <2 x float>, ptr %i.bu, align 4, !tbaa !29 ; 2 uses
  %i.in = fmul <2 x float> %i.hs, %i.im           ; 2 uses
  %i.io = load <2 x float>, ptr %i.ie, align 4, !tbaa !29
  %i.ip = fadd <2 x float> %i.in, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store <2 x float> %i.ip, ptr %i.iq, align 4
  %i.ir = load <2 x float>, ptr %i.ie, align 4, !tbaa !29
  %i.is = fsub <2 x float> %i.ir, %i.in
  %i.it = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store <2 x float> %i.is, ptr %i.it, align 4
  %i.iu = fmul <2 x float> %i.hm, %i.im
  %i.iv = load <2 x float>, ptr %i.ie, align 4, !tbaa !29
  %i.iw = fsub <2 x float> %i.iv, %i.iu
  %i.ix = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  store <2 x float> %i.iw, ptr %i.ix, align 4
  br label %.lr.ph553

.lr.ph553:                                        ; preds = %bb.u, %.thread529
  %i.iy = phi float [ %i.bx, %.thread529 ], [ %i.hi, %bb.u ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !92 ; 2 uses
  %i.jb = fadd float %i.j, %i.iy
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted = load ptr, ptr %i.jc, align 8, !tbaa !113
  %wide.trip.count580 = zext nneg i32 %i.h to i64
  %i.jd = insertelement <2 x float> poison, float %i.jb, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.v

.lr.ph555:                                        ; preds = %bb.x
  store ptr %i.ls, ptr %i.jc, align 8, !tbaa !113
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %.pre594 = load ptr, ptr %i.jh, align 8, !tbaa !242
  br label %bb.y

bb.v:                                             ; preds = %.lr.ph553, %bb.x
  %indvars.iv577 = phi i64 [ 0, %.lr.ph553 ], [ %indvars.iv.next578, %bb.x ] ; 2 uses
  %i.ji = phi ptr [ %.promoted, %.lr.ph553 ], [ %i.ls, %bb.x ] ; 9 uses
  %.0425550 = phi i32 [ %i.ja, %.lr.ph553 ], [ %spec.select, %bb.x ] ; 3 uses
  %indvars.iv.next578 = add nuw nsw i64 %indvars.iv577, 1 ; 4 uses
  %i.jj = icmp eq i64 %indvars.iv.next578, %i.av  ; 2 uses
  %i.jk = trunc nuw nsw i64 %indvars.iv.next578 to i32
  %i.jl = select i1 %i.jj, i32 0, i32 %i.jk       ; 2 uses
  %i.jm = add i32 %.0425550, 4
  %spec.select = select i1 %i.jj, i32 %i.ja, i32 %i.jm ; 3 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv577
  %i.jo = zext nneg i32 %i.jl to i64              ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.jo
  %i.jq = load <2 x float>, ptr %i.jn, align 4, !tbaa !29
  %i.jr = load <2 x float>, ptr %i.jp, align 4, !tbaa !29
  %i.js = fadd <2 x float> %i.jq, %i.jr
  %i.jt = fmul <2 x float> %i.js, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop619 = fmul <2 x float> %i.jt, %i.jt
  %i.ju = extractelement <2 x float> %foldExtExtBinop619, i64 1
  %i.jv = extractelement <2 x float> %i.jt, i64 0 ; 2 uses
  %i.jw = tail call float @llvm.fmuladd.f32(float %i.jv, float %i.jv, float %i.ju) ; 2 uses
  %i.jx = fcmp ogt float %i.jw, f0x358637BD
  br i1 %i.jx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jy = fdiv float 1.000000e+00, %i.jw          ; 2 uses
  %i.jz = fcmp ogt float %i.jy, 1.000000e+02
  %spec.store.select6 = select i1 %i.jz, float 1.000000e+02, float %i.jy
  %i.ka = insertelement <2 x float> poison, float %spec.store.select6, i64 0
  %i.kb = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kc = fmul <2 x float> %i.jt, %i.kb
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.kd = phi <2 x float> [ %i.kc, %bb.w ], [ %i.jt, %bb.v ] ; 2 uses
  %i.ke = fmul <2 x float> %i.je, %i.kd           ; 2 uses
  %i.kf = shl nsw i32 %i.jl, 2
  %i.kg = zext nneg i32 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.kg ; 4 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.jo ; 4 uses
  %i.kj = load <2 x float>, ptr %i.ki, align 4, !tbaa !29
  %i.kk = fadd <2 x float> %i.ke, %i.kj
  store <2 x float> %i.kk, ptr %i.kh, align 4, !tbaa !29
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.km = fmul <2 x float> %i.jg, %i.kd           ; 2 uses
  %i.kn = load <2 x float>, ptr %i.ki, align 4, !tbaa !29
  %i.ko = fadd <2 x float> %i.km, %i.kn
  store <2 x float> %i.ko, ptr %i.kl, align 4, !tbaa !29
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kq = load <2 x float>, ptr %i.ki, align 4, !tbaa !29
  %i.kr = fsub <2 x float> %i.kq, %i.km
  store <2 x float> %i.kr, ptr %i.kp, align 4, !tbaa !29
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %i.kt = load <2 x float>, ptr %i.ki, align 4, !tbaa !29
  %i.ku = fsub <2 x float> %i.kt, %i.ke
  store <2 x float> %i.ku, ptr %i.ks, align 4, !tbaa !29
  %i.kv = trunc i32 %spec.select to i16
  %i.kw = insertelement <2 x i16> poison, i16 %i.kv, i64 0
  %i.kx = trunc i32 %.0425550 to i16
  %i.ky = insertelement <2 x i16> %i.kw, i16 %i.kx, i64 1
  %i.kz = shufflevector <2 x i16> %i.ky, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.la = trunc i32 %spec.select to i16           ; 3 uses
  %i.lb = trunc i32 %.0425550 to i16              ; 3 uses
  %i.lc = add <4 x i16> %i.kz, <i16 1, i16 1, i16 2, i16 2> ; 3 uses
  %i.ld = shufflevector <4 x i16> %i.lc, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 2, i32 3, i32 0, i32 0, i32 1>
  %i.le = add i16 %i.la, 1
  store <8 x i16> %i.ld, ptr %i.ji, align 2, !tbaa !243
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  store i16 %i.lb, ptr %i.lf, align 2, !tbaa !243
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ji, i64 18
  store i16 %i.lb, ptr %i.lg, align 2, !tbaa !243
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ji, i64 20
  store i16 %i.la, ptr %i.lh, align 2, !tbaa !243
  %i.li = getelementptr inbounds nuw i8, ptr %i.ji, i64 22
  store i16 %i.le, ptr %i.li, align 2, !tbaa !243
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.lk = extractelement <4 x i16> %i.lc, i64 3   ; 2 uses
  store i16 %i.lk, ptr %i.lj, align 2, !tbaa !243
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ji, i64 26
  %i.lm = shufflevector <4 x i16> %i.lc, <4 x i16> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.ln = insertelement <4 x i16> %i.lm, i16 %i.lb, i64 1
  %i.lo = insertelement <4 x i16> %i.ln, i16 %i.la, i64 3
  %i.lp = add <4 x i16> %i.lo, <i16 0, i16 3, i16 poison, i16 3>
  %i.lq = shufflevector <4 x i16> %i.lp, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  store <4 x i16> %i.lq, ptr %i.ll, align 2, !tbaa !243
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ji, i64 34
  store i16 %i.lk, ptr %i.lr, align 2, !tbaa !243
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ji, i64 36 ; 2 uses
  %exitcond581.not = icmp eq i64 %indvars.iv.next578, %wide.trip.count580
  br i1 %exitcond581.not, label %.lr.ph555, label %bb.v, !llvm.loop !569

bb.y:                                             ; preds = %.lr.ph555, %bb.y
  %i.lt = phi ptr [ %.pre594, %.lr.ph555 ], [ %i.mv, %bb.y ]
  %indvars.iv582 = phi i64 [ 0, %.lr.ph555 ], [ %indvars.iv.next583, %bb.y ] ; 2 uses
  %.idx608 = shl nuw nsw i64 %indvars.iv582, 5
  %i.lu = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx608 ; 4 uses
  %i.lv = load i64, ptr %i.lu, align 4
  store i64 %i.lv, ptr %i.lt, align 4
  %i.lw = load ptr, ptr %i.jh, align 8, !tbaa !242
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store i64 %i.f, ptr %i.lx, align 4
  %i.ly = load ptr, ptr %i.jh, align 8, !tbaa !242 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  store i32 %i.r, ptr %i.lz, align 4, !tbaa !245
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 20
  %i.mc = load i64, ptr %i.ma, align 4
  store i64 %i.mc, ptr %i.mb, align 4
  %i.md = load ptr, ptr %i.jh, align 8, !tbaa !242
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 28
  store i64 %i.f, ptr %i.me, align 4
  %i.mf = load ptr, ptr %i.jh, align 8, !tbaa !242 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 36
  store i32 %3, ptr %i.mg, align 4, !tbaa !245
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 40
  %i.mj = load i64, ptr %i.mh, align 4
  store i64 %i.mj, ptr %i.mi, align 4
  %i.mk = load ptr, ptr %i.jh, align 8, !tbaa !242
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 48
  store i64 %i.f, ptr %i.ml, align 4
  %i.mm = load ptr, ptr %i.jh, align 8, !tbaa !242 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 56
  store i32 %3, ptr %i.mn, align 4, !tbaa !245
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 60
  %i.mq = load i64, ptr %i.mo, align 4
  store i64 %i.mq, ptr %i.mp, align 4
  %i.mr = load ptr, ptr %i.jh, align 8, !tbaa !242
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 68
  store i64 %i.f, ptr %i.ms, align 4
  %i.mt = load ptr, ptr %i.jh, align 8, !tbaa !242 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 76
  store i32 %i.r, ptr %i.mu, align 4, !tbaa !245
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 80 ; 2 uses
  store ptr %i.mv, ptr %i.jh, align 8, !tbaa !242
  %indvars.iv.next583 = add nuw nsw i64 %indvars.iv582, 1 ; 2 uses
  %exitcond586.not = icmp eq i64 %indvars.iv.next583, %i.av
  br i1 %exitcond586.not, label %.loopexit535, label %bb.y, !llvm.loop !570

.loopexit535:                                     ; preds = %bb.s, %bb.t, %bb.y
  %i.mw = and i32 %i.ai, 65535
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !92
  %i.mz = add i32 %i.my, %i.mw
  store i32 %i.mz, ptr %i.mx, align 4, !tbaa !92
  br label %.loopexit

.lr.ph558:                                        ; preds = %bb.d
  %i.na = mul nsw i32 %i.h, 6
  %i.nb = shl nsw i32 %i.h, 2
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.na, i32 noundef %i.nb)
  %i.nc = fmul float %4, 5.000000e-01
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ng = zext nneg i32 %2 to i64
  %wide.trip.count590 = zext nneg i32 %i.h to i64
  %i.nh = insertelement <2 x float> poison, float %i.nc, i64 0
  %i.ni = shufflevector <2 x float> %i.nh, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph558, %bb.ab
  %indvars.iv587 = phi i64 [ 0, %.lr.ph558 ], [ %indvars.iv.next588, %bb.ab ] ; 2 uses
  %indvars.iv.next588 = add nuw nsw i64 %indvars.iv587, 1 ; 4 uses
  %i.nj = icmp eq i64 %indvars.iv.next588, %i.ng
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv587 ; 3 uses
  %i.nl = select i1 %i.nj, i64 0, i64 %indvars.iv.next588
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.nl ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 4 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nk, i64 4
  %i.np = load <2 x float>, ptr %i.nm, align 4, !tbaa !29
  %i.nq = load <2 x float>, ptr %i.nk, align 4, !tbaa !29 ; 3 uses
  %i.nr = fsub <2 x float> %i.np, %i.nq           ; 5 uses
  %foldExtExtBinop621 = fmul <2 x float> %i.nr, %i.nr
  %i.ns = extractelement <2 x float> %foldExtExtBinop621, i64 1
  %i.nt = extractelement <2 x float> %i.nr, i64 0 ; 2 uses
  %i.nu = tail call float @llvm.fmuladd.f32(float %i.nt, float %i.nt, float %i.ns) ; 2 uses
  %i.nv = fcmp ogt float %i.nu, 0.000000e+00
  br i1 %i.nv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.nw = insertelement <4 x float> poison, float %i.nu, i64 0
  %i.nx = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.nw)
  %i.ny = shufflevector <4 x float> %i.nx, <4 x float> poison, <2 x i32> zeroinitializer
  %i.nz = fmul <2 x float> %i.nr, %i.ny
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.oa = phi <2 x float> [ %i.nz, %bb.aa ], [ %i.nr, %bb.z ]
  %i.ob = shufflevector <2 x float> %i.oa, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.oc = fmul <2 x float> %i.ni, %i.ob           ; 4 uses
  %i.od = load ptr, ptr %i.nd, align 8, !tbaa !242 ; 2 uses
  %i.oe = fadd <2 x float> %i.nq, %i.oc
  %i.of = fsub <2 x float> %i.nq, %i.oc
  %i.og = shufflevector <2 x float> %i.oe, <2 x float> %i.of, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.og, ptr %i.od, align 4, !tbaa !29
  %i.oh = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  store i64 %i.f, ptr %i.oh, align 4
  %i.oi = load ptr, ptr %i.nd, align 8, !tbaa !242 ; 4 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  store i32 %3, ptr %i.oj, align 4, !tbaa !245
  %i.ok = load float, ptr %i.nm, align 4, !tbaa !237
  %i.ol = extractelement <2 x float> %i.oc, i64 0 ; 3 uses
  %i.om = fadd float %i.ol, %i.ok
  %i.on = getelementptr inbounds nuw i8, ptr %i.oi, i64 20
  store float %i.om, ptr %i.on, align 4, !tbaa !249
  %i.oo = load float, ptr %i.nn, align 4, !tbaa !238
  %i.op = extractelement <2 x float> %i.oc, i64 1 ; 3 uses
  %i.oq = fsub float %i.oo, %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.oi, i64 24
  store float %i.oq, ptr %i.or, align 4, !tbaa !250
  %i.os = getelementptr inbounds nuw i8, ptr %i.oi, i64 28
  store i64 %i.f, ptr %i.os, align 4
  %i.ot = load ptr, ptr %i.nd, align 8, !tbaa !242 ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 36
  store i32 %3, ptr %i.ou, align 4, !tbaa !245
  %i.ov = load float, ptr %i.nm, align 4, !tbaa !237
  %i.ow = fsub float %i.ov, %i.ol
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ot, i64 40
  store float %i.ow, ptr %i.ox, align 4, !tbaa !249
  %i.oy = load float, ptr %i.nn, align 4, !tbaa !238
  %i.oz = fadd float %i.op, %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ot, i64 44
  store float %i.oz, ptr %i.pa, align 4, !tbaa !250
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ot, i64 48
  store i64 %i.f, ptr %i.pb, align 4
  %i.pc = load ptr, ptr %i.nd, align 8, !tbaa !242 ; 4 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 56
  store i32 %3, ptr %i.pd, align 4, !tbaa !245
  %i.pe = load float, ptr %i.nk, align 4, !tbaa !237
  %i.pf = fsub float %i.pe, %i.ol
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pc, i64 60
  store float %i.pf, ptr %i.pg, align 4, !tbaa !249
  %i.ph = load float, ptr %i.no, align 4, !tbaa !238
  %i.pi = fadd float %i.op, %i.ph
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pc, i64 64
end_hunk_0
