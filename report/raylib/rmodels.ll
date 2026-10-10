Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 188
begin_hunk_0_@GenMeshTangents:bb.a
  %i.ag = load ptr, ptr %i.e, align 8             ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ab to i64
  br label %bb.m

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.102) #54
  br i1 %i.y, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.u) #54
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.z, label %bb.af, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.x) #54
  br label %bb.af

.preheader:                                       ; preds = %bb.p, %.preheader423
  %i.ah = load i32, ptr %0, align 8               ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph426, label %._crit_edge

bb.m:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  br i1 %.not352, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.idx = mul nuw nsw i64 %indvars.iv, 6
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx ; 3 uses
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = zext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = zext i16 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.aq = load i16, ptr %i.ap, align 2
  %i.ar = zext i16 %i.aq to i32
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.as = mul nuw nsw i64 %indvars.iv, 3          ; 3 uses
  %i.at = trunc nuw i64 %i.as to i32
  %i.au = trunc i64 %i.as to i32
  %i.av = add i32 %i.au, 1
  %i.aw = trunc i64 %i.as to i32
  %i.ax = add i32 %i.aw, 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0341 = phi i32 [ %i.ar, %bb.n ], [ %i.ax, %bb.o ] ; 3 uses
  %.0340 = phi i32 [ %i.ao, %bb.n ], [ %i.av, %bb.o ] ; 3 uses
  %.0339 = phi i32 [ %i.al, %bb.n ], [ %i.at, %bb.o ] ; 3 uses
  %i.ay = mul nuw nsw i32 %.0339, 3
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load float, ptr %i.bb, align 4
  %i.bd = mul nsw i32 %.0340, 3
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.be ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %i.bh = load float, ptr %i.bg, align 4
  %i.bi = mul nsw i32 %.0341, 3
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bj ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %i.bm = load float, ptr %i.bl, align 4
  %i.bn = shl nuw nsw i32 %.0339, 1
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bo ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bs = load float, ptr %i.br, align 4
  %i.bt = shl nuw nsw i32 %.0340, 1
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bu
  %i.bw = shl nuw nsw i32 %.0341, 1
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bx
  %i.bz = zext nneg i32 %.0339 to i64             ; 2 uses
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.bz ; 3 uses
  %.sroa.0164.0.copyload = load <2 x float>, ptr %i.ca, align 4
  %.sroa.2165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %.sroa.2165.0.copyload = load float, ptr %.sroa.2165.0..sroa_idx, align 4
  %i.cb = load <2 x float>, ptr %i.ba, align 4    ; 2 uses
  %i.cc = load <2 x float>, ptr %i.bf, align 4
  %i.cd = load <2 x float>, ptr %i.bk, align 4
  %i.ce = fsub <2 x float> %i.cc, %i.cb           ; 2 uses
  %i.cf = fsub <2 x float> %i.cd, %i.cb           ; 2 uses
  %i.cg = fneg <2 x float> %i.cf
  %i.ch = zext nneg i32 %.0340 to i64             ; 2 uses
  %i.ci = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.ch ; 3 uses
  %.sroa.2155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.cj = zext nneg i32 %.0341 to i64             ; 2 uses
  %i.ck = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.cj ; 3 uses
  %.sroa.2145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.bz ; 3 uses
  %.sroa.0134.0.copyload = load <2 x float>, ptr %i.cl, align 4
  %.sroa.2135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %.sroa.2135.0.copyload = load float, ptr %.sroa.2135.0..sroa_idx, align 4
  %i.cm = load <2 x float>, ptr %i.bv, align 4    ; 2 uses
  %i.cn = load <2 x float>, ptr %i.by, align 4    ; 2 uses
  %i.co = insertelement <2 x float> %i.cn, float %i.bm, i64 0
  %i.cp = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.cq = insertelement <2 x float> %i.cp, float %i.bs, i64 1 ; 2 uses
  %i.cr = fsub <2 x float> %i.co, %i.cq           ; 4 uses
  %i.cs = extractelement <2 x float> %i.cr, i64 0
  %i.ct = fneg float %i.cs
  %i.cu = insertelement <2 x float> %i.cm, float %i.bh, i64 0
  %i.cv = fsub <2 x float> %i.cu, %i.cq           ; 4 uses
  %i.cw = fneg <2 x float> %i.cv
  %i.cx = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cy = fmul <2 x float> %i.cx, %i.cg
  %i.cz = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.da = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.ce, <2 x float> %i.cy)
  %i.db = extractelement <2 x float> %i.cv, i64 1
  %i.dc = fmul float %i.db, %i.ct
  %i.dd = extractelement <2 x float> %i.cr, i64 1
  %i.de = extractelement <2 x float> %i.cv, i64 0
  %i.df = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.de, float %i.dc)
  %i.dg = shufflevector <2 x float> %i.cm, <2 x float> %i.cn, <2 x i32> <i32 0, i32 2>
  %i.dh = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fsub <2 x float> %i.dg, %i.di           ; 3 uses
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dl = fmul <2 x float> %i.dk, %i.cw
  %i.dm = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.cr, <2 x float> %i.dl) ; 2 uses
  %i.do = extractelement <2 x float> %i.dn, i64 1 ; 2 uses
  %i.dp = tail call float @llvm.fabs.f32(float %i.do)
  %i.dq = fcmp olt float %i.dp, f0x38D1B717
  %i.dr = fdiv float 1.000000e+00, %i.do
  %i.ds = select i1 %i.dq, float 0.000000e+00, float %i.dr ; 3 uses
  %i.dt = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dv = fmul <2 x float> %i.da, %i.du           ; 3 uses
  %i.dw = fmul float %i.df, %i.ds                 ; 3 uses
  %i.dx = fneg <2 x float> %i.ce
  %i.dy = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dz = fmul <2 x float> %i.dy, %i.dx
  %i.ea = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.cf, <2 x float> %i.dz)
  %i.eb = fmul <2 x float> %i.ea, %i.du           ; 3 uses
  %i.ec = extractelement <2 x float> %i.dn, i64 0
  %i.ed = fmul float %i.ec, %i.ds                 ; 3 uses
  %i.ee = fadd <2 x float> %.sroa.0164.0.copyload, %i.dv
  %i.ef = fadd float %.sroa.2165.0.copyload, %i.dw
  store <2 x float> %i.ee, ptr %i.ca, align 4
  store float %i.ef, ptr %.sroa.2165.0..sroa_idx, align 4
  %.sroa.0154.0.copyload = load <2 x float>, ptr %i.ci, align 4
  %.sroa.2155.0.copyload = load float, ptr %.sroa.2155.0..sroa_idx, align 4
  %i.eg = fadd <2 x float> %.sroa.0154.0.copyload, %i.dv
  %i.eh = fadd float %.sroa.2155.0.copyload, %i.dw
  store <2 x float> %i.eg, ptr %i.ci, align 4
  store float %i.eh, ptr %.sroa.2155.0..sroa_idx, align 4
  %.sroa.0144.0.copyload = load <2 x float>, ptr %i.ck, align 4
  %.sroa.2145.0.copyload = load float, ptr %.sroa.2145.0..sroa_idx, align 4
  %i.ei = fadd <2 x float> %i.dv, %.sroa.0144.0.copyload
  %i.ej = fadd float %i.dw, %.sroa.2145.0.copyload
  store <2 x float> %i.ei, ptr %i.ck, align 4
  store float %i.ej, ptr %.sroa.2145.0..sroa_idx, align 4
  %i.ek = fadd <2 x float> %i.eb, %.sroa.0134.0.copyload
  %i.el = fadd float %i.ed, %.sroa.2135.0.copyload
  store <2 x float> %i.ek, ptr %i.cl, align 4
  store float %i.el, ptr %.sroa.2135.0..sroa_idx, align 4
  %i.em = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.ch ; 3 uses
  %.sroa.0124.0.copyload = load <2 x float>, ptr %i.em, align 4
  %.sroa.2125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  %.sroa.2125.0.copyload = load float, ptr %.sroa.2125.0..sroa_idx, align 4
  %i.en = fadd <2 x float> %i.eb, %.sroa.0124.0.copyload
  %i.eo = fadd float %i.ed, %.sroa.2125.0.copyload
  store <2 x float> %i.en, ptr %i.em, align 4
  store float %i.eo, ptr %.sroa.2125.0..sroa_idx, align 4
  %i.ep = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.cj ; 3 uses
  %.sroa.0114.0.copyload = load <2 x float>, ptr %i.ep, align 4
  %.sroa.2115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %.sroa.2115.0.copyload = load float, ptr %.sroa.2115.0..sroa_idx, align 4
  %i.eq = fadd <2 x float> %i.eb, %.sroa.0114.0.copyload
  %i.er = fadd float %i.ed, %.sroa.2115.0.copyload
  store <2 x float> %i.eq, ptr %i.ep, align 4
  store float %i.er, ptr %.sroa.2115.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.m

