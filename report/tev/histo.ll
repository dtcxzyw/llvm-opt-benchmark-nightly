Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/histo?download=true
inline.NumInlined: 10
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@ffcalchist:bb.a
  %i.ba = tail call ptr @fits_iter_get_array(ptr noundef nonnull %.1179.1) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.i
  %.sroa.6.0 = phi ptr [ null, %bb.i ], [ null, %bb.m ], [ %i.ba, %bb.n ]
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 264
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !15 ; 3 uses
  %i.bd = load i32, ptr %i.h, align 8, !tbaa !42
  %i.be = icmp slt i32 %i.bd, 3
  %i.bf = icmp slt i32 %i.bc, 0
  %or.cond232.2 = select i1 %i.be, i1 true, i1 %i.bf
  br i1 %or.cond232.2, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 560
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !46 ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.bl = zext nneg i32 %i.bc to i64
  %i.bm = getelementptr inbounds nuw [272 x i8], ptr %i.bk, i64 %i.bl
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 288
  %i.bp = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.bq = zext nneg i32 %i.bc to i64
  %i.br = getelementptr inbounds nuw [272 x i8], ptr %i.bp, i64 %i.bq ; 2 uses
  %i.bs = tail call i32 @fits_parser_workfn(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %i.bi, ptr noundef %i.br, ptr noundef nonnull %i.bo) #13 ; 2 uses
  %.not225.2 = icmp eq i32 %i.bs, 0
  %i.bt = zext nneg i32 %i.bi to i64
  %i.bu = getelementptr [272 x i8], ptr %i.br, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 -272
  br i1 %.not225.2, label %bb.s, label %.loopexit233

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1179.2 = phi ptr [ %i.bv, %bb.r ], [ %i.bm, %bb.q ] ; 2 uses
  %.not226.2 = icmp eq ptr %.1179.2, null
  br i1 %.not226.2, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = tail call ptr @fits_iter_get_array(ptr noundef nonnull %.1179.2) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.o
  %.sroa.9.0 = phi ptr [ null, %bb.o ], [ null, %bb.s ], [ %i.bw, %bb.t ]
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 268
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !15 ; 3 uses
  %i.bz = load i32, ptr %i.h, align 8, !tbaa !42
  %i.ca = icmp slt i32 %i.bz, 4
  %i.cb = icmp slt i32 %i.by, 0
  %or.cond232.3 = select i1 %i.ca, i1 true, i1 %i.cb
  br i1 %or.cond232.3, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 792
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !46 ; 3 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.ch = zext nneg i32 %i.by to i64
  %i.ci = getelementptr inbounds nuw [272 x i8], ptr %i.cg, i64 %i.ch
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.cj = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 432
  %i.cl = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.cm = zext nneg i32 %i.by to i64
  %i.cn = getelementptr inbounds nuw [272 x i8], ptr %i.cl, i64 %i.cm ; 2 uses
  %i.co = tail call i32 @fits_parser_workfn(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %i.ce, ptr noundef %i.cn, ptr noundef nonnull %i.ck) #13 ; 2 uses
  %.not225.3 = icmp eq i32 %i.co, 0
  %i.cp = zext nneg i32 %i.ce to i64
  %i.cq = getelementptr [272 x i8], ptr %i.cn, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 -272
  br i1 %.not225.3, label %bb.y, label %.loopexit233

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1179.3 = phi ptr [ %i.cr, %bb.x ], [ %i.ci, %bb.w ] ; 2 uses
  %.not226.3 = icmp eq ptr %.1179.3, null
  br i1 %.not226.3, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cs = tail call ptr @fits_iter_get_array(ptr noundef nonnull %.1179.3) #13
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.u
  %.sroa.12.0 = phi ptr [ null, %bb.u ], [ null, %bb.y ], [ %i.cs, %bb.z ]
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 272
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !15 ; 3 uses
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1024
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !46 ; 3 uses
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.da = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.db = zext nneg i32 %i.cu to i64
  %i.dc = getelementptr inbounds nuw [272 x i8], ptr %i.da, i64 %i.db
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.dd = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 576
  %i.df = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.dg = zext nneg i32 %i.cu to i64
  %i.dh = getelementptr inbounds nuw [272 x i8], ptr %i.df, i64 %i.dg ; 2 uses
  %i.di = tail call i32 @fits_parser_workfn(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %i.cy, ptr noundef %i.dh, ptr noundef nonnull %i.de) #13 ; 2 uses
  %.not225.4 = icmp eq i32 %i.di, 0
  %i.dj = zext nneg i32 %i.cy to i64
  %i.dk = getelementptr [272 x i8], ptr %i.dh, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 -272
  br i1 %.not225.4, label %bb.ae, label %.loopexit233

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1179.4 = phi ptr [ %i.dl, %bb.ad ], [ %i.dc, %bb.ac ] ; 2 uses
  %.not226.4 = icmp eq ptr %.1179.4, null
  br i1 %.not226.4, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dm = tail call ptr @fits_iter_get_array(ptr noundef nonnull %.1179.4) #13
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.aa
  %.sroa.15.0 = phi ptr [ null, %bb.aa ], [ null, %bb.ae ], [ %i.dm, %bb.af ] ; 12 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !40 ; 2 uses
  %.not = icmp eq ptr %i.do, null
  br i1 %.not, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !27
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !137
  %.not214 = icmp eq i32 %i.ds, 0
  br i1 %.not214, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 248
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !52
  %i.dv = freeze i64 %i.du
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ah, %bb.ai
  %.0180 = phi i64 [ %i.dv, %bb.ai ], [ 1, %bb.ah ], [ 1, %bb.ag ] ; 3 uses
  %.not215238 = icmp slt i64 %3, 1
  br i1 %.not215238, label %._crit_edge, label %.lr.ph242

