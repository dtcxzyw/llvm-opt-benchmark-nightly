Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/nanovg?download=true
inline.NumInlined: 893
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 56
begin_hunk_0_@stbtt_GetGlyphSDF:bb.a
  %i.ix = call float @llvm.copysign.f32(float 0.000000e+00, float %i.iw)
  %i.iy = fadd float %i.ix, %i.ht                 ; 3 uses
  %i.iz = fneg float %i.hp
  %i.ja = call float @llvm.copysign.f32(float 0.000000e+00, float %i.iz)
  %i.jb = fadd float %i.ja, %i.hq                 ; 2 uses
  %i.jc = fneg float %i.hv
  %i.jd = call float @llvm.copysign.f32(float 0.000000e+00, float %i.jc)
  %i.je = fadd float %i.jd, %i.hx
  %i.jf = call float @llvm.fmuladd.f32(float %i.jb, float -2.000000e+00, float %i.iy)
  %i.jg = fadd float %i.jf, %i.je                 ; 5 uses
  %i.jh = fsub float %i.jb, %i.iy                 ; 7 uses
  %i.ji = fadd float %i.fa, %i.iy                 ; 2 uses
  %i.jj = fcmp une float %i.jg, 0.000000e+00
  br i1 %i.jj, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.jk = fneg float %i.ji
  %i.jl = fmul float %i.jg, %i.jk
  %i.jm = call float @llvm.fmuladd.f32(float %i.jh, float %i.jh, float %i.jl) ; 2 uses
  %i.jn = fcmp ogt float %i.jm, 0.000000e+00
  br i1 %i.jn, label %bb.ao, label %stbtt__ray_intersect_bezier.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.jo = fdiv float -1.000000e+00, %i.jg         ; 2 uses
  %sqrtf.i.i = call float @sqrtf(float noundef %i.jm) #40 ; 3 uses
  %i.jp = fadd float %i.jh, %sqrtf.i.i
  %i.jq = fmul float %i.jo, %i.jp                 ; 4 uses
  %i.jr = fsub float %i.jh, %sqrtf.i.i
  %i.js = fmul float %i.jo, %i.jr                 ; 5 uses
  %i.jt = fcmp oge float %i.jq, 0.000000e+00
  %i.ju = fcmp ole float %i.jq, 1.000000e+00
  %or.cond.not.not.not.i.i = and i1 %i.jt, %i.ju  ; 3 uses
  %i.jv = fcmp ule float %sqrtf.i.i, 0.000000e+00
  %i.jw = fcmp ult float %i.js, 0.000000e+00
  %or.cond117.i.i = or i1 %i.jv, %i.jw
  %i.jx = fcmp ugt float %i.js, 1.000000e+00
  %or.cond118.i.i = or i1 %i.jx, %or.cond117.i.i
  br i1 %or.cond118.i.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.0107.i.i = select i1 %or.cond.not.not.not.i.i, float %i.jq, float %i.js
  br label %.thread21.i.i

bb.aq:                                            ; preds = %bb.am
  %i.jy = fmul float %i.jh, -2.000000e+00
  %i.jz = fdiv float %i.ji, %i.jy                 ; 3 uses
  %i.ka = fcmp ult float %i.jz, 0.000000e+00
  %i.kb = fcmp ugt float %i.jz, 1.000000e+00
  %or.cond119.i.i = or i1 %i.ka, %i.kb
  br i1 %or.cond119.i.i, label %stbtt__ray_intersect_bezier.exit.i, label %.thread21.i.i

bb.ar:                                            ; preds = %bb.ao
  br i1 %or.cond.not.not.not.i.i, label %.thread21.i.i, label %stbtt__ray_intersect_bezier.exit.i

.thread21.i.i:                                    ; preds = %bb.ar, %bb.aq, %bb.ap
  %.327.i.i = phi i1 [ false, %bb.ar ], [ %or.cond.not.not.not.i.i, %bb.ap ], [ false, %bb.aq ]
  %.110626.i.i = phi float [ %i.js, %bb.ar ], [ %i.js, %bb.ap ], [ 0.000000e+00, %bb.aq ] ; 5 uses
  %.311025.i.i = phi float [ %i.jq, %bb.ar ], [ %.0107.i.i, %bb.ap ], [ %i.jz, %bb.aq ] ; 5 uses
  %i.kc = call <2 x float> @llvm.copysign.v2f32(<2 x float> zeroinitializer, <2 x float> %i.ho)
  %i.kd = call float @llvm.copysign.f32(float 0.000000e+00, float %i.hq)
  %i.ke = fadd float %i.kd, %i.hp
  %i.kf = fadd <2 x float> %i.kc, %i.hm           ; 2 uses
  %i.kg = extractelement <2 x float> %i.kf, i64 1 ; 3 uses
  %i.kh = fsub float %i.ke, %i.kg                 ; 2 uses
  %i.ki = extractelement <2 x float> %i.kf, i64 0
  %i.kj = fsub float %i.ki, %i.kg                 ; 2 uses
  %i.kk = fsub float %i.kg, %i.ez                 ; 2 uses
  %i.kl = call float @llvm.fmuladd.f32(float %.311025.i.i, float -2.000000e+00, float 2.000000e+00)
  %i.km = fmul float %.311025.i.i, %i.kl
  %i.kn = call float @llvm.fmuladd.f32(float %i.km, float %i.kh, float %i.kk)
  %i.ko = fmul float %.311025.i.i, %.311025.i.i
  %i.kp = call float @llvm.fmuladd.f32(float %i.ko, float %i.kj, float %i.kn) ; 2 uses
  %i.kq = call float @llvm.fmuladd.f32(float %i.jg, float %.311025.i.i, float %i.jh) ; 2 uses
  br i1 %.327.i.i, label %bb.as, label %stbtt__ray_intersect_bezier.exit.i

bb.as:                                            ; preds = %.thread21.i.i
  %i.kr = call float @llvm.fmuladd.f32(float %.110626.i.i, float -2.000000e+00, float 2.000000e+00)
  %i.ks = fmul float %.110626.i.i, %i.kr
  %i.kt = call float @llvm.fmuladd.f32(float %i.ks, float %i.kh, float %i.kk)
  %i.ku = fmul float %.110626.i.i, %.110626.i.i
  %i.kv = call float @llvm.fmuladd.f32(float %i.ku, float %i.kj, float %i.kt)
  %i.kw = call float @llvm.fmuladd.f32(float %i.jg, float %.110626.i.i, float %i.jh)
  %i.kx = fcmp olt float %i.kv, 0.000000e+00
  %i.ky = fcmp olt float %i.kw, 0.000000e+00
  %i.kz = select i1 %i.ky, i32 -1, i32 1
  %i.la = select i1 %i.kx, i32 %i.kz, i32 0
  br label %stbtt__ray_intersect_bezier.exit.i

stbtt__ray_intersect_bezier.exit.i:               ; preds = %bb.as, %.thread21.i.i, %bb.ar, %bb.aq, %bb.an
  %.sroa.4.0.i = phi float [ %i.kq, %bb.as ], [ %i.kq, %.thread21.i.i ], [ undef, %bb.ar ], [ undef, %bb.an ], [ undef, %bb.aq ]
  %.sroa.0.0.i = phi float [ %i.kp, %bb.as ], [ %i.kp, %.thread21.i.i ], [ undef, %bb.ar ], [ undef, %bb.an ], [ undef, %bb.aq ]
  %i.lb = phi i1 [ true, %bb.as ], [ true, %.thread21.i.i ], [ false, %bb.ar ], [ false, %bb.an ], [ false, %bb.aq ]
  %or.cond7.i = phi i32 [ %i.la, %bb.as ], [ 0, %.thread21.i.i ], [ 0, %bb.ar ], [ 0, %bb.an ], [ 0, %bb.aq ]
  %i.lc = fcmp olt float %.sroa.0.0.i, 0.000000e+00
  %or.cond.i = select i1 %i.lb, i1 %i.lc, i1 false
  %i.ld = fcmp olt float %.sroa.4.0.i, 0.000000e+00
  %i.le = select i1 %i.ld, i32 -1, i32 1
  %i.lf = select i1 %or.cond.i, i32 %i.le, i32 0
  %.5.i = add i32 %or.cond7.i, %.0197.i
  %.6.i = add i32 %.5.i, %i.lf
  br label %.thread.i