._crit_edge:                                      ; preds = %bb.z, %.preheader
  %.lcssa = phi i32 [ %i.ah, %.preheader ], [ %i.hz, %bb.z ]
  tail call void @free(ptr noundef nonnull %i.u) #54
  tail call void @free(ptr noundef %i.x) #54
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8            ; 2 uses
  %.not = icmp eq ptr %i.et, null
  br i1 %.not, label %bb.ae, label %bb.aa

.lr.ph426:                                        ; preds = %.preheader, %bb.z
  %indvars.iv429 = phi i64 [ %indvars.iv.next430, %bb.z ], [ 0, %.preheader ] ; 6 uses
  %i.eu = load ptr, ptr %i.h, align 8
  %.idx443 = mul nuw nsw i64 %indvars.iv429, 12
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx443 ; 2 uses
  %i.ew = load <2 x float>, ptr %i.ev, align 4    ; 10 uses
  %1 = extractelement <2 x float> %i.ew, i64 0    ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ey = load float, ptr %i.ex, align 4          ; 6 uses
  %i.ez = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %indvars.iv429 ; 2 uses
  %.sroa.076.0.copyload = load <2 x float>, ptr %i.ez, align 4 ; 3 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4 ; 4 uses
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %.sroa.076.0.copyload, i64 0 ; 3 uses
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %.sroa.076.0.copyload, i64 1 ; 3 uses
  %i.fa = fmul float %.sroa.01.4.vec.extract.i, %.sroa.01.4.vec.extract.i
  %i.fb = tail call float @llvm.fmuladd.f32(float %.sroa.01.0.vec.extract.i, float %.sroa.01.0.vec.extract.i, float %i.fa)
  %i.fc = tail call float @llvm.fmuladd.f32(float %.sroa.11.0.copyload, float %.sroa.11.0.copyload, float %i.fb)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.fc)
  %i.fd = fcmp olt float %sqrt.i, f0x38D1B717
  br i1 %i.fd, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.lr.ph426
  %i.fe = tail call float @llvm.fabs.f32(float %i.ey)
  %i.ff = fcmp ogt float %i.fe, 7.070000e-01
  br i1 %i.ff, label %Vector3Normalize.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fg = extractelement <2 x float> %i.ew, i64 1 ; 3 uses
  %i.fh = fneg float %i.fg
  %.sroa.066.0.vec.insert = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fi = shufflevector <2 x float> %.sroa.066.0.vec.insert, <2 x float> %i.ew, <2 x i32> <i32 0, i32 2> ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.ew, %i.ew
  %i.fj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.fg, float %i.fg, float %i.fj) ; 2 uses
  %i.fl = fcmp une float %i.fk, 0.000000e+00
  br i1 %i.fl, label %bb.s, label %Vector3Normalize.exit

