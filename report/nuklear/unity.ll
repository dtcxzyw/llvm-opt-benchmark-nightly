Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@stbtt_GetGlyphSDF:bb.a
  %i.dy = fcmp ogt double %i.dw, f0x3FEFAE1490000000
  br i1 %i.dy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s, %bb.r
  %.0150.i = phi float [ %i.dl, %bb.r ], [ %i.dn, %bb.s ], [ %i.do, %bb.q ] ; 10 uses
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.thread

.lr.ph.i:                                         ; preds = %bb.t
  %i.dz = fmul float %i.dv, 0.000000e+00
  %i.ea = fmul float %.0150.i, 0.000000e+00
  %i.eb = fadd float %i.dv, %i.ea
  %i.ec = fsub float %i.dz, %.0150.i
  br label %bb.u

bb.u:                                             ; preds = %.thread.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.thread.i ] ; 2 uses
  %.0197.i = phi i32 [ 0, %.lr.ph.i ], [ %.9.i.fr, %.thread.i ] ; 11 uses
  %i.ed = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre, i64 %indvars.iv.i ; 11 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.ef = load i8, ptr %i.ee, align 2, !tbaa !273
  switch i8 %i.ef, label %.thread.i [
    i8 2, label %bb.v
    i8 3, label %bb.z
  ]

bb.v:                                             ; preds = %bb.u
  %i.eg = getelementptr i8, ptr %i.ed, i64 -14
  %i.eh = load <2 x i16>, ptr %i.eg, align 2, !tbaa !106 ; 3 uses
  %i.ei = extractelement <2 x i16> %i.eh, i64 1   ; 4 uses
  %i.ej = extractelement <2 x i16> %i.eh, i64 0
  %i.ek = sext i16 %i.ej to i32                   ; 2 uses
  %i.el = sext i16 %i.ei to i32
  %i.em = load i16, ptr %i.ed, align 2, !tbaa !274
  %i.en = sext i16 %i.em to i32                   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !275 ; 4 uses
  %i.eq = sext i16 %i.ep to i32
  %i.er = icmp slt i16 %i.ei, %i.ep
  %i.es = call i16 @llvm.smin.i16(i16 %i.ei, i16 %i.ep)
  %i.et = sitofp i16 %i.es to float
  %i.eu = fcmp ogt float %.0150.i, %i.et
  br i1 %i.eu, label %bb.w, label %.thread.i

bb.w:                                             ; preds = %bb.v
  %i.ev = call i16 @llvm.smax.i16(i16 %i.ei, i16 %i.ep)
  %i.ew = sitofp i16 %i.ev to float
  %i.ex = fcmp olt float %.0150.i, %i.ew
  br i1 %i.ex, label %bb.x, label %.thread.i

bb.x:                                             ; preds = %bb.w
  %i.ey = call i32 @llvm.smin.i32(i32 %i.ek, i32 %i.en)
  %i.ez = sitofp i32 %i.ey to float
  %i.fa = fcmp ogt float %i.dv, %i.ez
  br i1 %i.fa, label %bb.y, label %.thread.i

bb.y:                                             ; preds = %bb.x
  %i.fb = sitofp <2 x i16> %i.eh to <2 x float>   ; 2 uses
  %i.fc = extractelement <2 x float> %i.fb, i64 1
  %i.fd = fsub float %.0150.i, %i.fc
  %i.fe = sub nsw i32 %i.eq, %i.el
  %i.ff = sitofp i32 %i.fe to float
  %i.fg = fdiv float %i.fd, %i.ff
  %i.fh = sub nsw i32 %i.en, %i.ek
  %i.fi = sitofp i32 %i.fh to float
  %i.fj = extractelement <2 x float> %i.fb, i64 0
  %i.fk = call float @llvm.fmuladd.f32(float %i.fg, float %i.fi, float %i.fj)
  %i.fl = fcmp olt float %i.fk, %i.dv
  %i.fm = select i1 %i.er, i32 1, i32 -1
  %i.fn = select i1 %i.fl, i32 %i.fm, i32 0
  %.1.i = add nsw i32 %i.fn, %.0197.i
  br label %.thread.i