.thread.i:                                        ; preds = %stbtt__ray_intersect_bezier.exit.i, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.9.i = phi i32 [ %.0197.i, %bb.aa ], [ %.6.i, %stbtt__ray_intersect_bezier.exit.i ], [ %.0197.i, %bb.af ], [ %.4.i, %bb.al ], [ %.0197.i, %bb.ak ], [ %.0197.i, %bb.aj ], [ %.0197.i, %bb.ai ], [ %.0197.i, %bb.ab ], [ %.0197.i, %bb.ac ], [ %.0197.i, %bb.ad ], [ %.1.i, %bb.ae ]
  %.9.i.fr = freeze i32 %.9.i                     ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbtt__compute_crossings_x.exit, label %bb.aa, !llvm.loop !398

stbtt__compute_crossings_x.exit:                  ; preds = %.thread.i
  %i.lg = icmp eq i32 %.9.i.fr, 0
  br label %.lr.ph525

.lr.ph525:                                        ; preds = %stbtt__compute_crossings_x.exit, %.thread
  %indvars.iv532 = phi i64 [ %indvars.iv.next533, %.thread ], [ 0, %stbtt__compute_crossings_x.exit ] ; 4 uses
  %.0432524 = phi float [ %.9, %.thread ], [ 9.999990e+05, %stbtt__compute_crossings_x.exit ] ; 10 uses
  %i.lh = getelementptr inbounds nuw [14 x i8], ptr %i.cc, i64 %indvars.iv532 ; 5 uses
  %i.li = load <2 x i16>, ptr %i.lh, align 2, !tbaa !64
  %i.lj = sitofp <2 x i16> %i.li to <2 x float>
  %i.lk = fmul <2 x float> %i.cg, %i.lj           ; 10 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 12
  %i.lm = load i8, ptr %i.ll, align 2, !tbaa !59
  switch i8 %i.lm, label %.thread [
    i8 2, label %bb.at
    i8 3, label %bb.aw
  ]

bb.at:                                            ; preds = %.lr.ph525
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %.0.i487, i64 %indvars.iv532
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !81 ; 2 uses
  %i.lp = fcmp une float %i.lo, 0.000000e+00
  br i1 %i.lp, label %bb.au, label %.thread

bb.au:                                            ; preds = %bb.at
  %i.lq = getelementptr i8, ptr %i.lh, i64 -14
  %i.lr = load <2 x i16>, ptr %i.lq, align 2, !tbaa !64
  %i.ls = sitofp <2 x i16> %i.lr to <2 x float>   ; 2 uses
  %i.lt = extractelement <2 x float> %i.ls, i64 0
  %i.lu = fmul float %1, %i.lt
  %i.lv = extractelement <2 x float> %i.ls, i64 1
  %i.lw = fmul float %i.lv, %i.ao
  %i.lx = fmul float %.0432524, %.0432524
  %i.ly = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lz = insertelement <2 x float> %i.ly, float %i.lw, i64 1
  %i.ma = insertelement <2 x float> %i.lk, float %i.ei, i64 0
  %i.mb = fsub <2 x float> %i.lz, %i.ma           ; 5 uses
  %i.mc = insertelement <2 x float> %i.lk, float %i.lu, i64 1
  %i.md = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.me = insertelement <2 x float> %i.md, float %i.es, i64 0
  %i.mf = fsub <2 x float> %i.mc, %i.me           ; 5 uses
  %i.mg = fneg <2 x float> %i.mf
  %i.mh = shufflevector <2 x float> %i.mb, <2 x float> %i.mg, <2 x i32> <i32 0, i32 2>
  %i.mi = fmul <2 x float> %i.mb, %i.mh
  %i.mj = shufflevector <2 x float> %i.mf, <2 x float> %i.mb, <2 x i32> <i32 0, i32 2>
  %i.mk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mf, <2 x float> %i.mj, <2 x float> %i.mi) ; 2 uses
  %i.ml = extractelement <2 x float> %i.mk, i64 0 ; 2 uses
  %i.mm = fcmp olt float %i.ml, %i.lx
  %sqrt515 = call float @llvm.sqrt.f32(float %i.ml)
  %.1433 = select i1 %i.mm, float %sqrt515, float %.0432524 ; 3 uses
  %i.mn = extractelement <2 x float> %i.mk, i64 1
  %i.mo = call float @llvm.fabs.f32(float %i.mn)
  %i.mp = fmul float %i.lo, %i.mo                 ; 2 uses
  %i.mq = fcmp olt float %i.mp, %.1433
  br i1 %i.mq, label %bb.av, label %.thread

bb.av:                                            ; preds = %bb.au
  %i.mr = shufflevector <2 x float> %i.mb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ms = fmul <2 x float> %i.mr, %i.mb
  %i.mt = shufflevector <2 x float> %i.mf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mt, <2 x float> %i.mf, <2 x float> %i.ms) ; 2 uses
  %i.mv = extractelement <2 x float> %i.mu, i64 0
  %i.mw = fneg float %i.mv
  %i.mx = extractelement <2 x float> %i.mu, i64 1
  %i.my = fdiv float %i.mw, %i.mx                 ; 2 uses
  %i.mz = fcmp oge float %i.my, 0.000000e+00
  %i.na = fcmp ole float %i.my, 1.000000e+00
  %or.cond = and i1 %i.mz, %i.na
  %.2434 = select i1 %or.cond, float %i.mp, float %.1433
  br label %.thread

bb.aw:                                            ; preds = %.lr.ph525
  %i.nb = getelementptr i8, ptr %i.lh, i64 -14
  %i.nc = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  %i.nd = load <2 x i16>, ptr %i.nb, align 2, !tbaa !64
  %i.ne = sitofp <2 x i16> %i.nd to <2 x float>
  %i.nf = fmul <2 x float> %i.cg, %i.ne           ; 4 uses
  %i.ng = shufflevector <2 x float> %i.nf, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.nh = load <2 x i16>, ptr %i.nc, align 2, !tbaa !64
  %i.ni = sitofp <2 x i16> %i.nh to <2 x float>
  %i.nj = fmul <2 x float> %i.cg, %i.ni           ; 6 uses
  %i.nk = fcmp olt <2 x float> %i.lk, %i.nj
  %i.nl = shufflevector <2 x i1> %i.nk, <2 x i1> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.nm = shufflevector <2 x float> %i.nj, <2 x float> %i.lk, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.nn = shufflevector <2 x float> %i.lk, <2 x float> %i.nj, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.no = select <4 x i1> %i.nl, <4 x float> %i.nm, <4 x float> %i.nn ; 3 uses
  %i.np = fcmp olt <4 x float> %i.no, %i.ng
  %i.nq = shufflevector <4 x float> %i.ng, <4 x float> %i.no, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.nr = shufflevector <2 x float> %i.nf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ns = shufflevector <4 x float> %i.no, <4 x float> %i.nr, <4 x i32> <i32 0, i32 1, i32 5, i32 4>
  %i.nt = select <4 x i1> %i.np, <4 x float> %i.nq, <4 x float> %i.ns ; 2 uses
  %10 = insertelement <4 x float> poison, float %.0432524, i64 0
  %11 = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %12 = fsub <4 x float> %i.nt, %11               ; 2 uses
  %13 = fadd <4 x float> %i.nt, %11               ; 2 uses
  %i.nu = extractelement <4 x float> %12, i64 3
  %i.nv = fcmp ogt float %i.es, %i.nu
  %i.nw = extractelement <4 x float> %13, i64 1
  %14 = fcmp olt float %i.es, %i.nw
  %or.cond481 = select i1 %i.nv, i1 %14, i1 false
  %i.nx = extractelement <4 x float> %12, i64 2
  %15 = fcmp ogt float %i.ei, %i.nx
  %or.cond483 = select i1 %or.cond481, i1 %15, i1 false
  %i.ny = extractelement <4 x float> %13, i64 0
  %i.nz = fcmp olt float %i.ei, %i.ny
  %or.cond485 = select i1 %or.cond483, i1 %i.nz, i1 false
  br i1 %or.cond485, label %bb.ax, label %.thread