bb.s:                                             ; preds = %bb.r
  %sqrt.i387 = tail call float @llvm.sqrt.f32(float %i.fk)
  %i.fm = fdiv float 1.000000e+00, %sqrt.i387     ; 2 uses
  %.sroa.013.0.vec.insert.i = insertelement <2 x float> poison, float %i.fm, i64 0
  %2 = shufflevector <2 x float> %.sroa.013.0.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer
  %3 = fmul <2 x float> %2, %i.fi
  %i.fn = fmul float %i.fm, 0.000000e+00
  br label %Vector3Normalize.exit

Vector3Normalize.exit:                            ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.076.0 = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.q ], [ %3, %bb.s ], [ %i.fi, %bb.r ] ; 2 uses
  %.sroa.11.0 = phi float [ 0.000000e+00, %bb.q ], [ %i.fn, %bb.s ], [ 0.000000e+00, %bb.r ]
  %.sroa.076.0.vec.extract = extractelement <2 x float> %.sroa.076.0, i64 0
  %i.fo = load ptr, ptr %i.k, align 8
  %i.fp = shl nuw nsw i64 %indvars.iv429, 2       ; 4 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.fp
  store float %.sroa.076.0.vec.extract, ptr %i.fq, align 4
  %.sroa.076.4.vec.extract = extractelement <2 x float> %.sroa.076.0, i64 1
  %i.fr = load ptr, ptr %i.k, align 8
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fp
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  store float %.sroa.076.4.vec.extract, ptr %i.ft, align 4
  %i.fu = load ptr, ptr %i.k, align 8
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.fp
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store float %.sroa.11.0, ptr %i.fw, align 4
  br label %bb.z