bb.z:                                             ; preds = %bb.u
  %i.fo = getelementptr i8, ptr %i.ed, i64 -14    ; 2 uses
  %i.fp = getelementptr i8, ptr %i.ed, i64 -12
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !276 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ed, i64 6
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !277 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.fv = load i16, ptr %i.fp, align 2, !tbaa !275 ; 6 uses
  %i.fw = load i16, ptr %i.fo, align 2, !tbaa !274 ; 2 uses
  %i.fx = sext i16 %i.fv to i32
  %i.fy = load i16, ptr %i.fu, align 2, !tbaa !275 ; 6 uses
  %i.fz = load i16, ptr %i.ed, align 2, !tbaa !274 ; 2 uses
  %i.ga = call i16 @llvm.smin.i16(i16 %i.fr, i16 %i.fz)
  %..i = call i16 @llvm.smin.i16(i16 %i.ga, i16 %i.fw)
  %i.gb = call i16 @llvm.smin.i16(i16 %i.ft, i16 %i.fy)
  %i.gc = call i16 @llvm.smin.i16(i16 %i.fv, i16 %i.gb)
  %i.gd = call i16 @llvm.smax.i16(i16 %i.ft, i16 %i.fy)
  %i.ge = call i16 @llvm.smax.i16(i16 %i.fv, i16 %i.gd)
  %i.gf = sitofp i16 %i.gc to float
  %i.gg = fcmp ogt float %.0150.i, %i.gf
  %i.gh = sitofp i16 %i.ge to float
  %i.gi = fcmp olt float %.0150.i, %i.gh
  %or.cond162.i = and i1 %i.gg, %i.gi
  %i.gj = sitofp i16 %..i to float
  %i.gk = fcmp ogt float %i.dv, %i.gj
  %or.cond164.i = select i1 %or.cond162.i, i1 %i.gk, i1 false
  br i1 %or.cond164.i, label %bb.aa, label %.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.gl = load <2 x i16>, ptr %i.ed, align 2, !tbaa !106 ; 2 uses
  %i.gm = load <2 x i16>, ptr %i.fo, align 2, !tbaa !106 ; 2 uses
  %i.gn = shufflevector <2 x i16> %i.gl, <2 x i16> %i.gm, <2 x i32> <i32 0, i32 2>
  %i.go = sitofp <2 x i16> %i.gn to <2 x float>   ; 3 uses
  %i.gp = shufflevector <2 x i16> %i.gl, <2 x i16> %i.gm, <2 x i32> <i32 1, i32 3>
  %i.gq = sitofp <2 x i16> %i.gp to <2 x float>   ; 3 uses
  %i.gr = sitofp i16 %i.fr to float               ; 4 uses
  %i.gs = sitofp i16 %i.ft to float               ; 4 uses
  %i.gt = extractelement <2 x float> %i.go, i64 1 ; 3 uses
  %i.gu = fcmp une float %i.gt, %i.gr
  %i.gv = extractelement <2 x float> %i.gq, i64 1 ; 3 uses
  %i.gw = fcmp une float %i.gv, %i.gs
  %narrow.i.not.i = or i1 %i.gu, %i.gw
  br i1 %narrow.i.not.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gx = extractelement <2 x float> %i.go, i64 0 ; 2 uses
  %i.gy = fcmp une float %i.gx, %i.gr
  %i.gz = extractelement <2 x float> %i.gq, i64 0 ; 2 uses
  %i.ha = fcmp une float %i.gz, %i.gs
  %narrow.i182.not.i = or i1 %i.gy, %i.ha
  br i1 %narrow.i182.not.i, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.hb = sext i16 %i.fw to i32                   ; 2 uses
  %i.hc = sext i16 %i.fz to i32                   ; 2 uses
  %i.hd = sext i16 %i.fy to i32
  %i.he = icmp slt i16 %i.fv, %i.fy
  %i.hf = call i16 @llvm.smin.i16(i16 %i.fv, i16 %i.fy)
  %i.hg = sitofp i16 %i.hf to float
  %i.hh = fcmp ogt float %.0150.i, %i.hg
  br i1 %i.hh, label %bb.ad, label %.thread.i

