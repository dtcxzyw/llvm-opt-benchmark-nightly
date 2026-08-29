Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@stbtt_GetGlyphSDF:bb.a
  %wide.trip.count = zext nneg i32 %i.ap to i64
  %i.bc = zext nneg i32 %i.bb to i64
  br label %bb.l

.preheader525:                                    ; preds = %bb.p, %bb.k
  %i.bd = icmp slt i32 %i.ah, %i.al
  br i1 %i.bd, label %.preheader.lr.ph, label %._crit_edge535.split

.preheader.lr.ph:                                 ; preds = %.preheader525
  %i.be = icmp slt i32 %i.af, %i.aj
  %wide.trip.count.i = zext i32 %i.ap to i64      ; 2 uses
  %i.bf = uitofp i8 %4 to float
  br i1 %i.be, label %.preheader.preheader, label %._crit_edge535.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bg = sext i32 %i.af to i64
  %i.bh = sext i32 %i.aj to i64
  %i.bi = insertelement <2 x float> %i.q, float %i.ao, i64 1 ; 3 uses
  br label %.preheader

bb.l:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 4 uses
  %.0441527 = phi i64 [ %i.bc, %.lr.ph ], [ %indvars.iv, %bb.p ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre, i64 %indvars.iv ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !372
  switch i8 %i.bl, label %bb.p [
    i8 2, label %bb.m
    i8 3, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.bm = load i16, ptr %i.bj, align 2, !tbaa !375
  %i.bn = sitofp i16 %i.bm to float
  %i.bo = fmul float %1, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !377
  %i.br = sitofp i16 %i.bq to float
  %i.bs = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre, i64 %.0441527 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !375
  %i.bu = sitofp i16 %i.bt to float
  %i.bv = fmul float %1, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !377
  %i.by = sitofp i16 %i.bx to float
  %i.bz = fsub float %i.bv, %i.bo                 ; 2 uses
  %i.ca = fmul float %1, %i.br
  %i.cb = fmul float %1, %i.by
  %i.cc = fsub float %i.ca, %i.cb                 ; 2 uses
  %i.cd = fmul float %i.cc, %i.cc
  %i.ce = call float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.cd) ; 2 uses
  %sqrt = call float @llvm.sqrt.f32(float %i.ce)
  %i.cf = fcmp oeq float %i.ce, 0.000000e+00
  %i.cg = fdiv float 1.000000e+00, %sqrt
  %i.ch = select i1 %i.cf, float 0.000000e+00, float %i.cg
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre, i64 %.0441527 ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !375
  %i.ck = sitofp i16 %i.cj to float
  %i.cl = fmul float %1, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !377
  %i.co = sitofp i16 %i.cn to float
  %i.cp = load <4 x i16>, ptr %i.bj, align 2, !tbaa !121
  %i.cq = sitofp <4 x i16> %i.cp to <4 x float>   ; 4 uses
  %i.cr = extractelement <4 x float> %i.cq, i64 2
  %i.cs = fmul float %1, %i.cr
  %i.ct = extractelement <4 x float> %i.cq, i64 3
  %i.cu = fmul float %i.ct, %i.ao
  %i.cv = extractelement <4 x float> %i.cq, i64 0
  %i.cw = fmul float %1, %i.cv
  %i.cx = extractelement <4 x float> %i.cq, i64 1
  %i.cy = fmul float %i.cx, %i.ao
  %i.cz = call float @llvm.fmuladd.f32(float %i.cs, float -2.000000e+00, float %i.cw)
  %i.da = fadd float %i.cl, %i.cz                 ; 2 uses
  %i.db = call float @llvm.fmuladd.f32(float %i.cu, float -2.000000e+00, float %i.cy)
  %i.dc = fmul float %1, %i.co
  %i.dd = fsub float %i.db, %i.dc                 ; 2 uses
  %i.de = fmul float %i.dd, %i.dd
  %i.df = call float @llvm.fmuladd.f32(float %i.da, float %i.da, float %i.de) ; 2 uses
  %i.dg = fcmp une float %i.df, 0.000000e+00
  br i1 %i.dg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dh = fdiv float 1.000000e+00, %i.df
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.n, %bb.o, %bb.m
  %.sink = phi float [ %i.dh, %bb.o ], [ 0.000000e+00, %bb.n ], [ %i.ch, %bb.m ], [ 0.000000e+00, %bb.l ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv
  store float %.sink, ptr %i.di, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader525, label %bb.l, !llvm.loop !539

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge533
  %.0440534 = phi i32 [ %i.uu, %._crit_edge533 ], [ %i.ah, %.preheader.preheader ] ; 3 uses
  %i.dj = sitofp i32 %.0440534 to float
  %i.dk = fadd float %i.dj, 5.000000e-01          ; 8 uses
  %i.dl = fdiv float %i.dk, %i.ao                 ; 4 uses
  %i.dm = fpext float %i.dl to double
  %i.dn = fadd float %i.dl, f0xBC23D70A
  %i.do = fadd float %i.dl, f0x3C23D70A
  %i.dp = sub nsw i32 %.0440534, %i.ah
  %i.dq = mul nsw i32 %i.dp, %i.am
  %i.dr = sub i32 %i.dq, %i.af
  br label %bb.q

bb.q:                                             ; preds = %.preheader, %bb.bo
  %indvars.iv542 = phi i64 [ %i.bg, %.preheader ], [ %indvars.iv.next543, %bb.bo ] ; 2 uses
  %i.ds = trunc nsw i64 %indvars.iv542 to i32     ; 2 uses
  %i.dt = sitofp i32 %i.ds to float
  %i.du = fadd float %i.dt, 5.000000e-01          ; 8 uses
  %i.dv = fdiv float %i.du, %1                    ; 7 uses
  %i.dw = call double @fmod(double noundef %i.dm, double noundef 1.000000e+00) #50 ; 2 uses
  %i.dx = fcmp olt double %i.dw, f0x3F847AE130000000
  br i1 %i.dx, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
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
  %i.ef = load i8, ptr %i.ee, align 2, !tbaa !372
  switch i8 %i.ef, label %.thread.i [
    i8 2, label %bb.v
    i8 3, label %bb.z
  ]

bb.v:                                             ; preds = %bb.u
  %i.eg = getelementptr i8, ptr %i.ed, i64 -14
  %i.eh = load <2 x i16>, ptr %i.eg, align 2, !tbaa !121 ; 3 uses
  %i.ei = extractelement <2 x i16> %i.eh, i64 1   ; 4 uses
  %i.ej = extractelement <2 x i16> %i.eh, i64 0
  %i.ek = sext i16 %i.ej to i32                   ; 2 uses
  %i.el = sext i16 %i.ei to i32
  %i.em = load i16, ptr %i.ed, align 2, !tbaa !375
  %i.en = sext i16 %i.em to i32                   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !377 ; 4 uses
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
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !379 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ed, i64 6
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !380 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.fv = load i16, ptr %i.fp, align 2, !tbaa !377 ; 6 uses
  %i.fw = load i16, ptr %i.fo, align 2, !tbaa !375 ; 2 uses
  %i.fx = sext i16 %i.fv to i32
  %i.fy = load i16, ptr %i.fu, align 2, !tbaa !377 ; 6 uses
  %i.fz = load i16, ptr %i.ed, align 2, !tbaa !375 ; 2 uses
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
  %i.gl = load <2 x i16>, ptr %i.ed, align 2, !tbaa !121 ; 2 uses
  %i.gm = load <2 x i16>, ptr %i.fo, align 2, !tbaa !121 ; 2 uses
  %10 = shufflevector <2 x i16> %i.gl, <2 x i16> %i.gm, <2 x i32> <i32 0, i32 2>
  %11 = sitofp <2 x i16> %10 to <2 x float>       ; 3 uses
  %12 = shufflevector <2 x i16> %i.gl, <2 x i16> %i.gm, <2 x i32> <i32 1, i32 3>
  %i.gn = sitofp <2 x i16> %12 to <2 x float>     ; 3 uses
  %13 = sitofp i16 %i.fr to float                 ; 4 uses
  %14 = sitofp i16 %i.ft to float                 ; 4 uses
  %15 = extractelement <2 x float> %11, i64 1     ; 3 uses
  %16 = fcmp une float %15, %13
  %17 = extractelement <2 x float> %i.gn, i64 1   ; 3 uses
  %18 = fcmp une float %17, %14
  %narrow.i.not.i = or i1 %16, %18
  br i1 %narrow.i.not.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %19 = extractelement <2 x float> %11, i64 0     ; 2 uses
  %20 = fcmp une float %19, %13
  %21 = extractelement <2 x float> %i.gn, i64 0   ; 2 uses
  %22 = fcmp une float %21, %14
  %narrow.i182.not.i = or i1 %20, %22
  br i1 %narrow.i182.not.i, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.go = sext i16 %i.fw to i32                   ; 2 uses
  %i.gp = sext i16 %i.fz to i32                   ; 2 uses
  %i.gq = sext i16 %i.fy to i32
  %i.gr = icmp slt i16 %i.fv, %i.fy
  %i.gs = call i16 @llvm.smin.i16(i16 %i.fv, i16 %i.fy)
  %i.gt = sitofp i16 %i.gs to float
  %i.gu = fcmp ogt float %.0150.i, %i.gt
  br i1 %i.gu, label %bb.ad, label %.thread.i

bb.ad:                                            ; preds = %bb.ac
  %i.gv = call i16 @llvm.smax.i16(i16 %i.fv, i16 %i.fy)
  %i.gw = sitofp i16 %i.gv to float
  %i.gx = fcmp olt float %.0150.i, %i.gw
  br i1 %i.gx, label %bb.ae, label %.thread.i

bb.ae:                                            ; preds = %bb.ad
  %i.gy = call i32 @llvm.smin.i32(i32 %i.go, i32 %i.gp)
  %i.gz = sitofp i32 %i.gy to float
  %i.ha = fcmp ogt float %i.dv, %i.gz
  br i1 %i.ha, label %bb.af, label %.thread.i

bb.af:                                            ; preds = %bb.ae
  %i.hb = fsub float %.0150.i, %17
  %i.hc = sub nsw i32 %i.gq, %i.fx
  %i.hd = sitofp i32 %i.hc to float
  %i.he = fdiv float %i.hb, %i.hd
  %i.hf = sub nsw i32 %i.gp, %i.go
  %i.hg = sitofp i32 %i.hf to float
  %i.hh = call float @llvm.fmuladd.f32(float %i.he, float %i.hg, float %15)
  %i.hi = fcmp olt float %i.hh, %i.dv
  %i.hj = select i1 %i.gr, i32 1, i32 -1
  %i.hk = select i1 %i.hi, i32 %i.hj, i32 0
  %.4.i = add nsw i32 %i.hk, %.0197.i
  br label %.thread.i

bb.ag:                                            ; preds = %bb.ab
  %i.hl = fneg float %15
  %i.hm = call float @llvm.copysign.f32(float 0.000000e+00, float %i.hl)
  %i.hn = fadd float %i.hm, %17                   ; 3 uses
  %i.ho = fneg float %13
  %i.hp = call float @llvm.copysign.f32(float 0.000000e+00, float %i.ho)
  %i.hq = fadd float %i.hp, %14                   ; 2 uses
  %i.hr = fneg float %19
  %i.hs = call float @llvm.copysign.f32(float 0.000000e+00, float %i.hr)
  %i.ht = fadd float %i.hs, %21
  %i.hu = call float @llvm.fmuladd.f32(float %i.hq, float -2.000000e+00, float %i.hn)
  %i.hv = fadd float %i.hu, %i.ht                 ; 5 uses
  %i.hw = fsub float %i.hq, %i.hn                 ; 7 uses
  %i.hx = fadd float %i.ec, %i.hn                 ; 2 uses
  %i.hy = fcmp une float %i.hv, 0.000000e+00
  br i1 %i.hy, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.hz = fneg float %i.hx
  %i.ia = fmul float %i.hv, %i.hz
  %i.ib = call float @llvm.fmuladd.f32(float %i.hw, float %i.hw, float %i.ia) ; 2 uses
  %i.ic = fcmp ogt float %i.ib, 0.000000e+00
  br i1 %i.ic, label %bb.ai, label %stbtt__ray_intersect_bezier.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.id = fdiv float -1.000000e+00, %i.hv         ; 2 uses
  %sqrtf.i.i = call float @sqrtf(float noundef %i.ib) #50 ; 3 uses
  %i.ie = fadd float %i.hw, %sqrtf.i.i
  %i.if = fmul float %i.id, %i.ie                 ; 4 uses
  %i.ig = fsub float %i.hw, %sqrtf.i.i
  %i.ih = fmul float %i.id, %i.ig                 ; 5 uses
  %i.ii = fcmp oge float %i.if, 0.000000e+00
  %i.ij = fcmp ole float %i.if, 1.000000e+00
  %or.cond.not.not.not.i.i = and i1 %i.ii, %i.ij  ; 3 uses
  %i.ik = fcmp ule float %sqrtf.i.i, 0.000000e+00
  %i.il = fcmp ult float %i.ih, 0.000000e+00
  %i.im = fcmp ugt float %i.ih, 1.000000e+00
  %i.in = or i1 %i.il, %i.im
  %or.cond118.i.i = select i1 %i.ik, i1 true, i1 %i.in
  br i1 %or.cond118.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.0107.i.i = select i1 %or.cond.not.not.not.i.i, float %i.if, float %i.ih
  br label %.thread21.i.i

bb.ak:                                            ; preds = %bb.ag
  %i.io = fmul float %i.hw, -2.000000e+00
  %i.ip = fdiv float %i.hx, %i.io                 ; 3 uses
  %i.iq = fcmp ult float %i.ip, 0.000000e+00
  %i.ir = fcmp ugt float %i.ip, 1.000000e+00
  %or.cond119.i.i = or i1 %i.iq, %i.ir
  br i1 %or.cond119.i.i, label %stbtt__ray_intersect_bezier.exit.i, label %.thread21.i.i

bb.al:                                            ; preds = %bb.ai
  br i1 %or.cond.not.not.not.i.i, label %.thread21.i.i, label %stbtt__ray_intersect_bezier.exit.i

.thread21.i.i:                                    ; preds = %bb.al, %bb.ak, %bb.aj
  %.327.i.i = phi i1 [ false, %bb.al ], [ %or.cond.not.not.not.i.i, %bb.aj ], [ false, %bb.ak ]
  %.110626.i.i = phi float [ %i.ih, %bb.al ], [ %i.ih, %bb.aj ], [ 0.000000e+00, %bb.ak ] ; 5 uses
  %.311025.i.i = phi float [ %i.if, %bb.al ], [ %.0107.i.i, %bb.aj ], [ %i.ip, %bb.ak ] ; 5 uses
  %i.is = call <2 x float> @llvm.copysign.v2f32(<2 x float> zeroinitializer, <2 x float> %i.gn)
  %i.it = call float @llvm.copysign.f32(float 0.000000e+00, float %14)
  %i.iu = fadd float %i.it, %13
  %i.iv = fadd <2 x float> %i.is, %11             ; 2 uses
  %i.iw = extractelement <2 x float> %i.iv, i64 1 ; 3 uses
  %i.ix = fsub float %i.iu, %i.iw                 ; 2 uses
  %i.iy = extractelement <2 x float> %i.iv, i64 0
  %i.iz = fsub float %i.iy, %i.iw                 ; 2 uses
  %i.ja = fsub float %i.iw, %i.eb                 ; 2 uses
  %i.jb = call float @llvm.fmuladd.f32(float %.311025.i.i, float -2.000000e+00, float 2.000000e+00)
  %i.jc = fmul float %.311025.i.i, %i.jb
  %i.jd = call float @llvm.fmuladd.f32(float %i.jc, float %i.ix, float %i.ja)
  %i.je = fmul float %.311025.i.i, %.311025.i.i
  %i.jf = call float @llvm.fmuladd.f32(float %i.je, float %i.iz, float %i.jd) ; 2 uses
  %i.jg = call float @llvm.fmuladd.f32(float %i.hv, float %.311025.i.i, float %i.hw) ; 2 uses
  br i1 %.327.i.i, label %bb.am, label %stbtt__ray_intersect_bezier.exit.i

bb.am:                                            ; preds = %.thread21.i.i
  %i.jh = call float @llvm.fmuladd.f32(float %.110626.i.i, float -2.000000e+00, float 2.000000e+00)
  %i.ji = fmul float %.110626.i.i, %i.jh
  %i.jj = call float @llvm.fmuladd.f32(float %i.ji, float %i.ix, float %i.ja)
  %i.jk = fmul float %.110626.i.i, %.110626.i.i
  %i.jl = call float @llvm.fmuladd.f32(float %i.jk, float %i.iz, float %i.jj)
  %i.jm = call float @llvm.fmuladd.f32(float %i.hv, float %.110626.i.i, float %i.hw)
  %i.jn = fcmp olt float %i.jl, 0.000000e+00
  %i.jo = fcmp olt float %i.jm, 0.000000e+00
  %i.jp = select i1 %i.jo, i32 -1, i32 1
  %i.jq = select i1 %i.jn, i32 %i.jp, i32 0
  br label %stbtt__ray_intersect_bezier.exit.i

stbtt__ray_intersect_bezier.exit.i:               ; preds = %bb.am, %.thread21.i.i, %bb.al, %bb.ak, %bb.ah
  %.sroa.4.0.i = phi float [ %i.jg, %bb.am ], [ %i.jg, %.thread21.i.i ], [ undef, %bb.al ], [ undef, %bb.ah ], [ undef, %bb.ak ]
  %.sroa.0.0.i = phi float [ %i.jf, %bb.am ], [ %i.jf, %.thread21.i.i ], [ undef, %bb.al ], [ undef, %bb.ah ], [ undef, %bb.ak ]
  %i.jr = phi i1 [ true, %bb.am ], [ true, %.thread21.i.i ], [ false, %bb.al ], [ false, %bb.ah ], [ false, %bb.ak ]
  %or.cond7.i = phi i32 [ %i.jq, %bb.am ], [ 0, %.thread21.i.i ], [ 0, %bb.al ], [ 0, %bb.ah ], [ 0, %bb.ak ]
  %i.js = fcmp olt float %.sroa.0.0.i, 0.000000e+00
  %or.cond.i = select i1 %i.jr, i1 %i.js, i1 false
  %i.jt = fcmp olt float %.sroa.4.0.i, 0.000000e+00
  %i.ju = select i1 %i.jt, i32 -1, i32 1
  %i.jv = select i1 %or.cond.i, i32 %i.ju, i32 0
  %.5.i = add i32 %or.cond7.i, %.0197.i
  %.6.i = add i32 %.5.i, %i.jv
  br label %.thread.i

.thread.i:                                        ; preds = %stbtt__ray_intersect_bezier.exit.i, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.9.i = phi i32 [ %.0197.i, %bb.u ], [ %.6.i, %stbtt__ray_intersect_bezier.exit.i ], [ %.0197.i, %bb.z ], [ %.4.i, %bb.af ], [ %.0197.i, %bb.ae ], [ %.0197.i, %bb.ad ], [ %.0197.i, %bb.ac ], [ %.0197.i, %bb.v ], [ %.0197.i, %bb.w ], [ %.0197.i, %bb.x ], [ %.1.i, %bb.y ]
  %.9.i.fr = freeze i32 %.9.i                     ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbtt__compute_crossings_x.exit, label %bb.u, !llvm.loop !540

stbtt__compute_crossings_x.exit:                  ; preds = %.thread.i
  %i.jw = icmp eq i32 %.9.i.fr, 0
  br label %.lr.ph530

.lr.ph530:                                        ; preds = %stbtt__compute_crossings_x.exit, %.thread
  %indvars.iv537 = phi i64 [ %indvars.iv.next538, %.thread ], [ 0, %stbtt__compute_crossings_x.exit ] ; 4 uses
  %.0435529 = phi float [ %.9, %.thread ], [ 9.999990e+05, %stbtt__compute_crossings_x.exit ] ; 10 uses
  %i.jx = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre, i64 %indvars.iv537 ; 5 uses
  %i.jy = load <2 x i16>, ptr %i.jx, align 2, !tbaa !121
  %i.jz = sitofp <2 x i16> %i.jy to <2 x float>
  %i.ka = fmul <2 x float> %i.bi, %i.jz           ; 10 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 12
  %i.kc = load i8, ptr %i.kb, align 2, !tbaa !372
  switch i8 %i.kc, label %.thread [
    i8 2, label %bb.an
    i8 3, label %bb.aq
  ]

bb.an:                                            ; preds = %.lr.ph530
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv537
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !8 ; 2 uses
  %i.kf = fcmp une float %i.ke, 0.000000e+00
  br i1 %i.kf, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %bb.an
  %i.kg = getelementptr i8, ptr %i.jx, i64 -14
  %i.kh = load <2 x i16>, ptr %i.kg, align 2, !tbaa !121
  %i.ki = sitofp <2 x i16> %i.kh to <2 x float>   ; 2 uses
  %i.kj = extractelement <2 x float> %i.ki, i64 0
  %i.kk = fmul float %1, %i.kj
  %i.kl = extractelement <2 x float> %i.ki, i64 1
  %i.km = fmul float %i.kl, %i.ao
  %i.kn = fmul float %.0435529, %.0435529
  %i.ko = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kp = insertelement <2 x float> %i.ko, float %i.km, i64 1
  %i.kq = insertelement <2 x float> %i.ka, float %i.dk, i64 0
  %i.kr = fsub <2 x float> %i.kp, %i.kq           ; 5 uses
  %i.ks = insertelement <2 x float> %i.ka, float %i.kk, i64 1
  %i.kt = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ku = insertelement <2 x float> %i.kt, float %i.du, i64 0
  %i.kv = fsub <2 x float> %i.ks, %i.ku           ; 5 uses
  %i.kw = fneg <2 x float> %i.kv
  %i.kx = shufflevector <2 x float> %i.kr, <2 x float> %i.kw, <2 x i32> <i32 0, i32 2>
  %i.ky = fmul <2 x float> %i.kr, %i.kx
  %i.kz = shufflevector <2 x float> %i.kv, <2 x float> %i.kr, <2 x i32> <i32 0, i32 2>
  %i.la = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kv, <2 x float> %i.kz, <2 x float> %i.ky) ; 2 uses
  %i.lb = extractelement <2 x float> %i.la, i64 0 ; 2 uses
  %i.lc = fcmp olt float %i.lb, %i.kn
  %sqrt520 = call float @llvm.sqrt.f32(float %i.lb)
  %.1436 = select i1 %i.lc, float %sqrt520, float %.0435529 ; 3 uses
  %i.ld = extractelement <2 x float> %i.la, i64 1
  %i.le = call float @llvm.fabs.f32(float %i.ld)
  %i.lf = fmul float %i.ke, %i.le                 ; 2 uses
  %i.lg = fcmp olt float %i.lf, %.1436
  br i1 %i.lg, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %bb.ao
  %i.lh = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.li = fmul <2 x float> %i.lh, %i.kr
  %i.lj = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lj, <2 x float> %i.kv, <2 x float> %i.li) ; 2 uses
  %i.ll = extractelement <2 x float> %i.lk, i64 0
  %i.lm = fneg float %i.ll
  %i.ln = extractelement <2 x float> %i.lk, i64 1
  %i.lo = fdiv float %i.lm, %i.ln                 ; 2 uses
  %i.lp = fcmp oge float %i.lo, 0.000000e+00
  %i.lq = fcmp ole float %i.lo, 1.000000e+00
  %or.cond = and i1 %i.lp, %i.lq
  %.2437 = select i1 %or.cond, float %i.lf, float %.1436
  br label %.thread