bb.t:                                             ; preds = %.lr.ph426
  %i.fx = extractelement <2 x float> %i.ew, i64 1 ; 6 uses
  %i.fy = fmul float %i.fx, %.sroa.01.4.vec.extract.i
  %i.fz = tail call float @llvm.fmuladd.f32(float %1, float %.sroa.01.0.vec.extract.i, float %i.fy)
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.ey, float %.sroa.11.0.copyload, float %i.fz) ; 2 uses
  %i.gb = fmul float %i.ey, %i.ga
  %i.gc = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ge = fmul <2 x float> %i.ew, %i.gd
  %i.gf = fsub <2 x float> %.sroa.076.0.copyload, %i.ge ; 3 uses
  %i.gg = fsub float %.sroa.11.0.copyload, %i.gb  ; 4 uses
  %4 = extractelement <2 x float> %i.gf, i64 1    ; 3 uses
  %5 = fmul float %4, %4
  %i.gh = extractelement <2 x float> %i.gf, i64 0 ; 3 uses
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.gh, float %i.gh, float %5)
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.gg, float %i.gi) ; 2 uses
  %sqrt.i400 = tail call float @llvm.sqrt.f32(float %i.gj) ; 2 uses
  %i.gk = fcmp olt float %sqrt.i400, f0x38D1B717
  br i1 %i.gk, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.gl = tail call float @llvm.fabs.f32(float %i.ey)
  %i.gm = fcmp ogt float %i.gl, 7.070000e-01
  br i1 %i.gm, label %Vector3Normalize.exit408, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gn = fneg float %i.fx
  %.sroa.025.0.vec.insert = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.go = shufflevector <2 x float> %.sroa.025.0.vec.insert, <2 x float> %i.ew, <2 x i32> <i32 0, i32 2> ; 2 uses
  %foldExtExtBinop455 = fmul <2 x float> %i.ew, %i.ew
  %i.gp = extractelement <2 x float> %foldExtExtBinop455, i64 0
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.fx, float %i.gp) ; 2 uses
  %i.gr = fcmp une float %i.gq, 0.000000e+00
  br i1 %i.gr, label %bb.w, label %Vector3Normalize.exit408

