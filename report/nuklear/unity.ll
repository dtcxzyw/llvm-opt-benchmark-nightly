Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_end:bb.a
  %.sroa.0186.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 0 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 60 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !491
  %i.cl = fadd float %.sroa.0186.0.vec.extract.i, %i.ck
  %.sroa.14.8.vec.insert171.i = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cm = load float, ptr %i.bw, align 4, !tbaa !502
  %.sroa.14.12.vec.insert180.i = insertelement <2 x float> %.sroa.14.8.vec.insert171.i, float %i.cm, i64 1
  %i.cn = load i32, ptr %i.cf, align 8
  tail call void @nk_fill_rect(ptr noundef nonnull %i.bb, <2 x float> %.sroa.0149.4.vec.insert161.i, <2 x float> %.sroa.14.12.vec.insert180.i, float noundef 0.000000e+00, i32 %i.cn)
  %i.co = load float, ptr %i.bt, align 8, !tbaa !489
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cq = load float, ptr %i.cp, align 8, !tbaa !490
  %i.cr = fadd float %i.co, %i.cq
  %.sroa.0149.0.vec.insert157.i = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.cs = load float, ptr %i.bu, align 4, !tbaa !492
  %.sroa.0149.4.vec.insert163.i = insertelement <2 x float> %.sroa.0149.0.vec.insert157.i, float %i.cs, i64 1
  %i.ct = load float, ptr %i.cj, align 4, !tbaa !491
  %i.cu = fadd float %.sroa.0186.0.vec.extract.i, %i.ct ; 2 uses
  %.sroa.14.8.vec.insert173.i = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.cv = load float, ptr %i.bw, align 4, !tbaa !502
  %.sroa.14.12.vec.insert182.i = insertelement <2 x float> %.sroa.14.8.vec.insert173.i, float %i.cv, i64 1 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !486
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !55
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.da = load i32, ptr %i.ba, align 4, !tbaa !488
  %i.db = and i32 %i.da, 32
  %.not437.i = icmp eq i32 %i.db, 0
  br i1 %.not437.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dc = extractelement <2 x float> %i.be, i64 0
  %i.dd = fadd float %i.dc, %i.cu
  %.sroa.14.8.vec.insert176.i = insertelement <2 x float> %.sroa.14.12.vec.insert182.i, float %i.dd, i64 0
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.sroa.14.0.i = phi <2 x float> [ %.sroa.14.12.vec.insert182.i, %bb.l ], [ %.sroa.14.8.vec.insert176.i, %bb.m ], [ %.sroa.14.12.vec.insert182.i, %bb.k ]
  %i.de = load i32, ptr %i.cf, align 8
  tail call void @nk_fill_rect(ptr noundef nonnull %i.bb, <2 x float> %.sroa.0149.4.vec.insert163.i, <2 x float> %.sroa.14.0.i, float noundef 0.000000e+00, i32 %i.de)
  %i.df = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.dg = load float, ptr %i.df, align 4, !tbaa !501 ; 2 uses
  %i.dh = fcmp ogt float %i.dg, 0.000000e+00
  br i1 %i.dh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.di = load float, ptr %i.cb, align 4, !tbaa !480
  %.sroa.0149.0.vec.insert159.i = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dj = load float, ptr %i.bu, align 4, !tbaa !492
  %i.dk = load float, ptr %i.bw, align 4, !tbaa !502
  %i.dl = fadd float %i.dj, %i.dk
  %.sroa.0149.4.vec.insert165.i = insertelement <2 x float> %.sroa.0149.0.vec.insert159.i, float %i.dl, i64 1
  %i.dm = load float, ptr %i.cd, align 4, !tbaa !478
  %.sroa.14.8.vec.insert178.i = insertelement <2 x float> poison, float %i.dm, i64 0
  %.sroa.14.12.vec.insert184.i = insertelement <2 x float> %.sroa.14.8.vec.insert178.i, float %i.dg, i64 1
  %i.dn = load i32, ptr %i.cf, align 8
  tail call void @nk_fill_rect(ptr noundef nonnull %i.bb, <2 x float> %.sroa.0149.4.vec.insert165.i, <2 x float> %.sroa.14.12.vec.insert184.i, float noundef 0.000000e+00, i32 %i.dn)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %nk_panel_get_padding.exit.i
  %i.do = load i32, ptr %i.ba, align 4, !tbaa !488
  %i.dp = and i32 %i.do, 32800
  %or.cond466.i = icmp eq i32 %i.dp, 0
  br i1 %or.cond466.i, label %bb.q, label %bb.at

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.dr = load float, ptr %i.dq, align 8, !tbaa !1045
  %i.ds = fcmp olt float %i.dr, 4.000000e+00
  br i1 %i.ds, label %bb.r, label %bb.at