bb.aq:                                            ; preds = %.lr.ph530
  %i.lr = getelementptr i8, ptr %i.jx, i64 -14
  %i.ls = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  %i.lt = load <2 x i16>, ptr %i.lr, align 2, !tbaa !121
  %i.lu = sitofp <2 x i16> %i.lt to <2 x float>
  %i.lv = fmul <2 x float> %i.bi, %i.lu           ; 4 uses
  %i.lw = shufflevector <2 x float> %i.lv, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.lx = load <2 x i16>, ptr %i.ls, align 2, !tbaa !121
  %i.ly = sitofp <2 x i16> %i.lx to <2 x float>
  %i.lz = fmul <2 x float> %i.bi, %i.ly           ; 6 uses
  %i.ma = fcmp olt <2 x float> %i.ka, %i.lz
  %i.mb = shufflevector <2 x i1> %i.ma, <2 x i1> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.mc = shufflevector <2 x float> %i.lz, <2 x float> %i.ka, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.md = shufflevector <2 x float> %i.ka, <2 x float> %i.lz, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.me = select <4 x i1> %i.mb, <4 x float> %i.mc, <4 x float> %i.md ; 3 uses
  %i.mf = fcmp olt <4 x float> %i.me, %i.lw
  %i.mg = shufflevector <4 x float> %i.lw, <4 x float> %i.me, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.mh = shufflevector <2 x float> %i.lv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mi = shufflevector <4 x float> %i.me, <4 x float> %i.mh, <4 x i32> <i32 0, i32 1, i32 5, i32 4>
  %i.mj = select <4 x i1> %i.mf, <4 x float> %i.mg, <4 x float> %i.mi ; 2 uses
  %i.mk = insertelement <4 x float> poison, float %.0435529, i64 0
  %i.ml = shufflevector <4 x float> %i.mk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.mm = fsub <4 x float> %i.mj, %i.ml           ; 2 uses
  %i.mn = fadd <4 x float> %i.mj, %i.ml           ; 2 uses
  %i.mo = extractelement <4 x float> %i.mm, i64 3
  %i.mp = fcmp ogt float %i.du, %i.mo
  %i.mq = extractelement <4 x float> %i.mn, i64 1
  %i.mr = fcmp olt float %i.du, %i.mq
  %or.cond484 = select i1 %i.mp, i1 %i.mr, i1 false
  %i.ms = extractelement <4 x float> %i.mm, i64 2
  %i.mt = fcmp ogt float %i.dk, %i.ms
  %or.cond486 = select i1 %or.cond484, i1 %i.mt, i1 false
  %i.mu = extractelement <4 x float> %i.mn, i64 0
  %i.mv = fcmp olt float %i.dk, %i.mu
  %or.cond488 = select i1 %or.cond486, i1 %i.mv, i1 false
  br i1 %or.cond488, label %bb.ar, label %.thread

