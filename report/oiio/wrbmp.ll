loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@put_pixel_rows:bb.a
  %.not89.1 = icmp eq i32 %i.by, 0
  br i1 %.not89.1, label %.loopexit, label %.lr.ph101, !llvm.loop !82

bb.g:                                             ; preds = %bb.d
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !54 ; 7 uses
  %.not8893 = icmp eq i32 %i.ca, 0
  br i1 %.not8893, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.ca, 8
  br i1 %min.iters.check, label %.lr.ph.preheader140, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.cc = add i32 %i.ca, -1
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = mul nuw nsw i64 %i.cd, 3
  %i.cf = getelementptr i8, ptr %.078, i64 %i.ce
  %scevgep = getelementptr i8, ptr %i.cf, i64 3
  %i.cg = shl nuw nsw i64 %i.cd, 2
  %i.ch = getelementptr i8, ptr %i.q, i64 %i.cg
  %scevgep127 = getelementptr i8, ptr %i.ch, i64 4
  %bound0 = icmp ult ptr %.078, %scevgep127
  %bound1 = icmp ult ptr %i.q, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader140, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cb, 4294967288              ; 5 uses
  %i.ci = shl nuw nsw i64 %n.vec, 2
  %i.cj = getelementptr i8, ptr %i.q, i64 %i.ci
  %i.ck = mul nuw nsw i64 %n.vec, 3
  %i.cl = getelementptr i8, ptr %.078, i64 %i.ck  ; 2 uses
  %i.cm = trunc nuw i64 %n.vec to i32
  %i.cn = sub i32 %i.ca, %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.co = shl i64 %index, 2                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.co ; 4 uses
  %i.cp = getelementptr i8, ptr %i.q, i64 %i.co   ; 4 uses
  %next.gep128 = getelementptr i8, ptr %i.cp, i64 4
  %i.cq = getelementptr i8, ptr %i.q, i64 %i.co   ; 4 uses
  %next.gep129 = getelementptr i8, ptr %i.cq, i64 8
  %i.cr = getelementptr i8, ptr %i.q, i64 %i.co   ; 4 uses
  %next.gep130 = getelementptr i8, ptr %i.cr, i64 12
  %i.cs = getelementptr i8, ptr %i.q, i64 %i.co   ; 4 uses
  %next.gep131 = getelementptr i8, ptr %i.cs, i64 16
  %i.ct = getelementptr i8, ptr %i.q, i64 %i.co   ; 4 uses
  %next.gep132 = getelementptr i8, ptr %i.ct, i64 20
  %i.cu = getelementptr i8, ptr %i.q, i64 %i.co   ; 4 uses
  %next.gep133 = getelementptr i8, ptr %i.cu, i64 24
  %i.cv = getelementptr i8, ptr %i.q, i64 %i.co   ; 4 uses
  %next.gep134 = getelementptr i8, ptr %i.cv, i64 28
  %i.cw = mul i64 %index, 3
  %next.gep135 = getelementptr i8, ptr %.078, i64 %i.cw
  %i.cx = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.cy = getelementptr i8, ptr %i.cp, i64 5
  %i.cz = getelementptr i8, ptr %i.cq, i64 9
  %i.da = getelementptr i8, ptr %i.cr, i64 13
  %i.db = getelementptr i8, ptr %i.cs, i64 17
  %i.dc = getelementptr i8, ptr %i.ct, i64 21
  %i.dd = getelementptr i8, ptr %i.cu, i64 25
  %i.de = getelementptr i8, ptr %i.cv, i64 29
  %i.df = load i8, ptr %next.gep, align 1, !tbaa !37, !alias.scope !83
  %i.dg = load i8, ptr %next.gep128, align 1, !tbaa !37, !alias.scope !83
  %i.dh = load i8, ptr %next.gep129, align 1, !tbaa !37, !alias.scope !83
  %i.di = load i8, ptr %next.gep130, align 1, !tbaa !37, !alias.scope !83
  %i.dj = load i8, ptr %next.gep131, align 1, !tbaa !37, !alias.scope !83
  %i.dk = load i8, ptr %next.gep132, align 1, !tbaa !37, !alias.scope !83
  %i.dl = load i8, ptr %next.gep133, align 1, !tbaa !37, !alias.scope !83
  %i.dm = load i8, ptr %next.gep134, align 1, !tbaa !37, !alias.scope !83
  %i.dn = insertelement <8 x i8> poison, i8 %i.df, i64 0
  %i.do = insertelement <8 x i8> %i.dn, i8 %i.dg, i64 1
  %i.dp = insertelement <8 x i8> %i.do, i8 %i.dh, i64 2
  %i.dq = insertelement <8 x i8> %i.dp, i8 %i.di, i64 3
  %i.dr = insertelement <8 x i8> %i.dq, i8 %i.dj, i64 4
  %i.ds = insertelement <8 x i8> %i.dr, i8 %i.dk, i64 5
  %i.dt = insertelement <8 x i8> %i.ds, i8 %i.dl, i64 6
  %i.du = insertelement <8 x i8> %i.dt, i8 %i.dm, i64 7
  %i.dv = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.dw = getelementptr i8, ptr %i.cp, i64 6
  %i.dx = getelementptr i8, ptr %i.cq, i64 10
  %i.dy = getelementptr i8, ptr %i.cr, i64 14
  %i.dz = getelementptr i8, ptr %i.cs, i64 18
  %i.ea = getelementptr i8, ptr %i.ct, i64 22
  %i.eb = getelementptr i8, ptr %i.cu, i64 26
  %i.ec = getelementptr i8, ptr %i.cv, i64 30
  %i.ed = load i8, ptr %i.cx, align 1, !tbaa !37, !alias.scope !83
  %i.ee = load i8, ptr %i.cy, align 1, !tbaa !37, !alias.scope !83
  %i.ef = load i8, ptr %i.cz, align 1, !tbaa !37, !alias.scope !83
  %i.eg = load i8, ptr %i.da, align 1, !tbaa !37, !alias.scope !83
  %i.eh = load i8, ptr %i.db, align 1, !tbaa !37, !alias.scope !83
  %i.ei = load i8, ptr %i.dc, align 1, !tbaa !37, !alias.scope !83
  %i.ej = load i8, ptr %i.dd, align 1, !tbaa !37, !alias.scope !83
  %i.ek = load i8, ptr %i.de, align 1, !tbaa !37, !alias.scope !83
  %i.el = insertelement <8 x i8> poison, i8 %i.ed, i64 0
  %i.em = insertelement <8 x i8> %i.el, i8 %i.ee, i64 1
  %i.en = insertelement <8 x i8> %i.em, i8 %i.ef, i64 2
  %i.eo = insertelement <8 x i8> %i.en, i8 %i.eg, i64 3
  %i.ep = insertelement <8 x i8> %i.eo, i8 %i.eh, i64 4
  %i.eq = insertelement <8 x i8> %i.ep, i8 %i.ei, i64 5
  %i.er = insertelement <8 x i8> %i.eq, i8 %i.ej, i64 6
  %i.es = insertelement <8 x i8> %i.er, i8 %i.ek, i64 7
  %i.et = getelementptr inbounds nuw i8, ptr %next.gep, i64 3
  %i.eu = getelementptr i8, ptr %i.cp, i64 7
  %i.ev = getelementptr i8, ptr %i.cq, i64 11
  %i.ew = getelementptr i8, ptr %i.cr, i64 15
  %i.ex = getelementptr i8, ptr %i.cs, i64 19
  %i.ey = getelementptr i8, ptr %i.ct, i64 23
  %i.ez = getelementptr i8, ptr %i.cu, i64 27
  %i.fa = getelementptr i8, ptr %i.cv, i64 31
  %i.fb = load i8, ptr %i.dv, align 1, !tbaa !37, !alias.scope !83
  %i.fc = load i8, ptr %i.dw, align 1, !tbaa !37, !alias.scope !83
  %i.fd = load i8, ptr %i.dx, align 1, !tbaa !37, !alias.scope !83
  %i.fe = load i8, ptr %i.dy, align 1, !tbaa !37, !alias.scope !83
  %i.ff = load i8, ptr %i.dz, align 1, !tbaa !37, !alias.scope !83
  %i.fg = load i8, ptr %i.ea, align 1, !tbaa !37, !alias.scope !83
  %i.fh = load i8, ptr %i.eb, align 1, !tbaa !37, !alias.scope !83
  %i.fi = load i8, ptr %i.ec, align 1, !tbaa !37, !alias.scope !83
  %i.fj = insertelement <8 x i8> poison, i8 %i.fb, i64 0
  %i.fk = insertelement <8 x i8> %i.fj, i8 %i.fc, i64 1
  %i.fl = insertelement <8 x i8> %i.fk, i8 %i.fd, i64 2
  %i.fm = insertelement <8 x i8> %i.fl, i8 %i.fe, i64 3
  %i.fn = insertelement <8 x i8> %i.fm, i8 %i.ff, i64 4
  %i.fo = insertelement <8 x i8> %i.fn, i8 %i.fg, i64 5
  %i.fp = insertelement <8 x i8> %i.fo, i8 %i.fh, i64 6
  %i.fq = insertelement <8 x i8> %i.fp, i8 %i.fi, i64 7
  %i.fr = load i8, ptr %i.et, align 1, !tbaa !37, !alias.scope !83
  %i.fs = load i8, ptr %i.eu, align 1, !tbaa !37, !alias.scope !83
  %i.ft = load i8, ptr %i.ev, align 1, !tbaa !37, !alias.scope !83
  %i.fu = load i8, ptr %i.ew, align 1, !tbaa !37, !alias.scope !83
  %i.fv = load i8, ptr %i.ex, align 1, !tbaa !37, !alias.scope !83
  %i.fw = load i8, ptr %i.ey, align 1, !tbaa !37, !alias.scope !83
  %i.fx = load i8, ptr %i.ez, align 1, !tbaa !37, !alias.scope !83
  %i.fy = load i8, ptr %i.fa, align 1, !tbaa !37, !alias.scope !83
  %i.fz = insertelement <8 x i8> poison, i8 %i.fr, i64 0
  %i.ga = insertelement <8 x i8> %i.fz, i8 %i.fs, i64 1
  %i.gb = insertelement <8 x i8> %i.ga, i8 %i.ft, i64 2
  %i.gc = insertelement <8 x i8> %i.gb, i8 %i.fu, i64 3
  %i.gd = insertelement <8 x i8> %i.gc, i8 %i.fv, i64 4
  %i.ge = insertelement <8 x i8> %i.gd, i8 %i.fw, i64 5
  %i.gf = insertelement <8 x i8> %i.ge, i8 %i.fx, i64 6
  %i.gg = insertelement <8 x i8> %i.gf, i8 %i.fy, i64 7
  %i.gh = uitofp <8 x i8> %i.du to <8 x double>
  %i.gi = uitofp <8 x i8> %i.gg to <8 x double>   ; 3 uses
  %i.gj = fmul nnan <8 x double> %i.gh, %i.gi
  %i.gk = fdiv <8 x double> %i.gj, splat (double 2.550000e+02)
  %i.gl = fadd <8 x double> %i.gk, splat (double 5.000000e-01)
  %i.gm = fptoui <8 x double> %i.gl to <8 x i8>
  %i.gn = uitofp <8 x i8> %i.es to <8 x double>
  %i.go = fmul nnan <8 x double> %i.gn, %i.gi
  %i.gp = uitofp <8 x i8> %i.fq to <8 x double>
  %i.gq = fmul nnan <8 x double> %i.gp, %i.gi
  %i.gr = shufflevector <8 x double> %i.gq, <8 x double> %i.go, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gs = fdiv <16 x double> %i.gr, splat (double 2.550000e+02)
  %i.gt = fadd <16 x double> %i.gs, splat (double 5.000000e-01)
  %i.gu = fptoui <16 x double> %i.gt to <16 x i8>
  %i.gv = shufflevector <8 x i8> %i.gm, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x i8> %i.gu, <16 x i8> %i.gv, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i8> %interleaved.vec, ptr %next.gep135, align 1, !tbaa !37, !alias.scope !86, !noalias !83
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gw = icmp eq i64 %index.next, %n.vec
  br i1 %i.gw, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cb
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader140

