Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanosvg/original/nanosvgrast?download=true
inline.NumInlined: 431
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@nsvgParse:bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i45, i64 4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !53 ; 2 uses
  %i.bo = fcmp ogt float %i.bn, 0.000000e+00
  br i1 %i.bo, label %.sink.split261.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 40004
  %i.bq = extractelement <4 x float> %i.az, i64 1 ; 2 uses
  store float %i.bq, ptr %i.bp, align 4, !tbaa !54
  %i.br = extractelement <4 x float> %i.az, i64 3
  %i.bs = fsub float %i.br, %i.bq
  br label %.sink.split261.i

.sink.split261.i:                                 ; preds = %bb.o, %bb.n
  %.sink263.i = phi float [ %i.bs, %bb.o ], [ %i.bn, %bb.n ] ; 2 uses
  store float %.sink263.i, ptr %i.bj, align 4, !tbaa !52
  br label %bb.p

bb.p:                                             ; preds = %.sink.split261.i, %bb.m
  %i.bt = phi float [ %i.bk, %bb.m ], [ %.sink263.i, %.sink.split261.i ] ; 5 uses
  %i.bu = load float, ptr %.val.i45, align 8, !tbaa !50 ; 2 uses
  %i.bv = fcmp oeq float %i.bu, 0.000000e+00
  br i1 %i.bv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store float %i.bi, ptr %.val.i45, align 8, !tbaa !50
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bw = phi float [ %i.bi, %bb.q ], [ %i.bu, %bb.p ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i45, i64 4 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !53 ; 2 uses
  %i.bz = fcmp oeq float %i.by, 0.000000e+00
  br i1 %i.bz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store float %i.bt, ptr %i.bx, align 4, !tbaa !53
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ca = phi float [ %i.bt, %bb.s ], [ %i.by, %bb.r ] ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 40000
  %i.cc = load <2 x float>, ptr %i.cb, align 8, !tbaa !31 ; 5 uses
  %i.cd = fneg <2 x float> %i.cc
  %i.ce = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.cf = insertelement <2 x float> %i.ce, float %i.bt, i64 1 ; 2 uses
  %i.cg = fcmp ogt <2 x float> %i.cf, zeroinitializer
  %i.ch = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %i.ca, i64 1
  %i.cj = fdiv <2 x float> %i.ci, %i.cf
  %i.ck = select <2 x i1> %i.cg, <2 x float> %i.cj, <2 x float> zeroinitializer ; 5 uses
  %i.cl = load i8, ptr %1, align 1, !tbaa !17
  switch i8 %i.cl, label %nsvg__convertToPixels.exit.i [
    i8 112, label %bb.u
    i8 109, label %bb.v
    i8 99, label %bb.w
    i8 105, label %bb.x
    i8 37, label %nsvg__parseUnits.exit.thread177.i
    i8 101, label %bb.y
  ]

bb.u:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !17
  switch i8 %i.cn, label %nsvg__convertToPixels.exit.i [
    i8 99, label %nsvg__parseUnits.exit.thread189.i
    i8 116, label %nsvg__parseUnits.exit.thread183.i
  ]

bb.v:                                             ; preds = %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !17
  %i.cq = icmp eq i8 %i.cp, 109
  br i1 %i.cq, label %nsvg__parseUnits.exit.thread195.i, label %nsvg__convertToPixels.exit.i

bb.w:                                             ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !17
  %i.ct = icmp eq i8 %i.cs, 109
  br i1 %i.ct, label %nsvg__parseUnits.exit.thread201.i, label %nsvg__convertToPixels.exit.i

bb.x:                                             ; preds = %bb.t
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !17
  %i.cw = icmp eq i8 %i.cv, 110
  br i1 %i.cw, label %nsvg__parseUnits.exit.thread207.i, label %nsvg__convertToPixels.exit.i

bb.y:                                             ; preds = %bb.t
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !17
  switch i8 %i.cy, label %nsvg__convertToPixels.exit.i [
    i8 109, label %nsvg__parseUnits.exit.thread213.i
    i8 120, label %bb.z
  ]

nsvg__parseUnits.exit.thread213.i:                ; preds = %bb.y
  %i.cz = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 39936
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !55
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [312 x i8], ptr %calloc33.i, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 292
  %i.de = load float, ptr %i.dd, align 4, !tbaa !56
  br label %nsvg__convertToPixels.exit.i

nsvg__parseUnits.exit.thread183.i:                ; preds = %bb.u
  %i.df = load float, ptr %i.r, align 4, !tbaa !40
  %i.dg = fmul float %i.df, f0x3C638E39
  br label %nsvg__convertToPixels.exit.i

nsvg__parseUnits.exit.thread189.i:                ; preds = %bb.u
  %i.dh = load float, ptr %i.r, align 4, !tbaa !40
  %i.di = fmul float %i.dh, f0x3E2AAAAB
  br label %nsvg__convertToPixels.exit.i

nsvg__parseUnits.exit.thread195.i:                ; preds = %bb.v
  %i.dj = load float, ptr %i.r, align 4, !tbaa !40
  %i.dk = fmul float %i.dj, f0x3D214285
  br label %nsvg__convertToPixels.exit.i

nsvg__parseUnits.exit.thread201.i:                ; preds = %bb.w
  %i.dl = load float, ptr %i.r, align 4, !tbaa !40
  %i.dm = fmul float %i.dl, f0x3EC99326
  br label %nsvg__convertToPixels.exit.i

nsvg__parseUnits.exit.thread207.i:                ; preds = %bb.x
  %i.dn = load float, ptr %i.r, align 4, !tbaa !40
  br label %nsvg__convertToPixels.exit.i

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 39936
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !55
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [312 x i8], ptr %calloc33.i, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 292
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !56
  %i.du = fmul float %i.dt, 5.200000e-01
  br label %nsvg__convertToPixels.exit.i

nsvg__parseUnits.exit.thread177.i:                ; preds = %bb.t
  br label %nsvg__convertToPixels.exit.i

nsvg__convertToPixels.exit.i:                     ; preds = %nsvg__parseUnits.exit.thread177.i, %bb.z, %nsvg__parseUnits.exit.thread207.i, %nsvg__parseUnits.exit.thread201.i, %nsvg__parseUnits.exit.thread195.i, %nsvg__parseUnits.exit.thread189.i, %nsvg__parseUnits.exit.thread183.i, %nsvg__parseUnits.exit.thread213.i, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %.0.i160.i = phi float [ %i.de, %nsvg__parseUnits.exit.thread213.i ], [ f0x3C23D70A, %nsvg__parseUnits.exit.thread177.i ], [ %i.du, %bb.z ], [ %i.dg, %nsvg__parseUnits.exit.thread183.i ], [ %i.di, %nsvg__parseUnits.exit.thread189.i ], [ %i.dk, %nsvg__parseUnits.exit.thread195.i ], [ %i.dm, %nsvg__parseUnits.exit.thread201.i ], [ %i.dn, %nsvg__parseUnits.exit.thread207.i ], [ 1.000000e+00, %bb.y ], [ 1.000000e+00, %bb.t ], [ 1.000000e+00, %bb.u ], [ 1.000000e+00, %bb.v ], [ 1.000000e+00, %bb.w ], [ 1.000000e+00, %bb.x ]
  %i.dv = fdiv float 1.000000e+00, %.0.i160.i
  %i.dw = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 40024
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !57
  switch i32 %i.dx, label %bb.ak [
    i32 1, label %bb.aa
    i32 2, label %bb.af
  ]

bb.aa:                                            ; preds = %nsvg__convertToPixels.exit.i
  %i.dy = extractelement <2 x float> %i.ck, i64 0 ; 2 uses
  %i.dz = extractelement <2 x float> %i.ck, i64 1 ; 2 uses
  %i.ea = fcmp olt float %i.dy, %i.dz
  %i.eb = select i1 %i.ea, float %i.dy, float %i.dz ; 5 uses
  %i.ec = fmul float %i.bi, %i.eb                 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 40016
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !58
  switch i32 %i.ee, label %bb.ac [
    i32 0, label %nsvg__viewAlign.exit.i
    i32 2, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ef = fsub float %i.bw, %i.ec
  br label %nsvg__viewAlign.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.eg = fsub float %i.bw, %i.ec
  %i.eh = fmul float %i.eg, 5.000000e-01
  br label %nsvg__viewAlign.exit.i

nsvg__viewAlign.exit.i:                           ; preds = %bb.ac, %bb.ab, %bb.aa
  %.0.i161.i = phi float [ %i.eh, %bb.ac ], [ %i.ef, %bb.ab ], [ 0.000000e+00, %bb.aa ]
  %i.ei = fdiv float %.0.i161.i, %i.eb
  %i.ej = extractelement <2 x float> %i.cc, i64 0
  %i.ek = fsub float %i.ei, %i.ej
  %i.el = fmul float %i.bt, %i.eb                 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 40020
  %i.en = load i32, ptr %i.em, align 4, !tbaa !59
  switch i32 %i.en, label %bb.ae [
    i32 0, label %nsvg__viewAlign.exit163.i
    i32 2, label %bb.ad
  ]

bb.ad:                                            ; preds = %nsvg__viewAlign.exit.i
  %i.eo = fsub float %i.ca, %i.el
  br label %nsvg__viewAlign.exit163.i

bb.ae:                                            ; preds = %nsvg__viewAlign.exit.i
  %i.ep = fsub float %i.ca, %i.el
  %i.eq = fmul float %i.ep, 5.000000e-01
  br label %nsvg__viewAlign.exit163.i

nsvg__viewAlign.exit163.i:                        ; preds = %bb.ae, %bb.ad, %nsvg__viewAlign.exit.i
  %.0.i162.i = phi float [ %i.eq, %bb.ae ], [ %i.eo, %bb.ad ], [ 0.000000e+00, %nsvg__viewAlign.exit.i ]
  %i.er = fdiv float %.0.i162.i, %i.eb
  %i.es = extractelement <2 x float> %i.cc, i64 1
  %i.et = fsub float %i.er, %i.es
  %i.eu = insertelement <2 x float> poison, float %i.eb, i64 0
  %3 = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = insertelement <2 x float> poison, float %i.ek, i64 0
  %4 = insertelement <2 x float> %i.ev, float %i.et, i64 1
  br label %bb.ak

bb.af:                                            ; preds = %nsvg__convertToPixels.exit.i
  %i.ew = extractelement <2 x float> %i.ck, i64 0 ; 2 uses
  %i.ex = extractelement <2 x float> %i.ck, i64 1 ; 2 uses
  %i.ey = fcmp ogt float %i.ew, %i.ex
  %i.ez = select i1 %i.ey, float %i.ew, float %i.ex ; 5 uses
  %i.fa = fmul float %i.bi, %i.ez                 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 40016
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !58
  switch i32 %i.fc, label %bb.ah [
    i32 0, label %nsvg__viewAlign.exit165.i
    i32 2, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %i.fd = fsub float %i.bw, %i.fa
  br label %nsvg__viewAlign.exit165.i

bb.ah:                                            ; preds = %bb.af
  %i.fe = fsub float %i.bw, %i.fa
  %i.ff = fmul float %i.fe, 5.000000e-01
  br label %nsvg__viewAlign.exit165.i

nsvg__viewAlign.exit165.i:                        ; preds = %bb.ah, %bb.ag, %bb.af
  %.0.i164.i = phi float [ %i.ff, %bb.ah ], [ %i.fd, %bb.ag ], [ 0.000000e+00, %bb.af ]
  %i.fg = fdiv float %.0.i164.i, %i.ez
  %i.fh = extractelement <2 x float> %i.cc, i64 0
  %i.fi = fsub float %i.fg, %i.fh
  %i.fj = fmul float %i.bt, %i.ez                 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 40020
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !59
  switch i32 %i.fl, label %bb.aj [
    i32 0, label %nsvg__viewAlign.exit167.i
    i32 2, label %bb.ai
  ]

bb.ai:                                            ; preds = %nsvg__viewAlign.exit165.i
  %i.fm = fsub float %i.ca, %i.fj
  br label %nsvg__viewAlign.exit167.i

bb.aj:                                            ; preds = %nsvg__viewAlign.exit165.i
  %i.fn = fsub float %i.ca, %i.fj
  %i.fo = fmul float %i.fn, 5.000000e-01
  br label %nsvg__viewAlign.exit167.i

nsvg__viewAlign.exit167.i:                        ; preds = %bb.aj, %bb.ai, %nsvg__viewAlign.exit165.i
  %.0.i166.i = phi float [ %i.fo, %bb.aj ], [ %i.fm, %bb.ai ], [ 0.000000e+00, %nsvg__viewAlign.exit165.i ]
  %i.fp = fdiv float %.0.i166.i, %i.ez
  %i.fq = extractelement <2 x float> %i.cc, i64 1
  %i.fr = fsub float %i.fp, %i.fq
  %i.fs = insertelement <2 x float> poison, float %i.ez, i64 0
  %5 = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ft = insertelement <2 x float> poison, float %i.fi, i64 0
  %6 = insertelement <2 x float> %i.ft, float %i.fr, i64 1
  br label %bb.ak

bb.ak:                                            ; preds = %nsvg__viewAlign.exit167.i, %nsvg__viewAlign.exit163.i, %nsvg__convertToPixels.exit.i
  %i.fu = phi <2 x float> [ %3, %nsvg__viewAlign.exit163.i ], [ %5, %nsvg__viewAlign.exit167.i ], [ %i.ck, %nsvg__convertToPixels.exit.i ]
  %i.fv = phi <2 x float> [ %4, %nsvg__viewAlign.exit163.i ], [ %6, %nsvg__viewAlign.exit167.i ], [ %i.cd, %nsvg__convertToPixels.exit.i ] ; 6 uses
  %i.fw = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = fmul <2 x float> %i.fx, %i.fu           ; 8 uses
  %shift73 = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop74 = fadd <2 x float> %i.fy, %shift73
  %i.fz = extractelement <2 x float> %foldExtExtBinop74, i64 0
  %i.ga = fmul float %i.fz, 5.000000e-01          ; 3 uses
  br i1 %i.ay, label %nsvg__scaleToViewbox.exit, label %.lr.ph238.i

.lr.ph238.i:                                      ; preds = %bb.ak
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.gd = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = extractelement <2 x float> %i.fv, i64 0    ; 2 uses
  %8 = extractelement <2 x float> %i.fv, i64 1    ; 2 uses
  %i.gf = insertelement <2 x float> %i.fy, float 0.000000e+00, i64 1 ; 2 uses
  %i.gg = shufflevector <2 x float> %i.fy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 poison, i32 7> ; 2 uses
  %i.gi = insertelement <2 x float> %i.fy, float 0.000000e+00, i64 0 ; 2 uses
  %i.gj = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float poison>, <4 x float> %i.gg, <4 x i32> <i32 0, i32 5, i32 2, i32 poison> ; 2 uses
  %i.gk = shufflevector <2 x float> %i.fv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %broadcast.splat58 = shufflevector <2 x float> %i.fv, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat60 = shufflevector <2 x float> %i.fy, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat62 = shufflevector <2 x float> %i.fv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat64 = shufflevector <2 x float> %i.fy, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gl = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.gm = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.gn = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.go = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ga, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge233.i, %.lr.ph238.i
  %.0236.i = phi ptr [ %.val.val.i44, %.lr.ph238.i ], [ %.0.i15, %._crit_edge233.i ] ; 10 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.0236.i, i64 152 ; 2 uses
  %i.gq = load <4 x float>, ptr %i.gp, align 8, !tbaa !31
  %i.gr = fadd <4 x float> %i.gk, %i.gq
  %i.gs = fmul <4 x float> %i.gg, %i.gr
  store <4 x float> %i.gs, ptr %i.gp, align 8, !tbaa !31
  %i.gt = getelementptr inbounds nuw i8, ptr %.0236.i, i64 320
  %.0148224.i = load ptr, ptr %i.gt, align 8, !tbaa !60 ; 2 uses
  %.not156225.i = icmp eq ptr %.0148224.i, null
  br i1 %.not156225.i, label %._crit_edge229.i, label %.lr.ph228.i

.lr.ph228.i:                                      ; preds = %bb.al, %._crit_edge.i
  %.0148226.i = phi ptr [ %.0148.i, %._crit_edge.i ], [ %.0148224.i, %bb.al ] ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.0148226.i, i64 16 ; 2 uses
  %i.gv = load <4 x float>, ptr %i.gu, align 8, !tbaa !31
  %i.gw = fadd <4 x float> %i.gk, %i.gv
  %i.gx = fmul <4 x float> %i.gg, %i.gw
  store <4 x float> %i.gx, ptr %i.gu, align 8, !tbaa !31
  %i.gy = getelementptr inbounds nuw i8, ptr %.0148226.i, i64 8
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !62 ; 3 uses
  %i.ha = icmp sgt i32 %i.gz, 0
  br i1 %i.ha, label %.lr.ph.i17, label %._crit_edge.i

.lr.ph.i17:                                       ; preds = %.lr.ph228.i
  %i.hb = load ptr, ptr %.0148226.i, align 8, !tbaa !63 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.gz to i64 ; 3 uses
  %min.iters.check54 = icmp ult i32 %i.gz, 4
  br i1 %min.iters.check54, label %scalar.ph53.preheader, label %vector.ph55

vector.ph55:                                      ; preds = %.lr.ph.i17
  %n.vec56 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph55
  %index66 = phi i64 [ 0, %vector.ph55 ], [ %index.next68, %vector.body65 ] ; 2 uses
  %i.hc = shl nuw nsw i64 %index66, 3
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hc ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.hd, align 4, !tbaa !31 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec67 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.he = fadd <4 x float> %broadcast.splat58, %strided.vec
  %i.hf = fmul <4 x float> %broadcast.splat60, %i.he
  %i.hg = fadd <4 x float> %broadcast.splat62, %strided.vec67
  %i.hh = fmul <4 x float> %broadcast.splat64, %i.hg
  %interleaved.vec = shufflevector <4 x float> %i.hf, <4 x float> %i.hh, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.hd, align 4, !tbaa !31
  %index.next68 = add nuw i64 %index66, 4         ; 2 uses
  %i.hi = icmp eq i64 %index.next68, %n.vec56
  br i1 %i.hi, label %middle.block69, label %vector.body65, !llvm.loop !168

middle.block69:                                   ; preds = %vector.body65
  %cmp.n70 = icmp eq i64 %n.vec56, %wide.trip.count.i
  br i1 %cmp.n70, label %._crit_edge.i, label %scalar.ph53.preheader

scalar.ph53.preheader:                            ; preds = %.lr.ph.i17, %middle.block69
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i17 ], [ %n.vec56, %middle.block69 ]
  br label %scalar.ph53

scalar.ph53:                                      ; preds = %scalar.ph53.preheader, %scalar.ph53
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph53 ], [ %indvars.iv.i.ph, %scalar.ph53.preheader ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.idx.i ; 2 uses
  %i.hk = load <2 x float>, ptr %i.hj, align 4, !tbaa !31
  %i.hl = fadd <2 x float> %i.fv, %i.hk
  %i.hm = fmul <2 x float> %i.fy, %i.hl
  store <2 x float> %i.hm, ptr %i.hj, align 4, !tbaa !31
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph53, !llvm.loop !169

._crit_edge.i:                                    ; preds = %scalar.ph53, %middle.block69, %.lr.ph228.i
  %i.hn = getelementptr inbounds nuw i8, ptr %.0148226.i, i64 32
  %.0148.i = load ptr, ptr %i.hn, align 8, !tbaa !60 ; 2 uses
  %.not156.i = icmp eq ptr %.0148.i, null
  br i1 %.not156.i, label %._crit_edge229.i, label %.lr.ph228.i, !llvm.loop !170

._crit_edge229.i:                                 ; preds = %._crit_edge.i, %bb.al
  %i.ho = getelementptr inbounds nuw i8, ptr %.0236.i, i64 64
  %i.hp = load i8, ptr %i.ho, align 8, !tbaa !44
  %i.hq = and i8 %i.hp, -2
  %switch.i = icmp eq i8 %i.hq, 2
  br i1 %switch.i, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %._crit_edge229.i
  %i.hr = getelementptr inbounds nuw i8, ptr %.0236.i, i64 72 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !17 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 20
  %i.hv = load <4 x float>, ptr %i.hs, align 4, !tbaa !31 ; 2 uses
  %i.hw = shufflevector <4 x float> %i.hv, <4 x float> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.hx = fmul <2 x float> %i.hw, zeroinitializer
  %i.hy = shufflevector <4 x float> %i.hv, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.hz = fadd <2 x float> %i.hy, %i.hx
  %i.ia = shufflevector <2 x float> %i.hz, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ib = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hy, <2 x float> zeroinitializer, <2 x float> %i.hw)
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.id = fmul <4 x float> %i.gl, %i.ic
  %i.ie = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ia, <4 x float> %i.gm, <4 x float> %i.id)
  store <4 x float> %i.ie, ptr %i.hs, align 4, !tbaa !31
  %i.if = load float, ptr %i.ht, align 4, !tbaa !31 ; 2 uses
  %i.ig = load float, ptr %i.hu, align 4, !tbaa !31 ; 2 uses
  %i.ih = fmul float %i.ig, 0.000000e+00
  %i.ii = fadd float %i.if, %i.ih
  %i.ij = tail call float @llvm.fmuladd.f32(float %i.if, float 0.000000e+00, float %i.ig)
  %9 = fadd float %8, %i.ij
  %10 = fadd float %7, %i.ii
  %i.ik = insertelement <2 x float> poison, float %9, i64 0
  %11 = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = fmul <2 x float> %i.gi, %11
  %13 = insertelement <2 x float> poison, float %10, i64 0
  %i.il = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.il, <2 x float> %i.gf, <2 x float> %12)
  %i.in = fadd <2 x float> %i.im, zeroinitializer
  store <2 x float> %i.in, ptr %i.ht, align 4, !tbaa !31
  %i.io = load ptr, ptr %i.hr, align 8, !tbaa !17 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(24) %i.io, i64 24, i1 false)
  %i.ip = load <2 x float>, ptr %i.gb, align 4, !tbaa !31 ; 2 uses
  %i.iq = load <4 x float>, ptr %i.a, align 16, !tbaa !31
  %i.ir = shufflevector <4 x float> %i.iq, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.is = fpext <2 x float> %i.ir to <2 x double> ; 4 uses
  %i.it = fpext <2 x float> %i.ip to <2 x double> ; 3 uses
  %i.iu = extractelement <2 x double> %i.it, i64 0
  %i.iv = fneg double %i.iu
  %i.iw = extractelement <2 x double> %i.it, i64 1
  %i.ix = fmul double %i.iw, %i.iv
  %i.iy = extractelement <2 x double> %i.is, i64 0
  %i.iz = extractelement <2 x double> %i.is, i64 1
  %i.ja = tail call double @llvm.fmuladd.f64(double %i.iy, double %i.iz, double %i.ix) ; 2 uses
  %i.jb = tail call double @llvm.fabs.f64(double %i.ja)
  %or.cond.i.i = fcmp olt double %i.jb, f0x3EB0C6F7A0B5ED8D
  br i1 %or.cond.i.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.a, align 16, !tbaa !31
  store float 0.000000e+00, ptr %i.gc, align 16, !tbaa !31
  br label %nsvg__xformInverse.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.jc = fdiv double 1.000000e+00, %i.ja         ; 2 uses
  %i.jd = fneg <2 x float> %i.ip
  %i.je = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.jf = fpext <2 x float> %i.jd to <2 x double>
  %i.jg = insertelement <4 x double> poison, double %i.jc, i64 0
  %i.jh = shufflevector <4 x double> %i.jg, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ji = shufflevector <2 x double> %i.is, <2 x double> %i.jf, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.jj = fmul <4 x double> %i.jh, %i.ji
  %i.jk = fptrunc <4 x double> %i.jj to <4 x float>
  store <4 x float> %i.jk, ptr %i.io, align 4, !tbaa !31
  %i.jl = load <2 x float>, ptr %i.gc, align 16, !tbaa !31
  %i.jm = fpext <2 x float> %i.jl to <2 x double> ; 2 uses
  %i.jn = fneg <2 x double> %i.jm
  %i.jo = shufflevector <2 x double> %i.jn, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jp = fmul <2 x double> %i.jo, %i.is
  %i.jq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.it, <2 x double> %i.jm, <2 x double> %i.jp)
  %i.jr = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.js = shufflevector <2 x double> %i.jr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jt = fmul <2 x double> %i.js, %i.jq
  %i.ju = fptrunc <2 x double> %i.jt to <2 x float> ; 2 uses
  %i.jv = extractelement <2 x float> %i.ju, i64 1
  store float %i.jv, ptr %i.je, align 4, !tbaa !31
  %i.jw = extractelement <2 x float> %i.ju, i64 0
  br label %nsvg__xformInverse.exit.i

