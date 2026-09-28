Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jidctflt-12?download=true
begin_hunk_0_@jpeg12_idct_float:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.0211213, i64 16
  %i.v = load i16, ptr %i.u, align 2, !tbaa !41   ; 2 uses
  %i.w = icmp eq i16 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %.0211213, i64 32
  %i.y = load i16, ptr %i.x, align 2, !tbaa !41   ; 2 uses
  %i.z = icmp eq i16 %i.y, 0
  %or.cond = select i1 %i.w, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.0211213, i64 48
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !41
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.0211213, i64 64
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !41
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.0211213, i64 80
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !41
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.0211213, i64 96
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !41
  %i.al = icmp eq i16 %i.ak, 0
  br i1 %i.al, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.0211213, i64 112
  %i.an = load i16, ptr %i.am, align 2, !tbaa !41
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.ap = load i16, ptr %.0211213, align 2, !tbaa !41
  %i.aq = sitofp i16 %i.ap to float
  %i.ar = load float, ptr %.0209214, align 4, !tbaa !43
  %i.as = fmul float %i.ar, 1.250000e-01
  %i.at = fmul float %i.as, %i.aq
  %i.au = fmul float %i.m, %i.at                  ; 8 uses
  store float %i.au, ptr %.0207215, align 4, !tbaa !43
  %i.av = getelementptr inbounds nuw i8, ptr %.0207215, i64 32
  store float %i.au, ptr %i.av, align 4, !tbaa !43
  %i.aw = getelementptr inbounds nuw i8, ptr %.0207215, i64 64
  store float %i.au, ptr %i.aw, align 4, !tbaa !43
  %i.ax = getelementptr inbounds nuw i8, ptr %.0207215, i64 96
  store float %i.au, ptr %i.ax, align 4, !tbaa !43
  %i.ay = getelementptr inbounds nuw i8, ptr %.0207215, i64 128
  store float %i.au, ptr %i.ay, align 4, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %.0207215, i64 160
  store float %i.au, ptr %i.az, align 4, !tbaa !43
  %i.ba = getelementptr inbounds nuw i8, ptr %.0207215, i64 192
  store float %i.au, ptr %i.ba, align 4, !tbaa !43
  br label %bb.k