bb.ar:                                            ; preds = %bb.aq
  %i.mw = extractelement <2 x float> %i.ka, i64 0 ; 5 uses
  %i.mx = extractelement <2 x float> %i.lz, i64 0 ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.lz, %i.ka ; 2 uses
  %i.my = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 6 uses
  %i.mz = extractelement <2 x float> %i.ka, i64 1 ; 6 uses
  %i.na = extractelement <2 x float> %i.lz, i64 1 ; 5 uses
  %i.nb = fsub float %i.na, %i.mz                 ; 7 uses
  %i.nc = call float @llvm.fmuladd.f32(float %i.mx, float -2.000000e+00, float %i.mw)
  %i.nd = extractelement <2 x float> %i.lv, i64 0 ; 4 uses
  %i.ne = fadd float %i.nd, %i.nc                 ; 3 uses
  %i.nf = call float @llvm.fmuladd.f32(float %i.na, float -2.000000e+00, float %i.mz)
  %i.ng = extractelement <2 x float> %i.lv, i64 1 ; 4 uses
  %i.nh = fadd float %i.ng, %i.nf                 ; 3 uses
  %i.ni = fsub float %i.mw, %i.du                 ; 6 uses
  %i.nj = fsub float %i.mz, %i.dk                 ; 6 uses
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv537
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !8 ; 4 uses
  %i.nm = fcmp oeq float %i.nl, 0.000000e+00
  %i.nn = fmul float %i.nb, %i.nh
  %i.no = call float @llvm.fmuladd.f32(float %i.my, float %i.ne, float %i.nn)
  %i.np = fmul float %i.no, 3.000000e+00          ; 4 uses
  br i1 %i.nm, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.nq = fmul float %i.nb, %i.nb
  %i.nr = call float @llvm.fmuladd.f32(float %i.my, float %i.my, float %i.nq)
  %i.ns = fmul float %i.nj, %i.nh
  %i.nt = call float @llvm.fmuladd.f32(float %i.ni, float %i.ne, float %i.ns)
  %i.nu = call float @llvm.fmuladd.f32(float %i.nr, float 2.000000e+00, float %i.nt) ; 6 uses
  %i.nv = fmul float %i.nj, %i.nb
  %i.nw = call float @llvm.fmuladd.f32(float %i.ni, float %i.my, float %i.nv) ; 2 uses
  %i.nx = fcmp oeq float %i.np, 0.000000e+00
  br i1 %i.nx, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.ny = fcmp une float %i.nu, 0.000000e+00
  br i1 %i.ny, label %bb.au, label %stbtt__solve_cubic.exit