bb.ax:                                            ; preds = %bb.aw
  %i.oa = extractelement <2 x float> %i.lk, i64 0 ; 5 uses
  %i.ob = extractelement <2 x float> %i.nj, i64 0 ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.nj, %i.lk ; 2 uses
  %i.oc = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 6 uses
  %i.od = extractelement <2 x float> %i.lk, i64 1 ; 6 uses
  %i.oe = extractelement <2 x float> %i.nj, i64 1 ; 5 uses
  %i.of = fsub float %i.oe, %i.od                 ; 7 uses
  %i.og = call float @llvm.fmuladd.f32(float %i.ob, float -2.000000e+00, float %i.oa)
  %i.oh = extractelement <2 x float> %i.nf, i64 0 ; 4 uses
  %i.oi = fadd float %i.oh, %i.og                 ; 3 uses
  %i.oj = call float @llvm.fmuladd.f32(float %i.oe, float -2.000000e+00, float %i.od)
  %i.ok = extractelement <2 x float> %i.nf, i64 1 ; 4 uses
  %i.ol = fadd float %i.ok, %i.oj                 ; 3 uses
  %i.om = fsub float %i.oa, %i.es                 ; 6 uses
  %i.on = fsub float %i.od, %i.ei                 ; 6 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.0.i487, i64 %indvars.iv532
  %i.op = load float, ptr %i.oo, align 4, !tbaa !81 ; 4 uses
  %i.oq = fcmp oeq float %i.op, 0.000000e+00
  %i.or = fmul float %i.of, %i.ol
  %i.os = call float @llvm.fmuladd.f32(float %i.oc, float %i.oi, float %i.or)
  %i.ot = fmul float %i.os, 3.000000e+00          ; 4 uses
  br i1 %i.oq, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.ou = fmul float %i.of, %i.of
  %i.ov = call float @llvm.fmuladd.f32(float %i.oc, float %i.oc, float %i.ou)
  %i.ow = fmul float %i.on, %i.ol
  %i.ox = call float @llvm.fmuladd.f32(float %i.om, float %i.oi, float %i.ow)
  %i.oy = call float @llvm.fmuladd.f32(float %i.ov, float 2.000000e+00, float %i.ox) ; 6 uses
  %i.oz = fmul float %i.on, %i.of
  %i.pa = call float @llvm.fmuladd.f32(float %i.om, float %i.oc, float %i.oz) ; 2 uses
  %i.pb = call float @llvm.fabs.f32(float %i.ot)
  %i.pc = fcmp olt float %i.pb, f0x35800000
  br i1 %i.pc, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.pd = call float @llvm.fabs.f32(float %i.oy)
  %i.pe = fcmp ult float %i.pd, f0x35800000
  br i1 %i.pe, label %stbtt__solve_cubic.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.pf = fneg float %i.pa
  %i.pg = fdiv float %i.pf, %i.oy
  br label %stbtt__solve_cubic.exit

bb.bb:                                            ; preds = %bb.ay
  %i.ph = fmul float %i.ot, 4.000000e+00
  %i.pi = fneg float %i.pa
  %i.pj = fmul float %i.ph, %i.pi
  %i.pk = call float @llvm.fmuladd.f32(float %i.oy, float %i.oy, float %i.pj) ; 2 uses
  %i.pl = fcmp olt float %i.pk, 0.000000e+00
  br i1 %i.pl, label %stbtt__solve_cubic.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %sqrtf = call float @sqrtf(float noundef %i.pk) #40 ; 2 uses
  %i.pm = fneg float %i.oy
  %i.pn = fmul float %i.ot, 2.000000e+00
  %i.po = fsub float %i.pm, %sqrtf
  %i.pp = fsub float %sqrtf, %i.oy
  %i.pq = insertelement <2 x float> poison, float %i.pn, i64 0
  %i.pr = shufflevector <2 x float> %i.pq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ps = insertelement <2 x float> poison, float %i.po, i64 0
  %i.pt = insertelement <2 x float> %i.ps, float %i.pp, i64 1
  %i.pu = fdiv <2 x float> %i.pt, %i.pr           ; 2 uses
  %i.pv = extractelement <2 x float> %i.pu, i64 0
  %i.pw = extractelement <2 x float> %i.pu, i64 1
  br label %stbtt__solve_cubic.exit

bb.bd:                                            ; preds = %bb.ax
  %i.px = fmul float %i.ot, %i.op                 ; 5 uses
  %i.py = fmul float %i.of, %i.of
  %i.pz = call float @llvm.fmuladd.f32(float %i.oc, float %i.oc, float %i.py)
  %i.qa = fmul float %i.on, %i.ol
  %i.qb = call float @llvm.fmuladd.f32(float %i.om, float %i.oi, float %i.qa)
  %i.qc = call float @llvm.fmuladd.f32(float %i.pz, float 2.000000e+00, float %i.qb)
  %i.qd = fmul float %i.qc, %i.op                 ; 2 uses
  %i.qe = fdiv float %i.px, -3.000000e+00         ; 4 uses
  %i.qf = fmul float %i.px, %i.px
  %i.qg = fdiv float %i.qf, 3.000000e+00
  %i.qh = fsub float %i.qd, %i.qg                 ; 4 uses
  %i.qi = fmul float %i.px, 2.000000e+00
  %i.qj = insertelement <2 x float> poison, float %i.on, i64 0
  %i.qk = insertelement <2 x float> %i.qj, float %i.qd, i64 1
  %i.ql = insertelement <2 x float> <float poison, float -9.000000e+00>, float %i.of, i64 0
  %i.qm = fmul <2 x float> %i.qk, %i.ql
  %i.qn = insertelement <2 x float> poison, float %i.om, i64 0
  %i.qo = insertelement <2 x float> %i.qn, float %i.qi, i64 1
  %i.qp = insertelement <2 x float> %foldExtExtBinop, float %i.px, i64 1 ; 2 uses
  %i.qq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qo, <2 x float> %i.qp, <2 x float> %i.qm)
  %i.qr = insertelement <2 x float> %i.qp, float %i.op, i64 0
  %i.qs = fmul <2 x float> %i.qq, %i.qr           ; 2 uses
  %i.qt = extractelement <2 x float> %i.qs, i64 1
  %i.qu = fdiv float %i.qt, 2.700000e+01
  %i.qv = extractelement <2 x float> %i.qs, i64 0
  %i.qw = fadd float %i.qv, %i.qu                 ; 5 uses
  %i.qx = fmul float %i.qh, %i.qh
  %i.qy = fmul float %i.qh, %i.qx                 ; 2 uses
  %i.qz = fmul float %i.qy, 4.000000e+00
  %i.ra = fdiv float %i.qz, 2.700000e+01
  %i.rb = call float @llvm.fmuladd.f32(float %i.qw, float %i.qw, float %i.ra) ; 2 uses
  %i.rc = fcmp ult float %i.rb, 0.000000e+00
  br i1 %i.rc, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %sqrtf47.i = call float @sqrtf(float noundef %i.rb) #40 ; 2 uses
  %i.rd = fneg float %i.qw
  %i.re = fsub float %sqrtf47.i, %i.qw
  %i.rf = fmul float %i.re, 5.000000e-01          ; 3 uses
  %i.rg = fsub float %i.rd, %sqrtf47.i
  %i.rh = fmul float %i.rg, 5.000000e-01          ; 3 uses
  %i.ri = fcmp olt float %i.rf, 0.000000e+00
  br i1 %i.ri, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.rj = fneg float %i.rf
  %i.rk = fpext float %i.rj to double
  %i.rl = call double @pow(double noundef %i.rk, double noundef f0x3FD5555560000000) #40
  %i.rm = fptrunc double %i.rl to float
  %i.rn = fneg float %i.rm
  br label %stbtt__cuberoot.exit.i