nsvg__xformInverse.exit.i:                        ; preds = %bb.ao, %bb.an
  %.sink34.i.i = phi ptr [ %i.io, %bb.ao ], [ %i.a, %bb.an ]
  %.sink.i.i = phi float [ %i.jw, %bb.ao ], [ 0.000000e+00, %bb.an ]
  %i.jx = getelementptr inbounds nuw i8, ptr %.sink34.i.i, i64 20
  store float %.sink.i.i, ptr %i.jx, align 4, !tbaa !31
  br label %bb.ap

bb.ap:                                            ; preds = %nsvg__xformInverse.exit.i, %._crit_edge229.i
  %i.jy = getelementptr inbounds nuw i8, ptr %.0236.i, i64 80
  %i.jz = load i8, ptr %i.jy, align 8, !tbaa !45
  %i.ka = and i8 %i.jz, -2
  %switch158.i = icmp eq i8 %i.ka, 2
  br i1 %switch158.i, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.kb = getelementptr inbounds nuw i8, ptr %.0236.i, i64 88 ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !17 ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 20
  %i.kf = load <4 x float>, ptr %i.kc, align 4, !tbaa !31 ; 2 uses
  %i.kg = shufflevector <4 x float> %i.kf, <4 x float> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.kh = fmul <2 x float> %i.kg, zeroinitializer
  %i.ki = shufflevector <4 x float> %i.kf, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.kj = fadd <2 x float> %i.ki, %i.kh
  %i.kk = shufflevector <2 x float> %i.kj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.kl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ki, <2 x float> zeroinitializer, <2 x float> %i.kg)
  %i.km = shufflevector <2 x float> %i.kl, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.kn = fmul <4 x float> %i.gn, %i.km
  %i.ko = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kk, <4 x float> %i.go, <4 x float> %i.kn)
  store <4 x float> %i.ko, ptr %i.kc, align 4, !tbaa !31
  %i.kp = load float, ptr %i.kd, align 4, !tbaa !31 ; 2 uses
  %i.kq = load float, ptr %i.ke, align 4, !tbaa !31 ; 2 uses
  %i.kr = fmul float %i.kq, 0.000000e+00
  %i.ks = fadd float %i.kp, %i.kr
  %i.kt = tail call float @llvm.fmuladd.f32(float %i.kp, float 0.000000e+00, float %i.kq)
  %14 = fadd float %8, %i.kt
  %15 = fadd float %7, %i.ks
  %i.ku = insertelement <2 x float> poison, float %14, i64 0
  %16 = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = fmul <2 x float> %i.gi, %16
  %18 = insertelement <2 x float> poison, float %15, i64 0
  %i.kv = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kv, <2 x float> %i.gf, <2 x float> %17)
  %i.kx = fadd <2 x float> %i.kw, zeroinitializer
  store <2 x float> %i.kx, ptr %i.kd, align 4, !tbaa !31
  %i.ky = load ptr, ptr %i.kb, align 8, !tbaa !17 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(24) %i.ky, i64 24, i1 false)
  %i.kz = load <2 x float>, ptr %i.gb, align 4, !tbaa !31 ; 2 uses
  %i.la = load <4 x float>, ptr %i.a, align 16, !tbaa !31
  %i.lb = shufflevector <4 x float> %i.la, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.lc = fpext <2 x float> %i.lb to <2 x double> ; 4 uses
  %i.ld = fpext <2 x float> %i.kz to <2 x double> ; 3 uses
  %i.le = extractelement <2 x double> %i.ld, i64 0
  %i.lf = fneg double %i.le
  %i.lg = extractelement <2 x double> %i.ld, i64 1
  %i.lh = fmul double %i.lg, %i.lf
  %i.li = extractelement <2 x double> %i.lc, i64 0
  %i.lj = extractelement <2 x double> %i.lc, i64 1
  %i.lk = tail call double @llvm.fmuladd.f64(double %i.li, double %i.lj, double %i.lh) ; 2 uses
  %i.ll = tail call double @llvm.fabs.f64(double %i.lk)
  %or.cond.i168.i = fcmp olt double %i.ll, f0x3EB0C6F7A0B5ED8D
  br i1 %or.cond.i168.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.a, align 16, !tbaa !31
  store float 0.000000e+00, ptr %i.gc, align 16, !tbaa !31
  br label %nsvg__xformInverse.exit171.i