bb.au:                                            ; preds = %bb.at
  %i.nz = fneg float %i.nw
  %i.oa = fdiv float %i.nz, %i.nu
  br label %stbtt__solve_cubic.exit

bb.av:                                            ; preds = %bb.as
end_hunk_0
begin_hunk_1_@nk_window_set_focus:bb.a
  %.not29.i.i = icmp eq i8 %i.p, 0
  br i1 %.not29.i.i, label %.nk_find_window.exit_crit_edge, label %nk_strlen.exit.i, !llvm.loop !26

nk_stricmpn.exit.i:                               ; preds = %bb.g, %.lr.ph25.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01124.i, i64 528
  %.011.i = load ptr, ptr %i.z, align 8, !tbaa !294 ; 2 uses
  %.not.i = icmp eq ptr %.011.i, null
  br i1 %.not.i, label %nk_insert_window.exit, label %.lr.ph25.i, !llvm.loop !827

.nk_find_window.exit_crit_edge:                   ; preds = %bb.h
  br label %nk_find_window.exit, !llvm.loop !26

nk_find_window.exit:                              ; preds = %nk_strlen.exit.preheader.i, %nk_strlen.exit.i, %.nk_find_window.exit_crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 18544 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !813 ; 4 uses
  %.not17 = icmp eq ptr %i.ab, %.01124.i
  br i1 %.not17, label %nk_insert_window.exit, label %bb.i