.lr.ph242:                                        ; preds = %bb.aj
  %.not218235 = icmp slt i64 %.0180, 1
  %.not219 = icmp eq ptr %.sroa.15.0, null
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 184
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 192
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 224
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 208
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  br i1 %.not218235, label %.lr.ph242.split.us.preheader, label %.lr.ph242.split

.lr.ph242.split.us.preheader:                     ; preds = %.lr.ph242
  %xtraiter = and i64 %3, 7                       ; 3 uses
  %i.es = icmp ult i64 %3, 8
  br i1 %i.es, label %.lr.ph242.split.us.epil.preheader, label %.lr.ph242.split.us.preheader.new

.lr.ph242.split.us.preheader.new:                 ; preds = %.lr.ph242.split.us.preheader
  %unroll_iter = and i64 %3, 9223372036854775800
  br label %.lr.ph242.split.us

.lr.ph242.split.us:                               ; preds = %.lr.ph242.split.us, %.lr.ph242.split.us.preheader.new
  %.0184240.us = phi ptr [ %i.e, %.lr.ph242.split.us.preheader.new ], [ %.2186.us.7, %.lr.ph242.split.us ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph242.split.us.preheader.new ], [ %niter.next.7, %.lr.ph242.split.us ]
  %.not216.us = icmp eq ptr %.0184240.us, null
  %i.et = getelementptr inbounds nuw i8, ptr %.0184240.us, i64 8
  %.2186.us.7 = select i1 %.not216.us, ptr null, ptr %i.et ; 3 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph242.split.us, !llvm.loop !133

.lr.ph242.split:                                  ; preds = %.lr.ph242, %..loopexit_crit_edge
  %.0181241 = phi i64 [ %i.lm, %..loopexit_crit_edge ], [ 1, %.lr.ph242 ] ; 2 uses
  %.0184240 = phi ptr [ %.2186, %..loopexit_crit_edge ], [ %i.e, %.lr.ph242 ] ; 3 uses
  %.1189239 = phi i64 [ %.3, %..loopexit_crit_edge ], [ 1, %.lr.ph242 ] ; 2 uses
  %.not216 = icmp eq ptr %.0184240, null
  br i1 %.not216, label %.lr.ph, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph242.split
  %i.eu = load i8, ptr %.0184240, align 1, !tbaa !18
  %.not217 = icmp eq i8 %i.eu, 0
  %i.ev = getelementptr inbounds nuw i8, ptr %.0184240, i64 1 ; 2 uses
  br i1 %.not217, label %bb.al, label %.lr.ph

bb.al:                                            ; preds = %bb.ak
  %i.ew = add nsw i64 %.1189239, %.0180
  br label %..loopexit_crit_edge