bb.w:                                             ; preds = %bb.v
  %sqrt.i405 = tail call float @llvm.sqrt.f32(float %i.gq)
  %i.gs = fdiv float 1.000000e+00, %sqrt.i405     ; 2 uses
  %.sroa.013.0.vec.insert.i406 = insertelement <2 x float> poison, float %i.gs, i64 0
  %6 = shufflevector <2 x float> %.sroa.013.0.vec.insert.i406, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = fmul <2 x float> %6, %i.go
  %i.gt = fmul float %i.gs, 0.000000e+00
  br label %Vector3Normalize.exit408

bb.x:                                             ; preds = %bb.t
  %i.gu = fcmp une float %i.gj, 0.000000e+00
  br i1 %i.gu, label %bb.y, label %Vector3Normalize.exit408

bb.y:                                             ; preds = %bb.x
  %i.gv = fdiv float 1.000000e+00, %sqrt.i400     ; 3 uses
  %8 = fmul float %i.gh, %i.gv
  %i.gw = insertelement <2 x float> poison, float %8, i64 0
  %9 = fmul float %4, %i.gv
  %.sroa.013.4.vec.insert.i415 = insertelement <2 x float> %i.gw, float %9, i64 1
  %i.gx = fmul float %i.gg, %i.gv
  br label %Vector3Normalize.exit408

Vector3Normalize.exit408:                         ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.sroa.054.0 = phi <2 x float> [ %i.go, %bb.v ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.u ], [ %7, %bb.w ], [ %.sroa.013.4.vec.insert.i415, %bb.y ], [ %i.gf, %bb.x ] ; 2 uses
  %.sroa.12.0 = phi float [ 0.000000e+00, %bb.v ], [ 0.000000e+00, %bb.u ], [ %i.gt, %bb.w ], [ %i.gx, %bb.y ], [ %i.gg, %bb.x ] ; 3 uses
  %.sroa.054.0.vec.extract = extractelement <2 x float> %.sroa.054.0, i64 0 ; 3 uses
  %i.gy = load ptr, ptr %i.k, align 8
  %i.gz = shl nuw nsw i64 %indvars.iv429, 2       ; 4 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.gz
  store float %.sroa.054.0.vec.extract, ptr %i.ha, align 4
  %.sroa.054.4.vec.extract = extractelement <2 x float> %.sroa.054.0, i64 1 ; 3 uses
  %i.hb = load ptr, ptr %i.k, align 8
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.gz
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  store float %.sroa.054.4.vec.extract, ptr %i.hd, align 4
  %i.he = load ptr, ptr %i.k, align 8
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.gz
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store float %.sroa.12.0, ptr %i.hg, align 4
  %i.hh = fneg float %.sroa.054.4.vec.extract
  %i.hi = fmul float %i.ey, %i.hh
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.fx, float %.sroa.12.0, float %i.hi)
  %i.hk = fneg float %.sroa.12.0
  %i.hl = fmul float %1, %i.hk
  %i.hm = tail call float @llvm.fmuladd.f32(float %i.ey, float %.sroa.054.0.vec.extract, float %i.hl)
  %i.hn = fneg float %.sroa.054.0.vec.extract
  %i.ho = fmul float %i.fx, %i.hn
  %i.hp = tail call float @llvm.fmuladd.f32(float %1, float %.sroa.054.4.vec.extract, float %i.ho)
  %i.hq = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv429 ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.hq, align 4 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.01.0.vec.extract.i421 = extractelement <2 x float> %.sroa.0.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i422 = extractelement <2 x float> %.sroa.0.0.copyload, i64 1
  %i.hr = fmul float %i.hm, %.sroa.01.4.vec.extract.i422
  %i.hs = tail call float @llvm.fmuladd.f32(float %i.hj, float %.sroa.01.0.vec.extract.i421, float %i.hr)
  %i.ht = tail call float @llvm.fmuladd.f32(float %i.hp, float %.sroa.2.0.copyload, float %i.hs)
  %i.hu = fcmp olt float %i.ht, 0.000000e+00
  %i.hv = select i1 %i.hu, float -1.000000e+00, float 1.000000e+00
  br label %bb.z