bb.ad:                                            ; preds = %bb.ac
  %i.hi = call i16 @llvm.smax.i16(i16 %i.fv, i16 %i.fy)
  %i.hj = sitofp i16 %i.hi to float
  %i.hk = fcmp olt float %.0150.i, %i.hj
  br i1 %i.hk, label %bb.ae, label %.thread.i

bb.ae:                                            ; preds = %bb.ad
  %i.hl = call i32 @llvm.smin.i32(i32 %i.hb, i32 %i.hc)
  %i.hm = sitofp i32 %i.hl to float
  %i.hn = fcmp ogt float %i.dv, %i.hm
  br i1 %i.hn, label %bb.af, label %.thread.i

bb.af:                                            ; preds = %bb.ae
  %i.ho = fsub float %.0150.i, %i.gv
  %i.hp = sub nsw i32 %i.hd, %i.fx
  %i.hq = sitofp i32 %i.hp to float
  %i.hr = fdiv float %i.ho, %i.hq
  %i.hs = sub nsw i32 %i.hc, %i.hb
  %i.ht = sitofp i32 %i.hs to float
  %i.hu = call float @llvm.fmuladd.f32(float %i.hr, float %i.ht, float %i.gt)
  %i.hv = fcmp olt float %i.hu, %i.dv
  %i.hw = select i1 %i.he, i32 1, i32 -1
  %i.hx = select i1 %i.hv, i32 %i.hw, i32 0
  %.4.i = add nsw i32 %i.hx, %.0197.i
  br label %.thread.i

bb.ag:                                            ; preds = %bb.ab
  %i.hy = fneg float %i.gt
  %i.hz = call float @llvm.copysign.f32(float 0.000000e+00, float %i.hy)
  %i.ia = fadd float %i.hz, %i.gv                 ; 3 uses
  %i.ib = fneg float %i.gr
  %i.ic = call float @llvm.copysign.f32(float 0.000000e+00, float %i.ib)
  %i.id = fadd float %i.ic, %i.gs                 ; 2 uses
  %i.ie = fneg float %i.gx
  %i.if = call float @llvm.copysign.f32(float 0.000000e+00, float %i.ie)
  %i.ig = fadd float %i.if, %i.gz
  %i.ih = call float @llvm.fmuladd.f32(float %i.id, float -2.000000e+00, float %i.ia)
  %i.ii = fadd float %i.ih, %i.ig                 ; 5 uses
  %i.ij = fsub float %i.id, %i.ia                 ; 7 uses
  %i.ik = fadd float %i.ec, %i.ia                 ; 2 uses
  %i.il = fcmp une float %i.ii, 0.000000e+00
  br i1 %i.il, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.im = fneg float %i.ik
  %i.in = fmul float %i.ii, %i.im
  %i.io = call float @llvm.fmuladd.f32(float %i.ij, float %i.ij, float %i.in) ; 2 uses
  %i.ip = fcmp ogt float %i.io, 0.000000e+00
  br i1 %i.ip, label %bb.ai, label %stbtt__ray_intersect_bezier.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.iq = fdiv float -1.000000e+00, %i.ii         ; 2 uses
  %sqrtf.i.i = call float @sqrtf(float noundef %i.io) #50 ; 3 uses
  %i.ir = fadd float %i.ij, %sqrtf.i.i
  %i.is = fmul float %i.iq, %i.ir                 ; 4 uses
  %i.it = fsub float %i.ij, %sqrtf.i.i
  %i.iu = fmul float %i.iq, %i.it                 ; 5 uses
  %i.iv = fcmp oge float %i.is, 0.000000e+00
  %i.iw = fcmp ole float %i.is, 1.000000e+00
  %or.cond.not.not.not.i.i = and i1 %i.iv, %i.iw  ; 3 uses
  %i.ix = fcmp ule float %sqrtf.i.i, 0.000000e+00
  %i.iy = fcmp ult float %i.iu, 0.000000e+00
  %10 = fcmp ugt float %i.iu, 1.000000e+00
  %11 = or i1 %i.iy, %10
  %or.cond118.i.i = select i1 %i.ix, i1 true, i1 %11
  br i1 %or.cond118.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.0107.i.i = select i1 %or.cond.not.not.not.i.i, float %i.is, float %i.iu
  br label %.thread21.i.i

