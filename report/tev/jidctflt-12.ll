Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/jidctflt-12?download=true
begin_hunk_0_@jpeg12_idct_float:bb.a
  %i.t = zext i32 %4 to i64
  br label %bb.l

bb.d:                                             ; preds = %bb.c, %bb.k
  %.0216 = phi i32 [ 8, %bb.c ], [ %i.ex, %bb.k ] ; 2 uses
  %.0207215 = phi ptr [ %i.a, %bb.c ], [ %.1208, %bb.k ] ; 16 uses
  %.0209214 = phi ptr [ %i.o, %bb.c ], [ %.1210, %bb.k ] ; 10 uses
  %.0211213 = phi ptr [ %2, %bb.c ], [ %.1212, %bb.k ] ; 15 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0211213, i64 16
  %i.v = load i16, ptr %i.u, align 2, !tbaa !42   ; 2 uses
  %i.w = icmp eq i16 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %.0211213, i64 32
  %i.y = load i16, ptr %i.x, align 2, !tbaa !42   ; 2 uses
  %i.z = icmp eq i16 %i.y, 0
  %or.cond = select i1 %i.w, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.0211213, i64 48
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !42
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.0211213, i64 64
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !42
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.0211213, i64 80
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !42
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.0211213, i64 96
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !42
  %i.al = icmp eq i16 %i.ak, 0
  br i1 %i.al, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.0211213, i64 112
  %i.an = load i16, ptr %i.am, align 2, !tbaa !42
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.ap = load i16, ptr %.0211213, align 2, !tbaa !42
  %i.aq = sitofp i16 %i.ap to float
  %i.ar = load float, ptr %.0209214, align 4, !tbaa !44
  %i.as = fmul float %i.ar, 1.250000e-01
  %i.at = fmul float %i.as, %i.aq
  %i.au = fmul float %i.m, %i.at                  ; 8 uses
  store float %i.au, ptr %.0207215, align 4, !tbaa !44
  %i.av = getelementptr inbounds nuw i8, ptr %.0207215, i64 32
  store float %i.au, ptr %i.av, align 4, !tbaa !44
  %i.aw = getelementptr inbounds nuw i8, ptr %.0207215, i64 64
  store float %i.au, ptr %i.aw, align 4, !tbaa !44
  %i.ax = getelementptr inbounds nuw i8, ptr %.0207215, i64 96
  store float %i.au, ptr %i.ax, align 4, !tbaa !44
  %i.ay = getelementptr inbounds nuw i8, ptr %.0207215, i64 128
  store float %i.au, ptr %i.ay, align 4, !tbaa !44
  %i.az = getelementptr inbounds nuw i8, ptr %.0207215, i64 160
  store float %i.au, ptr %i.az, align 4, !tbaa !44
  %i.ba = getelementptr inbounds nuw i8, ptr %.0207215, i64 192
  store float %i.au, ptr %i.ba, align 4, !tbaa !44
  br label %bb.k