bb.i:                                             ; preds = %nk_find_window.exit
  %i.ac = icmp eq ptr %.01124.i, %.01122.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.01124.i, i64 528
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !301 ; 6 uses
  br i1 %i.ac, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  store ptr %i.ae, ptr %i.e, align 8, !tbaa !300
  %.not39.i = icmp eq ptr %i.ae, null
  br i1 %.not39.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 536
  store ptr null, ptr %i.af, align 8, !tbaa !812
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %.not.i18 = icmp eq ptr %i.ae, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.01124.i, i64 536
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !812 ; 3 uses
  br i1 %.not.i18, label %._crit_edge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 536
  store ptr %.pre.i, ptr %i.ag, align 8, !tbaa !812
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.m, %bb.l
  %.not38.i = icmp eq ptr %.pre.i, null
  br i1 %.not38.i, label %bb.n, label %.sink.split.i

.sink.split.i:                                    ; preds = %._crit_edge.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre.i, i64 528
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !301
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %.sink.split.i, %._crit_edge.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 18552 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !811 ; 2 uses
  %i.ak = icmp eq ptr %.01124.i, %i.aj
  %.not41.i = icmp eq ptr %i.aj, null
  %or.cond.i19 = or i1 %i.ak, %.not41.i
  br i1 %or.cond.i19, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  store ptr %i.ab, ptr %i.ai, align 8, !tbaa !811
  %.not42.i = icmp eq ptr %i.ab, null
  br i1 %.not42.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 72 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !312
  %i.an = and i32 %i.am, -4097
  store i32 %i.an, ptr %i.al, align 8, !tbaa !312
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %.01124.i, i64 528 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 18576 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !252 ; 2 uses
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !252
  %.042.i = load ptr, ptr %i.e, align 8, !tbaa !294 ; 2 uses
  %.not4043.i = icmp eq ptr %.042.i, null
  br i1 %.not4043.i, label %._crit_edge.thread.i, label %.lr.ph.i21