bb.r:                                             ; preds = %bb.q
  %i.dt = load i32, ptr %i.g, align 8, !tbaa !487
  %i.du = and i32 %i.dt, 246
  %.not512.i = icmp eq i32 %i.du, 0
  br i1 %.not512.i, label %bb.ad, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dv = load ptr, ptr %i.f, align 8, !tbaa !416 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.0414.i = phi ptr [ %i.dv, %bb.s ], [ %i.dx, %bb.t ] ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0414.i, i64 456
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !505 ; 2 uses
  %.not441.i = icmp eq ptr %i.dx, null
  br i1 %.not441.i, label %.preheader514.i, label %bb.t, !llvm.loop !1041

.preheader514.i:                                  ; preds = %bb.t, %.preheader514.i
  %.0415.i = phi ptr [ %i.dz, %.preheader514.i ], [ %i.e, %bb.t ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0415.i, i64 544
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !506 ; 2 uses
  %.not442.i = icmp eq ptr %i.dz, null
  br i1 %.not442.i, label %bb.u, label %.preheader514.i, !llvm.loop !1042

bb.u:                                             ; preds = %.preheader514.i
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 18552
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !461
  %i.ec = icmp eq ptr %.0415.i, %i.eb
  br i1 %i.ec, label %bb.v, label %nk_input_is_mouse_hovering_rect.exit.thread.i

bb.v:                                             ; preds = %bb.u
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !500
  %.not443.i = icmp eq i32 %i.ee, 0
  br i1 %.not443.i, label %nk_input_is_mouse_hovering_rect.exit.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.eg = load <2 x float>, ptr %i.ef, align 8    ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ei = load <2 x float>, ptr %i.eh, align 8    ; 2 uses
  %i.ej = extractelement <2 x float> %i.eg, i64 0 ; 2 uses
  %i.ek = extractelement <2 x float> %i.eg, i64 1 ; 2 uses
  br i1 %or.cond464.i19, label %bb.x, label %nk_input_is_mouse_hovering_rect.exit.thread.i

bb.x:                                             ; preds = %bb.w
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.em = load float, ptr %i.el, align 4, !tbaa !391 ; 2 uses
  %i.en = fcmp ole float %i.ej, %i.em
  %foldExtExtBinop = fadd <2 x float> %i.eg, %i.ei
  %i.eo = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ep = fcmp olt float %i.em, %i.eo
  %or.cond.i.i = select i1 %i.en, i1 %i.ep, i1 false
  br i1 %or.cond.i.i, label %bb.y, label %nk_input_is_mouse_hovering_rect.exit.thread.i

bb.y:                                             ; preds = %bb.x
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.er = load float, ptr %i.eq, align 8, !tbaa !392 ; 2 uses
  %i.es = fcmp ole float %i.ek, %i.er
  %foldExtExtBinop60 = fadd <2 x float> %i.eg, %i.ei
  %i.et = extractelement <2 x float> %foldExtExtBinop60, i64 1 ; 2 uses
  %i.eu = fcmp olt float %i.er, %i.et
  %or.cond509.i = select i1 %i.es, i1 %i.eu, i1 false
  br i1 %or.cond509.i, label %bb.z, label %nk_input_is_mouse_hovering_rect.exit.thread.i

bb.z:                                             ; preds = %bb.y
  %i.ev = getelementptr inbounds nuw i8, ptr %.0414.i, i64 68
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !1046 ; 2 uses
  %i.ex = fcmp olt float %i.ew, %i.eo
  br i1 %i.ex, label %bb.aa, label %nk_input_is_mouse_hovering_rect.exit.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.ey = getelementptr inbounds nuw i8, ptr %.0414.i, i64 76
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !507
  %i.fa = fadd float %i.ew, %i.ez
  %i.fb = fcmp olt float %i.ej, %i.fa
  br i1 %i.fb, label %bb.ab, label %nk_input_is_mouse_hovering_rect.exit.thread.i

bb.ab:                                            ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw i8, ptr %.0414.i, i64 72
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !508 ; 2 uses
  %i.fe = fcmp olt float %i.fd, %i.et
  br i1 %i.fe, label %bb.ac, label %nk_input_is_mouse_hovering_rect.exit.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.ff = getelementptr inbounds nuw i8, ptr %.0414.i, i64 80
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !509
  %i.fh = fadd float %i.fd, %i.fg
  %i.fi = fcmp olt float %i.ek, %i.fh
  br i1 %i.fi, label %.preheader.i, label %nk_input_is_mouse_hovering_rect.exit.thread.i

.preheader.i:                                     ; preds = %bb.ac
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dv, i64 456
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !505 ; 2 uses
  %.not444516.i = icmp eq ptr %i.fk, null
  br i1 %.not444516.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.1.i = phi ptr [ %i.fn, %.lr.ph.i ], [ %i.fk, %.preheader.i ] ; 3 uses
  %.1517.i = phi ptr [ %.1.i, %.lr.ph.i ], [ %i.dv, %.preheader.i ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.1517.i, i64 64
  store i32 0, ptr %i.fl, align 8, !tbaa !500
  %i.fm = getelementptr inbounds nuw i8, ptr %.1.i, i64 456
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !505 ; 2 uses
  %.not444.i = icmp eq ptr %i.fn, null
  br i1 %.not444.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1043

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.1.lcssa.i = phi ptr [ %i.dv, %.preheader.i ], [ %.1.i, %.lr.ph.i ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 64
  store i32 0, ptr %i.fo, align 8, !tbaa !500
  br label %nk_input_is_mouse_hovering_rect.exit.thread.i

bb.ad:                                            ; preds = %bb.r
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 18552
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !461
  %i.fr = icmp eq ptr %i.e, %i.fq
  br i1 %i.fr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fs = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !500
  %i.fu = icmp ne i32 %i.ft, 0
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fv = phi i1 [ false, %bb.ad ], [ %i.fu, %bb.ae ] ; 4 uses
  br i1 %or.cond464.i19, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.fx = load float, ptr %i.fw, align 8, !tbaa !510
  %i.fy = fcmp ogt float %i.fx, 0.000000e+00
  br i1 %i.fy, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !1047
  %i.gb = fcmp ogt float %i.ga, 0.000000e+00
  %or.cond.i = select i1 %i.gb, i1 %i.fv, i1 false
  br i1 %or.cond.i, label %bb.aj, label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  br i1 %i.fv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gc = getelementptr inbounds nuw i8, ptr %i.e, i64 500
  store i32 1, ptr %i.gc, align 4, !tbaa !1048
  br label %nk_input_is_mouse_hovering_rect.exit.thread.i

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.af
  %i.gd = getelementptr inbounds nuw i8, ptr %i.e, i64 500
  store i32 0, ptr %i.gd, align 4, !tbaa !1048
  br label %nk_input_is_mouse_hovering_rect.exit.thread.i

nk_input_is_mouse_hovering_rect.exit.thread.i:    ; preds = %bb.ak, %bb.aj, %._crit_edge.i, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.1417.shrunk.i = phi i1 [ %i.fv, %bb.ak ], [ %i.fv, %bb.aj ], [ true, %._crit_edge.i ], [ false, %bb.ac ], [ false, %bb.ab ], [ false, %bb.aa ], [ false, %bb.z ], [ false, %bb.y ], [ false, %bb.v ], [ false, %bb.u ], [ false, %bb.w ], [ false, %bb.x ] ; 2 uses
  %.1417.i = zext i1 %.1417.shrunk.i to i32       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  store i32 0, ptr %i.b, align 4, !tbaa !55
  %i.ge = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.gf = load float, ptr %i.ge, align 8, !tbaa !489
  %i.gg = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.gh = load float, ptr %i.gg, align 8, !tbaa !490
  %i.gi = fadd float %i.gf, %i.gh
  %.sroa.0186.0.vec.extract190.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 0
  %i.gj = fadd float %.sroa.0186.0.vec.extract190.i, %i.gi
  %.sroa.0131.0.vec.insert.i = insertelement <2 x float> poison, float %i.gj, i64 0
  %i.gk = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !492 ; 2 uses
  %.sroa.0131.4.vec.insert.i = insertelement <2 x float> %.sroa.0131.0.vec.insert.i, float %i.gl, i64 1
  %i.gm = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 2 uses
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !502 ; 3 uses
  %.sroa.10.12.vec.insert.i = insertelement <2 x float> %i.be, float %i.gn, i64 1
  %i.go = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !486
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !55
  %i.gr = uitofp i32 %i.gq to float
  %i.gs = fmul float %i.gn, 1.000000e-01
  %i.gt = fmul float %i.gn, f0x3C23D70A
  %i.gu = load float, ptr %i.bo, align 4, !tbaa !503
  %i.gv = fsub float %i.gu, %i.gl
  %i.gw = fptosi float %i.gv to i32
  %i.gx = sitofp i32 %i.gw to float
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 6752
  %i.gz = load ptr, ptr %i.bc, align 8, !tbaa !414
  %i.ha = call fastcc float @nk_do_scrollbarv(ptr noundef %i.b, ptr noundef %i.bb, <2 x float> %.sroa.0131.4.vec.insert.i, <2 x float> %.sroa.10.12.vec.insert.i, i32 noundef %.1417.i, float noundef %i.gr, float noundef %i.gx, float noundef %i.gs, float noundef %i.gt, ptr noundef %i.gy, ptr noundef %i.az, ptr noundef %i.gz)
  %i.hb = fptoui float %i.ha to i32
  %i.hc = load ptr, ptr %i.go, align 8, !tbaa !486
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !55
  %or.cond4.i = and i1 %or.cond464.i19, %.1417.shrunk.i
  br i1 %or.cond4.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %nk_input_is_mouse_hovering_rect.exit.thread.i
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 384
  store float 0.000000e+00, ptr %i.hd, align 8, !tbaa !510
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %nk_input_is_mouse_hovering_rect.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  store i32 0, ptr %i.c, align 4, !tbaa !55
  %i.he = load float, ptr %i.ge, align 8, !tbaa !489 ; 5 uses
  %.sroa.0131.0.vec.insert135.i = insertelement <2 x float> poison, float %i.he, i64 0
  %i.hf = load float, ptr %i.gk, align 4, !tbaa !492
  %i.hg = load float, ptr %i.gm, align 4, !tbaa !502
  %i.hh = fadd float %i.hf, %i.hg                 ; 2 uses
  %.sroa.0131.4.vec.insert139.i = insertelement <2 x float> %.sroa.0131.0.vec.insert135.i, float %i.hh, i64 1 ; 5 uses
  %i.hi = load float, ptr %i.gg, align 8, !tbaa !490 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !485
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !55
  %i.hm = uitofp i32 %i.hl to float               ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ho = load float, ptr %i.hn, align 8, !tbaa !511 ; 3 uses
  %i.hp = fsub float %i.ho, %i.he
  %i.hq = fptosi float %i.hp to i32
  %i.hr = sitofp i32 %i.hq to float               ; 6 uses
  %i.hs = fmul float %i.ho, 5.000000e-02          ; 4 uses
  %i.ht = fmul float %i.ho, 5.000000e-03          ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 6000
  %i.hv = load ptr, ptr %i.bc, align 8, !tbaa !414 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store <2 x float> %.sroa.0131.4.vec.insert139.i, ptr %1, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.hy = extractelement <2 x float> %i.be, i64 1 ; 2 uses
  %i.hz = fcmp olt float %i.hy, 1.000000e+00
  %i.ia = select i1 %i.hz, float 1.000000e+00, float %i.hy ; 9 uses
  store float %i.ia, ptr %i.hx, align 4, !tbaa !115
  %i.ib = fmul float %i.ia, 2.000000e+00          ; 2 uses
  %i.ic = fcmp olt float %i.hi, %i.ib
  %i.id = select i1 %i.ic, float %i.ib, float %i.hi ; 5 uses
  store float %i.id, ptr %i.hw, align 8, !tbaa !113
  %i.ie = fcmp ult float %i.id, %i.hr
  br i1 %i.ie, label %bb.an, label %nk_do_scrollbarh.exit.i

bb.an:                                            ; preds = %bb.am
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 6284
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !408
  %.not.i469.i = icmp eq i32 %i.ig, 0
  br i1 %.not.i469.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %.sroa.7.8.vec.insert.i.i = insertelement <2 x float> poison, float %i.ia, i64 0
  %.sroa.7.12.vec.insert.i.i = shufflevector <2 x float> %.sroa.7.8.vec.insert.i.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.ia, float -2.000000e+00, float %i.id) ; 2 uses
  %i.ii = fcmp olt float %i.hs, %i.ht
  %i.ij = select i1 %i.ii, float %i.hs, float %i.ht ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 6724
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !406
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 6504
  %i.in = call fastcc zeroext i1 @nk_do_button_symbol(ptr noundef %i.a, ptr noundef nonnull %i.bb, <2 x float> %.sroa.0131.4.vec.insert139.i, <2 x float> %.sroa.7.12.vec.insert.i.i, i32 noundef %i.il, i32 noundef 1, ptr noundef nonnull readonly %i.im, ptr noundef %i.az, ptr noundef %i.hv)
  %i.io = select i1 %i.in, float %i.ij, float 0.000000e+00
  %.079.i.i = fsub float %i.hm, %i.io             ; 2 uses
  %i.ip = fadd float %i.he, %i.id
  %i.iq = fsub float %i.ip, %i.ia
  %.sroa.0.0.vec.insert5.i.i = insertelement <2 x float> %.sroa.0131.4.vec.insert139.i, float %i.iq, i64 0
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 6720
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !407
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 6288
  %i.iu = call fastcc zeroext i1 @nk_do_button_symbol(ptr noundef %i.a, ptr noundef nonnull %i.bb, <2 x float> %.sroa.0.0.vec.insert5.i.i, <2 x float> %.sroa.7.12.vec.insert.i.i, i32 noundef %i.is, i32 noundef 1, ptr noundef nonnull readonly %i.it, ptr noundef %i.az, ptr noundef %i.hv)
  %i.iv = fadd float %i.ij, %.079.i.i
  %.1.i.i = select i1 %i.iu, float %i.iv, float %.079.i.i
  %i.iw = fadd float %i.ia, %i.he                 ; 2 uses
  store float %i.iw, ptr %1, align 8, !tbaa !112
  store float %i.ih, ptr %i.hw, align 8, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ix = phi float [ %i.iw, %bb.ao ], [ %i.he, %bb.an ] ; 5 uses
  %i.iy = phi float [ %i.ih, %bb.ao ], [ %i.id, %bb.an ] ; 8 uses
  %.2.i.i = phi float [ %.1.i.i, %bb.ao ], [ %i.hm, %bb.an ] ; 2 uses
  %i.iz = fcmp olt float %i.hs, %i.iy
  %i.ja = select i1 %i.iz, float %i.hs, float %i.iy
  %i.jb = fsub float %i.hr, %i.iy                 ; 2 uses
  %i.jc = fcmp olt float %.2.i.i, %i.jb
  %i.jd = select i1 %i.jc, float %.2.i.i, float %i.jb ; 2 uses
  %i.je = fcmp olt float %i.jd, 0.000000e+00
  %i.jf = select i1 %i.je, float 0.000000e+00, float %i.jd ; 2 uses
  %i.jg = fdiv float %i.iy, %i.hr
  %i.jh = fdiv float %i.jf, %i.hr
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 6252
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !512 ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 6268
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !513 ; 2 uses
  %i.jm = fmul float %i.jl, 2.000000e+00
  %i.jn = tail call float @llvm.fmuladd.f32(float %i.jj, float 2.000000e+00, float %i.jm)
  %i.jo = fneg float %i.jn
  %i.jp = tail call float @llvm.fmuladd.f32(float %i.jg, float %i.iy, float %i.jo) ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store float %i.jp, ptr %i.jq, align 8, !tbaa !113
  %i.jr = tail call float @llvm.fmuladd.f32(float %i.jh, float %i.iy, float %i.ix)
  %i.js = fadd float %i.jj, %i.jr
  %i.jt = fadd float %i.jl, %i.js                 ; 3 uses
  store float %i.jt, ptr %2, align 8, !tbaa !112
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 6272
  %i.jv = load float, ptr %i.ju, align 8, !tbaa !514 ; 2 uses
  %i.jw = fmul float %i.jv, 2.000000e+00
  %i.jx = tail call float @llvm.fmuladd.f32(float %i.jj, float 2.000000e+00, float %i.jw)
  %i.jy = fsub float %i.ia, %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %i.jy, ptr %i.jz, align 4, !tbaa !115
  %i.ka = fadd float %i.hh, %i.jj
  %i.kb = fadd float %i.ka, %i.jv
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.kb, ptr %i.kc, align 4, !tbaa !114
  %.sroa.098.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0131.4.vec.insert139.i, float %i.ix, i64 0
  %i.kd = fsub float %i.jt, %i.ix
  %.sroa.5100.8.vec.insert.i.i = insertelement <2 x float> poison, float %i.kd, i64 0
  %.sroa.5100.12.vec.insert.i.i = insertelement <2 x float> %.sroa.5100.8.vec.insert.i.i, float %i.ia, i64 1
  %i.ke = fadd float %i.jp, %i.jt                 ; 2 uses
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0131.4.vec.insert139.i, float %i.ke, i64 0
  %i.kf = fadd float %i.ix, %i.iy
  %i.kg = fsub float %i.kf, %i.ke
  %.sroa.5.8.vec.insert.i.i = insertelement <2 x float> poison, float %i.kg, i64 0
  %.sroa.5.12.vec.insert.i.i = insertelement <2 x float> %.sroa.5.8.vec.insert.i.i, float %i.ia, i64 1
  %i.kh = call fastcc float @nk_scrollbar_behavior(ptr noundef nonnull %i.c, ptr noundef %i.az, i32 noundef range(i32 0, 2) %.1417.i, ptr noundef %1, ptr noundef %2, <2 x float> %.sroa.098.4.vec.insert.i.i, <2 x float> %.sroa.5100.12.vec.insert.i.i, <2 x float> %.sroa.0.4.vec.insert.i.i, <2 x float> %.sroa.5.12.vec.insert.i.i, float noundef %i.jf, float noundef %i.hr, float noundef %i.ja, i32 noundef 1) ; 3 uses
  %i.ki = fdiv float %i.kh, %i.hr
  %i.kj = tail call float @llvm.fmuladd.f32(float %i.ki, float %i.iy, float %i.ix)
  store float %i.kj, ptr %2, align 8, !tbaa !112
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 6736
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !515 ; 2 uses
  %.not86.i.i = icmp eq ptr %i.kl, null
  br i1 %.not86.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 6728
  %i.kn = load ptr, ptr %i.km, align 8
  tail call void %i.kl(ptr noundef nonnull %i.bb, ptr %i.kn) #50, !inline_history !1044
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ko = load i32, ptr %i.c, align 4, !tbaa !55
  %.val91.i.i = load <2 x float>, ptr %1, align 8
  %.val92.i.i = load <2 x float>, ptr %i.hw, align 8
  %.val93.i.i = load <2 x float>, ptr %2, align 8
  %.val94.i.i = load <2 x float>, ptr %i.jq, align 8
  tail call fastcc void @nk_draw_scrollbar(ptr noundef nonnull %i.bb, i32 noundef %i.ko, ptr noundef nonnull readonly %i.hu, <2 x float> %.val91.i.i, <2 x float> %.val92.i.i, <2 x float> %.val93.i.i, <2 x float> %.val94.i.i)
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 6744
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !516 ; 2 uses
  %.not87.i.i = icmp eq ptr %i.kq, null
  br i1 %.not87.i.i, label %nk_do_scrollbarh.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 6728
  %i.ks = load ptr, ptr %i.kr, align 8
  tail call void %i.kq(ptr noundef nonnull %i.bb, ptr %i.ks) #50, !inline_history !1044
  br label %nk_do_scrollbarh.exit.i

nk_do_scrollbarh.exit.i:                          ; preds = %bb.as, %bb.ar, %bb.am
  %.0.i468.i = phi float [ 0.000000e+00, %bb.am ], [ %i.kh, %bb.as ], [ %i.kh, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.kt = fptoui float %.0.i468.i to i32
  %i.ku = load ptr, ptr %i.hj, align 8, !tbaa !485
  store i32 %i.kt, ptr %i.ku, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  br label %bb.at

bb.at:                                            ; preds = %nk_do_scrollbarh.exit.i, %bb.q, %bb.p
  %i.kv = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 3 uses
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !235
  %i.kx = and i32 %i.kw, 128
  %.not445.i = icmp eq i32 %i.kx, 0
  br i1 %.not445.i, label %bb.bd, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !395
  %i.la = fcmp une float %i.kz, 0.000000e+00
  br i1 %i.la, label %nk_input_is_mouse_moved.exit.thread.i, label %nk_input_is_mouse_moved.exit.i

nk_input_is_mouse_moved.exit.i:                   ; preds = %bb.au
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.lc = load float, ptr %i.lb, align 8, !tbaa !396
  %i.ld = fcmp une float %i.lc, 0.000000e+00
  br i1 %i.ld, label %nk_input_is_mouse_moved.exit.thread.i, label %bb.av

bb.av:                                            ; preds = %nk_input_is_mouse_moved.exit.i
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.lf = load float, ptr %i.le, align 8, !tbaa !1049
  %i.lg = fcmp oeq float %i.lf, 0.000000e+00
  br label %nk_input_is_mouse_moved.exit.thread.i

nk_input_is_mouse_moved.exit.thread.i:            ; preds = %bb.av, %nk_input_is_mouse_moved.exit.i, %bb.au
  %i.lh = phi i1 [ false, %nk_input_is_mouse_moved.exit.i ], [ %i.lg, %bb.av ], [ false, %bb.au ]
  %i.li = load ptr, ptr %i.d, align 8, !tbaa !415 ; 5 uses
end_hunk_0