bb.as:                                            ; preds = %bb.aq
  %i.lm = fdiv double 1.000000e+00, %i.lk         ; 2 uses
  %i.ln = fneg <2 x float> %i.kz
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.lp = fpext <2 x float> %i.ln to <2 x double>
  %i.lq = insertelement <4 x double> poison, double %i.lm, i64 0
  %i.lr = shufflevector <4 x double> %i.lq, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ls = shufflevector <2 x double> %i.lc, <2 x double> %i.lp, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.lt = fmul <4 x double> %i.lr, %i.ls
  %i.lu = fptrunc <4 x double> %i.lt to <4 x float>
  store <4 x float> %i.lu, ptr %i.ky, align 4, !tbaa !31
  %i.lv = load <2 x float>, ptr %i.gc, align 16, !tbaa !31
  %i.lw = fpext <2 x float> %i.lv to <2 x double> ; 2 uses
  %i.lx = fneg <2 x double> %i.lw
  %i.ly = shufflevector <2 x double> %i.lx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lz = fmul <2 x double> %i.ly, %i.lc
  %i.ma = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ld, <2 x double> %i.lw, <2 x double> %i.lz)
  %i.mb = insertelement <2 x double> poison, double %i.lm, i64 0
  %i.mc = shufflevector <2 x double> %i.mb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.md = fmul <2 x double> %i.mc, %i.ma
  %i.me = fptrunc <2 x double> %i.md to <2 x float> ; 2 uses
  %i.mf = extractelement <2 x float> %i.me, i64 1
  store float %i.mf, ptr %i.lo, align 4, !tbaa !31
  %i.mg = extractelement <2 x float> %i.me, i64 0
  br label %nsvg__xformInverse.exit171.i