bb.bg:                                            ; preds = %bb.be
  %i.ro = fpext float %i.rf to double
  %i.rp = call double @pow(double noundef %i.ro, double noundef f0x3FD5555560000000) #40
  %i.rq = fptrunc double %i.rp to float
  br label %stbtt__cuberoot.exit.i

stbtt__cuberoot.exit.i:                           ; preds = %bb.bg, %bb.bf
  %.0.i.i = phi float [ %i.rn, %bb.bf ], [ %i.rq, %bb.bg ]
  %i.rr = fcmp olt float %i.rh, 0.000000e+00
  br i1 %i.rr, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %stbtt__cuberoot.exit.i
  %i.rs = fneg float %i.rh
  %i.rt = fpext float %i.rs to double
  %i.ru = call double @pow(double noundef %i.rt, double noundef f0x3FD5555560000000) #40
  %i.rv = fptrunc double %i.ru to float
  %i.rw = fneg float %i.rv
  br label %stbtt__cuberoot.exit49.i

bb.bi:                                            ; preds = %stbtt__cuberoot.exit.i
  %i.rx = fpext float %i.rh to double
  %i.ry = call double @pow(double noundef %i.rx, double noundef f0x3FD5555560000000) #40
  %i.rz = fptrunc double %i.ry to float
  br label %stbtt__cuberoot.exit49.i

stbtt__cuberoot.exit49.i:                         ; preds = %bb.bi, %bb.bh
  %.0.i48.i = phi float [ %i.rw, %bb.bh ], [ %i.rz, %bb.bi ]
  %i.sa = fadd float %i.qe, %.0.i.i
  %i.sb = fadd float %i.sa, %.0.i48.i
  br label %stbtt__solve_cubic.exit

bb.bj:                                            ; preds = %bb.bd
  %i.sc = fdiv float %i.qh, -3.000000e+00
  %sqrtf.i = call float @sqrtf(float noundef %i.sc) #40 ; 2 uses
  %i.sd = fdiv float -2.700000e+01, %i.qy
  %i.se = fpext float %i.sd to double
  %i.sf = call double @sqrt(double noundef %i.se) #40
  %i.sg = fneg double %i.sf
  %i.sh = fpext float %i.qw to double
  %i.si = fmul double %i.sh, %i.sg
  %i.sj = fmul double %i.si, 5.000000e-01
  %i.sk = call double @acos(double noundef %i.sj) #40
  %i.sl = fptrunc double %i.sk to float
  %i.sm = fdiv float %i.sl, 3.000000e+00
  %i.sn = fpext float %i.sm to double             ; 2 uses
  %i.so = call double @cos(double noundef %i.sn) #40
  %i.sp = fptrunc double %i.so to float           ; 3 uses
  %i.sq = fadd double %i.sn, f0xBFF921FAFC8B007A
  %i.sr = call double @cos(double noundef %i.sq) #40
  %i.ss = fptrunc double %i.sr to float
  %i.st = fmul float %i.ss, f0x3FDDB3D7           ; 2 uses
  %i.su = fmul float %sqrtf.i, 2.000000e+00
  %i.sv = call float @llvm.fmuladd.f32(float %i.su, float %i.sp, float %i.qe)
  %i.sw = fadd float %i.st, %i.sp
  %i.sx = fneg float %sqrtf.i                     ; 2 uses
  %i.sy = call float @llvm.fmuladd.f32(float %i.sx, float %i.sw, float %i.qe)
  %i.sz = fsub float %i.sp, %i.st
  %i.ta = call float @llvm.fmuladd.f32(float %i.sx, float %i.sz, float %i.qe)
  br label %stbtt__solve_cubic.exit

stbtt__solve_cubic.exit:                          ; preds = %bb.bj, %stbtt__cuberoot.exit49.i, %bb.ba, %bb.az, %bb.bb, %bb.bc
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.az ], [ %i.pg, %bb.ba ], [ 0.000000e+00, %bb.bb ], [ %i.pv, %bb.bc ], [ %i.sv, %bb.bj ], [ %i.sb, %stbtt__cuberoot.exit49.i ] ; 6 uses
  %.sroa.8.0 = phi float [ 0.000000e+00, %bb.az ], [ 0.000000e+00, %bb.ba ], [ 0.000000e+00, %bb.bb ], [ %i.pw, %bb.bc ], [ %i.sy, %bb.bj ], [ 0.000000e+00, %stbtt__cuberoot.exit49.i ] ; 6 uses
  %.sroa.11.0 = phi float [ 0.000000e+00, %bb.az ], [ 0.000000e+00, %bb.ba ], [ 0.000000e+00, %bb.bb ], [ 0.000000e+00, %bb.bc ], [ %i.ta, %bb.bj ], [ 0.000000e+00, %stbtt__cuberoot.exit49.i ] ; 6 uses
  %i.tb = phi i1 [ false, %bb.az ], [ true, %bb.ba ], [ false, %bb.bb ], [ true, %bb.bc ], [ true, %bb.bj ], [ true, %stbtt__cuberoot.exit49.i ]
  %i.tc = phi i1 [ false, %bb.az ], [ false, %bb.ba ], [ false, %bb.bb ], [ true, %bb.bc ], [ true, %bb.bj ], [ false, %stbtt__cuberoot.exit49.i ]
  %i.td = phi i1 [ false, %bb.az ], [ false, %bb.ba ], [ false, %bb.bb ], [ false, %bb.bc ], [ true, %bb.bj ], [ false, %stbtt__cuberoot.exit49.i ]
  %i.te = fmul float %i.on, %i.on
  %i.tf = call float @llvm.fmuladd.f32(float %i.om, float %i.om, float %i.te) ; 2 uses
  %i.tg = fmul float %.0432524, %.0432524
  %i.th = fcmp olt float %i.tf, %i.tg
  %sqrt516 = call float @llvm.sqrt.f32(float %i.tf)
  %.4 = select i1 %i.th, float %sqrt516, float %.0432524 ; 4 uses
  %i.ti = fcmp oge float %.sroa.0.0, 0.000000e+00
end_hunk_0
begin_hunk_1_@nvg__addPoint:bb.a
  %i.z = fsub float %1, %i.u                      ; 2 uses
  %i.aa = fsub float %2, %i.w                     ; 2 uses
  %i.ab = fmul float %i.aa, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.ab)
  %i.ad = fmul float %i.y, %i.y
  %i.ae = fcmp uge float %i.ac, %i.ad
  br i1 %i.ae, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %nvg__lastPoint.exit
  %i.af = getelementptr i8, ptr %i.s, i64 -4      ; 2 uses
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !276
  %i.ah = trunc nuw nsw i32 %3 to i8
  %i.ai = or i8 %i.ag, %i.ah
  store i8 %i.ai, ptr %i.af, align 4, !tbaa !276
  br label %.critedge