.lr.ph.preheader140:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.096.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.preheader ], [ %i.cj, %middle.block ]
  %.295.ph = phi ptr [ %.078, %vector.memcheck ], [ %.078, %.lr.ph.preheader ], [ %i.cl, %middle.block ]
  %.18194.ph = phi i32 [ %i.ca, %vector.memcheck ], [ %i.ca, %.lr.ph.preheader ], [ %i.cn, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader140, %.lr.ph
  %.096 = phi ptr [ %i.ha, %.lr.ph ], [ %.096.ph, %.lr.ph.preheader140 ] ; 4 uses
  %.295 = phi ptr [ %i.ht, %.lr.ph ], [ %.295.ph, %.lr.ph.preheader140 ] ; 4 uses
  %.18194 = phi i32 [ %i.hu, %.lr.ph ], [ %.18194.ph, %.lr.ph.preheader140 ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.096, i64 1
  %i.gy = load i8, ptr %.096, align 1, !tbaa !37
  %i.gz = getelementptr inbounds nuw i8, ptr %.096, i64 3
  %i.ha = getelementptr inbounds nuw i8, ptr %.096, i64 4
  %i.hb = load i8, ptr %i.gz, align 1, !tbaa !37
  %i.hc = getelementptr inbounds nuw i8, ptr %.295, i64 2
  %i.hd = getelementptr inbounds nuw i8, ptr %.295, i64 1
  %i.he = uitofp i8 %i.gy to double
  %i.hf = uitofp i8 %i.hb to double               ; 2 uses
  %i.hg = fmul nnan double %i.he, %i.hf
  %i.hh = fdiv double %i.hg, 2.550000e+02
  %i.hi = fadd double %i.hh, 5.000000e-01
  %i.hj = fptoui double %i.hi to i8
  %i.hk = load <2 x i8>, ptr %i.gx, align 1, !tbaa !37
  store i8 %i.hj, ptr %i.hc, align 1, !tbaa !37
  %i.hl = uitofp <2 x i8> %i.hk to <2 x double>
  %i.hm = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.hn = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ho = fmul nnan <2 x double> %i.hn, %i.hl
  %i.hp = fdiv <2 x double> %i.ho, splat (double 2.550000e+02) ; 2 uses
  %3 = extractelement <2 x double> %i.hp, i64 0
  %4 = fadd double %3, 5.000000e-01
  %i.hq = fptoui double %4 to i8
  store i8 %i.hq, ptr %i.hd, align 1, !tbaa !37
  %i.hr = extractelement <2 x double> %i.hp, i64 1
  %5 = fadd double %i.hr, 5.000000e-01
  %i.hs = fptoui double %5 to i8
  store i8 %i.hs, ptr %.295, align 1, !tbaa !37
  %i.ht = getelementptr inbounds nuw i8, ptr %.295, i64 3 ; 2 uses
  %i.hu = add i32 %.18194, -1                     ; 2 uses
  %.not88 = icmp eq i32 %i.hu, 0
  br i1 %.not88, label %.loopexit, label %.lr.ph, !llvm.loop !91

bb.h:                                             ; preds = %bb.d
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !54 ; 5 uses
  %.not87103 = icmp eq i32 %i.hw, 0
  br i1 %.not87103, label %.loopexit, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.h
  %i.hx = zext i32 %i.s to i64                    ; 4 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr @rgb_pixelsize, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !4
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr @rgb_blue, i64 %i.hx
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !4
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr @rgb_green, i64 %i.hx
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !4
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr @rgb_red, i64 %i.hx
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !4
  %i.ig = sext i32 %i.ib to i64                   ; 3 uses
  %i.ih = sext i32 %i.id to i64                   ; 3 uses
  %i.ii = sext i32 %i.if to i64                   ; 3 uses
  %i.ij = sext i32 %i.hz to i64                   ; 3 uses
  %xtraiter143 = and i32 %i.hw, 1
  %lcmp.mod144.not = icmp eq i32 %xtraiter143, 0
  br i1 %lcmp.mod144.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph107
  %i.ik = getelementptr inbounds i8, ptr %i.q, i64 %i.ig
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !37
  store i8 %i.il, ptr %.078, align 1, !tbaa !37
  %i.im = getelementptr inbounds i8, ptr %i.q, i64 %i.ih
  %i.in = load i8, ptr %i.im, align 1, !tbaa !37
  %i.io = getelementptr inbounds nuw i8, ptr %.078, i64 1
  store i8 %i.in, ptr %i.io, align 1, !tbaa !37
  %i.ip = getelementptr inbounds i8, ptr %i.q, i64 %i.ii
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !37
  %i.ir = getelementptr inbounds nuw i8, ptr %.078, i64 2
  store i8 %i.iq, ptr %i.ir, align 1, !tbaa !37
  %i.is = getelementptr inbounds nuw i8, ptr %.078, i64 3 ; 2 uses
  %i.it = getelementptr inbounds i8, ptr %i.q, i64 %i.ij
  %i.iu = add nsw i32 %i.hw, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph107
  %.lcssa.unr = phi ptr [ poison, %.lr.ph107 ], [ %i.is, %.prol.loopexit.unr-lcssa ]
  %.1106.unr = phi ptr [ %i.q, %.lr.ph107 ], [ %i.it, %.prol.loopexit.unr-lcssa ]
  %.3105.unr = phi ptr [ %.078, %.lr.ph107 ], [ %i.is, %.prol.loopexit.unr-lcssa ]
  %.282104.unr = phi i32 [ %i.hw, %.lr.ph107 ], [ %i.iu, %.prol.loopexit.unr-lcssa ]
  %i.iv = icmp eq i32 %i.hw, 1
  br i1 %i.iv, label %.loopexit, label %.lr.ph107.new

.lr.ph107.new:                                    ; preds = %.prol.loopexit, %.lr.ph107.new
  %.1106 = phi ptr [ %i.jp, %.lr.ph107.new ], [ %.1106.unr, %.prol.loopexit ] ; 4 uses
  %.3105 = phi ptr [ %i.jo, %.lr.ph107.new ], [ %.3105.unr, %.prol.loopexit ] ; 7 uses
  %.282104 = phi i32 [ %i.jq, %.lr.ph107.new ], [ %.282104.unr, %.prol.loopexit ]
  %i.iw = getelementptr inbounds i8, ptr %.1106, i64 %i.ig
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !37
  store i8 %i.ix, ptr %.3105, align 1, !tbaa !37
  %i.iy = getelementptr inbounds i8, ptr %.1106, i64 %i.ih
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !37
  %i.ja = getelementptr inbounds nuw i8, ptr %.3105, i64 1
  store i8 %i.iz, ptr %i.ja, align 1, !tbaa !37
  %i.jb = getelementptr inbounds i8, ptr %.1106, i64 %i.ii
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !37
  %i.jd = getelementptr inbounds nuw i8, ptr %.3105, i64 2
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !37
  %i.je = getelementptr inbounds nuw i8, ptr %.3105, i64 3
  %i.jf = getelementptr inbounds i8, ptr %.1106, i64 %i.ij ; 4 uses
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 %i.ig
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !37
  store i8 %i.jh, ptr %i.je, align 1, !tbaa !37
  %i.ji = getelementptr inbounds i8, ptr %i.jf, i64 %i.ih
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !37
  %i.jk = getelementptr inbounds nuw i8, ptr %.3105, i64 4
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !37
  %i.jl = getelementptr inbounds i8, ptr %i.jf, i64 %i.ii
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !37
  %i.jn = getelementptr inbounds nuw i8, ptr %.3105, i64 5
  store i8 %i.jm, ptr %i.jn, align 1, !tbaa !37
  %i.jo = getelementptr inbounds nuw i8, ptr %.3105, i64 6 ; 2 uses
  %i.jp = getelementptr inbounds i8, ptr %i.jf, i64 %i.ij
  %i.jq = add i32 %.282104, -2                    ; 2 uses
  %.not87.1 = icmp eq i32 %i.jq, 0
  br i1 %.not87.1, label %.loopexit, label %.lr.ph107.new, !llvm.loop !92

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph101.prol.loopexit, %.lr.ph101, %.prol.loopexit, %.lr.ph107.new, %middle.block, %bb.g, %bb.f, %bb.h, %bb.e
  %.4 = phi ptr [ %i.aa, %bb.e ], [ %i.bw, %.lr.ph101 ], [ %i.jo, %.lr.ph107.new ], [ %.078, %bb.h ], [ %.078, %bb.f ], [ %.078, %bb.g ], [ %i.cl, %middle.block ], [ %.lcssa.unr, %.prol.loopexit ], [ %.lcssa139.unr, %.lr.ph101.prol.loopexit ], [ %i.ht, %.lr.ph ]
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !58 ; 2 uses
  %i.jt = icmp sgt i32 %i.js, 0
  br i1 %i.jt, label %.lr.ph111.preheader, label %._crit_edge

.lr.ph111.preheader:                              ; preds = %.loopexit
  %i.ju = zext nneg i32 %i.js to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.4, i8 0, i64 %i.ju, i1 false), !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph111.preheader, %.loopexit
  %i.jv = load i32, ptr %i.a, align 8, !tbaa !68
  %.not90 = icmp eq i32 %i.jv, 0
  br i1 %.not90, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !67
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !56
  %i.ka = zext i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !72
  %i.kd = tail call i64 @fwrite(ptr noundef %i.jx, i64 noundef 1, i64 noundef %i.ka, ptr noundef %i.kc) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  ret void
}