bb.ak:                                            ; preds = %bb.ag
  %i.iz = fmul float %i.ij, -2.000000e+00
  %i.ja = fdiv float %i.ik, %i.iz                 ; 3 uses
  %i.jb = fcmp ult float %i.ja, 0.000000e+00
  %i.jc = fcmp ugt float %i.ja, 1.000000e+00
  %or.cond119.i.i = or i1 %i.jb, %i.jc
  br i1 %or.cond119.i.i, label %stbtt__ray_intersect_bezier.exit.i, label %.thread21.i.i

bb.al:                                            ; preds = %bb.ai
  br i1 %or.cond.not.not.not.i.i, label %.thread21.i.i, label %stbtt__ray_intersect_bezier.exit.i

.thread21.i.i:                                    ; preds = %bb.al, %bb.ak, %bb.aj
  %.327.i.i = phi i1 [ false, %bb.al ], [ %or.cond.not.not.not.i.i, %bb.aj ], [ false, %bb.ak ]
  %.110626.i.i = phi float [ %i.iu, %bb.al ], [ %i.iu, %bb.aj ], [ 0.000000e+00, %bb.ak ] ; 5 uses
  %.311025.i.i = phi float [ %i.is, %bb.al ], [ %.0107.i.i, %bb.aj ], [ %i.ja, %bb.ak ] ; 5 uses
  %i.jd = call <2 x float> @llvm.copysign.v2f32(<2 x float> zeroinitializer, <2 x float> %i.gq)
  %i.je = call float @llvm.copysign.f32(float 0.000000e+00, float %i.gs)
  %i.jf = fadd float %i.je, %i.gr
  %i.jg = fadd <2 x float> %i.jd, %i.go           ; 2 uses
  %i.jh = extractelement <2 x float> %i.jg, i64 1 ; 3 uses
  %i.ji = fsub float %i.jf, %i.jh                 ; 2 uses
  %i.jj = extractelement <2 x float> %i.jg, i64 0
  %i.jk = fsub float %i.jj, %i.jh                 ; 2 uses
  %i.jl = fsub float %i.jh, %i.eb                 ; 2 uses
  %i.jm = call float @llvm.fmuladd.f32(float %.311025.i.i, float -2.000000e+00, float 2.000000e+00)
  %i.jn = fmul float %.311025.i.i, %i.jm
  %i.jo = call float @llvm.fmuladd.f32(float %i.jn, float %i.ji, float %i.jl)
  %i.jp = fmul float %.311025.i.i, %.311025.i.i
  %i.jq = call float @llvm.fmuladd.f32(float %i.jp, float %i.jk, float %i.jo) ; 2 uses
  %i.jr = call float @llvm.fmuladd.f32(float %i.ii, float %.311025.i.i, float %i.ij) ; 2 uses
  br i1 %.327.i.i, label %bb.am, label %stbtt__ray_intersect_bezier.exit.i

