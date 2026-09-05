Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1479
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 354
begin_hunk_0_@_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi:bb.a
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ep, i64 6
  store i16 %i.fk, ptr %i.fl, align 2, !tbaa !243
  store i16 %i.fj, ptr %i.et, align 2, !tbaa !243
  store i16 %i.eo, ptr %i.fi, align 2, !tbaa !243
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store ptr %i.fm, ptr %i.de, align 8, !tbaa !113
  %exitcond566.not611 = icmp eq i64 %indvars.iv.next563, %wide.trip.count565
  br i1 %exitcond566.not611, label %.lr.ph547, label %.backedge.backedge

.lr.ph547:                                        ; preds = %.thread609
  %i.fn = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !248
  %i.fq = sext i32 %i.u to i64
  %i.fr = getelementptr inbounds [16 x i8], ptr %i.fp, i64 %i.fq ; 2 uses
  %i.fs = load <2 x i32>, ptr %i.fr, align 4, !tbaa !29
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load <2 x i32>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !29
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %.pre592 = load ptr, ptr %i.fu, align 8, !tbaa !242
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph547, %bb.s
  %i.fv = phi ptr [ %.pre592, %.lr.ph547 ], [ %i.gj, %bb.s ]
  %indvars.iv567 = phi i64 [ 0, %.lr.ph547 ], [ %indvars.iv.next568, %bb.s ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv567, 4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 4
  store i64 %i.fx, ptr %i.fv, align 4
  %i.fy = load ptr, ptr %i.fu, align 8, !tbaa !242
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store <2 x i32> %i.fs, ptr %i.fz, align 4
  %i.ga = load ptr, ptr %i.fu, align 8, !tbaa !242 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store i32 %3, ptr %i.gb, align 4, !tbaa !245
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 20
  %i.ge = load i64, ptr %i.gc, align 4
  store i64 %i.ge, ptr %i.gd, align 4
  %i.gf = load ptr, ptr %i.fu, align 8, !tbaa !242
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 28
  store <2 x i32> %i.ft, ptr %i.gg, align 4
  %i.gh = load ptr, ptr %i.fu, align 8, !tbaa !242 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 36
  store i32 %3, ptr %i.gi, align 4, !tbaa !245
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 40 ; 2 uses
  store ptr %i.gj, ptr %i.fu, align 8, !tbaa !242
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond571.not = icmp eq i64 %indvars.iv.next568, %i.av
  br i1 %exitcond571.not, label %.loopexit535, label %bb.s, !llvm.loop !567

bb.t:                                             ; preds = %.lr.ph549, %bb.t
  %i.gk = phi ptr [ %.pre593, %.lr.ph549 ], [ %i.hf, %bb.t ]
  %indvars.iv572 = phi i64 [ 0, %.lr.ph549 ], [ %indvars.iv.next573, %bb.t ] ; 3 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv572
  %i.gm = load i64, ptr %i.gl, align 4
  store i64 %i.gm, ptr %i.gk, align 4
  %i.gn = load ptr, ptr %i.dh, align 8, !tbaa !242
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i64 %i.f, ptr %i.go, align 4
  %i.gp = load ptr, ptr %i.dh, align 8, !tbaa !242 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store i32 %3, ptr %i.gq, align 4, !tbaa !245
  %.idx607 = shl nuw nsw i64 %indvars.iv572, 4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx607 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 20
  %i.gt = load i64, ptr %i.gr, align 4
  store i64 %i.gt, ptr %i.gs, align 4
  %i.gu = load ptr, ptr %i.dh, align 8, !tbaa !242
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 28
  store i64 %i.f, ptr %i.gv, align 4
  %i.gw = load ptr, ptr %i.dh, align 8, !tbaa !242 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 36
  store i32 %i.r, ptr %i.gx, align 4, !tbaa !245
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  %i.ha = load i64, ptr %i.gy, align 4
  store i64 %i.ha, ptr %i.gz, align 4
  %i.hb = load ptr, ptr %i.dh, align 8, !tbaa !242
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 48
  store i64 %i.f, ptr %i.hc, align 4
  %i.hd = load ptr, ptr %i.dh, align 8, !tbaa !242 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 56
  store i32 %i.r, ptr %i.he, align 4, !tbaa !245
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 60 ; 2 uses
  store ptr %i.hf, ptr %i.dh, align 8, !tbaa !242
  %indvars.iv.next573 = add nuw nsw i64 %indvars.iv572, 1 ; 2 uses
  %exitcond576.not = icmp eq i64 %indvars.iv.next573, %i.av
  br i1 %exitcond576.not, label %.loopexit535, label %bb.t, !llvm.loop !568

bb.u:                                             ; preds = %bb.n
  %i.hg = fsub float %i.t, %i.j
  %i.hh = fmul float %i.hg, 5.000000e-01          ; 3 uses
  %i.hi = fadd float %i.j, %i.hh
  %i.hj = load <2 x float>, ptr %i.au, align 4, !tbaa !29
  %i.hk = insertelement <2 x float> poison, float %i.hi, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hm = fmul <2 x float> %i.hl, %i.hj
  %i.hn = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.ho = fadd <2 x float> %i.hm, %i.hn
  store <2 x float> %i.ho, ptr %i.aw, align 4
  %i.hp = load <2 x float>, ptr %i.au, align 4, !tbaa !29 ; 2 uses
  %i.hq = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hs = fmul <2 x float> %i.hr, %i.hp           ; 2 uses
  %i.ht = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.hu = fadd <2 x float> %i.hs, %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store <2 x float> %i.hu, ptr %i.hv, align 4
  %i.hw = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.hx = fsub <2 x float> %i.hw, %i.hs
  %i.hy = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <2 x float> %i.hx, ptr %i.hy, align 4
  %i.hz = fmul <2 x float> %i.hl, %i.hp
  %i.ia = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.ib = fsub <2 x float> %i.ia, %i.hz
  %i.ic = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store <2 x float> %i.ib, ptr %i.ic, align 4
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bt ; 4 uses
  %i.ie = load <2 x float>, ptr %i.bu, align 4, !tbaa !29
  %i.if = fmul <2 x float> %i.hl, %i.ie
  %i.ig = load <2 x float>, ptr %i.id, align 4, !tbaa !29
  %i.ih = fadd <2 x float> %i.if, %i.ig
  %i.ii = shl nuw nsw i32 %i.g, 2
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ij ; 4 uses
  store <2 x float> %i.ih, ptr %i.ik, align 4
  %i.il = load <2 x float>, ptr %i.bu, align 4, !tbaa !29 ; 2 uses
  %i.im = fmul <2 x float> %i.hr, %i.il           ; 2 uses
  %i.in = load <2 x float>, ptr %i.id, align 4, !tbaa !29
  %i.io = fadd <2 x float> %i.im, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store <2 x float> %i.io, ptr %i.ip, align 4
  %i.iq = load <2 x float>, ptr %i.id, align 4, !tbaa !29
  %i.ir = fsub <2 x float> %i.iq, %i.im
  %i.is = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store <2 x float> %i.ir, ptr %i.is, align 4
  %i.it = fmul <2 x float> %i.hl, %i.il
  %i.iu = load <2 x float>, ptr %i.id, align 4, !tbaa !29
  %i.iv = fsub <2 x float> %i.iu, %i.it
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  store <2 x float> %i.iv, ptr %i.iw, align 4
  br label %.lr.ph553

.lr.ph553:                                        ; preds = %bb.u, %.thread529
  %i.ix = phi float [ %i.bx, %.thread529 ], [ %i.hh, %bb.u ] ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !92 ; 2 uses
  %i.ja = fadd float %i.j, %i.ix
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted = load ptr, ptr %i.jb, align 8, !tbaa !113
  %wide.trip.count580 = zext nneg i32 %i.h to i64
  %i.jc = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.jd = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.je = insertelement <2 x float> poison, float %i.ix, i64 0
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.v

.lr.ph555:                                        ; preds = %bb.x
  store ptr %i.lr, ptr %i.jb, align 8, !tbaa !113
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %.pre594 = load ptr, ptr %i.jg, align 8, !tbaa !242
  br label %bb.y

bb.v:                                             ; preds = %.lr.ph553, %bb.x
  %indvars.iv577 = phi i64 [ 0, %.lr.ph553 ], [ %indvars.iv.next578, %bb.x ] ; 2 uses
  %i.jh = phi ptr [ %.promoted, %.lr.ph553 ], [ %i.lr, %bb.x ] ; 9 uses
  %.0425550 = phi i32 [ %i.iz, %.lr.ph553 ], [ %spec.select, %bb.x ] ; 3 uses
  %indvars.iv.next578 = add nuw nsw i64 %indvars.iv577, 1 ; 4 uses
  %i.ji = icmp eq i64 %indvars.iv.next578, %i.av  ; 2 uses
  %i.jj = trunc nuw nsw i64 %indvars.iv.next578 to i32
  %i.jk = select i1 %i.ji, i32 0, i32 %i.jj       ; 2 uses
  %i.jl = add i32 %.0425550, 4
  %spec.select = select i1 %i.ji, i32 %i.iz, i32 %i.jl ; 3 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv577
  %i.jn = zext nneg i32 %i.jk to i64              ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.jn
  %i.jp = load <2 x float>, ptr %i.jm, align 4, !tbaa !29
  %i.jq = load <2 x float>, ptr %i.jo, align 4, !tbaa !29
  %i.jr = fadd <2 x float> %i.jp, %i.jq
  %i.js = fmul <2 x float> %i.jr, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop619 = fmul <2 x float> %i.js, %i.js
  %i.jt = extractelement <2 x float> %foldExtExtBinop619, i64 1
  %i.ju = extractelement <2 x float> %i.js, i64 0 ; 2 uses
  %i.jv = tail call float @llvm.fmuladd.f32(float %i.ju, float %i.ju, float %i.jt) ; 2 uses
  %i.jw = fcmp ogt float %i.jv, f0x358637BD
  br i1 %i.jw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jx = fdiv float 1.000000e+00, %i.jv          ; 2 uses
  %i.jy = fcmp ogt float %i.jx, 1.000000e+02
  %spec.store.select6 = select i1 %i.jy, float 1.000000e+02, float %i.jx
  %i.jz = insertelement <2 x float> poison, float %spec.store.select6, i64 0
  %i.ka = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kb = fmul <2 x float> %i.js, %i.ka
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.kc = phi <2 x float> [ %i.kb, %bb.w ], [ %i.js, %bb.v ] ; 2 uses
  %i.kd = fmul <2 x float> %i.jd, %i.kc           ; 2 uses
  %i.ke = shl nuw nsw i32 %i.jk, 2
  %i.kf = zext nneg i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.kf ; 4 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.jn ; 4 uses
  %i.ki = load <2 x float>, ptr %i.kh, align 4, !tbaa !29
  %i.kj = fadd <2 x float> %i.kd, %i.ki
  store <2 x float> %i.kj, ptr %i.kg, align 4, !tbaa !29
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.kl = fmul <2 x float> %i.jf, %i.kc           ; 2 uses
  %i.km = load <2 x float>, ptr %i.kh, align 4, !tbaa !29
  %i.kn = fadd <2 x float> %i.kl, %i.km
  store <2 x float> %i.kn, ptr %i.kk, align 4, !tbaa !29
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.kp = load <2 x float>, ptr %i.kh, align 4, !tbaa !29
  %i.kq = fsub <2 x float> %i.kp, %i.kl
  store <2 x float> %i.kq, ptr %i.ko, align 4, !tbaa !29
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  %i.ks = load <2 x float>, ptr %i.kh, align 4, !tbaa !29
  %i.kt = fsub <2 x float> %i.ks, %i.kd
  store <2 x float> %i.kt, ptr %i.kr, align 4, !tbaa !29
  %i.ku = trunc i32 %spec.select to i16
  %i.kv = insertelement <2 x i16> poison, i16 %i.ku, i64 0
  %i.kw = trunc i32 %.0425550 to i16
  %i.kx = insertelement <2 x i16> %i.kv, i16 %i.kw, i64 1
  %i.ky = shufflevector <2 x i16> %i.kx, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.kz = trunc i32 %spec.select to i16           ; 3 uses
  %i.la = trunc i32 %.0425550 to i16              ; 3 uses
  %i.lb = add <4 x i16> %i.ky, <i16 1, i16 1, i16 2, i16 2> ; 3 uses
  %i.lc = shufflevector <4 x i16> %i.lb, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 2, i32 3, i32 0, i32 0, i32 1>
  %i.ld = add i16 %i.kz, 1
  store <8 x i16> %i.lc, ptr %i.jh, align 2, !tbaa !243
  %i.le = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  store i16 %i.la, ptr %i.le, align 2, !tbaa !243
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jh, i64 18
  store i16 %i.la, ptr %i.lf, align 2, !tbaa !243
  %i.lg = getelementptr inbounds nuw i8, ptr %i.jh, i64 20
  store i16 %i.kz, ptr %i.lg, align 2, !tbaa !243
  %i.lh = getelementptr inbounds nuw i8, ptr %i.jh, i64 22
  store i16 %i.ld, ptr %i.lh, align 2, !tbaa !243
  %i.li = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.lj = extractelement <4 x i16> %i.lb, i64 3   ; 2 uses
  store i16 %i.lj, ptr %i.li, align 2, !tbaa !243
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jh, i64 26
  %i.ll = shufflevector <4 x i16> %i.lb, <4 x i16> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.lm = insertelement <4 x i16> %i.ll, i16 %i.la, i64 1
  %i.ln = insertelement <4 x i16> %i.lm, i16 %i.kz, i64 3
  %i.lo = add <4 x i16> %i.ln, <i16 0, i16 3, i16 poison, i16 3>
  %i.lp = shufflevector <4 x i16> %i.lo, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  store <4 x i16> %i.lp, ptr %i.lk, align 2, !tbaa !243
  %i.lq = getelementptr inbounds nuw i8, ptr %i.jh, i64 34
  store i16 %i.lj, ptr %i.lq, align 2, !tbaa !243
  %i.lr = getelementptr inbounds nuw i8, ptr %i.jh, i64 36 ; 2 uses
  %exitcond581.not = icmp eq i64 %indvars.iv.next578, %wide.trip.count580
  br i1 %exitcond581.not, label %.lr.ph555, label %bb.v, !llvm.loop !569

bb.y:                                             ; preds = %.lr.ph555, %bb.y
  %i.ls = phi ptr [ %.pre594, %.lr.ph555 ], [ %i.mu, %bb.y ]
  %indvars.iv582 = phi i64 [ 0, %.lr.ph555 ], [ %indvars.iv.next583, %bb.y ] ; 2 uses
  %.idx608 = shl nuw nsw i64 %indvars.iv582, 5
  %i.lt = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx608 ; 4 uses
  %i.lu = load i64, ptr %i.lt, align 4
  store i64 %i.lu, ptr %i.ls, align 4
  %i.lv = load ptr, ptr %i.jg, align 8, !tbaa !242
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  store i64 %i.f, ptr %i.lw, align 4
  %i.lx = load ptr, ptr %i.jg, align 8, !tbaa !242 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  store i32 %i.r, ptr %i.ly, align 4, !tbaa !245
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 20
  %i.mb = load i64, ptr %i.lz, align 4
  store i64 %i.mb, ptr %i.ma, align 4
  %i.mc = load ptr, ptr %i.jg, align 8, !tbaa !242
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 28
  store i64 %i.f, ptr %i.md, align 4
  %i.me = load ptr, ptr %i.jg, align 8, !tbaa !242 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 36
  store i32 %3, ptr %i.mf, align 4, !tbaa !245
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 40
  %i.mi = load i64, ptr %i.mg, align 4
  store i64 %i.mi, ptr %i.mh, align 4
  %i.mj = load ptr, ptr %i.jg, align 8, !tbaa !242
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 48
  store i64 %i.f, ptr %i.mk, align 4
  %i.ml = load ptr, ptr %i.jg, align 8, !tbaa !242 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 56
  store i32 %3, ptr %i.mm, align 4, !tbaa !245
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lt, i64 24
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 60
  %i.mp = load i64, ptr %i.mn, align 4
  store i64 %i.mp, ptr %i.mo, align 4
  %i.mq = load ptr, ptr %i.jg, align 8, !tbaa !242
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 68
  store i64 %i.f, ptr %i.mr, align 4
  %i.ms = load ptr, ptr %i.jg, align 8, !tbaa !242 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 76
  store i32 %i.r, ptr %i.mt, align 4, !tbaa !245
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 80 ; 2 uses
  store ptr %i.mu, ptr %i.jg, align 8, !tbaa !242
  %indvars.iv.next583 = add nuw nsw i64 %indvars.iv582, 1 ; 2 uses
  %exitcond586.not = icmp eq i64 %indvars.iv.next583, %i.av
  br i1 %exitcond586.not, label %.loopexit535, label %bb.y, !llvm.loop !570

.loopexit535:                                     ; preds = %bb.s, %bb.t, %bb.y
  %i.mv = and i32 %i.ai, 65535
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !92
  %i.my = add i32 %i.mx, %i.mv
  store i32 %i.my, ptr %i.mw, align 4, !tbaa !92
  br label %.loopexit

.lr.ph558:                                        ; preds = %bb.d
  %i.mz = mul nsw i32 %i.h, 6
  %i.na = shl nsw i32 %i.h, 2
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.mz, i32 noundef %i.na)
  %i.nb = fmul float %4, 5.000000e-01
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.nf = zext nneg i32 %2 to i64
  %wide.trip.count590 = zext nneg i32 %i.h to i64
  %i.ng = insertelement <2 x float> poison, float %i.nb, i64 0
  %i.nh = shufflevector <2 x float> %i.ng, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph558, %bb.ab
  %indvars.iv587 = phi i64 [ 0, %.lr.ph558 ], [ %indvars.iv.next588, %bb.ab ] ; 2 uses
  %indvars.iv.next588 = add nuw nsw i64 %indvars.iv587, 1 ; 4 uses
  %i.ni = icmp eq i64 %indvars.iv.next588, %i.nf
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv587 ; 3 uses
  %i.nk = select i1 %i.ni, i64 0, i64 %indvars.iv.next588
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.nk ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 4 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  %i.no = load <2 x float>, ptr %i.nl, align 4, !tbaa !29
  %i.np = load <2 x float>, ptr %i.nj, align 4, !tbaa !29 ; 3 uses
  %i.nq = fsub <2 x float> %i.no, %i.np           ; 5 uses
  %foldExtExtBinop621 = fmul <2 x float> %i.nq, %i.nq
  %i.nr = extractelement <2 x float> %foldExtExtBinop621, i64 1
  %i.ns = extractelement <2 x float> %i.nq, i64 0 ; 2 uses
  %i.nt = tail call float @llvm.fmuladd.f32(float %i.ns, float %i.ns, float %i.nr) ; 2 uses
  %i.nu = fcmp ogt float %i.nt, 0.000000e+00
  br i1 %i.nu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.nv = insertelement <4 x float> poison, float %i.nt, i64 0
  %i.nw = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.nv)
  %i.nx = shufflevector <4 x float> %i.nw, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ny = fmul <2 x float> %i.nq, %i.nx
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.nz = phi <2 x float> [ %i.ny, %bb.aa ], [ %i.nq, %bb.z ]
  %i.oa = shufflevector <2 x float> %i.nz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ob = fmul <2 x float> %i.nh, %i.oa           ; 4 uses
  %i.oc = load ptr, ptr %i.nc, align 8, !tbaa !242 ; 2 uses
  %i.od = fadd <2 x float> %i.np, %i.ob
  %i.oe = fsub <2 x float> %i.np, %i.ob
  %i.of = shufflevector <2 x float> %i.od, <2 x float> %i.oe, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.of, ptr %i.oc, align 4, !tbaa !29
  %i.og = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  store i64 %i.f, ptr %i.og, align 4
  %i.oh = load ptr, ptr %i.nc, align 8, !tbaa !242 ; 4 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  store i32 %3, ptr %i.oi, align 4, !tbaa !245
  %i.oj = load float, ptr %i.nl, align 4, !tbaa !237
  %i.ok = extractelement <2 x float> %i.ob, i64 0 ; 3 uses
  %i.ol = fadd float %i.ok, %i.oj
  %i.om = getelementptr inbounds nuw i8, ptr %i.oh, i64 20
  store float %i.ol, ptr %i.om, align 4, !tbaa !249
  %i.on = load float, ptr %i.nm, align 4, !tbaa !238
  %i.oo = extractelement <2 x float> %i.ob, i64 1 ; 3 uses
  %i.op = fsub float %i.on, %i.oo
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  store float %i.op, ptr %i.oq, align 4, !tbaa !250
  %i.or = getelementptr inbounds nuw i8, ptr %i.oh, i64 28
  store i64 %i.f, ptr %i.or, align 4
  %i.os = load ptr, ptr %i.nc, align 8, !tbaa !242 ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 36
  store i32 %3, ptr %i.ot, align 4, !tbaa !245
  %i.ou = load float, ptr %i.nl, align 4, !tbaa !237
  %i.ov = fsub float %i.ou, %i.ok
  %i.ow = getelementptr inbounds nuw i8, ptr %i.os, i64 40
  store float %i.ov, ptr %i.ow, align 4, !tbaa !249
  %i.ox = load float, ptr %i.nm, align 4, !tbaa !238
  %i.oy = fadd float %i.oo, %i.ox
  %i.oz = getelementptr inbounds nuw i8, ptr %i.os, i64 44
  store float %i.oy, ptr %i.oz, align 4, !tbaa !250
  %i.pa = getelementptr inbounds nuw i8, ptr %i.os, i64 48
  store i64 %i.f, ptr %i.pa, align 4
  %i.pb = load ptr, ptr %i.nc, align 8, !tbaa !242 ; 4 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 56
  store i32 %3, ptr %i.pc, align 4, !tbaa !245
  %i.pd = load float, ptr %i.nj, align 4, !tbaa !237
  %i.pe = fsub float %i.pd, %i.ok
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 60
  store float %i.pe, ptr %i.pf, align 4, !tbaa !249
  %i.pg = load float, ptr %i.nn, align 4, !tbaa !238
  %i.ph = fadd float %i.oo, %i.pg
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pb, i64 64
end_hunk_0