nsvg__xformInverse.exit171.i:                     ; preds = %bb.as, %bb.ar
  %.sink34.i169.i = phi ptr [ %i.ky, %bb.as ], [ %i.a, %bb.ar ]
  %.sink.i170.i = phi float [ %i.mg, %bb.as ], [ 0.000000e+00, %bb.ar ]
  %i.mh = getelementptr inbounds nuw i8, ptr %.sink34.i169.i, i64 20
  store float %.sink.i170.i, ptr %i.mh, align 4, !tbaa !31
  br label %bb.at

bb.at:                                            ; preds = %nsvg__xformInverse.exit171.i, %bb.ap
  %i.mi = getelementptr inbounds nuw i8, ptr %.0236.i, i64 100 ; 2 uses
  %i.mj = load <2 x float>, ptr %i.mi, align 4, !tbaa !31
  %i.mk = fmul <2 x float> %i.ge, %i.mj
  store <2 x float> %i.mk, ptr %i.mi, align 4, !tbaa !31
  %i.ml = getelementptr inbounds nuw i8, ptr %.0236.i, i64 140
  %i.mm = load i8, ptr %i.ml, align 4, !tbaa !66  ; 3 uses
  %i.mn = icmp sgt i8 %i.mm, 0
  br i1 %i.mn, label %.lr.ph232.i, label %._crit_edge233.i