bb.am:                                            ; preds = %.thread21.i.i
  %i.js = call float @llvm.fmuladd.f32(float %.110626.i.i, float -2.000000e+00, float 2.000000e+00)
  %i.jt = fmul float %.110626.i.i, %i.js
  %i.ju = call float @llvm.fmuladd.f32(float %i.jt, float %i.ji, float %i.jl)
  %i.jv = fmul float %.110626.i.i, %.110626.i.i
  %i.jw = call float @llvm.fmuladd.f32(float %i.jv, float %i.jk, float %i.ju)
  %i.jx = call float @llvm.fmuladd.f32(float %i.ii, float %.110626.i.i, float %i.ij)
  %i.jy = fcmp olt float %i.jw, 0.000000e+00
  %i.jz = fcmp olt float %i.jx, 0.000000e+00
  %i.ka = select i1 %i.jz, i32 -1, i32 1
  %i.kb = select i1 %i.jy, i32 %i.ka, i32 0
  br label %stbtt__ray_intersect_bezier.exit.i

stbtt__ray_intersect_bezier.exit.i:               ; preds = %bb.am, %.thread21.i.i, %bb.al, %bb.ak, %bb.ah
  %.sroa.4.0.i = phi float [ %i.jr, %bb.am ], [ %i.jr, %.thread21.i.i ], [ undef, %bb.al ], [ undef, %bb.ah ], [ undef, %bb.ak ]
  %.sroa.0.0.i = phi float [ %i.jq, %bb.am ], [ %i.jq, %.thread21.i.i ], [ undef, %bb.al ], [ undef, %bb.ah ], [ undef, %bb.ak ]
  %i.kc = phi i1 [ true, %bb.am ], [ true, %.thread21.i.i ], [ false, %bb.al ], [ false, %bb.ah ], [ false, %bb.ak ]
  %or.cond7.i = phi i32 [ %i.kb, %bb.am ], [ 0, %.thread21.i.i ], [ 0, %bb.al ], [ 0, %bb.ah ], [ 0, %bb.ak ]
  %i.kd = fcmp olt float %.sroa.0.0.i, 0.000000e+00
  %or.cond.i = select i1 %i.kc, i1 %i.kd, i1 false
  %i.ke = fcmp olt float %.sroa.4.0.i, 0.000000e+00
  %i.kf = select i1 %i.ke, i32 -1, i32 1
  %i.kg = select i1 %or.cond.i, i32 %i.kf, i32 0
  %.5.i = add i32 %or.cond7.i, %.0197.i
  %.6.i = add i32 %.5.i, %i.kg
  br label %.thread.i

.thread.i:                                        ; preds = %stbtt__ray_intersect_bezier.exit.i, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.9.i = phi i32 [ %.0197.i, %bb.u ], [ %.6.i, %stbtt__ray_intersect_bezier.exit.i ], [ %.0197.i, %bb.z ], [ %.4.i, %bb.af ], [ %.0197.i, %bb.ae ], [ %.0197.i, %bb.ad ], [ %.0197.i, %bb.ac ], [ %.0197.i, %bb.v ], [ %.0197.i, %bb.w ], [ %.0197.i, %bb.x ], [ %.1.i, %bb.y ]
  %.9.i.fr = freeze i32 %.9.i                     ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbtt__compute_crossings_x.exit, label %bb.u, !llvm.loop !898

stbtt__compute_crossings_x.exit:                  ; preds = %.thread.i
  %i.kh = icmp eq i32 %.9.i.fr, 0
  br label %.lr.ph530

.lr.ph530:                                        ; preds = %stbtt__compute_crossings_x.exit, %.thread
  %indvars.iv537 = phi i64 [ %indvars.iv.next538, %.thread ], [ 0, %stbtt__compute_crossings_x.exit ] ; 4 uses
  %.0435529 = phi float [ %.9, %.thread ], [ 9.999990e+05, %stbtt__compute_crossings_x.exit ] ; 10 uses
  %i.ki = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre, i64 %indvars.iv537 ; 5 uses
  %i.kj = load <2 x i16>, ptr %i.ki, align 2, !tbaa !106
  %i.kk = sitofp <2 x i16> %i.kj to <2 x float>
  %i.kl = fmul <2 x float> %i.bi, %i.kk           ; 10 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 12
  %i.kn = load i8, ptr %i.km, align 2, !tbaa !273
  switch i8 %i.kn, label %.thread [
    i8 2, label %bb.an
    i8 3, label %bb.aq
  ]