.lr.ph:                                           ; preds = %bb.ak, %.lr.ph242.split
  %.1185 = phi ptr [ null, %.lr.ph242.split ], [ %i.ev, %bb.ak ]
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph, %bb.cc
  %.0237 = phi i64 [ 1, %.lr.ph ], [ %i.lk, %bb.cc ] ; 2 uses
  %.2190236 = phi i64 [ %.1189239, %.lr.ph ], [ %i.ll, %bb.cc ] ; 16 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %.sroa.0.0, i64 %.2190236
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !17 ; 2 uses
  %i.ez = fcmp oeq double %i.ey, f0xB8A83E285EBAB4B7
  br i1 %i.ez, label %bb.cc, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %.not219, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fa = getelementptr inbounds [8 x i8], ptr %.sroa.15.0, i64 %.2190236
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !17
  %i.fc = fcmp oeq double %i.fb, f0xB8A83E285EBAB4B7
  br i1 %i.fc, label %bb.cc, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.fd = load double, ptr %i.dw, align 8, !tbaa !53
  %i.fe = fsub double %i.ey, %i.fd
  %i.ff = load double, ptr %i.dx, align 8, !tbaa !55
  %i.fg = fdiv double %i.fe, %i.ff                ; 2 uses
  %i.fh = fadd double %i.fg, 1.000000e+00
  %i.fi = fptosi double %i.fh to i64              ; 4 uses
  %i.fj = icmp slt i64 %i.fi, 1
  br i1 %i.fj, label %bb.cc, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fk = load i64, ptr %i.dy, align 8, !tbaa !56
  %i.fl = icmp slt i64 %i.fk, %i.fi
  br i1 %i.fl, label %bb.cc, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fm = load double, ptr %i.dz, align 8, !tbaa !54
  %i.fn = fcmp ogt double %i.fg, %i.fm
  br i1 %i.fn, label %bb.cc, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fo = load i32, ptr %i.h, align 8, !tbaa !42  ; 3 uses
  %i.fp = icmp sgt i32 %i.fo, 1
  br i1 %i.fp, label %bb.at, label %bb.bi

bb.at:                                            ; preds = %bb.as
  %i.fq = getelementptr inbounds [8 x i8], ptr %.sroa.6.0, i64 %.2190236
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !17 ; 2 uses
  %i.fs = fcmp oeq double %i.fr, f0xB8A83E285EBAB4B7
  br i1 %i.fs, label %bb.cc, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ft = load double, ptr %i.ea, align 8, !tbaa !57
  %i.fu = fsub double %i.fr, %i.ft
  %i.fv = load double, ptr %i.eb, align 8, !tbaa !59
  %i.fw = fdiv double %i.fu, %i.fv                ; 3 uses
  %i.fx = fptosi double %i.fw to i64              ; 2 uses
  %i.fy = fcmp olt double %i.fw, 0.000000e+00
  br i1 %i.fy, label %bb.cc, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fz = load i64, ptr %i.ec, align 8, !tbaa !60
  %.not220 = icmp sgt i64 %i.fz, %i.fx
  br i1 %.not220, label %bb.aw, label %bb.cc

bb.aw:                                            ; preds = %bb.av
  %i.ga = load double, ptr %i.ed, align 8, !tbaa !58
  %i.gb = fcmp ogt double %i.fw, %i.ga
  br i1 %i.gb, label %bb.cc, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gc = load i64, ptr %i.ee, align 8, !tbaa !23
  %i.gd = mul nsw i64 %i.gc, %i.fx
  %i.ge = add nsw i64 %i.gd, %i.fi                ; 2 uses
  %.not221 = icmp eq i32 %i.fo, 2
  br i1 %.not221, label %bb.bi, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gf = getelementptr inbounds [8 x i8], ptr %.sroa.9.0, i64 %.2190236
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !17 ; 2 uses
  %i.gh = fcmp oeq double %i.gg, f0xB8A83E285EBAB4B7
  br i1 %i.gh, label %bb.cc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gi = load double, ptr %i.ef, align 8, !tbaa !61
  %i.gj = fsub double %i.gg, %i.gi
  %i.gk = load double, ptr %i.eg, align 8, !tbaa !63
  %i.gl = fdiv double %i.gj, %i.gk                ; 3 uses
  %i.gm = fptosi double %i.gl to i64              ; 2 uses
  %i.gn = fcmp olt double %i.gl, 0.000000e+00
  br i1 %i.gn, label %bb.cc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.go = load i64, ptr %i.eh, align 8, !tbaa !64
  %.not222 = icmp sgt i64 %i.go, %i.gm
  br i1 %.not222, label %bb.bb, label %bb.cc