bb.r:                                             ; preds = %.lr.ph.i21
  %i.as = getelementptr inbounds nuw i8, ptr %.044.i, i64 528
  %.0.i = load ptr, ptr %i.as, align 8, !tbaa !294 ; 2 uses
  %.not40.i22 = icmp eq ptr %.0.i, null
  br i1 %.not40.i22, label %._crit_edge.i23, label %.lr.ph.i21, !llvm.loop !828

.lr.ph.i21:                                       ; preds = %bb.q, %bb.r
  %.044.i = phi ptr [ %.0.i, %bb.r ], [ %.042.i, %bb.q ] ; 2 uses
  %i.at = icmp eq ptr %.044.i, %.01124.i
  br i1 %i.at, label %nk_insert_window.exit, label %bb.r

._crit_edge.i23:                                  ; preds = %bb.r
  %i.au = load ptr, ptr %i.aa, align 8, !tbaa !813 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 72 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !312
  %i.ax = or i32 %i.aw, 4096
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !312
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 528
  store ptr %.01124.i, ptr %i.ay, align 8, !tbaa !301
  %i.az = getelementptr inbounds nuw i8, ptr %.01124.i, i64 536
  store ptr %i.au, ptr %i.az, align 8, !tbaa !812
  store ptr null, ptr %i.ao, align 8, !tbaa !301
  store ptr %.01124.i, ptr %i.aa, align 8, !tbaa !813
  %i.ba = getelementptr inbounds nuw i8, ptr %.01124.i, i64 72 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !312
  %i.bc = and i32 %i.bb, -4097
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !312
  br label %nk_insert_window.exit.sink.split

._crit_edge.thread.i:                             ; preds = %bb.q
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  store ptr %.01124.i, ptr %i.e, align 8, !tbaa !300
  store ptr %.01124.i, ptr %i.aa, align 8, !tbaa !813
  br label %nk_insert_window.exit.sink.split

nk_insert_window.exit.sink.split:                 ; preds = %._crit_edge.thread.i, %._crit_edge.i23
  %.sink = phi i32 [ %i.aq, %._crit_edge.i23 ], [ 1, %._crit_edge.thread.i ]
  store i32 %.sink, ptr %i.ap, align 8, !tbaa !252
  br label %nk_insert_window.exit