._crit_edge:                                      ; preds = %bb.b, %nvg__lastPoint.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !218 ; 2 uses
  %.not38 = icmp slt i32 %i.o, %i.ak
  br i1 %.not38, label %._crit_edge43, label %bb.d

._crit_edge43:                                    ; preds = %._crit_edge
  %.pre44 = load ptr, ptr %.val, align 8, !tbaa !217
  br label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.al = add nsw i32 %i.o, 1
  %i.am = sdiv i32 %i.ak, 2
  %i.an = add nsw i32 %i.al, %i.am                ; 2 uses
  %i.ao = load ptr, ptr %.val, align 8, !tbaa !217
  %i.ap = sext i32 %i.an to i64
  %i.aq = shl nsw i64 %i.ap, 5
  %i.ar = tail call ptr @realloc(ptr noundef %i.ao, i64 noundef %i.aq) #43 ; 3 uses
  %.not39 = icmp eq ptr %i.ar, null
  br i1 %.not39, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !222 ; 3 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !217
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 %i.an, ptr %i.at, align 4, !tbaa !218
  %.phi.trans.insert45 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.pre46 = load i32, ptr %.phi.trans.insert45, align 8, !tbaa !255
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge43, %bb.e
  %i.au = phi i32 [ %.pre46, %bb.e ], [ %i.o, %._crit_edge43 ]
  %i.av = phi ptr [ %i.ar, %bb.e ], [ %.pre44, %._crit_edge43 ]
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds [32 x i8], ptr %i.av, i64 %i.aw ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  store float %1, ptr %i.ax, align 4, !tbaa !269
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store float %2, ptr %i.az, align 4, !tbaa !270
  %i.ba = trunc nuw nsw i32 %3 to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  store i8 %i.ba, ptr %i.bb, align 4, !tbaa !276
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !222
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !255
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !255
  %i.bg = load i32, ptr %i.k, align 4, !tbaa !272
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.k, align 4, !tbaa !272
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.d, %nvg__lastPath.exit, %bb.f, %bb.c
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @nvg__tesselateBezier(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9, i32 noundef range(i32 0, 2) %10) unnamed_addr #19 {
bb.a:
  %i.a = icmp sgt i32 %9, 10
  br i1 %i.a, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8856
  %i.c = insertelement <2 x float> poison, float %1, i64 0
  %i.d = insertelement <2 x float> %i.c, float %2, i64 1
  %i.e = insertelement <2 x float> poison, float %3, i64 0
  %i.f = insertelement <2 x float> %i.e, float %4, i64 1
  %i.g = insertelement <2 x float> poison, float %5, i64 0
  %i.h = insertelement <2 x float> %i.g, float %6, i64 1
  %i.i = insertelement <2 x float> poison, float %7, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = insertelement <2 x float> poison, float %8, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8290 = phi i32 [ %9, %.lr.ph ], [ %i.bf, %tailrecurse ]
  %.tr7585 = phi float [ %2, %.lr.ph ], [ %i.bd, %tailrecurse ] ; 2 uses
  %.tr7484 = phi float [ %1, %.lr.ph ], [ %i.be, %tailrecurse ] ; 2 uses
  %i.m = phi <2 x float> [ %i.d, %.lr.ph ], [ %i.bc, %tailrecurse ]
  %i.n = phi <2 x float> [ %i.f, %.lr.ph ], [ %i.ba, %tailrecurse ] ; 4 uses
  %i.o = phi <2 x float> [ %i.h, %.lr.ph ], [ %i.ay, %tailrecurse ] ; 5 uses
  %i.p = fsub float %7, %.tr7484                  ; 3 uses
  %i.q = fsub float %8, %.tr7585                  ; 3 uses
  %i.r = shufflevector <2 x float> %i.n, <2 x float> %i.o, <2 x i32> <i32 0, i32 2>
  %i.s = fsub <2 x float> %i.r, %i.j
  %i.t = shufflevector <2 x float> %i.n, <2 x float> %i.o, <2 x i32> <i32 1, i32 3>
  %i.u = fsub <2 x float> %i.t, %i.l
  %i.v = fneg float %i.p
  %i.w = insertelement <2 x float> poison, float %i.v, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x float> %i.u, %i.x
  %i.z = insertelement <2 x float> poison, float %i.q, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.aa, <2 x float> %i.y) ; 3 uses
  %i.ac = fcmp oge <2 x float> %i.ab, zeroinitializer
  %i.ad = fneg <2 x float> %i.ab
  %i.ae = select <2 x i1> %i.ac, <2 x float> %i.ab, <2 x float> %i.ad
  %i.af = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ae) ; 2 uses
  %i.ag = fmul float %i.af, %i.af
  %i.ah = load float, ptr %i.b, align 8, !tbaa !284
  %i.ai = fmul float %i.q, %i.q
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.ai)
  %i.ak = fmul float %i.aj, %i.ah
  %i.al = fcmp olt float %i.ag, %i.ak
  br i1 %i.al, label %bb.c, label %tailrecurse

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @nvg__addPoint(ptr noundef nonnull %0, float noundef %7, float noundef %8, i32 noundef %10)
  br label %.loopexit