._crit_edge:                                      ; preds = %bb.d, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.bb = phi i16 [ %i.y, %bb.d ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.bc = load i16, ptr %.0211213, align 2, !tbaa !41
  %i.bd = load float, ptr %.0209214, align 4, !tbaa !43
  %i.be = getelementptr inbounds nuw i8, ptr %.0209214, i64 64
  %i.bf = load float, ptr %i.be, align 4, !tbaa !43
  %i.bg = getelementptr inbounds nuw i8, ptr %.0211213, i64 64
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !41
  %i.bi = getelementptr inbounds nuw i8, ptr %.0209214, i64 128
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !43
  %i.bk = getelementptr inbounds nuw i8, ptr %.0211213, i64 96
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !41
  %i.bm = getelementptr inbounds nuw i8, ptr %.0209214, i64 192
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !43
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
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !43
  %i.cr = getelementptr inbounds nuw i8, ptr %.0211213, i64 48
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !41
  %i.ct = getelementptr inbounds nuw i8, ptr %.0209214, i64 96
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !43
  %i.cv = getelementptr inbounds nuw i8, ptr %.0211213, i64 80
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !41
  %i.cx = getelementptr inbounds nuw i8, ptr %.0209214, i64 160
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !43
  %i.cz = getelementptr inbounds nuw i8, ptr %.0211213, i64 112
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !41
  %i.db = getelementptr inbounds nuw i8, ptr %.0209214, i64 224
  %i.dc = load float, ptr %i.db, align 4, !tbaa !43
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
  store float %i.ei, ptr %.0207215, align 4, !tbaa !43
  %i.ej = fsub float %i.cl, %i.dr
  %i.ek = getelementptr inbounds nuw i8, ptr %.0207215, i64 224
  store float %i.ej, ptr %i.ek, align 4, !tbaa !43
  %i.el = fadd float %i.cn, %i.ee
  %i.em = getelementptr inbounds nuw i8, ptr %.0207215, i64 32
  store float %i.el, ptr %i.em, align 4, !tbaa !43
  %i.en = fsub float %i.cn, %i.ee
  %i.eo = getelementptr inbounds nuw i8, ptr %.0207215, i64 192
  store float %i.en, ptr %i.eo, align 4, !tbaa !43
  %i.ep = fadd float %i.co, %i.ef
  %i.eq = getelementptr inbounds nuw i8, ptr %.0207215, i64 64
  store float %i.ep, ptr %i.eq, align 4, !tbaa !43
  %i.er = fsub float %i.co, %i.ef
  %i.es = getelementptr inbounds nuw i8, ptr %.0207215, i64 160
  store float %i.er, ptr %i.es, align 4, !tbaa !43
  %i.et = fadd float %i.cm, %i.eh
  %i.eu = getelementptr inbounds nuw i8, ptr %.0207215, i64 96
  store float %i.et, ptr %i.eu, align 4, !tbaa !43
  %i.ev = fsub float %i.cm, %i.eh
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %.sink221 = phi i64 [ 128, %._crit_edge ], [ 224, %bb.j ]
  %.sink = phi float [ %i.ev, %._crit_edge ], [ %i.au, %bb.j ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.0207215, i64 %.sink221
  store float %.sink, ptr %i.ew, align 4, !tbaa !43
  %.1208 = getelementptr inbounds nuw i8, ptr %.0207215, i64 4
  %.1210 = getelementptr inbounds nuw i8, ptr %.0209214, i64 4
  %.1212 = getelementptr inbounds nuw i8, ptr %.0211213, i64 2
  %i.ex = add nsw i32 %.0216, -1
  %i.ey = icmp samesign ugt i32 %.0216, 1
  br i1 %i.ey, label %bb.d, label %.preheader, !llvm.loop !8

bb.l:                                             ; preds = %.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.2217 = phi ptr [ %i.a, %.preheader ], [ %i.iz, %bb.l ] ; 9 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !46
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %i.t ; 8 uses
  %i.fc = load float, ptr %.2217, align 4, !tbaa !43
  %i.fd = getelementptr inbounds nuw i8, ptr %.2217, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %.2217, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %.2217, i64 24
  %i.fg = getelementptr inbounds nuw i8, ptr %.2217, i64 20
  %i.fh = getelementptr inbounds nuw i8, ptr %.2217, i64 12
  %i.fi = getelementptr inbounds nuw i8, ptr %.2217, i64 4
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !43 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.2217, i64 28
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !43 ; 2 uses
  %i.fm = fadd float %i.fj, %i.fl                 ; 2 uses
  %i.fn = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.fo = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fb, i64 14
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.ft = fadd float %i.fc, 2.048500e+03          ; 2 uses
  %i.fu = load float, ptr %i.fd, align 4, !tbaa !43 ; 2 uses
  %i.fv = fadd float %i.ft, %i.fu                 ; 2 uses
  %i.fw = fsub float %i.ft, %i.fu                 ; 2 uses
  %5 = load float, ptr %i.fe, align 4, !tbaa !43  ; 2 uses
  %i.fx = load float, ptr %i.ff, align 4, !tbaa !43 ; 2 uses
  %i.fy = fadd float %5, %i.fx                    ; 3 uses
  %i.fz = fsub float %5, %i.fx
  %i.ga = fneg float %i.fy
  %i.gb = tail call float @llvm.fmuladd.f32(float %i.fz, float f0x3FB504F3, float %i.ga) ; 2 uses
  %i.gc = fadd float %i.fv, %i.fy                 ; 2 uses
  %i.gd = fsub float %i.fv, %i.fy                 ; 2 uses
  %i.ge = fadd float %i.fw, %i.gb                 ; 2 uses
  %i.gf = fsub float %i.fw, %i.gb                 ; 2 uses
  %6 = load float, ptr %i.fg, align 4, !tbaa !43  ; 2 uses
  %i.gg = load float, ptr %i.fh, align 4, !tbaa !43 ; 2 uses
  %i.gh = fadd float %6, %i.gg                    ; 2 uses
  %i.gi = fadd float %i.gh, %i.fm                 ; 3 uses
  %i.gj = fsub float %i.fm, %i.gh
  %i.gk = fmul float %i.gj, f0x3FB504F3
  %7 = insertelement <2 x float> %i.fn, float %6, i64 1
  %i.gl = insertelement <2 x float> %i.fo, float %i.gg, i64 1
  %i.gm = fsub <2 x float> %7, %i.gl              ; 3 uses
  %shift233 = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop234 = fadd <2 x float> %shift233, %i.gm
  %i.gn = extractelement <2 x float> %foldExtExtBinop234, i64 0
  %i.go = fmul float %i.gn, f0x3FEC835E
  %i.gp = fneg <2 x float> %i.gm
  %i.gq = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gp, <2 x float> <float f0x3F8A8BD4, float f0x40273D75>, <2 x float> %i.gr) ; 2 uses
  %i.gt = extractelement <2 x float> %i.gs, i64 1
  %i.gu = fsub float %i.gt, %i.gi                 ; 3 uses
  %i.gv = fsub float %i.gk, %i.gu                 ; 3 uses
  %i.gw = extractelement <2 x float> %i.gs, i64 0
  %i.gx = fsub float %i.gw, %i.gv                 ; 2 uses
  %i.gy = fadd float %i.gc, %i.gi
  %i.gz = fsub float %i.gc, %i.gi
  %i.ha = fadd float %i.gf, %i.gv
  %i.hb = fsub float %i.gf, %i.gv
  %i.hc = insertelement <4 x float> poison, float %i.gy, i64 0
  %i.hd = insertelement <4 x float> %i.hc, float %i.gz, i64 1
  %i.he = insertelement <4 x float> %i.hd, float %i.ha, i64 2
  %i.hf = insertelement <4 x float> %i.he, float %i.hb, i64 3
  %i.hg = fptosi <4 x float> %i.hf to <4 x i32>
  %i.hh = and <4 x i32> %i.hg, splat (i32 16383)  ; 4 uses
  %i.hi = extractelement <4 x i32> %i.hh, i64 0
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.hj
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !41
  store i16 %i.hl, ptr %i.fb, align 2, !tbaa !41
  %i.hm = extractelement <4 x i32> %i.hh, i64 1
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.hn
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !41
  store i16 %i.hp, ptr %i.fp, align 2, !tbaa !41
  %i.hq = fadd float %i.ge, %i.gu
  %i.hr = fptosi float %i.hq to i32
  %i.hs = and i32 %i.hr, 16383
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ht
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !41
  store i16 %i.hv, ptr %i.fq, align 2, !tbaa !41
  %i.hw = fsub float %i.ge, %i.gu
  %i.hx = fptosi float %i.hw to i32
  %i.hy = and i32 %i.hx, 16383
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.hz
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !41
  store i16 %i.ib, ptr %i.fr, align 2, !tbaa !41
  %i.ic = extractelement <4 x i32> %i.hh, i64 2
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.id
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !41
  store i16 %i.if, ptr %i.fs, align 2, !tbaa !41
  %i.ig = extractelement <4 x i32> %i.hh, i64 3
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ih
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !41
  %i.ik = getelementptr inbounds nuw i8, ptr %i.fb, i64 10
  store i16 %i.ij, ptr %i.ik, align 2, !tbaa !41
  %i.il = fadd float %i.gd, %i.gx
  %i.im = fptosi float %i.il to i32
  %i.in = and i32 %i.im, 16383
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.io
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !41
  %i.ir = getelementptr inbounds nuw i8, ptr %i.fb, i64 6
  store i16 %i.iq, ptr %i.ir, align 2, !tbaa !41
  %i.is = fsub float %i.gd, %i.gx
  %i.it = fptosi float %i.is to i32
  %i.iu = and i32 %i.it, 16383
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.iv
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !41
  %i.iy = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i16 %i.ix, ptr %i.iy, align 2, !tbaa !41
  %i.iz = getelementptr inbounds nuw i8, ptr %.2217, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.m, label %bb.l, !llvm.loop !9

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

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !44}
!9 = distinct !{!9, !44}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 _ZTS14jpeg_error_mgr", !10, i64 0}
!12 = !{!"p1 _ZTS15jpeg_memory_mgr", !10, i64 0}
!13 = !{!"p1 _ZTS17jpeg_progress_mgr", !10, i64 0}
!14 = !{!"p1 _ZTS15jpeg_source_mgr", !10, i64 0}
!15 = !{!"double", !4, i64 0}
!16 = !{!"any p2 pointer", !10, i64 0}
!17 = !{!"p2 omnipotent char", !16, i64 0}
!18 = !{!"p1 int", !10, i64 0}
!19 = !{!"short", !4, i64 0}
!20 = !{!"p1 _ZTS18jpeg_marker_struct", !10, i64 0}
!21 = !{!"p1 omnipotent char", !10, i64 0}
!22 = !{!"p1 _ZTS18jpeg_decomp_master", !10, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_main_controller", !10, i64 0}
!24 = !{!"p1 _ZTS22jpeg_d_coef_controller", !10, i64 0}
!25 = !{!"p1 _ZTS22jpeg_d_post_controller", !10, i64 0}
!26 = !{!"p1 _ZTS21jpeg_input_controller", !10, i64 0}
!27 = !{!"p1 _ZTS18jpeg_marker_reader", !10, i64 0}
!28 = !{!"p1 _ZTS20jpeg_entropy_decoder", !10, i64 0}
!29 = !{!"p1 _ZTS16jpeg_inverse_dct", !10, i64 0}
!30 = !{!"p1 _ZTS14jpeg_upsampler", !10, i64 0}
!31 = !{!"p1 _ZTS22jpeg_color_deconverter", !10, i64 0}
!32 = !{!"p1 _ZTS20jpeg_color_quantizer", !10, i64 0}
!33 = !{!"jpeg_decompress_struct", !11, i64 0, !12, i64 8, !13, i64 16, !10, i64 24, !5, i64 32, !5, i64 36, !14, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !15, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !17, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !18, i64 192, !4, i64 200, !4, i64 232, !4, i64 264, !5, i64 296, !10, i64 304, !5, i64 312, !5, i64 316, !4, i64 320, !4, i64 336, !4, i64 352, !5, i64 368, !5, i64 372, !4, i64 376, !4, i64 377, !4, i64 378, !19, i64 380, !19, i64 382, !5, i64 384, !4, i64 388, !5, i64 392, !20, i64 400, !5, i64 408, !5, i64 412, !5, i64 416, !5, i64 420, !21, i64 424, !5, i64 432, !4, i64 440, !5, i64 472, !5, i64 476, !5, i64 480, !4, i64 484, !5, i64 524, !5, i64 528, !5, i64 532, !5, i64 536, !5, i64 540, !22, i64 544, !23, i64 552, !24, i64 560, !25, i64 568, !26, i64 576, !27, i64 584, !28, i64 592, !29, i64 600, !30, i64 608, !31, i64 616, !32, i64 624}
!34 = !{!33, !21, i64 424}
!35 = !{!33, !22, i64 544}
!36 = !{!"jpeg_decomp_master", !10, i64 0, !10, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !4, i64 32, !4, i64 72, !5, i64 112, !5, i64 116, !20, i64 120, !5, i64 128, !5, i64 132, !5, i64 136}
!37 = !{!36, !5, i64 136}
!38 = !{!33, !5, i64 296}
!39 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !10, i64 80, !10, i64 88}
!40 = !{!39, !10, i64 88}
!41 = !{!19, !19, i64 0}
!42 = !{!"float", !4, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"p1 short", !10, i64 0}
!46 = !{!45, !45, i64 0}
end_hunk_0