bb.z:                                             ; preds = %Vector3Normalize.exit408, %Vector3Normalize.exit
  %.sink450 = phi i64 [ %i.gz, %Vector3Normalize.exit408 ], [ %i.fp, %Vector3Normalize.exit ]
  %.sink = phi float [ %i.hv, %Vector3Normalize.exit408 ], [ 1.000000e+00, %Vector3Normalize.exit ]
  %i.hw = load ptr, ptr %i.k, align 8
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %.sink450
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  store float %.sink, ptr %i.hy, align 4
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 1 ; 2 uses
  %i.hz = load i32, ptr %0, align 8               ; 2 uses
  %i.ia = sext i32 %i.hz to i64
  %i.ib = icmp slt i64 %indvars.iv.next430, %i.ia
  br i1 %i.ib, label %.lr.ph426, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.ic = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.id = load i32, ptr %i.ic, align 4            ; 2 uses
  %.not351 = icmp eq i32 %i.id, 0
  %i.ie = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.if = shl i32 %.lcssa, 4                      ; 2 uses
  br i1 %.not351, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @rlUpdateVertexBuffer(i32 noundef %i.id, ptr noundef %i.ie, i32 noundef %i.if, i32 noundef 0) #54
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.ig = tail call i32 @rlLoadVertexBuffer(ptr noundef %i.ie, i32 noundef %i.if, i1 noundef zeroext false) #54
  %i.ih = load ptr, ptr %i.es, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store i32 %i.ig, ptr %i.ii, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ik = load i32, ptr %i.ij, align 8
  %i.il = tail call zeroext i1 @rlEnableVertexArray(i32 noundef %i.ik) #54 ; 0 uses
  tail call void @rlSetVertexAttribute(i32 noundef 4, i32 noundef 4, i32 noundef 5126, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) #54
  tail call void @rlEnableVertexAttribute(i32 noundef 4) #54
  tail call void @rlDisableVertexArray() #54
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.103) #54
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.l, %bb.k, %bb.e
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #19

; Function Attrs: nounwind uwtable
define void @DrawModel(ptr nofree noundef readonly byval(%struct.Model) align 8 captures(none) %0, <2 x float> %1, float %2, float noundef %3, i32 %4) local_unnamed_addr #33 {
bb.a:
  %.sroa.06.0.vec.insert = insertelement <2 x float> poison, float %3, i64 0
  %.sroa.06.4.vec.insert = shufflevector <2 x float> %.sroa.06.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer
  tail call void @DrawModelEx(ptr noundef nonnull byval(%struct.Model) align 8 %0, <2 x float> %1, float %2, <2 x float> <float 0.000000e+00, float 1.000000e+00>, float 0.000000e+00, float noundef 0.000000e+00, <2 x float> %.sroa.06.4.vec.insert, float %3, i32 %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawModelEx(ptr nofree noundef byval(%struct.Model) align 8 captures(none) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, float noundef %5, <2 x float> %6, float %7, i32 %8) local_unnamed_addr #33 {
bb.a:
  %9 = alloca %struct.Material, align 8           ; 7 uses
  %.sroa.219.0.extract.shift = lshr i32 %8, 8
  %.sroa.3.0.extract.shift = lshr i32 %8, 16
  %.sroa.4.0.extract.shift = lshr i32 %8, 24
  %i.a = fmul float %5, f0x3C8EFA35               ; 2 uses
  %.sroa.061.0.vec.extract.i = extractelement <2 x float> %3, i64 0 ; 2 uses
  %.sroa.061.4.vec.extract.i = extractelement <2 x float> %3, i64 1 ; 3 uses
  %i.b = fmul float %.sroa.061.4.vec.extract.i, %.sroa.061.4.vec.extract.i ; 2 uses
  %i.c = tail call float @llvm.fmuladd.f32(float %.sroa.061.0.vec.extract.i, float %.sroa.061.0.vec.extract.i, float %i.b)
  %i.d = tail call float @llvm.fmuladd.f32(float %4, float %4, float %i.c) ; 3 uses
  %i.e = fcmp une float %i.d, 1.000000e+00
  %i.f = fcmp une float %i.d, 0.000000e+00
  %or.cond.i = and i1 %i.e, %i.f
  br i1 %or.cond.i, label %bb.b, label %MatrixRotate.exit

bb.b:                                             ; preds = %bb.a
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.d)
  %i.g = fdiv float 1.000000e+00, %sqrt.i         ; 2 uses
  %i.h = insertelement <2 x float> poison, float %i.g, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fmul <2 x float> %3, %i.i                ; 2 uses
  %i.k = extractelement <2 x float> %i.j, i64 1   ; 3 uses
  %i.l = fmul float %4, %i.g
  %.pre.i = fmul float %i.k, %i.k
  br label %MatrixRotate.exit