tailrecurse:                                      ; preds = %bb.b
  %i.am = fadd <2 x float> %i.m, %i.n
  %i.an = fadd <2 x float> %i.n, %i.o
  %i.ao = extractelement <2 x float> %i.o, i64 1
  %i.ap = fadd float %8, %i.ao
  %i.aq = extractelement <2 x float> %i.o, i64 0
  %i.ar = fadd float %7, %i.aq
  %i.as = fmul <2 x float> %i.am, splat (float 5.000000e-01) ; 3 uses
  %i.at = fmul <2 x float> %i.an, splat (float 5.000000e-01) ; 2 uses
  %i.au = fadd <2 x float> %i.as, %i.at
  %i.av = fmul <2 x float> %i.au, splat (float 5.000000e-01) ; 3 uses
  %i.aw = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.ap, i64 1
  %i.ay = fmul <2 x float> %i.ax, splat (float 5.000000e-01) ; 2 uses
  %i.az = fadd <2 x float> %i.at, %i.ay
  %i.ba = fmul <2 x float> %i.az, splat (float 5.000000e-01) ; 2 uses
  %i.bb = fadd <2 x float> %i.av, %i.ba
  %i.bc = fmul <2 x float> %i.bb, splat (float 5.000000e-01) ; 3 uses
  %i.bd = extractelement <2 x float> %i.bc, i64 1 ; 2 uses
  %i.be = extractelement <2 x float> %i.bc, i64 0 ; 2 uses
  %i.bf = add nsw i32 %.tr8290, 1                 ; 3 uses
  %i.bg = extractelement <2 x float> %i.av, i64 0
  %i.bh = extractelement <2 x float> %i.av, i64 1
  %i.bi = extractelement <2 x float> %i.as, i64 0
  %i.bj = extractelement <2 x float> %i.as, i64 1
  tail call fastcc void @nvg__tesselateBezier(ptr noundef nonnull %0, float noundef %.tr7484, float noundef %.tr7585, float noundef %i.bi, float noundef %i.bj, float noundef %i.bg, float noundef %i.bh, float noundef %i.be, float noundef %i.bd, i32 noundef %i.bf, i32 noundef 0)
  %exitcond = icmp eq i32 %i.bf, 11
  br i1 %exitcond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @nvg__calculateJoins(ptr nofree readonly captures(none) %.8848.val, float noundef %0, i32 noundef %1, float noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = fcmp ogt float %0, 0.000000e+00
  %i.b = fdiv nnan float 1.000000e+00, %0
  %.071 = select i1 %i.a, float %i.b, float 0.000000e+00
  %i.c = getelementptr inbounds nuw i8, ptr %.8848.val, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !256  ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph7, label %._crit_edge8

.lr.ph7:                                          ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.8848.val, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !219
  %i.h = load ptr, ptr %.8848.val, align 8, !tbaa !217
  %i.i = and i32 %1, -3
  %i.j = icmp eq i32 %i.i, 1
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph7, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %i.g, i64 %indvars.iv ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !267
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !272  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !274
  %i.p = icmp sgt i32 %i.n, 0
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.q = sext i32 %i.l to i64
  %i.r = getelementptr inbounds [32 x i8], ptr %i.h, i64 %i.q ; 2 uses
  %i.s = zext nneg i32 %i.n to i64
  %i.t = getelementptr [32 x i8], ptr %i.r, i64 %i.s ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -32
  %.phi.trans.insert = getelementptr i8, ptr %i.t, i64 -20
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !280
  %.phi.trans.insert11 = getelementptr i8, ptr %i.t, i64 -24
  %.pre12 = load float, ptr %.phi.trans.insert11, align 4, !tbaa !279
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %i.v = phi i32 [ %i.bk, %bb.k ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.w = phi float [ %i.aa, %bb.k ], [ %.pre12, %.lr.ph.preheader ] ; 2 uses
  %i.x = phi float [ %3, %bb.k ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.04 = phi i32 [ %.1, %bb.k ], [ 0, %.lr.ph.preheader ]
  %.0693 = phi ptr [ %i.bl, %bb.k ], [ %i.r, %.lr.ph.preheader ] ; 8 uses
  %.0702 = phi ptr [ %.0693, %bb.k ], [ %i.u, %.lr.ph.preheader ]
  %.0721 = phi i32 [ %i.bm, %bb.k ], [ 0, %.lr.ph.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0693, i64 12
  %3 = load float, ptr %i.y, align 4, !tbaa !280  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0693, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !279 ; 3 uses
  %4 = fneg float %i.aa
  %5 = fadd float %i.x, %3
  %6 = fmul float %5, 5.000000e-01                ; 4 uses
  %7 = getelementptr inbounds nuw i8, ptr %.0693, i64 20 ; 2 uses
  store float %6, ptr %7, align 4, !tbaa !535
  %8 = fsub float %4, %i.w
  %9 = fmul float %8, 5.000000e-01                ; 4 uses
  %10 = getelementptr inbounds nuw i8, ptr %.0693, i64 24 ; 2 uses
  store float %9, ptr %10, align 4, !tbaa !536
  %11 = fmul float %9, %9
  %i.ab = tail call float @llvm.fmuladd.f32(float %6, float %6, float %11) ; 4 uses
  %i.ac = fcmp ogt float %i.ab, f0x358637BD
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.ad = fdiv float 1.000000e+00, %i.ab          ; 2 uses
  %i.ae = fcmp ogt float %i.ad, 6.000000e+02
  %spec.store.select = select i1 %i.ae, float 6.000000e+02, float %i.ad ; 2 uses
  %12 = fmul float %6, %spec.store.select
  store float %12, ptr %7, align 4, !tbaa !535
  %13 = fmul float %9, %spec.store.select
  store float %13, ptr %10, align 4, !tbaa !536
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %.0693, i64 28 ; 4 uses
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !276
  %i.ah = and i8 %i.ag, 1                         ; 2 uses
  %i.ai = fneg float %3
  %i.aj = fmul float %i.w, %i.ai
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.x, float %i.aj)
  %i.al = fcmp ogt float %i.ak, 0.000000e+00      ; 2 uses
  %i.am = or disjoint i8 %i.ah, 2
  %storemerge = select i1 %i.al, i8 %i.am, i8 %i.ah ; 3 uses
  %i.an = zext i1 %i.al to i32
  %.1 = add nuw nsw i32 %.04, %i.an               ; 2 uses
  store i8 %storemerge, ptr %i.af, align 4, !tbaa !276
  %i.ao = getelementptr inbounds nuw i8, ptr %.0702, i64 16
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !273 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0693, i64 16
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !273 ; 2 uses
  %i.as = fcmp olt float %i.ap, %i.ar
  %i.at = select i1 %i.as, float %i.ap, float %i.ar
  %i.au = fmul float %.071, %i.at                 ; 2 uses
  %i.av = fcmp olt float %i.au, 1.010000e+00
  %i.aw = select i1 %i.av, float 1.010000e+00, float %i.au ; 2 uses
  %i.ax = fmul float %i.ab, %i.aw
  %i.ay = fmul float %i.aw, %i.ax
  %i.az = fcmp olt float %i.ay, 1.000000e+00
  br i1 %i.az, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ba = or disjoint i8 %storemerge, 8           ; 2 uses
  store i8 %i.ba, ptr %i.af, align 4, !tbaa !276
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bb = phi i8 [ %i.ba, %bb.e ], [ %storemerge, %bb.d ] ; 4 uses
  %i.bc = and i8 %i.bb, 1
  %.not = icmp eq i8 %i.bc, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = fmul float %2, %i.ab
  %i.be = fmul float %2, %i.bd
  %i.bf = fcmp olt float %i.be, 1.000000e+00
  %or.cond3 = or i1 %i.j, %i.bf
  br i1 %or.cond3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = or i8 %i.bb, 4                          ; 2 uses
  store i8 %i.bg, ptr %i.af, align 4, !tbaa !276
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.bh = phi i8 [ %i.bg, %bb.h ], [ %i.bb, %bb.g ], [ %i.bb, %bb.f ]
  %i.bi = and i8 %i.bh, 12
  %.not77 = icmp eq i8 %i.bi, 0
  br i1 %.not77, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = add nsw i32 %i.v, 1                     ; 2 uses
  store i32 %i.bj, ptr %i.o, align 4, !tbaa !274
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bk = phi i32 [ %i.bj, %bb.j ], [ %i.v, %bb.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0693, i64 32
  %i.bm = add nuw nsw i32 %.0721, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.bm, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !533

._crit_edge:                                      ; preds = %bb.k, %bb.b
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ %.1, %bb.k ]
  %i.bn = icmp eq i32 %.0.lcssa, %i.n
  %i.bo = zext i1 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !275
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond10.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond10.not, label %._crit_edge8, label %bb.b, !llvm.loop !534

._crit_edge8:                                     ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @nvg__bevelJoin(ptr nofree noundef nonnull writeonly captures(ret: address, provenance) initializes((0, 36)) %0, float %.8.val, float %.12.val, ptr nofree noundef readonly captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) unnamed_addr #9 {
bb.a:
  %i.a = fneg float %.8.val                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !81 ; 6 uses
  %i.d = extractelement <2 x float> %i.c, i64 0
  %i.e = fneg float %i.d                          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.g = load i8, ptr %i.f, align 4, !tbaa !276   ; 3 uses
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = and i32 %i.h, 2
  %.not = icmp eq i32 %i.i, 0
  %i.j = and i32 %i.h, 8                          ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.j, 0
  %i.k = load float, ptr %1, align 4, !tbaa !269  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load float, ptr %i.l, align 4, !tbaa !270 ; 2 uses
  %i.n = insertelement <2 x float> poison, float %.12.val, i64 0
  %i.o = insertelement <2 x float> %i.n, float %i.a, i64 1
  %i.p = insertelement <2 x float> poison, float %2, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.r = insertelement <2 x float> poison, float %i.k, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.m, i64 1 ; 2 uses
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.q, <2 x float> %i.s)
  %i.u = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.v = insertelement <2 x float> %i.u, float %i.e, i64 1
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.q, <2 x float> %i.s)
  br label %nvg__chooseBevel.exit

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load float, ptr %i.l, align 4, !tbaa !270 ; 2 uses
  %i.z = load <2 x float>, ptr %i.x, align 4, !tbaa !81
  %i.aa = insertelement <2 x float> poison, float %2, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = insertelement <2 x float> poison, float %i.k, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.y, i64 1
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.ab, <2 x float> %i.ad) ; 2 uses
  br label %nvg__chooseBevel.exit