nk_insert_window.exit:                            ; preds = %nk_stricmpn.exit.i, %.lr.ph.i21, %nk_insert_window.exit.sink.split, %nk_strlen.exit, %nk_find_window.exit
  %.3.i26 = phi ptr [ null, %nk_strlen.exit ], [ %.01124.i, %nk_find_window.exit ], [ %.01124.i, %nk_insert_window.exit.sink.split ], [ %.01124.i, %.lr.ph.i21 ], [ null, %nk_stricmpn.exit.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 18552
  store ptr %.3.i26, ptr %i.bd, align 8, !tbaa !811
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %nk_insert_window.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_rule_horizontal(ptr nofree noundef readonly captures(address_is_null) %0, i32 %1, i1 noundef zeroext %2) local_unnamed_addr #20 {
bb.a:
  %3 = alloca %struct.nk_rect, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  %i.a = call i32 @nk_widget(ptr noundef nonnull %3, ptr noundef %0)
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %nk_window_get_canvas.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !755  ; 2 uses
  %.not6.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %spec.select.i = select i1 %.not6.i, ptr null, ptr %i.d
  br label %nk_window_get_canvas.exit

nk_window_get_canvas.exit:                        ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ null, %bb.a ], [ %spec.select.i, %bb.b ]
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %nk_window_get_canvas.exit
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.f = load float, ptr %i.e, align 4            ; 2 uses
  %i.g = fcmp ogt float %i.f, 1.500000e+00
  %or.cond = select i1 %2, i1 %i.g, i1 false
  %i.h = fmul float %i.f, 5.000000e-01
  %i.i = select i1 %or.cond, float %i.h, float 0.000000e+00
  %i.j = load <2 x float>, ptr %3, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load <2 x float>, ptr %i.k, align 8
  tail call void @nk_fill_rect(ptr noundef %.0.i, <2 x float> %i.j, <2 x float> %i.l, float noundef %i.i, i32 %1)
  br label %bb.d

bb.d:                                             ; preds = %nk_window_get_canvas.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 4) i32 @nk_widget(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755  ; 2 uses
  %.not42 = icmp eq ptr %i.b, null
  br i1 %.not42, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !756
  %.not43 = icmp eq ptr %i.d, null
  br i1 %.not43, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @nk_panel_alloc_space(ptr noundef %0, ptr noundef nonnull %1)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !755  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !756  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  %i.i = load <4 x float>, ptr %0, align 4, !tbaa !8
  %i.j = fptosi <4 x float> %i.i to <4 x i32>
  %i.k = sitofp <4 x i32> %i.j to <4 x float>     ; 5 uses
  %2 = extractelement <4 x float> %i.k, i64 0
  %3 = extractelement <4 x float> %i.k, i64 1
  %4 = load <2 x float>, ptr %i.h, align 4, !tbaa !8
  %i.l = fptosi <2 x float> %4 to <2 x i32>
  %5 = sitofp <2 x i32> %i.l to <2 x float>       ; 5 uses
  %6 = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 3 uses
  %7 = fcmp ogt <2 x float> %6, %5
  %8 = extractelement <2 x float> %5, i64 0
  %9 = load <2 x float>, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !8
  %10 = fptosi <2 x float> %9 to <2 x i32>
  %11 = sitofp <2 x i32> %10 to <2 x float>
  %12 = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %13 = fadd <2 x float> %6, %12                  ; 4 uses
  store <4 x float> %i.k, ptr %0, align 4, !tbaa !8
  %14 = select <2 x i1> %7, <2 x float> %6, <2 x float> %5 ; 5 uses
  %15 = fadd <2 x float> %5, %11                  ; 4 uses
  %i.m = fcmp olt <2 x float> %15, %13
  %i.n = select <2 x i1> %i.m, <2 x float> %15, <2 x float> %13
  %i.o = fsub <2 x float> %i.n, %14               ; 2 uses
  %i.p = fcmp ogt <2 x float> %i.o, zeroinitializer
  %i.q = select <2 x i1> %i.p, <2 x float> %i.o, <2 x float> zeroinitializer ; 2 uses
  %16 = extractelement <2 x float> %15, i64 0
  %17 = fcmp ogt float %16, %2
  %18 = extractelement <2 x float> %13, i64 0
  %19 = fcmp ogt float %18, %8
  %or.cond = select i1 %17, i1 %19, i1 false
  %20 = extractelement <2 x float> %15, i64 1
  %21 = fcmp ogt float %20, %3
  %or.cond56 = select i1 %or.cond, i1 %21, i1 false
  %22 = fcmp ogt <2 x float> %13, %5
  %i.r = extractelement <2 x i1> %22, i64 1
  %or.cond57 = select i1 %or.cond56, i1 %i.r, i1 false
  br i1 %or.cond57, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 504
  %i.t = load i8, ptr %i.s, align 8, !tbaa !829, !range !79, !noundef !80
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.w = load float, ptr %i.v, align 4, !tbaa !713 ; 2 uses
  %i.x = extractelement <2 x float> %14, i64 0
  %23 = fcmp ole float %i.x, %i.w
  %foldExtExtBinop = fadd <2 x float> %14, %i.q
  %i.y = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.z = fcmp olt float %i.w, %i.y
  %or.cond59 = select i1 %23, i1 %i.z, i1 false
  br i1 %or.cond59, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !714 ; 2 uses
  %i.ac = extractelement <2 x float> %14, i64 1
  %24 = fcmp ugt float %i.ac, %i.ab
  br i1 %24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop65 = fadd <2 x float> %14, %i.q
  %i.ad = extractelement <2 x float> %foldExtExtBinop65, i64 1
  %i.ae = fcmp olt float %i.ab, %i.ad
  %spec.select = select i1 %i.ae, i32 1, i32 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.g, %bb.e, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ 2, %bb.f ], [ 3, %bb.e ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %spec.select, %bb.h ], [ 2, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_popup_begin(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, <2 x float> %4, <2 x float> %5) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755  ; 19 uses
  %.not83 = icmp eq ptr %i.b, null
  br i1 %.not83, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !756
  %.not84 = icmp eq ptr %i.d, null
  br i1 %.not84, label %bb.x, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not5.i = icmp eq ptr %2, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.e = load i8, ptr %2, align 1, !tbaa !11
  %.not4.i97 = icmp eq i8 %i.e, 0
  br i1 %.not4.i97, label %nk_strlen.exit, label %.lr.ph.i.preheader109

.lr.ph.i.preheader109:                            ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %2, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.f = trunc i64 %strlen to i32
  %i.g = add i32 %i.f, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader109, %.lr.ph.i.preheader, %bb.d
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ 0, %.lr.ph.i.preheader ], [ %i.g, %.lr.ph.i.preheader109 ]
  %i.h = tail call i32 @nk_murmur_hash(ptr noundef %2, i32 noundef %.0.lcssa.i, i32 noundef 4) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !814  ; 2 uses
  %.not85 = icmp eq ptr %i.j, null
  br i1 %.not85, label %bb.e, label %bb.f