MatrixRotate.exit:                                ; preds = %bb.a, %bb.b
  %.pre-phi.i = phi float [ %.pre.i, %bb.b ], [ %i.b, %bb.a ]
  %.063.i = phi float [ %i.l, %bb.b ], [ %4, %bb.a ] ; 4 uses
  %.062.i = phi float [ %i.k, %bb.b ], [ %.sroa.061.4.vec.extract.i, %bb.a ] ; 2 uses
  %i.m = phi <2 x float> [ %i.j, %bb.b ], [ %3, %bb.a ] ; 4 uses
  %i.n = tail call float @sinf(float noundef %i.a) #54, !noalias !212 ; 2 uses
  %i.o = tail call float @cosf(float noundef %i.a) #54, !noalias !212 ; 4 uses
  %i.p = fsub float 1.000000e+00, %i.o            ; 5 uses
  %i.q = extractelement <2 x float> %i.m, i64 0   ; 2 uses
  %i.r = insertelement <2 x float> poison, float %.063.i, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %i.s, %i.m              ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.m, %i.m
  %i.u = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.v = fmul float %.062.i, %i.q
  %i.w = insertelement <2 x float> poison, float %.062.i, i64 0
  %i.x = insertelement <2 x float> %i.w, float %.063.i, i64 1
  %i.y = insertelement <2 x float> poison, float %i.n, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x float> %i.x, %i.z             ; 3 uses
  %i.ab = fneg <2 x float> %i.aa
  %i.ac = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.ad = insertelement <4 x float> %i.ac, float %i.u, i64 0
  %i.ae = insertelement <4 x float> %i.ad, float %i.v, i64 1
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ag = insertelement <4 x float> poison, float %i.p, i64 0
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ai = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aj = insertelement <4 x float> %i.ai, float %i.o, i64 0
  %i.ak = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.al = shufflevector <4 x float> %i.aj, <4 x float> %i.ak, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.am = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.ah, <4 x float> %i.al) ; 4 uses
  %i.an = tail call float @llvm.fmuladd.f32(float %.pre-phi.i, float %i.p, float %i.o)
  %i.ao = fmul float %i.q, %i.n                   ; 2 uses
  %i.ap = extractelement <2 x float> %i.t, i64 1
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.p, float %i.ao)
  %i.ar = fneg float %i.ao
  %i.as = fmul float %.063.i, %.063.i
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.p, float %i.o) ; 2 uses
  %.sroa.030.0.vec.extract = extractelement <2 x float> %1, i64 0
  %.sroa.7161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.11165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.15169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.au = shufflevector <2 x float> %6, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1> ; 3 uses
  %i.av = shufflevector <3 x float> <float 0.000000e+00, float 0.000000e+00, float poison>, <3 x float> %i.au, <3 x i32> <i32 0, i32 1, i32 5> ; 3 uses
  %i.aw = shufflevector <4 x float> %i.am, <4 x float> poison, <3 x i32> <i32 3, i32 3, i32 3>
  %i.ax = fmul <3 x float> %i.av, %i.aw
  %i.ay = insertelement <3 x float> poison, float %i.an, i64 0
  %i.az = shufflevector <3 x float> %i.ay, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ba = fmul <3 x float> %i.av, %i.az
  %i.bb = insertelement <3 x float> poison, float %i.aq, i64 0
  %i.bc = shufflevector <3 x float> %i.bb, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bd = fmul <3 x float> %i.av, %i.bc
  %i.be = shufflevector <3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, <3 x float> %i.au, <3 x i32> <i32 0, i32 4, i32 2> ; 3 uses
  %i.bf = shufflevector <4 x float> %i.am, <4 x float> poison, <3 x i32> zeroinitializer
  %i.bg = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.be, <3 x float> %i.bf, <3 x float> %i.ax) ; 2 uses
  %i.bh = insertelement <3 x float> <float poison, float 0.000000e+00, float 0.000000e+00>, float %7, i64 0 ; 3 uses
  %i.bi = shufflevector <4 x float> %i.am, <4 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.bj = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.be, <3 x float> %i.bi, <3 x float> %i.ba) ; 2 uses
  %i.bk = shufflevector <4 x float> %i.am, <4 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.bl = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.be, <3 x float> %i.bk, <3 x float> %i.bd) ; 2 uses
  %i.bm = insertelement <3 x float> poison, float %i.at, i64 0
  %i.bn = shufflevector <3 x float> %i.bm, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bo = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bh, <3 x float> %i.bn, <3 x float> %i.bl)
  %i.bp = fadd <3 x float> %i.bo, zeroinitializer ; 4 uses
  %i.bq = insertelement <3 x float> %i.au, float %7, i64 0
  %i.br = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bq, <3 x float> zeroinitializer, <3 x float> <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>)
  %i.bs = fadd <3 x float> %i.br, zeroinitializer ; 4 uses
  %i.bt = extractelement <3 x float> %i.bl, i64 0
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.at, float 0.000000e+00, float %i.bt)
  %i.bv = fadd float %i.bu, 0.000000e+00          ; 4 uses
  %i.bw = shufflevector <2 x float> %1, <2 x float> poison, <3 x i32> zeroinitializer
  %i.bx = insertelement <2 x float> poison, float %i.p, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = insertelement <2 x float> %i.aa, float %i.ar, i64 1
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.by, <2 x float> %i.bz) ; 3 uses
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <3 x i32> zeroinitializer
  %i.cc = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bh, <3 x float> %i.cb, <3 x float> %i.bg)
  %i.cd = fadd <3 x float> %i.cc, zeroinitializer ; 3 uses
  %i.ce = shufflevector <2 x float> %i.ca, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.cf = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bh, <3 x float> %i.ce, <3 x float> %i.bj)
  %i.cg = fadd <3 x float> %i.cf, zeroinitializer ; 2 uses
  %i.ch = shufflevector <3 x float> %i.bg, <3 x float> %i.bj, <2 x i32> <i32 0, i32 3>
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> zeroinitializer, <2 x float> %i.ch)
  %i.cj = fadd <2 x float> %i.ci, zeroinitializer ; 5 uses
  %i.ck = fmul <3 x float> %i.cg, zeroinitializer ; 2 uses
  %i.cl = fadd <3 x float> %i.cd, %i.ck
  %i.cm = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bp, <3 x float> zeroinitializer, <3 x float> %i.cl)
  %i.cn = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bs, <3 x float> %i.bw, <3 x float> %i.cm) ; 3 uses
  %i.co = fmul <2 x float> %i.cj, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.cp = extractelement <2 x float> %i.cj, i64 0
  %shift = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop199 = fadd <2 x float> %i.cj, %shift
  %i.cq = extractelement <2 x float> %foldExtExtBinop199, i64 0
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.bv, float 0.000000e+00, float %i.cq)
  %i.cs = fadd float %.sroa.030.0.vec.extract, %i.cr
  %i.ct = extractelement <2 x float> %i.cj, i64 1
end_hunk_0