bb.an:                                            ; preds = %.lr.ph530
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv537
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !54 ; 2 uses
  %i.kq = fcmp une float %i.kp, 0.000000e+00
  br i1 %i.kq, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %bb.an
  %i.kr = getelementptr i8, ptr %i.ki, i64 -14
  %i.ks = load <2 x i16>, ptr %i.kr, align 2, !tbaa !106
  %i.kt = sitofp <2 x i16> %i.ks to <2 x float>   ; 2 uses
  %i.ku = extractelement <2 x float> %i.kt, i64 0
  %i.kv = fmul float %1, %i.ku
  %i.kw = extractelement <2 x float> %i.kt, i64 1
  %i.kx = fmul float %i.kw, %i.ao
  %i.ky = fmul float %.0435529, %.0435529
  %i.kz = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.la = insertelement <2 x float> %i.kz, float %i.kx, i64 1
  %i.lb = insertelement <2 x float> %i.kl, float %i.dk, i64 0
  %i.lc = fsub <2 x float> %i.la, %i.lb           ; 5 uses
  %i.ld = insertelement <2 x float> %i.kl, float %i.kv, i64 1
  %i.le = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lf = insertelement <2 x float> %i.le, float %i.du, i64 0
  %i.lg = fsub <2 x float> %i.ld, %i.lf           ; 5 uses
  %i.lh = fneg <2 x float> %i.lg
  %i.li = shufflevector <2 x float> %i.lc, <2 x float> %i.lh, <2 x i32> <i32 0, i32 2>
  %i.lj = fmul <2 x float> %i.lc, %i.li
  %i.lk = shufflevector <2 x float> %i.lg, <2 x float> %i.lc, <2 x i32> <i32 0, i32 2>
  %i.ll = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lg, <2 x float> %i.lk, <2 x float> %i.lj) ; 2 uses
  %i.lm = extractelement <2 x float> %i.ll, i64 0 ; 2 uses
  %i.ln = fcmp olt float %i.lm, %i.ky
  %sqrt520 = call float @llvm.sqrt.f32(float %i.lm)
  %.1436 = select i1 %i.ln, float %sqrt520, float %.0435529 ; 3 uses
  %i.lo = extractelement <2 x float> %i.ll, i64 1
  %i.lp = call float @llvm.fabs.f32(float %i.lo)
  %i.lq = fmul float %i.kp, %i.lp                 ; 2 uses
  %i.lr = fcmp olt float %i.lq, %.1436
  br i1 %i.lr, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %bb.ao
  %i.ls = shufflevector <2 x float> %i.lc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lt = fmul <2 x float> %i.ls, %i.lc
  %i.lu = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lu, <2 x float> %i.lg, <2 x float> %i.lt) ; 2 uses
  %i.lw = extractelement <2 x float> %i.lv, i64 0
  %i.lx = fneg float %i.lw
  %i.ly = extractelement <2 x float> %i.lv, i64 1
  %i.lz = fdiv float %i.lx, %i.ly                 ; 2 uses
  %i.ma = fcmp oge float %i.lz, 0.000000e+00
  %i.mb = fcmp ole float %i.lz, 1.000000e+00
  %or.cond = and i1 %i.ma, %i.mb
  %.2437 = select i1 %or.cond, float %i.lq, float %.1436
  br label %.thread