nvg__chooseBevel.exit:                            ; preds = %bb.c, %bb.d
  %i.af = phi float [ %i.y, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %i.ag = phi <2 x float> [ %i.ae, %bb.d ], [ %i.w, %bb.c ] ; 3 uses
  %i.ah = phi <2 x float> [ %i.ae, %bb.d ], [ %i.t, %bb.c ] ; 3 uses
  store <2 x float> %i.ah, ptr %0, align 4, !tbaa !81
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %4, ptr %i.ai, align 4, !tbaa !282
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 1.000000e+00, ptr %i.aj, align 4, !tbaa !283
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = fneg float %.12.val
  %i.am = insertelement <2 x float> poison, float %i.al, i64 0
  %i.an = insertelement <2 x float> %i.am, float %.8.val, i64 1
  %i.ao = insertelement <2 x float> poison, float %3, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.aq = insertelement <2 x float> poison, float %i.k, i64 0
  %i.ar = insertelement <2 x float> %i.aq, float %i.af, i64 1 ; 3 uses
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.ap, <2 x float> %i.ar) ; 4 uses
  store <2 x float> %i.as, ptr %i.ak, align 4, !tbaa !81
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %5, ptr %i.at, align 4, !tbaa !282
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 1.000000e+00, ptr %i.au, align 4, !tbaa !283
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aw = and i8 %i.g, 4
  %.not189 = icmp eq i8 %i.aw, 0
  br i1 %.not189, label %bb.f, label %bb.e

bb.e:                                             ; preds = %nvg__chooseBevel.exit
  %i.ax = extractelement <2 x float> %i.ah, i64 0
  store float %i.ax, ptr %i.av, align 4, !tbaa !278
  %i.ay = extractelement <2 x float> %i.ag, i64 0
  %i.az = extractelement <2 x float> %i.ag, i64 1
  %i.ba = extractelement <2 x float> %i.ah, i64 1
  br label %bb.g

bb.f:                                             ; preds = %nvg__chooseBevel.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bc = load <2 x float>, ptr %i.bb, align 4, !tbaa !81
  %i.bd = fneg <2 x float> %i.bc
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.ap, <2 x float> %i.ar) ; 3 uses
  store float %i.k, ptr %i.av, align 4, !tbaa !278
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bg = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> <float poison, float 5.000000e-01, float 1.000000e+00, float poison>, <4 x i32> <i32 poison, i32 5, i32 6, i32 3>
  %i.bi = insertelement <4 x float> %i.bh, float %i.af, i64 0
  store <4 x float> %i.bi, ptr %i.bf, align 4, !tbaa !81
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bk = extractelement <2 x float> %i.as, i64 1
  store float %i.bk, ptr %i.bj, align 4, !tbaa !281
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %5, ptr %i.bl, align 4, !tbaa !282
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %i.bm, align 4, !tbaa !283
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bo = extractelement <2 x float> %i.be, i64 0
  store float %i.bo, ptr %i.bn, align 4, !tbaa !278
  %i.bp = extractelement <2 x float> %i.be, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink73 = phi i64 [ 68, %bb.f ], [ 36, %bb.e ]
  %.sink71 = phi float [ %i.bp, %bb.f ], [ %i.ba, %bb.e ]
  %.sink70 = phi i64 [ 72, %bb.f ], [ 40, %bb.e ]
  %.sink68 = phi float [ %5, %bb.f ], [ %4, %bb.e ]
  %.sink67 = phi i64 [ 76, %bb.f ], [ 44, %bb.e ]
  %.sink65 = phi i64 [ 80, %bb.f ], [ 48, %bb.e ]
  %.sink62 = phi i64 [ 84, %bb.f ], [ 52, %bb.e ]
  %.sink59 = phi i64 [ 88, %bb.f ], [ 56, %bb.e ]
  %.sink57 = phi i64 [ 92, %bb.f ], [ 60, %bb.e ]
  %.sink55 = phi i64 [ 96, %bb.f ], [ 64, %bb.e ]
  %.sink53 = phi float [ %i.k, %bb.f ], [ %i.ay, %bb.e ]
  %.sink52 = phi i64 [ 100, %bb.f ], [ 68, %bb.e ]
  %.sink50 = phi float [ %i.af, %bb.f ], [ %i.az, %bb.e ]
  %.sink49 = phi i64 [ 104, %bb.f ], [ 72, %bb.e ]
  %.sink47 = phi float [ 5.000000e-01, %bb.f ], [ %4, %bb.e ]
  %.sink46 = phi i64 [ 108, %bb.f ], [ 76, %bb.e ]
  %.sink44 = phi i64 [ 112, %bb.f ], [ 80, %bb.e ]