.lr.ph232.i:                                      ; preds = %bb.at
  %wide.trip.count247.i = zext nneg i8 %i.mm to i64 ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.0236.i, i64 108 ; 2 uses
  %min.iters.check = icmp ult i8 %i.mm, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph232.i
  %n.vec = and i64 %wide.trip.count247.i, 120     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %index ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.mp, align 4, !tbaa !31
  %wide.load52 = load <4 x float>, ptr %i.mq, align 4, !tbaa !31
  %i.mr = fmul <4 x float> %broadcast.splat, %wide.load
  %i.ms = fmul <4 x float> %broadcast.splat, %wide.load52
  store <4 x float> %i.mr, ptr %i.mp, align 4, !tbaa !31
  store <4 x float> %i.ms, ptr %i.mq, align 4, !tbaa !31
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mt = icmp eq i64 %index.next, %n.vec
  br i1 %i.mt, label %middle.block, label %vector.body, !llvm.loop !171

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count247.i
  br i1 %cmp.n, label %._crit_edge233.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph232.i, %middle.block
  %indvars.iv244.i.ph = phi i64 [ 0, %.lr.ph232.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv244.i = phi i64 [ %indvars.iv.next245.i, %scalar.ph ], [ %indvars.iv244.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %indvars.iv244.i ; 2 uses
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !31
  %i.mw = fmul float %i.ga, %i.mv
  store float %i.mw, ptr %i.mu, align 4, !tbaa !31
  %indvars.iv.next245.i = add nuw nsw i64 %indvars.iv244.i, 1 ; 2 uses
  %exitcond248.not.i = icmp eq i64 %indvars.iv.next245.i, %wide.trip.count247.i
  br i1 %exitcond248.not.i, label %._crit_edge233.i, label %scalar.ph, !llvm.loop !172

._crit_edge233.i:                                 ; preds = %scalar.ph, %middle.block, %bb.at
  %i.mx = getelementptr inbounds nuw i8, ptr %.0236.i, i64 328
  %.0.i15 = load ptr, ptr %i.mx, align 8, !tbaa !41 ; 2 uses
  %.not.i16 = icmp eq ptr %.0.i15, null
  br i1 %.not.i16, label %nsvg__scaleToViewbox.exit, label %bb.al, !llvm.loop !173

nsvg__scaleToViewbox.exit:                        ; preds = %._crit_edge233.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  store ptr null, ptr %i.f, align 8, !tbaa !30
  %i.my = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 39976
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !67 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.mz, null
  br i1 %.not6.i.i, label %nsvg__deleteStyles.exit.i, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %nsvg__scaleToViewbox.exit, %.lr.ph.i.i18
  %.07.i.i = phi ptr [ %i.nb, %.lr.ph.i.i18 ], [ %i.mz, %nsvg__scaleToViewbox.exit ] ; 4 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !69 ; 2 uses
  %i.nc = load ptr, ptr %.07.i.i, align 8, !tbaa !70
  tail call void @free(ptr noundef %i.nc) #30
  %i.nd = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !71
  tail call void @free(ptr noundef %i.ne) #30
  tail call void @free(ptr noundef nonnull %.07.i.i) #30
  %.not.i.i19 = icmp eq ptr %i.nb, null
  br i1 %.not.i.i19, label %nsvg__deleteStyles.exit.i, label %.lr.ph.i.i18, !llvm.loop !174

nsvg__deleteStyles.exit.i:                        ; preds = %.lr.ph.i.i18, %nsvg__scaleToViewbox.exit
  %i.nf = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 39960
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !72 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ng, null
  br i1 %.not8.i.i, label %nsvg__deletePaths.exit.i, label %.lr.ph.i7.i

.lr.ph.i7.i:                                      ; preds = %nsvg__deleteStyles.exit.i, %bb.av
  %.09.i.i = phi ptr [ %i.ni, %bb.av ], [ %i.ng, %nsvg__deleteStyles.exit.i ] ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !73 ; 2 uses
  %i.nj = load ptr, ptr %.09.i.i, align 8, !tbaa !63 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.nj, null
  br i1 %.not7.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i7.i
  tail call void @free(ptr noundef nonnull %i.nj) #30
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph.i7.i
  tail call void @free(ptr noundef nonnull %.09.i.i) #30
  %.not.i8.i = icmp eq ptr %i.ni, null
  br i1 %.not.i8.i, label %nsvg__deletePaths.exit.i, label %.lr.ph.i7.i, !llvm.loop !0

nsvg__deletePaths.exit.i:                         ; preds = %bb.av, %nsvg__deleteStyles.exit.i
  %i.nk = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 39984
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !74 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.nl, null
  br i1 %.not5.i.i, label %nsvg__deleteParser.exit, label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %nsvg__deletePaths.exit.i, %.lr.ph.i9.i
  %.06.i.i = phi ptr [ %i.nn, %.lr.ph.i9.i ], [ %i.nl, %nsvg__deletePaths.exit.i ] ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 216
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !77 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 208
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !78
  tail call void @free(ptr noundef %i.np) #30
  tail call void @free(ptr noundef nonnull %.06.i.i) #30
  %.not.i10.i = icmp eq ptr %i.nn, null
  br i1 %.not.i10.i, label %nsvg__deleteParser.exit, label %.lr.ph.i9.i, !llvm.loop !175

nsvg__deleteParser.exit:                          ; preds = %.lr.ph.i9.i, %nsvg__deletePaths.exit.i
  %i.nq = load ptr, ptr %i.f, align 8, !tbaa !30
  tail call void @nsvgDelete(ptr noundef %i.nq)
  %i.nr = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 39944
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !79
  tail call void @free(ptr noundef %i.ns) #30
  br label %nsvg__createParser.exit.thread.sink.split

nsvg__createParser.exit.thread.sink.split:        ; preds = %bb.b, %nsvg__deleteParser.exit
  %.0.ph = phi ptr [ %.val.i45, %nsvg__deleteParser.exit ], [ null, %bb.b ]
  tail call void @free(ptr noundef nonnull %calloc33.i) #30
  br label %nsvg__createParser.exit.thread

nsvg__createParser.exit.thread:                   ; preds = %nsvg__createParser.exit.thread.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.0.ph, %nsvg__createParser.exit.thread.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal void @nsvg__startElement(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca [10 x float], align 16            ; 19 uses
  %i.b = alloca [4 x ptr], align 16               ; 6 uses
end_hunk_0