declare void @jpeg_calc_output_dimensions(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @write_os2_header(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [14 x i8], align 1                ; 11 uses
  %i.b = alloca [12 x i8], align 1                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51   ; 3 uses
  %i.e = icmp eq i32 %i.d, 2
  %i.f = add i32 %i.d, -6
  %or.cond = icmp ult i32 %i.f, 10
  %or.cond42 = or i1 %i.e, %or.cond
  br i1 %or.cond42, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !53
  %.not = icmp ne i32 %i.h, 0                     ; 3 uses
  %. = select i1 %.not, i8 8, i8 24
  %.41 = select i1 %.not, i32 256, i32 0
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  switch i32 %i.d, label %bb.d [
    i32 16, label %bb.e
    i32 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.b, %bb.d
  %.035 = phi i8 [ %., %bb.b ], [ 8, %bb.d ], [ 24, %bb.c ], [ 24, %bb.c ]
  %i.i = phi i1 [ %.not, %bb.b ], [ true, %bb.d ], [ false, %bb.c ], [ false, %bb.c ]
  %.0 = phi i32 [ %.41, %bb.b ], [ 256, %bb.d ], [ 0, %bb.c ], [ 0, %bb.c ] ; 2 uses
  %i.j = mul nuw nsw i32 %.0, 3                   ; 2 uses
  %i.k = or disjoint i32 %i.j, 26
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.m = load i32, ptr %i.l, align 4, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.o = load i32, ptr %i.n, align 4, !tbaa !60   ; 2 uses
  %i.p = mul i32 %i.o, %i.m
  %i.q = add i32 %i.p, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i32 0, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 0, ptr %i.s, align 1
  store i8 66, ptr %i.a, align 1, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 77, ptr %i.t, align 1, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i32 %i.q, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 26, ptr %i.v, align 1, !tbaa !37
  %i.w = lshr exact i32 %i.j, 8
  %i.x = trunc nuw nsw i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 %i.x, ptr %i.y, align 1, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 0, ptr %i.z, align 1, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 0, ptr %i.aa, align 1, !tbaa !37
  store i8 12, ptr %i.b, align 1, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 0, ptr %i.ab, align 1, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.af = trunc i32 %i.ad to i16
  store i16 %i.af, ptr %i.ae, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.ah = trunc i32 %i.o to i16
  store i16 %i.ah, ptr %i.ag, align 1
end_hunk_0