bb.bb:                                            ; preds = %bb.ba
  %i.gp = load double, ptr %i.ei, align 8, !tbaa !62
  %i.gq = fcmp ogt double %i.gl, %i.gp
  br i1 %i.gq, label %bb.cc, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gr = load i64, ptr %i.ej, align 8, !tbaa !23
  %i.gs = mul nsw i64 %i.gr, %i.gm
  %i.gt = add nsw i64 %i.gs, %i.ge                ; 2 uses
  %i.gu = icmp samesign ugt i32 %i.fo, 3
  br i1 %i.gu, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.gv = getelementptr inbounds [8 x i8], ptr %.sroa.12.0, i64 %.2190236
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !17 ; 2 uses
  %i.gx = fcmp oeq double %i.gw, f0xB8A83E285EBAB4B7
  br i1 %i.gx, label %bb.cc, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gy = load double, ptr %i.ek, align 8, !tbaa !65
  %i.gz = fsub double %i.gw, %i.gy
  %i.ha = load double, ptr %i.el, align 8, !tbaa !67
  %i.hb = fdiv double %i.gz, %i.ha                ; 3 uses
  %i.hc = fptosi double %i.hb to i64              ; 2 uses
  %i.hd = fcmp olt double %i.hb, 0.000000e+00
  br i1 %i.hd, label %bb.cc, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.he = load i64, ptr %i.em, align 8, !tbaa !68
  %.not223 = icmp sgt i64 %i.he, %i.hc
  br i1 %.not223, label %bb.bg, label %bb.cc

bb.bg:                                            ; preds = %bb.bf
  %i.hf = load double, ptr %i.en, align 8, !tbaa !66
  %i.hg = fcmp ogt double %i.hb, %i.hf
  br i1 %i.hg, label %bb.cc, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hh = load i64, ptr %i.eo, align 8, !tbaa !23
  %i.hi = mul nsw i64 %i.hh, %i.hc
  %i.hj = add nsw i64 %i.hi, %i.gt
  br label %bb.bi

bb.bi:                                            ; preds = %bb.ax, %bb.bh, %bb.bc, %bb.as
  %.0187 = phi i64 [ %i.hj, %bb.bh ], [ %i.gt, %bb.bc ], [ %i.ge, %bb.ax ], [ %i.fi, %bb.as ] ; 15 uses
  %i.hk = load double, ptr %i.ep, align 8, !tbaa !38 ; 6 uses
  %i.hl = fcmp une double %i.hk, f0xB8A83E285EBAB4B7
  br i1 %i.hl, label %bb.bj, label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  %i.hm = load i32, ptr %i.er, align 4, !tbaa !41
  switch i32 %i.hm, label %bb.cc [
    i32 31, label %bb.bk
    i32 21, label %bb.bl
    i32 42, label %bb.bm
    i32 82, label %bb.bn
    i32 11, label %bb.bo
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.hn = fptosi double %i.hk to i32
  %i.ho = load ptr, ptr %6, align 8, !tbaa !18
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %.0187 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !15
  %i.hr = add nsw i32 %i.hq, %i.hn
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !15
  br label %bb.cc

bb.bl:                                            ; preds = %bb.bj
  %i.hs = fptosi double %i.hk to i16
  %i.ht = load ptr, ptr %6, align 8, !tbaa !18
  %i.hu = getelementptr inbounds [2 x i8], ptr %i.ht, i64 %.0187 ; 2 uses
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !21
  %i.hw = add i16 %i.hv, %i.hs
  store i16 %i.hw, ptr %i.hu, align 2, !tbaa !21
  br label %bb.cc

bb.bm:                                            ; preds = %bb.bj
  %i.hx = load ptr, ptr %6, align 8, !tbaa !18
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %.0187 ; 2 uses
end_hunk_0