bb.aq:                                            ; preds = %.lr.ph530
  %i.mc = getelementptr i8, ptr %i.ki, i64 -14
  %i.md = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %i.me = load <2 x i16>, ptr %i.mc, align 2, !tbaa !106
  %i.mf = sitofp <2 x i16> %i.me to <2 x float>
  %i.mg = fmul <2 x float> %i.bi, %i.mf           ; 4 uses
  %i.mh = shufflevector <2 x float> %i.mg, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.mi = load <2 x i16>, ptr %i.md, align 2, !tbaa !106
  %i.mj = sitofp <2 x i16> %i.mi to <2 x float>
  %i.mk = fmul <2 x float> %i.bi, %i.mj           ; 6 uses
  %i.ml = fcmp olt <2 x float> %i.kl, %i.mk
  %i.mm = shufflevector <2 x i1> %i.ml, <2 x i1> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.mn = shufflevector <2 x float> %i.mk, <2 x float> %i.kl, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.mo = shufflevector <2 x float> %i.kl, <2 x float> %i.mk, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.mp = select <4 x i1> %i.mm, <4 x float> %i.mn, <4 x float> %i.mo ; 3 uses
  %i.mq = fcmp olt <4 x float> %i.mp, %i.mh
  %i.mr = shufflevector <4 x float> %i.mh, <4 x float> %i.mp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ms = shufflevector <2 x float> %i.mg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mt = shufflevector <4 x float> %i.mp, <4 x float> %i.ms, <4 x i32> <i32 0, i32 1, i32 5, i32 4>
  %i.mu = select <4 x i1> %i.mq, <4 x float> %i.mr, <4 x float> %i.mt ; 2 uses
  %i.mv = insertelement <4 x float> poison, float %.0435529, i64 0
  %i.mw = shufflevector <4 x float> %i.mv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.mx = fsub <4 x float> %i.mu, %i.mw           ; 2 uses
  %i.my = fadd <4 x float> %i.mu, %i.mw           ; 2 uses
  %i.mz = extractelement <4 x float> %i.mx, i64 3
  %i.na = fcmp ogt float %i.du, %i.mz
  %i.nb = extractelement <4 x float> %i.my, i64 1
  %i.nc = fcmp olt float %i.du, %i.nb
  %or.cond484 = select i1 %i.na, i1 %i.nc, i1 false
  %i.nd = extractelement <4 x float> %i.mx, i64 2
  %i.ne = fcmp ogt float %i.dk, %i.nd
  %or.cond486 = select i1 %or.cond484, i1 %i.ne, i1 false
  %i.nf = extractelement <4 x float> %i.my, i64 0
  %i.ng = fcmp olt float %i.dk, %i.nf
  %or.cond488 = select i1 %or.cond486, i1 %i.ng, i1 false
  br i1 %or.cond488, label %bb.ar, label %.thread

bb.ar:                                            ; preds = %bb.aq
  %i.nh = extractelement <2 x float> %i.kl, i64 0 ; 5 uses
  %i.ni = extractelement <2 x float> %i.mk, i64 0 ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.mk, %i.kl ; 2 uses
  %i.nj = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 6 uses
  %i.nk = extractelement <2 x float> %i.kl, i64 1 ; 6 uses
  %i.nl = extractelement <2 x float> %i.mk, i64 1 ; 5 uses
  %i.nm = fsub float %i.nl, %i.nk                 ; 7 uses
  %i.nn = call float @llvm.fmuladd.f32(float %i.ni, float -2.000000e+00, float %i.nh)
  %i.no = extractelement <2 x float> %i.mg, i64 0 ; 4 uses
  %i.np = fadd float %i.no, %i.nn                 ; 3 uses
  %i.nq = call float @llvm.fmuladd.f32(float %i.nl, float -2.000000e+00, float %i.nk)
  %i.nr = extractelement <2 x float> %i.mg, i64 1 ; 4 uses
  %i.ns = fadd float %i.nr, %i.nq                 ; 3 uses
  %i.nt = fsub float %i.nh, %i.du                 ; 6 uses
  %i.nu = fsub float %i.nk, %i.dk                 ; 6 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv537
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !54 ; 4 uses
  %i.nx = fcmp oeq float %i.nw, 0.000000e+00
  %i.ny = fmul float %i.nm, %i.ns
end_hunk_0