._crit_edge:                                      ; preds = %bb.d, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.bb = phi i16 [ %i.y, %bb.d ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.bc = load i16, ptr %.0211213, align 2, !tbaa !42
  %i.bd = load float, ptr %.0209214, align 4, !tbaa !44
  %i.be = getelementptr inbounds nuw i8, ptr %.0209214, i64 64
  %i.bf = load float, ptr %i.be, align 4, !tbaa !44
  %i.bg = getelementptr inbounds nuw i8, ptr %.0211213, i64 64
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !42
  %i.bi = getelementptr inbounds nuw i8, ptr %.0209214, i64 128
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !44
  %i.bk = getelementptr inbounds nuw i8, ptr %.0211213, i64 96
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !42
  %i.bm = getelementptr inbounds nuw i8, ptr %.0209214, i64 192
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !44
  %i.bo = insertelement <2 x i16> poison, i16 %i.bc, i64 0
  %i.bp = insertelement <2 x i16> %i.bo, i16 %i.bb, i64 1
  %i.bq = sitofp <2 x i16> %i.bp to <2 x float>
  %i.br = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %i.bf, i64 1
  %i.bt = fmul <2 x float> %i.bs, splat (float 1.250000e-01)
  %i.bu = fmul <2 x float> %i.bt, %i.bq
  %i.bv = fmul <2 x float> %i.s, %i.bu            ; 3 uses
  %i.bw = insertelement <2 x i16> poison, i16 %i.bh, i64 0
  %i.bx = insertelement <2 x i16> %i.bw, i16 %i.bl, i64 1
  %i.by = sitofp <2 x i16> %i.bx to <2 x float>
  %i.bz = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.bn, i64 1
  %i.cb = fmul <2 x float> %i.ca, splat (float 1.250000e-01)
  %i.cc = fmul <2 x float> %i.cb, %i.by
  %i.cd = fmul <2 x float> %i.s, %i.cc            ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.bv, %i.cd
  %i.ce = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.cf = fadd <2 x float> %i.bv, %i.cd           ; 2 uses
  %foldExtExtBinop223 = fsub <2 x float> %i.bv, %i.cd
  %i.cg = extractelement <2 x float> %foldExtExtBinop223, i64 1
  %i.ch = extractelement <2 x float> %i.cf, i64 1 ; 3 uses
  %i.ci = fneg float %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.cg, float f0x3FB504F3, float %i.ci) ; 2 uses
  %i.ck = extractelement <2 x float> %i.cf, i64 0 ; 2 uses
  %i.cl = fadd float %i.ck, %i.ch                 ; 2 uses
  %i.cm = fsub float %i.ck, %i.ch                 ; 2 uses
  %i.cn = fadd float %i.ce, %i.cj                 ; 2 uses
  %i.co = fsub float %i.ce, %i.cj                 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0209214, i64 32
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !44
  %i.cr = getelementptr inbounds nuw i8, ptr %.0211213, i64 48
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !42
  %i.ct = getelementptr inbounds nuw i8, ptr %.0209214, i64 96
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !44
  %i.cv = getelementptr inbounds nuw i8, ptr %.0211213, i64 80
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !42
  %i.cx = getelementptr inbounds nuw i8, ptr %.0209214, i64 160
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !44
  %i.cz = getelementptr inbounds nuw i8, ptr %.0211213, i64 112
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !42
  %i.db = getelementptr inbounds nuw i8, ptr %.0209214, i64 224
  %i.dc = load float, ptr %i.db, align 4, !tbaa !44
  %i.dd = insertelement <4 x i16> poison, i16 %i.cs, i64 0
  %i.de = insertelement <4 x i16> %i.dd, i16 %i.cw, i64 1
  %i.df = insertelement <4 x i16> %i.de, i16 %i.v, i64 2
  %i.dg = insertelement <4 x i16> %i.df, i16 %i.da, i64 3
  %i.dh = sitofp <4 x i16> %i.dg to <4 x float>
  %i.di = insertelement <4 x float> poison, float %i.cu, i64 0
  %i.dj = insertelement <4 x float> %i.di, float %i.cy, i64 1
  %i.dk = insertelement <4 x float> %i.dj, float %i.cq, i64 2
  %i.dl = insertelement <4 x float> %i.dk, float %i.dc, i64 3
  %i.dm = fmul <4 x float> %i.dl, splat (float 1.250000e-01)
  %i.dn = fmul <4 x float> %i.dm, %i.dh
  %i.do = fmul <4 x float> %i.q, %i.dn            ; 6 uses
  %shift = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop225 = fadd <4 x float> %i.do, %shift
  %i.dp = extractelement <4 x float> %foldExtExtBinop225, i64 0 ; 2 uses
  %shift227 = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop228 = fadd <4 x float> %i.do, %shift227
  %i.dq = extractelement <4 x float> %foldExtExtBinop228, i64 2 ; 2 uses
  %i.dr = fadd float %i.dp, %i.dq                 ; 3 uses
  %i.ds = fsub float %i.dq, %i.dp
  %i.dt = fmul float %i.ds, f0x3FB504F3
  %i.du = shufflevector <4 x float> %i.do, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.dv = shufflevector <4 x float> %i.do, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.dw = fsub <2 x float> %i.du, %i.dv           ; 3 uses
  %shift230 = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop231 = fadd <2 x float> %i.dw, %shift230
  %i.dx = extractelement <2 x float> %foldExtExtBinop231, i64 0
  %i.dy = fmul float %i.dx, f0x3FEC835E
  %i.dz = fneg <2 x float> %i.dw
  %i.ea = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> <float f0x40273D75, float f0x3F8A8BD4>, <2 x float> %i.eb) ; 2 uses
  %i.ed = extractelement <2 x float> %i.ec, i64 0
  %i.ee = fsub float %i.ed, %i.dr                 ; 3 uses
  %i.ef = fsub float %i.dt, %i.ee                 ; 3 uses
  %i.eg = extractelement <2 x float> %i.ec, i64 1
  %i.eh = fsub float %i.eg, %i.ef                 ; 2 uses
  %i.ei = fadd float %i.cl, %i.dr
  store float %i.ei, ptr %.0207215, align 4, !tbaa !44
  %i.ej = fsub float %i.cl, %i.dr
  %i.ek = getelementptr inbounds nuw i8, ptr %.0207215, i64 224
  store float %i.ej, ptr %i.ek, align 4, !tbaa !44
  %i.el = fadd float %i.cn, %i.ee
  %i.em = getelementptr inbounds nuw i8, ptr %.0207215, i64 32
  store float %i.el, ptr %i.em, align 4, !tbaa !44
  %i.en = fsub float %i.cn, %i.ee
  %i.eo = getelementptr inbounds nuw i8, ptr %.0207215, i64 192
  store float %i.en, ptr %i.eo, align 4, !tbaa !44
  %i.ep = fadd float %i.co, %i.ef
  %i.eq = getelementptr inbounds nuw i8, ptr %.0207215, i64 64
  store float %i.ep, ptr %i.eq, align 4, !tbaa !44
  %i.er = fsub float %i.co, %i.ef
  %i.es = getelementptr inbounds nuw i8, ptr %.0207215, i64 160
  store float %i.er, ptr %i.es, align 4, !tbaa !44
  %i.et = fadd float %i.cm, %i.eh
  %i.eu = getelementptr inbounds nuw i8, ptr %.0207215, i64 96
  store float %i.et, ptr %i.eu, align 4, !tbaa !44
  %i.ev = fsub float %i.cm, %i.eh
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %.sink221 = phi i64 [ 128, %._crit_edge ], [ 224, %bb.j ]
  %.sink = phi float [ %i.ev, %._crit_edge ], [ %i.au, %bb.j ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.0207215, i64 %.sink221
  store float %.sink, ptr %i.ew, align 4, !tbaa !44
  %.1208 = getelementptr inbounds nuw i8, ptr %.0207215, i64 4
  %.1210 = getelementptr inbounds nuw i8, ptr %.0209214, i64 4
  %.1212 = getelementptr inbounds nuw i8, ptr %.0211213, i64 2
  %i.ex = add nsw i32 %.0216, -1
  %i.ey = icmp samesign ugt i32 %.0216, 1
  br i1 %i.ey, label %bb.d, label %.preheader, !llvm.loop !9

bb.l:                                             ; preds = %.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.2217 = phi ptr [ %i.a, %.preheader ], [ %i.hw, %bb.l ] ; 9 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !47
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %i.t ; 8 uses
  %5 = load float, ptr %.2217, align 4, !tbaa !44
  %6 = fadd float %5, 2.048500e+03                ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.2217, i64 16
  %7 = load float, ptr %i.fc, align 4, !tbaa !44  ; 2 uses
  %8 = fadd float %6, %7                          ; 2 uses
  %9 = fsub float %6, %7                          ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.2217, i64 8
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !44 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %.2217, i64 24
  %11 = load float, ptr %10, align 4, !tbaa !44   ; 2 uses
  %12 = fadd float %i.fe, %11                     ; 3 uses
  %13 = fsub float %i.fe, %11
  %14 = fneg float %12
  %15 = tail call float @llvm.fmuladd.f32(float %13, float f0x3FB504F3, float %14) ; 2 uses
  %16 = fadd float %8, %12                        ; 2 uses
  %17 = fsub float %8, %12                        ; 2 uses
  %18 = fadd float %9, %15                        ; 2 uses
  %19 = fsub float %9, %15                        ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %.2217, i64 20
  %21 = load float, ptr %20, align 4, !tbaa !44   ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %.2217, i64 12
  %23 = load float, ptr %22, align 4, !tbaa !44   ; 2 uses
  %24 = fadd float %21, %23                       ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %.2217, i64 4
  %26 = load float, ptr %25, align 4, !tbaa !44   ; 2 uses
  %27 = getelementptr inbounds nuw i8, ptr %.2217, i64 28
  %28 = load float, ptr %27, align 4, !tbaa !44   ; 2 uses
  %i.ff = fadd float %26, %28                     ; 2 uses
  %29 = fadd float %24, %i.ff                     ; 3 uses
  %30 = fsub float %i.ff, %24
  %31 = fmul float %30, f0x3FB504F3
  %32 = insertelement <2 x float> poison, float %26, i64 0
  %33 = insertelement <2 x float> %32, float %21, i64 1
  %i.fg = insertelement <2 x float> poison, float %28, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %23, i64 1
  %i.fi = fsub <2 x float> %33, %i.fh             ; 3 uses
  %shift233 = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop234 = fadd <2 x float> %shift233, %i.fi
  %i.fj = extractelement <2 x float> %foldExtExtBinop234, i64 0
  %i.fk = fmul float %i.fj, f0x3FEC835E
  %i.fl = fneg <2 x float> %i.fi
  %i.fm = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> <float f0x3F8A8BD4, float f0x40273D75>, <2 x float> %i.fn) ; 2 uses
  %i.fp = extractelement <2 x float> %i.fo, i64 1
  %34 = fsub float %i.fp, %29                     ; 3 uses
  %i.fq = fsub float %31, %34                     ; 3 uses
  %i.fr = extractelement <2 x float> %i.fo, i64 0
  %i.fs = fsub float %i.fr, %i.fq                 ; 2 uses
  %i.ft = fadd float %16, %29
  %i.fu = fptosi float %i.ft to i32
  %i.fv = and i32 %i.fu, 16383
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !42
  store i16 %i.fy, ptr %i.fb, align 2, !tbaa !42
  %i.fz = fsub float %16, %29
  %i.ga = fptosi float %i.fz to i32
  %i.gb = and i32 %i.ga, 16383
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.gc
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !42
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fb, i64 14
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !42
  %i.gg = fadd float %18, %34
  %i.gh = fptosi float %i.gg to i32
  %i.gi = and i32 %i.gh, 16383
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.gj
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !42
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  store i16 %i.gl, ptr %i.gm, align 2, !tbaa !42
  %i.gn = fsub float %18, %34
  %i.go = fptosi float %i.gn to i32
  %i.gp = and i32 %i.go, 16383
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.gq
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !42
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i16 %i.gs, ptr %i.gt, align 2, !tbaa !42
  %i.gu = fadd float %19, %i.fq
  %i.gv = fptosi float %i.gu to i32
  %i.gw = and i32 %i.gv, 16383
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.gx
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !42
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  store i16 %i.gz, ptr %i.ha, align 2, !tbaa !42
  %i.hb = fsub float %19, %i.fq
  %i.hc = fptosi float %i.hb to i32
  %i.hd = and i32 %i.hc, 16383
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.he
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !42
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fb, i64 10
  store i16 %i.hg, ptr %i.hh, align 2, !tbaa !42
  %i.hi = fadd float %17, %i.fs
  %i.hj = fptosi float %i.hi to i32
  %i.hk = and i32 %i.hj, 16383
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.hl
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !42
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fb, i64 6
  store i16 %i.hn, ptr %i.ho, align 2, !tbaa !42
  %i.hp = fsub float %17, %i.fs
  %i.hq = fptosi float %i.hp to i32
  %i.hr = and i32 %i.hq, 16383
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.hs
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !42
  %i.hv = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i16 %i.hu, ptr %i.hv, align 2, !tbaa !42
  %i.hw = getelementptr inbounds nuw i8, ptr %.2217, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.m, label %bb.l, !llvm.loop !10

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !45}
!10 = distinct !{!10, !45}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTS14jpeg_error_mgr", !11, i64 0}
!13 = !{!"p1 _ZTS15jpeg_memory_mgr", !11, i64 0}
!14 = !{!"p1 _ZTS17jpeg_progress_mgr", !11, i64 0}
!15 = !{!"p1 _ZTS15jpeg_source_mgr", !11, i64 0}
!16 = !{!"double", !5, i64 0}
!17 = !{!"any p2 pointer", !11, i64 0}
!18 = !{!"p2 omnipotent char", !17, i64 0}
!19 = !{!"p1 int", !11, i64 0}
!20 = !{!"short", !5, i64 0}
!21 = !{!"p1 _ZTS18jpeg_marker_struct", !11, i64 0}
!22 = !{!"p1 omnipotent char", !11, i64 0}
!23 = !{!"p1 _ZTS18jpeg_decomp_master", !11, i64 0}
!24 = !{!"p1 _ZTS22jpeg_d_main_controller", !11, i64 0}
!25 = !{!"p1 _ZTS22jpeg_d_coef_controller", !11, i64 0}
!26 = !{!"p1 _ZTS22jpeg_d_post_controller", !11, i64 0}
!27 = !{!"p1 _ZTS21jpeg_input_controller", !11, i64 0}
!28 = !{!"p1 _ZTS18jpeg_marker_reader", !11, i64 0}
!29 = !{!"p1 _ZTS20jpeg_entropy_decoder", !11, i64 0}
!30 = !{!"p1 _ZTS16jpeg_inverse_dct", !11, i64 0}
!31 = !{!"p1 _ZTS14jpeg_upsampler", !11, i64 0}
!32 = !{!"p1 _ZTS22jpeg_color_deconverter", !11, i64 0}
!33 = !{!"p1 _ZTS20jpeg_color_quantizer", !11, i64 0}
!34 = !{!"jpeg_decompress_struct", !12, i64 0, !13, i64 8, !14, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !15, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !18, i64 160, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !19, i64 192, !5, i64 200, !5, i64 232, !5, i64 264, !6, i64 296, !11, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !5, i64 324, !5, i64 340, !5, i64 356, !6, i64 372, !6, i64 376, !5, i64 380, !5, i64 381, !5, i64 382, !20, i64 384, !20, i64 386, !6, i64 388, !5, i64 392, !6, i64 396, !21, i64 400, !6, i64 408, !6, i64 412, !6, i64 416, !6, i64 420, !6, i64 424, !22, i64 432, !6, i64 440, !5, i64 448, !6, i64 480, !6, i64 484, !6, i64 488, !5, i64 492, !6, i64 532, !6, i64 536, !6, i64 540, !6, i64 544, !6, i64 548, !19, i64 552, !6, i64 560, !6, i64 564, !23, i64 568, !24, i64 576, !25, i64 584, !26, i64 592, !27, i64 600, !28, i64 608, !29, i64 616, !30, i64 624, !31, i64 632, !32, i64 640, !33, i64 648}
!35 = !{!34, !22, i64 432}
!36 = !{!34, !23, i64 568}
!37 = !{!"jpeg_decomp_master", !11, i64 0, !11, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !5, i64 32, !5, i64 72, !6, i64 112, !6, i64 116, !21, i64 120, !6, i64 128, !6, i64 132, !6, i64 136}
!38 = !{!37, !6, i64 136}
!39 = !{!34, !6, i64 296}
!40 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !11, i64 80, !11, i64 88}
!41 = !{!40, !11, i64 88}
!42 = !{!20, !20, i64 0}
!43 = !{!"float", !5, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"p1 short", !11, i64 0}
!47 = !{!46, !46, i64 0}
end_hunk_0