bb.e:                                             ; preds = %nk_strlen.exit
  %i.k = tail call fastcc ptr @nk_create_window(ptr noundef %0) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 544
  store ptr %i.b, ptr %i.l, align 8, !tbaa !870
  store ptr %i.k, ptr %i.i, align 8, !tbaa !814
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 420
  store i8 0, ptr %i.m, align 4, !tbaa !833
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 4, ptr %i.n, align 8, !tbaa !908
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %nk_strlen.exit
  %.077 = phi ptr [ %i.j, %nk_strlen.exit ], [ %i.k, %bb.e ] ; 17 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 416 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !909
  %.not86 = icmp eq i32 %i.p, %i.h
  br i1 %.not86, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 420 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4, !tbaa !833, !range !79, !noundef !80
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.x, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = ptrtoint ptr %.077 to i64
  %i.u = and i64 %i.t, 3                          ; 3 uses
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %.loopexit46.i.i.thread, label %.loopexit46.i.i

.loopexit46.i.i.thread:                           ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(552) %.077, i8 0, i64 544, i1 false), !tbaa !10
  br label %nk_zero.exit

.loopexit46.i.i:                                  ; preds = %bb.h
  %i.v = sub nuw nsw i64 4, %i.u                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.077, i8 0, i64 %i.v, i1 false), !tbaa !11
  %scevgep.i.i = getelementptr i8, ptr %.077, i64 %i.v ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(548) %scevgep.i.i, i8 0, i64 548, i1 false), !tbaa !10
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 548
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 %i.u, i1 false), !tbaa !11
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i.thread, %.loopexit46.i.i
  store i32 %i.h, ptr %i.o, align 8, !tbaa !909
  store i8 1, ptr %i.q, align 4, !tbaa !833
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 4, ptr %i.w, align 8, !tbaa !908
  br label %bb.i

bb.i:                                             ; preds = %nk_zero.exit, %bb.f
  store ptr %.077, ptr %i.a, align 8, !tbaa !755
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !756
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 68
  %i.z = load <2 x float>, ptr %i.y, align 4, !tbaa !8
  %i.aa = fadd <2 x float> %4, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.077, i64 544
  store ptr %i.b, ptr %i.ab, align 8, !tbaa !870
  %i.ac = getelementptr inbounds nuw i8, ptr %.077, i64 76
  store <2 x float> %i.aa, ptr %i.ac, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.077, i64 84
  store <2 x float> %5, ptr %.sroa.6.0..sroa_idx, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 18580
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !314
  store i32 %i.ae, ptr %.077, align 8, !tbaa !313
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 6 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !820 ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i89, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 576
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !821
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !820
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !800
  %.not18.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not18.i.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 18496 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !799 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !838 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !797
  %.not18.i.i.i = icmp ult i32 %i.ao, %i.aq
  br i1 %.not18.i.i.i, label %nk_pool_alloc.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !798
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %nk_create_panel.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.av = load i32, ptr %i.au, align 8, !tbaa !797
  %i.aw = add i32 %i.av, -1
  %i.ax = zext i32 %i.aw to i64
  %i.ay = mul nuw nsw i64 %i.ax, 592
  %i.az = add nuw nsw i64 %i.ay, 608
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 18472
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !839
  %i.bc = load ptr, ptr %i.al, align 8
  %i.bd = tail call ptr %i.bb(ptr %i.bc, ptr noundef null, i64 noundef %i.az) #50, !inline_history !840 ; 4 uses
  %i.be = load ptr, ptr %i.am, align 8, !tbaa !799
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !803
  store ptr %i.bd, ptr %i.am, align 8, !tbaa !799
  store i32 0, ptr %i.bd, align 8, !tbaa !838
  br label %nk_pool_alloc.exit.i.i

nk_pool_alloc.exit.i.i:                           ; preds = %.thread.i.i.i, %bb.m
  %i.bg = phi i32 [ 0, %.thread.i.i.i ], [ %i.ao, %bb.m ] ; 2 uses
  %i.bh = phi ptr [ %i.bd, %.thread.i.i.i ], [ %i.an, %bb.m ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = add nuw i32 %i.bg, 1
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !838
  %i.bk = zext i32 %i.bg to i64
  %i.bl = getelementptr inbounds nuw [592 x i8], ptr %i.bi, i64 %i.bk
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 9736
  %i.bn = tail call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %i.bm, i32 noundef 1, i64 noundef 592, i64 noundef 8) ; 2 uses
  %.not19.i.i = icmp eq ptr %i.bn, null
  br i1 %.not19.i.i, label %nk_create_panel.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %nk_pool_alloc.exit.i.i, %bb.j
  %.0.i.i = phi ptr [ %i.ag, %bb.j ], [ %i.bl, %nk_pool_alloc.exit.i.i ], [ %i.bn, %bb.o ] ; 6 uses
  %i.bo = ptrtoint ptr %.0.i.i to i64
  %i.bp = and i64 %i.bo, 3                        ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i.i, label %.loopexit46.i.i.thread.i.i, label %.loopexit46.i.i.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %bb.p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(592) %.0.i.i, i8 0, i64 576, i1 false), !tbaa !10
  br label %nk_zero.exit.i.i

.loopexit46.i.i.i.i:                              ; preds = %bb.p
  %i.bq = sub nuw nsw i64 4, %i.bp                ; 2 uses
end_hunk_1