end_hunk_1
begin_hunk_2_@llvm.sqrt.v2f64
!335 = distinct !{!335, !39}
!336 = distinct !{!336, !39}
!337 = distinct !{!337, !39}
!338 = distinct !{null, null, null}
!339 = distinct !{!339, !39}
!340 = distinct !{null, null, null, null, null}
!341 = distinct !{!341, !39}
!342 = distinct !{!342, !39}
!343 = distinct !{!343, !39}
!344 = distinct !{!344, !39}
!345 = distinct !{!345, !39}
!346 = distinct !{!346, !39}
!347 = distinct !{!347, !39}
!348 = !{!84, !29, i64 16}
!349 = !{i64 0, i64 4, !81, i64 4, i64 4, !81, i64 8, i64 4, !70}
!350 = !{!"p1 _ZTS18stbtt__active_edge", !32, i64 0}
!351 = !{!350, !350, i64 0}
!352 = !{!"stbtt__active_edge", !350, i64 0, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28}
!353 = !{!352, !48, i64 28}
!354 = !{!352, !350, i64 0}
!355 = !{!352, !48, i64 20}
!356 = !{!84, !48, i64 12}
!357 = !{!"p1 _ZTS18stbtt__hheap_chunk", !32, i64 0}
!358 = !{!"stbtt__hheap_chunk", !357, i64 0}
!359 = !{!358, !357, i64 0}
!360 = !{!84, !48, i64 8}
!361 = !{!84, !48, i64 0}
!362 = !{!352, !48, i64 12}
!363 = !{!352, !48, i64 16}
!364 = !{!352, !48, i64 8}
!365 = !{!352, !48, i64 24}
!366 = !{!94, !29, i64 16}
!367 = !{!94, !29, i64 20}
!368 = !{!94, !32, i64 56}
!369 = distinct !{!369, !39}
!370 = distinct !{!370, !39}
!371 = !{!110, !28, i64 32}
!372 = !{!110, !28, i64 33}
!373 = distinct !{!373, !39}
!374 = distinct !{!374, !39}
!375 = !{!122, !57, i64 0}
!376 = !{!122, !57, i64 2}
!377 = !{!122, !57, i64 4}
!378 = !{!122, !57, i64 6}
!379 = !{i64 0, i64 2, !64, i64 2, i64 2, !64, i64 4, i64 2, !64, i64 6, i64 2, !64, i64 8, i64 4, !81, i64 12, i64 4, !81, i64 16, i64 4, !81, i64 20, i64 4, !81, i64 24, i64 4, !81}
!380 = distinct !{!380, !124}
!381 = distinct !{!381, !39, !65, !66}
!382 = distinct !{!382, !39}
!383 = distinct !{!383, !124}
!384 = distinct !{!384, !39}
!385 = distinct !{!385, !39, !66, !65}
!386 = distinct !{!386, !124}
!387 = distinct !{!387, !39}
!388 = !{!122, !48, i64 8}
!389 = !{!122, !48, i64 12}
!390 = !{!"", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28}
!391 = !{!390, !48, i64 16}
!392 = !{!390, !48, i64 0}
!393 = !{!390, !48, i64 4}
!394 = !{!122, !48, i64 20}
!395 = !{!390, !48, i64 20}
!396 = !{!122, !48, i64 16}
!397 = distinct !{!397, !39}
!398 = distinct !{!398, !39}
!399 = distinct !{!399, !39}
!400 = distinct !{!400, !39}
!401 = distinct !{!401, !39}
!402 = distinct !{!402, !39}
!403 = distinct !{!403, !39}
!404 = !{!92, !57, i64 0}
!405 = !{!92, !57, i64 2}
!406 = !{!92, !57, i64 4}
!407 = !{!92, !57, i64 6}
!408 = !{i64 0, i64 4, !70, i64 4, i64 4, !70, i64 8, i64 1, !38, i64 16, i64 8, !45, i64 24, i64 8, !45, i64 32, i64 8, !45, i64 40, i64 8, !45, i64 48, i64 8, !45, i64 56, i64 8, !45}
!409 = !{!52, !32, i64 24}
!410 = distinct !{!410, !39}
!411 = !{!52, !32, i64 56}
!412 = !{!157, !29, i64 232}
!413 = distinct !{!413, !39}
!414 = distinct !{!414, !39}
!415 = distinct !{!415, !39}
!416 = distinct !{!416, !39}
!417 = distinct !{!417, !39}
!418 = distinct !{!418, !39}
!419 = distinct !{!419, !39}
!420 = distinct !{!420, !39}
!421 = distinct !{!421, !39}
!422 = distinct !{!422, !124}
!423 = distinct !{!423, !124}
!424 = !{!173, !29, i64 0}
!425 = !{!173, !57, i64 12}
!426 = !{!173, !57, i64 14}
!427 = !{!173, !29, i64 8}
!428 = !{!173, !57, i64 26}
!429 = !{!173, !57, i64 28}
!430 = !{!52, !48, i64 68}
!431 = !{!52, !48, i64 64}
!432 = !{!175, !48, i64 8}
!433 = !{!175, !48, i64 24}
!434 = !{!187, !48, i64 12}
!435 = !{!187, !48, i64 4}
!436 = distinct !{!436, !39}
!437 = distinct !{!437, !39}
!438 = distinct !{!438, !39}
!439 = distinct !{!439, !39, !65, !66}
!440 = distinct !{!440, !39, !66, !65}
!441 = distinct !{!441, !39}
!442 = !{i64 0, i64 8, !45, i64 8, i64 4, !70, i64 16, i64 8, !45, i64 24, i64 8, !45, i64 32, i64 8, !45, i64 40, i64 8, !45, i64 48, i64 8, !45, i64 56, i64 8, !45, i64 64, i64 8, !45, i64 72, i64 8, !45, i64 80, i64 8, !45, i64 88, i64 8, !45, i64 96, i64 8, !45, i64 104, i64 8, !45}
!443 = !{!209, !32, i64 16}
!444 = !{!47, !29, i64 0}
!445 = !{!47, !29, i64 4}
!446 = !{!47, !28, i64 8}
!447 = !{!209, !32, i64 104}
!448 = !{!209, !32, i64 56}
!449 = !{!209, !32, i64 64}
!450 = distinct !{!450, !39}
!451 = !{!209, !32, i64 72}
!452 = distinct !{!452, !39}
!453 = distinct !{!453, !39}
!454 = distinct !{!454, !39}
!455 = distinct !{!455, !39}
!456 = distinct !{!456, !39}
!457 = distinct !{!457, !39}
!458 = distinct !{!458, !39, !65, !66}
!459 = distinct !{!459, !39, !66, !65}
!460 = !{!209, !32, i64 80}
!461 = !{!209, !29, i64 8904}
!462 = distinct !{!462, !39}
!463 = distinct !{!463, !39}
!464 = distinct !{!464, !39}
!465 = distinct !{!465, !39}
!466 = distinct !{!466, !39}
!467 = !{!260, !29, i64 44}
!468 = !{i64 0, i64 4, !81, i64 4, i64 4, !81, i64 8, i64 4, !81, i64 12, i64 4, !81, i64 16, i64 4, !81, i64 20, i64 4, !81, i64 24, i64 4, !81, i64 28, i64 1, !38}
!469 = distinct !{!469, !39, !65, !66}
!470 = distinct !{!470, !39, !66, !65}
!471 = distinct !{!471, !39}
!472 = distinct !{!472, !39}
!473 = distinct !{!473, !39}
!474 = distinct !{!474, !124}
!475 = distinct !{!475, !39}
!476 = distinct !{!476, !39}
!477 = distinct !{!477, !39, !65, !66}
!478 = distinct !{!478, !39, !66, !65}
!479 = !{!209, !32, i64 88}
!480 = !{!209, !29, i64 8908}
!481 = distinct !{!481, !39, !65, !66}
!482 = distinct !{!482, !39, !66, !65}
!483 = distinct !{!483, !39}
!484 = distinct !{!484, !39, !65, !66}
!485 = distinct !{!485, !39, !66, !65}
!486 = distinct !{!486, !39}
!487 = distinct !{!487, !39}
!488 = distinct !{!488, !39}
!489 = distinct !{!489, !39}
!490 = distinct !{!490, !39}
!491 = distinct !{!491, !39}
!492 = distinct !{null}
!493 = !{!209, !32, i64 96}
!494 = !{!209, !29, i64 8912}
!495 = distinct !{!495, !39}
!496 = distinct !{!496, !39}
!497 = distinct !{!497, !39}
!498 = !{!290, !48, i64 28}
!499 = !{!290, !48, i64 32}
!500 = distinct !{!500, !39}
!501 = !{!"NVGglyphPosition", !33, i64 0, !48, i64 8, !48, i64 12, !48, i64 16}
!502 = !{!501, !33, i64 0}
!503 = !{!501, !48, i64 16}
!504 = distinct !{!504, !39}
!505 = distinct !{!505, !39}
!506 = distinct !{!506, !39}
!507 = distinct !{!507, !39}
!508 = distinct !{!508, !39}
!509 = distinct !{!509, !39}
!510 = distinct !{!510, !39, !514}
!511 = distinct !{!511, !39, !514}
!512 = distinct !{!512, !39}
!513 = distinct !{!513, !39}
!514 = !{!"llvm.loop.peeled.count", i32 1}
!515 = !{!35, !29, i64 156}
!516 = !{!67, !48, i64 8}
!517 = !{!67, !48, i64 12}
!518 = distinct !{!518, !39}
!519 = distinct !{!519, !39}
!520 = distinct !{!520, !39}
!521 = distinct !{!521, !39}
!522 = distinct !{!522, !39}
!523 = distinct !{!523, !39}
!524 = distinct !{!524, !39}
!525 = distinct !{!525, !39}
!526 = distinct !{!526, !39}
!527 = distinct !{!527, !39}
!528 = distinct !{!528, !39}
!529 = distinct !{!529, !39}
!530 = distinct !{!530, !39}
!531 = distinct !{!531, !39}
!532 = distinct !{!532, !39}
!533 = distinct !{!533, !39}
!534 = distinct !{!534, !39}
!535 = !{!268, !48, i64 20}
!536 = !{!268, !48, i64 24}
end_hunk_2
