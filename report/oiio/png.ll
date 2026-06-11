inline.NumInlined: 72
inline.NumDeleted: 12
begin_hunk_0_@png_XYZ_from_xy:bb.a
  %i.bh = sub nsw i32 %i.x, %i.q                  ; 2 uses
  %i.bi = icmp eq i32 %i.x, %i.q                  ; 2 uses
  %or.cond.i115 = or i1 %i.ad, %i.bi
  br i1 %or.cond.i115, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.thread274
  %i.bj = sitofp i32 %i.ab to double
  %i.bk = sitofp i32 %i.bh to double
  %i.bl = fmul nnan double %i.bj, %i.bk
  %i.bm = fmul nnan double %i.bl, 1.250000e-01
  %i.bn = fadd double %i.bm, 5.000000e-01
  %i.bo = tail call double @llvm.floor.f64(double %i.bn) ; 3 uses
  %i.bp = fcmp ole double %i.bo, f0x41DFFFFFFFC00000
  %i.bq = fcmp oge double %i.bo, f0xC1E0000000000000
  %or.cond3.i116 = and i1 %i.bp, %i.bq
  br i1 %or.cond3.i116, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.br = fptosi double %i.bo to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread274
  %.1259.ph = phi i32 [ 0, %.thread274 ], [ %i.br, %bb.u ] ; 6 uses
  %i.bs = sub nsw i32 %i.v, %i.o                  ; 2 uses
  %i.bt = icmp eq i32 %i.v, %i.o                  ; 2 uses
  %or.cond.i121 = or i1 %i.aq, %i.bt
  br i1 %or.cond.i121, label %png_fp_sub.exit130, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = sitofp i32 %i.ao to double
  %i.bv = sitofp i32 %i.bs to double
  %i.bw = fmul nnan double %i.bu, %i.bv
  %i.bx = fmul nnan double %i.bw, 1.250000e-01
  %i.by = fadd double %i.bx, 5.000000e-01
  %i.bz = tail call double @llvm.floor.f64(double %i.by) ; 3 uses
  %i.ca = fcmp ole double %i.bz, f0x41DFFFFFFFC00000
  %i.cb = fcmp oge double %i.bz, f0xC1E0000000000000
  %or.cond3.i122 = and i1 %i.ca, %i.cb
  br i1 %or.cond3.i122, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.cc = fptosi double %i.bz to i32              ; 6 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ce = add nsw i32 %i.cc, -2147483647
  %.not15.i129 = icmp sgt i32 %i.ce, %.1259.ph
  br i1 %.not15.i129, label %png_fp_sub.exit130.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = sub nsw i32 %.1259.ph, %i.cc
  br label %png_fp_sub.exit130

bb.aa:                                            ; preds = %bb.x
  %i.cg = icmp slt i32 %i.cc, 0
  br i1 %i.cg, label %bb.ab, label %png_fp_sub.exit130

bb.ab:                                            ; preds = %bb.aa
  %i.ch = add nsw i32 %i.cc, 2147483647
  %.not.i128 = icmp slt i32 %i.ch, %.1259.ph
  br i1 %.not.i128, label %png_fp_sub.exit130.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ci = sub nsw i32 %.1259.ph, %i.cc
  br label %png_fp_sub.exit130

png_fp_sub.exit130:                               ; preds = %bb.v, %bb.z, %bb.aa, %bb.ac
  %.0.i127 = phi i32 [ %i.cf, %bb.z ], [ %.1259.ph, %bb.aa ], [ %i.ci, %bb.ac ], [ %.1259.ph, %bb.v ] ; 2 uses
  %.not.i131 = icmp eq i32 %.0.i127, 0
  br i1 %.not.i131, label %.critedge, label %png_fp_sub.exit130.thread

png_fp_sub.exit130.thread:                        ; preds = %bb.y, %bb.ab, %png_fp_sub.exit130
  %.0.i127311 = phi i32 [ %.0.i127, %png_fp_sub.exit130 ], [ 50000, %bb.ab ], [ 50000, %bb.y ]
  %or.cond.not = phi i1 [ true, %png_fp_sub.exit130 ], [ false, %bb.ab ], [ false, %bb.y ]
  %i.cj = icmp eq i32 %.0.i.ph, 0                 ; 2 uses
  br i1 %i.cj, label %png_muldiv.exit137, label %bb.ad

bb.ad:                                            ; preds = %png_fp_sub.exit130.thread
  %i.ck = uitofp nneg i32 %i.x to double
  %i.cl = sitofp i32 %.0.i.ph to double
  %i.cm = fmul nnan double %i.ck, %i.cl
  %i.cn = sitofp i32 %.0.i127311 to double
  %i.co = fdiv double %i.cm, %i.cn
  %i.cp = fadd double %i.co, 5.000000e-01
  %i.cq = tail call double @llvm.floor.f64(double %i.cp) ; 3 uses
  %i.cr = fcmp ole double %i.cq, f0x41DFFFFFFFC00000
  %i.cs = fcmp oge double %i.cq, f0xC1E0000000000000
  %or.cond3.i133 = and i1 %i.cr, %i.cs
  br i1 %or.cond3.i133, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  %i.ct = fptosi double %i.cq to i32
  br label %png_muldiv.exit137

png_muldiv.exit137:                               ; preds = %png_fp_sub.exit130.thread, %bb.ae
  %.0262 = phi i32 [ %i.ct, %bb.ae ], [ 0, %png_fp_sub.exit130.thread ] ; 2 uses
  %.not94 = icmp sgt i32 %.0262, %i.x
  %or.cond357 = select i1 %or.cond.not, i1 %.not94, i1 false
  br i1 %or.cond357, label %bb.af, label %.critedge

bb.af:                                            ; preds = %png_muldiv.exit137
  %or.cond.i138 = or i1 %i.ae, %i.bt
  br i1 %or.cond.i138, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cu = sitofp i32 %i.ac to double
  %i.cv = sitofp i32 %i.bs to double
  %i.cw = fmul nnan double %i.cu, %i.cv
  %i.cx = fmul nnan double %i.cw, 1.250000e-01
  %i.cy = fadd double %i.cx, 5.000000e-01
  %i.cz = tail call double @llvm.floor.f64(double %i.cy) ; 3 uses
  %i.da = fcmp ole double %i.cz, f0x41DFFFFFFFC00000
  %i.db = fcmp oge double %i.cz, f0xC1E0000000000000
  %or.cond3.i139 = and i1 %i.da, %i.db
  br i1 %or.cond3.i139, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %bb.ag
  %i.dc = fptosi double %i.cz to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.2260.ph = phi i32 [ 0, %bb.af ], [ %i.dc, %bb.ah ] ; 6 uses
  %or.cond.i144 = or i1 %i.ar, %i.bi
  br i1 %or.cond.i144, label %png_fp_sub.exit153, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dd = sitofp i32 %i.ap to double
  %i.de = sitofp i32 %i.bh to double
  %i.df = fmul nnan double %i.dd, %i.de
  %i.dg = fmul nnan double %i.df, 1.250000e-01
  %i.dh = fadd double %i.dg, 5.000000e-01
  %i.di = tail call double @llvm.floor.f64(double %i.dh) ; 3 uses
  %i.dj = fcmp ole double %i.di, f0x41DFFFFFFFC00000
  %i.dk = fcmp oge double %i.di, f0xC1E0000000000000
  %or.cond3.i145 = and i1 %i.dj, %i.dk
  br i1 %or.cond3.i145, label %bb.ak, label %.critedge

bb.ak:                                            ; preds = %bb.aj
  %i.dl = fptosi double %i.di to i32              ; 6 uses
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.dn = add nsw i32 %i.dl, -2147483647
  %.not15.i152 = icmp sgt i32 %i.dn, %.2260.ph
  br i1 %.not15.i152, label %png_fp_sub.exit153.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.do = sub nsw i32 %.2260.ph, %i.dl
  br label %png_fp_sub.exit153

bb.an:                                            ; preds = %bb.ak
  %i.dp = icmp slt i32 %i.dl, 0
  br i1 %i.dp, label %bb.ao, label %png_fp_sub.exit153

bb.ao:                                            ; preds = %bb.an
  %i.dq = add nsw i32 %i.dl, 2147483647
  %.not.i151 = icmp slt i32 %i.dq, %.2260.ph
  br i1 %.not.i151, label %png_fp_sub.exit153.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dr = sub nsw i32 %.2260.ph, %i.dl
  br label %png_fp_sub.exit153

png_fp_sub.exit153:                               ; preds = %bb.ai, %bb.am, %bb.an, %bb.ap
  %.0.i150 = phi i32 [ %i.do, %bb.am ], [ %.2260.ph, %bb.an ], [ %i.dr, %bb.ap ], [ %.2260.ph, %bb.ai ] ; 2 uses
  %.not.i154 = icmp eq i32 %.0.i150, 0
  br i1 %.not.i154, label %.critedge, label %png_fp_sub.exit153.thread

png_fp_sub.exit153.thread:                        ; preds = %bb.al, %bb.ao, %png_fp_sub.exit153
  %.0.i150335 = phi i32 [ %.0.i150, %png_fp_sub.exit153 ], [ 50000, %bb.ao ], [ 50000, %bb.al ]
  %or.cond3.not = phi i1 [ true, %png_fp_sub.exit153 ], [ false, %bb.ao ], [ false, %bb.al ]
  br i1 %i.cj, label %png_muldiv.exit160, label %bb.aq

bb.aq:                                            ; preds = %png_fp_sub.exit153.thread
  %i.ds = uitofp nneg i32 %i.x to double
  %i.dt = sitofp i32 %.0.i.ph to double
  %i.du = fmul nnan double %i.ds, %i.dt
  %i.dv = sitofp i32 %.0.i150335 to double
  %i.dw = fdiv double %i.du, %i.dv
  %i.dx = fadd double %i.dw, 5.000000e-01
  %i.dy = tail call double @llvm.floor.f64(double %i.dx) ; 3 uses
  %i.dz = fcmp ole double %i.dy, f0x41DFFFFFFFC00000
  %i.ea = fcmp oge double %i.dy, f0xC1E0000000000000
  %or.cond3.i156 = and i1 %i.dz, %i.ea
  br i1 %or.cond3.i156, label %bb.ar, label %.critedge

bb.ar:                                            ; preds = %bb.aq
  %i.eb = fptosi double %i.dy to i32
  br label %png_muldiv.exit160

png_muldiv.exit160:                               ; preds = %png_fp_sub.exit153.thread, %bb.ar
  %.0261 = phi i32 [ %i.eb, %bb.ar ], [ 0, %png_fp_sub.exit153.thread ] ; 2 uses
  %.not95 = icmp sgt i32 %.0261, %i.x
  %or.cond358 = select i1 %or.cond3.not, i1 %.not95, i1 false
  br i1 %or.cond358, label %bb.as, label %.critedge

bb.as:                                            ; preds = %png_muldiv.exit160
  %i.ec = uitofp nneg i32 %i.x to double
  %2 = uitofp nneg i32 %.0262 to double           ; 4 uses
  %3 = insertelement <2 x double> poison, double %2, i64 0
  %4 = insertelement <2 x double> %3, double %i.ec, i64 1
  %5 = fdiv <2 x double> splat (double 1.000000e+10), %4
  %6 = fadd <2 x double> %5, splat (double 5.000000e-01)
  %7 = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %6) ; 3 uses
  %8 = extractelement <2 x double> %7, i64 1      ; 2 uses
  %9 = fcmp oge double %8, f0xC1E0000000000000
  %10 = fcmp ole <2 x double> %7, splat (double f0x41DFFFFFFFC00000) ; 2 uses
  %11 = extractelement <2 x i1> %10, i64 1
  %or.cond.i161 = and i1 %11, %9
  %12 = fptosi double %8 to i32
  %.0.i162 = select i1 %or.cond.i161, i32 %12, i32 0 ; 5 uses
  %13 = extractelement <2 x double> %7, i64 0     ; 2 uses
  %i.ed = fcmp oge double %13, f0xC1E0000000000000
  %14 = extractelement <2 x i1> %10, i64 0
  %or.cond.i163 = and i1 %14, %i.ed
  %i.ee = fptosi double %13 to i32
  %.0.i164 = select i1 %or.cond.i163, i32 %i.ee, i32 0 ; 6 uses
  %i.ef = icmp sgt i32 %.0.i164, 0
  br i1 %i.ef, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.eg = add nsw i32 %.0.i164, -2147483647
  %.not15.i167 = icmp sgt i32 %i.eg, %.0.i162     ; 2 uses
  %i.eh = sub nsw i32 %.0.i162, %.0.i164
  %spec.select359 = select i1 %.not15.i167, i32 50000, i32 %i.eh
  br label %png_fp_sub.exit168

bb.au:                                            ; preds = %bb.as
  %i.ei = icmp slt i32 %.0.i164, 0
  br i1 %i.ei, label %bb.av, label %png_fp_sub.exit168

bb.av:                                            ; preds = %bb.au
  %i.ej = add nsw i32 %.0.i164, 2147483647
  %.not.i166 = icmp slt i32 %i.ej, %.0.i162       ; 2 uses
  %i.ek = sub nsw i32 %.0.i162, %.0.i164
  %spec.select361 = select i1 %.not.i166, i32 50000, i32 %i.ek
  br label %png_fp_sub.exit168

png_fp_sub.exit168:                               ; preds = %bb.av, %bb.at, %bb.au
  %.3.shrunk = phi i1 [ false, %bb.au ], [ %.not.i166, %bb.av ], [ %.not15.i167, %bb.at ]
  %.0.i165 = phi i32 [ %.0.i162, %bb.au ], [ %spec.select361, %bb.av ], [ %spec.select359, %bb.at ] ; 5 uses
  %i.el = uitofp nneg i32 %.0261 to double        ; 4 uses
  %i.em = fdiv double 1.000000e+10, %i.el
  %i.en = fadd double %i.em, 5.000000e-01
  %i.eo = tail call double @llvm.floor.f64(double %i.en) ; 3 uses
  %i.ep = fcmp ole double %i.eo, f0x41DFFFFFFFC00000
  %i.eq = fcmp oge double %i.eo, f0xC1E0000000000000
  %or.cond.i169 = and i1 %i.ep, %i.eq
  %i.er = fptosi double %i.eo to i32
  %.0.i170 = select i1 %or.cond.i169, i32 %i.er, i32 0 ; 6 uses
  %i.es = icmp sgt i32 %.0.i170, 0
  br i1 %i.es, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %png_fp_sub.exit168
  %i.et = add nsw i32 %.0.i170, -2147483647
  %.not15.i173 = icmp sgt i32 %i.et, %.0.i165
  br i1 %.not15.i173, label %.critedge, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eu = sub nsw i32 %.0.i165, %.0.i170
  br label %png_fp_sub.exit174

bb.ay:                                            ; preds = %png_fp_sub.exit168
  %i.ev = icmp slt i32 %.0.i170, 0
  br i1 %i.ev, label %bb.az, label %png_fp_sub.exit174

bb.az:                                            ; preds = %bb.ay
  %i.ew = add nsw i32 %.0.i170, 2147483647
  %.not.i172 = icmp slt i32 %i.ew, %.0.i165
  br i1 %.not.i172, label %.critedge, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ex = sub nsw i32 %.0.i165, %.0.i170
  br label %png_fp_sub.exit174

png_fp_sub.exit174:                               ; preds = %bb.ax, %bb.ay, %bb.ba
  %.0.i171 = phi i32 [ %i.eu, %bb.ax ], [ %.0.i165, %bb.ay ], [ %i.ex, %bb.ba ] ; 4 uses
  %i.ey = icmp slt i32 %.0.i171, 1
  %or.cond5.not = select i1 %.3.shrunk, i1 true, i1 %i.ey
  br i1 %or.cond5.not, label %.critedge, label %bb.bb

bb.bb:                                            ; preds = %png_fp_sub.exit174
  %i.ez = icmp eq i32 %i.a, 0
  br i1 %i.ez, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fa = uitofp nneg i32 %i.a to double
  %i.fb = fmul nnan double %i.fa, 1.000000e+05
  %i.fc = fdiv double %i.fb, %2
  %i.fd = fadd double %i.fc, 5.000000e-01
  %i.fe = tail call double @llvm.floor.f64(double %i.fd) ; 3 uses
  %i.ff = fcmp ole double %i.fe, f0x41DFFFFFFFC00000
  %i.fg = fcmp oge double %i.fe, f0xC1E0000000000000
  %or.cond3.i177 = and i1 %i.ff, %i.fg
  br i1 %or.cond3.i177, label %bb.bd, label %.critedge

bb.bd:                                            ; preds = %bb.bc
  %i.fh = fptosi double %i.fe to i32
  br label %bb.be

bb.be:                                            ; preds = %bb.bb, %bb.bd
  %.sink.i180 = phi i32 [ %i.fh, %bb.bd ], [ 0, %bb.bb ]
  store i32 %.sink.i180, ptr %0, align 4, !tbaa !3
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.fj = load i32, ptr %i.b, align 4, !tbaa !126 ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fl = sitofp i32 %i.fj to double
  %i.fm = fmul nnan double %i.fl, 1.000000e+05
  %i.fn = fdiv double %i.fm, %2
  %i.fo = fadd double %i.fn, 5.000000e-01
  %i.fp = tail call double @llvm.floor.f64(double %i.fo) ; 3 uses
  %i.fq = fcmp ole double %i.fp, f0x41DFFFFFFFC00000
  %i.fr = fcmp oge double %i.fp, f0xC1E0000000000000
  %or.cond3.i184 = and i1 %i.fq, %i.fr
  br i1 %or.cond3.i184, label %bb.bg, label %.critedge

bb.bg:                                            ; preds = %bb.bf
  %i.fs = fptosi double %i.fp to i32
  br label %bb.bh

bb.bh:                                            ; preds = %bb.be, %bb.bg
  %.sink.i187 = phi i32 [ %i.fs, %bb.bg ], [ 0, %bb.be ]
  store i32 %.sink.i187, ptr %i.fi, align 4, !tbaa !3
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fu = load i32, ptr %1, align 4, !tbaa !125
  %i.fv = load i32, ptr %i.b, align 4, !tbaa !126
  %i.fw = add i32 %i.fv, %i.fu                    ; 2 uses
  %i.fx = icmp eq i32 %i.fw, 100000
  br i1 %i.fx, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fy = sub i32 100000, %i.fw
  %i.fz = sitofp i32 %i.fy to double
  %i.ga = fmul nnan double %i.fz, 1.000000e+05
  %i.gb = fdiv double %i.ga, %2
  %i.gc = fadd double %i.gb, 5.000000e-01
  %i.gd = tail call double @llvm.floor.f64(double %i.gc) ; 3 uses
  %i.ge = fcmp ole double %i.gd, f0x41DFFFFFFFC00000
  %i.gf = fcmp oge double %i.gd, f0xC1E0000000000000
  %or.cond3.i191 = and i1 %i.ge, %i.gf
  br i1 %or.cond3.i191, label %bb.bj, label %.critedge

bb.bj:                                            ; preds = %bb.bi
  %i.gg = fptosi double %i.gd to i32
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bh, %bb.bj
  %.sink.i194 = phi i32 [ %i.gg, %bb.bj ], [ 0, %bb.bh ]
  store i32 %.sink.i194, ptr %i.ft, align 4, !tbaa !3
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gi = load i32, ptr %i.g, align 4, !tbaa !127 ; 2 uses
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gk = sitofp i32 %i.gi to double
  %i.gl = fmul nnan double %i.gk, 1.000000e+05
  %i.gm = fdiv double %i.gl, %i.el
  %i.gn = fadd double %i.gm, 5.000000e-01
  %i.go = tail call double @llvm.floor.f64(double %i.gn) ; 3 uses
  %i.gp = fcmp ole double %i.go, f0x41DFFFFFFFC00000
  %i.gq = fcmp oge double %i.go, f0xC1E0000000000000
  %or.cond3.i198 = and i1 %i.gp, %i.gq
  br i1 %or.cond3.i198, label %bb.bm, label %.critedge

bb.bm:                                            ; preds = %bb.bl
  %i.gr = fptosi double %i.go to i32
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bk, %bb.bm
  %.sink.i201 = phi i32 [ %i.gr, %bb.bm ], [ 0, %bb.bk ]
  store i32 %.sink.i201, ptr %i.gh, align 4, !tbaa !3
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gt = load i32, ptr %i.i, align 4, !tbaa !128 ; 2 uses
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gv = sitofp i32 %i.gt to double
  %i.gw = fmul nnan double %i.gv, 1.000000e+05
  %i.gx = fdiv double %i.gw, %i.el
  %i.gy = fadd double %i.gx, 5.000000e-01
  %i.gz = tail call double @llvm.floor.f64(double %i.gy) ; 3 uses
  %i.ha = fcmp ole double %i.gz, f0x41DFFFFFFFC00000
  %i.hb = fcmp oge double %i.gz, f0xC1E0000000000000
  %or.cond3.i205 = and i1 %i.ha, %i.hb
  br i1 %or.cond3.i205, label %bb.bp, label %.critedge

bb.bp:                                            ; preds = %bb.bo
  %i.hc = fptosi double %i.gz to i32
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bn, %bb.bp
  %.sink.i208 = phi i32 [ %i.hc, %bb.bp ], [ 0, %bb.bn ]
  store i32 %.sink.i208, ptr %i.gs, align 4, !tbaa !3
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.he = load i32, ptr %i.g, align 4, !tbaa !127
  %i.hf = load i32, ptr %i.i, align 4, !tbaa !128
  %i.hg = add i32 %i.hf, %i.he                    ; 2 uses
  %i.hh = icmp eq i32 %i.hg, 100000
  br i1 %i.hh, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hi = sub i32 100000, %i.hg
  %i.hj = sitofp i32 %i.hi to double
  %i.hk = fmul nnan double %i.hj, 1.000000e+05
  %i.hl = fdiv double %i.hk, %i.el
  %i.hm = fadd double %i.hl, 5.000000e-01
  %i.hn = tail call double @llvm.floor.f64(double %i.hm) ; 3 uses
  %i.ho = fcmp ole double %i.hn, f0x41DFFFFFFFC00000
  %i.hp = fcmp oge double %i.hn, f0xC1E0000000000000
  %or.cond3.i212 = and i1 %i.ho, %i.hp
  br i1 %or.cond3.i212, label %bb.bs, label %.critedge

bb.bs:                                            ; preds = %bb.br
  %i.hq = fptosi double %i.hn to i32
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bq
  %.sink.i215 = phi i32 [ %i.hq, %bb.bs ], [ 0, %bb.bq ]
  store i32 %.sink.i215, ptr %i.hd, align 4, !tbaa !3
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hs = load i32, ptr %i.n, align 4, !tbaa !129 ; 2 uses
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hu = sitofp i32 %i.hs to double
  %i.hv = uitofp nneg i32 %.0.i171 to double
  %i.hw = fmul nnan double %i.hv, %i.hu
  %i.hx = fdiv double %i.hw, 1.000000e+05
  %i.hy = fadd double %i.hx, 5.000000e-01
  %i.hz = tail call double @llvm.floor.f64(double %i.hy) ; 3 uses
  %i.ia = fcmp ole double %i.hz, f0x41DFFFFFFFC00000
  %i.ib = fcmp oge double %i.hz, f0xC1E0000000000000
  %or.cond3.i218 = and i1 %i.ia, %i.ib
  br i1 %or.cond3.i218, label %bb.bv, label %.critedge

bb.bv:                                            ; preds = %bb.bu
  %i.ic = fptosi double %i.hz to i32
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bt
  %.sink.i221 = phi i32 [ %i.ic, %bb.bv ], [ 0, %bb.bt ]
  store i32 %.sink.i221, ptr %i.hr, align 4, !tbaa !3
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ie = load i32, ptr %i.p, align 4, !tbaa !130 ; 2 uses
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ig = sitofp i32 %i.ie to double
  %i.ih = uitofp nneg i32 %.0.i171 to double
  %i.ii = fmul nnan double %i.ih, %i.ig
  %i.ij = fdiv double %i.ii, 1.000000e+05
  %i.ik = fadd double %i.ij, 5.000000e-01
  %i.il = tail call double @llvm.floor.f64(double %i.ik) ; 3 uses
  %i.im = fcmp ole double %i.il, f0x41DFFFFFFFC00000
  %i.in = fcmp oge double %i.il, f0xC1E0000000000000
  %or.cond3.i224 = and i1 %i.im, %i.in
  br i1 %or.cond3.i224, label %bb.by, label %.critedge

bb.by:                                            ; preds = %bb.bx
  %i.io = fptosi double %i.il to i32
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bw
  %.sink.i227 = phi i32 [ %i.io, %bb.by ], [ 0, %bb.bw ]
  store i32 %.sink.i227, ptr %i.id, align 4, !tbaa !3
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.iq = load i32, ptr %i.n, align 4, !tbaa !129
  %i.ir = load i32, ptr %i.p, align 4, !tbaa !130
  %i.is = add i32 %i.ir, %i.iq                    ; 2 uses
  %i.it = icmp eq i32 %i.is, 100000
  br i1 %i.it, label %png_muldiv.exit234, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.iu = sub i32 100000, %i.is
  %i.iv = sitofp i32 %i.iu to double
  %i.iw = uitofp nneg i32 %.0.i171 to double
  %i.ix = fmul nnan double %i.iw, %i.iv
  %i.iy = fdiv double %i.ix, 1.000000e+05
  %i.iz = fadd double %i.iy, 5.000000e-01
  %i.ja = tail call double @llvm.floor.f64(double %i.iz) ; 3 uses
  %i.jb = fcmp ole double %i.ja, f0x41DFFFFFFFC00000
  %i.jc = fcmp oge double %i.ja, f0xC1E0000000000000
  %or.cond3.i230 = and i1 %i.jb, %i.jc
  br i1 %or.cond3.i230, label %bb.cb, label %.critedge

bb.cb:                                            ; preds = %bb.ca
  %i.jd = fptosi double %i.ja to i32
  br label %png_muldiv.exit234

png_muldiv.exit234:                               ; preds = %bb.bz, %bb.cb
  %.sink.i233 = phi i32 [ %i.jd, %bb.cb ], [ 0, %bb.bz ]
  store i32 %.sink.i233, ptr %i.ip, align 4, !tbaa !3
  br label %.critedge

.critedge:                                        ; preds = %bb.bx, %bb.bu, %bb.br, %bb.bo, %bb.bl, %bb.bi, %bb.bf, %bb.bc, %bb.aw, %bb.az, %bb.aq, %png_fp_sub.exit153, %bb.ad, %png_fp_sub.exit130, %png_muldiv.exit160, %png_muldiv.exit137, %bb.j, %bb.m, %bb.o, %bb.r, %bb.t, %bb.w, %bb.ag, %bb.aj, %png_muldiv.exit234, %bb.ca, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %png_fp_sub.exit174
  %.1 = phi i32 [ 1, %png_fp_sub.exit174 ], [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.ca ], [ 1, %bb.aw ], [ 1, %bb.bc ], [ 1, %bb.bf ], [ 1, %bb.bi ], [ 1, %bb.bl ], [ 1, %bb.bo ], [ 1, %bb.br ], [ 1, %bb.aq ], [ 1, %bb.bu ], [ 1, %bb.h ], [ 0, %png_muldiv.exit234 ], [ 1, %bb.ad ], [ 1, %bb.aj ], [ 1, %bb.ag ], [ 1, %png_muldiv.exit160 ], [ 1, %bb.w ], [ 1, %bb.t ], [ 1, %bb.r ], [ 1, %bb.o ], [ 1, %bb.m ], [ 1, %bb.j ], [ 1, %bb.az ], [ 1, %bb.bx ], [ 1, %png_muldiv.exit137 ], [ 1, %png_fp_sub.exit130 ], [ 1, %png_fp_sub.exit153 ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @png_reciprocal(i32 noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = sitofp i32 %0 to double
  %i.b = fdiv double 1.000000e+10, %i.a
  %i.c = fadd double %i.b, 5.000000e-01
  %i.d = tail call double @llvm.floor.f64(double %i.c) ; 3 uses
  %i.e = fcmp ole double %i.d, f0x41DFFFFFFFC00000
  %i.f = fcmp oge double %i.d, f0xC1E0000000000000
  %or.cond = and i1 %i.e, %i.f
  %i.g = fptosi double %i.d to i32
  %.0 = select i1 %or.cond, i32 %i.g, i32 0
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @png_icc_check_length(ptr noalias noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %2, 132
  %i.b = zext i32 %2 to i64                       ; 2 uses
  br i1 %i.a, label %.sink.split, label %icc_check_length.exit

icc_check_length.exit:                            ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33
  %i.e = icmp ult i64 %i.d, %i.b
  br i1 %i.e, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %icc_check_length.exit, %bb.a
  %.str.57.sink = phi ptr [ @.str.57, %bb.a ], [ @.str.20, %icc_check_length.exit ]
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.b, ptr noundef nonnull %.str.57.sink)
  br label %bb.b
end_hunk_0
begin_hunk_1_@png_build_16bit_table:bb.a

.preheader40:                                     ; preds = %bb.a, %.loopexit41
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %.loopexit41 ], [ 0, %bb.a ] ; 3 uses
  %i.fh = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef 512) #28 ; 3 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv54
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !176
  %i.fj = trunc nuw nsw i64 %indvars.iv54 to i32  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader40
  %indvars.iv = phi i64 [ 0, %.preheader40 ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %i.fk = trunc nuw nsw i64 %indvars.iv to i32
  %i.fl = shl nuw nsw i32 %i.fk, %i.a
  %i.fm = add i32 %i.fl, %i.fj
  %i.fn = uitofp i32 %i.fm to double
  %i.fo = fmul double %i.f, %i.fn
  %i.fp = tail call double @pow(double noundef %i.fo, double noundef %i.n) #28, !tbaa !3
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.fp, double 6.553500e+04, double 5.000000e-01)
  %i.fr = tail call double @llvm.floor.f64(double %i.fq)
  %i.fs = fptoui double %i.fr to i16
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.fh, i64 %indvars.iv
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !48
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.fu = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.fv = shl nuw nsw i32 %i.fu, %i.a
  %i.fw = add i32 %i.fv, %i.fj
  %i.fx = uitofp i32 %i.fw to double
  %i.fy = fmul double %i.f, %i.fx
  %i.fz = tail call double @pow(double noundef %i.fy, double noundef %i.n) #28, !tbaa !3
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.fz, double 6.553500e+04, double 5.000000e-01)
  %i.gb = tail call double @llvm.floor.f64(double %i.ga)
  %i.gc = fptoui double %i.gb to i16
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.fh, i64 %indvars.iv.next
  store i16 %i.gc, ptr %i.gd, align 2, !tbaa !48
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.not.1, label %.loopexit41, label %bb.c, !llvm.loop !213

.loopexit41:                                      ; preds = %bb.c
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next55, %i.h
  br i1 %exitcond57.not, label %.split50.us, label %.preheader40, !llvm.loop !211

.split50.us:                                      ; preds = %.loopexit41, %.loopexit.split.us47, %.preheader.us.us
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 4) i32 @png_set_option(ptr noalias nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = and i32 %1, -15
  %i.c = icmp eq i32 %i.b, 0
  %or.cond = and i1 %i.a, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = shl nuw nsw i32 3, %1
  %.not = icmp eq i32 %2, 0
  %i.e = select i1 %.not, i32 2, i32 3
  %i.f = shl nuw nsw i32 %i.e, %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !214  ; 2 uses
  %i.i = xor i32 %i.d, -1
  %i.j = and i32 %i.h, %i.i
  %i.k = or i32 %i.j, %i.f
  store i32 %i.k, ptr %i.g, align 8, !tbaa !214
  %i.l = lshr i32 %i.h, %1
  %i.m = and i32 %i.l, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.m, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @png_image_free(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.png_control, align 8        ; 9 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !215    ; 6 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !218
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !221  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %png_image_free_function.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8               ; 2 uses
  %i.i = and i8 %i.h, 2
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 264 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !96   ; 2 uses
  %i.l = and i8 %i.h, -3
  store i8 %i.l, ptr %i.g, align 8
  %.not14.i = icmp eq ptr %i.k, null
  br i1 %.not14.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.j, align 8, !tbaa !96
  %i.m = tail call i32 @fclose(ptr noundef nonnull %i.k) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !tbaa.struct !222
  store ptr %1, ptr %0, align 8, !tbaa !215
  %i.n = load ptr, ptr %1, align 8, !tbaa !221
  call void @png_free(ptr noundef %i.n, ptr noundef nonnull %i.a) #28
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i8, ptr %i.o, align 8
  %i.q = and i8 %i.p, 1
  %.not15.i = icmp eq i8 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not15.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @png_destroy_write_struct(ptr noundef nonnull %1, ptr noundef nonnull %i.r) #28
  br label %png_image_free_function.exit

bb.j:                                             ; preds = %bb.h
  call void @png_destroy_read_struct(ptr noundef nonnull %1, ptr noundef nonnull %i.r, ptr noundef null) #28
  br label %png_image_free_function.exit

png_image_free_function.exit:                     ; preds = %bb.d, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  store ptr null, ptr %0, align 8, !tbaa !215
  br label %bb.k

bb.k:                                             ; preds = %png_image_free_function.exit, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @png_image_error(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = tail call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef 0, ptr noundef %1) #28 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !224
  %i.e = or i32 %i.d, 2
  store i32 %i.e, ptr %i.c, align 8, !tbaa !224
  tail call void @png_image_free(ptr noundef %0)
  ret i32 0
}

declare void @png_chunk_benign_error(ptr noundef, ptr noundef) local_unnamed_addr #5

declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noalias ptr @png_calloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #23

declare void @png_destroy_write_struct(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @png_destroy_read_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { nounwind }
attributes #29 = { nounwind returns_twice }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !5, i64 629}
!8 = !{!"png_struct_def", !5, i64 0, !9, i64 200, !10, i64 208, !11, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !5, i64 296, !5, i64 297, !4, i64 300, !4, i64 304, !4, i64 308, !4, i64 312, !12, i64 320, !15, i64 432, !4, i64 440, !4, i64 444, !4, i64 448, !4, i64 452, !4, i64 456, !4, i64 460, !4, i64 464, !4, i64 468, !4, i64 472, !4, i64 476, !4, i64 480, !4, i64 484, !4, i64 488, !4, i64 492, !4, i64 496, !4, i64 500, !4, i64 504, !4, i64 508, !4, i64 512, !4, i64 516, !4, i64 520, !11, i64 528, !4, i64 536, !4, i64 540, !4, i64 544, !13, i64 552, !13, i64 560, !13, i64 568, !13, i64 576, !11, i64 584, !4, i64 592, !4, i64 596, !16, i64 600, !17, i64 608, !4, i64 612, !17, i64 616, !5, i64 618, !5, i64 619, !5, i64 620, !5, i64 621, !5, i64 622, !5, i64 623, !5, i64 624, !5, i64 625, !5, i64 626, !5, i64 627, !5, i64 628, !5, i64 629, !5, i64 630, !5, i64 631, !5, i64 632, !17, i64 634, !5, i64 636, !4, i64 640, !18, i64 644, !18, i64 654, !9, i64 664, !4, i64 672, !4, i64 676, !19, i64 680, !4, i64 712, !4, i64 716, !4, i64 720, !4, i64 724, !4, i64 728, !13, i64 736, !20, i64 744, !13, i64 752, !13, i64 760, !20, i64 768, !20, i64 776, !22, i64 784, !22, i64 789, !13, i64 800, !18, i64 808, !9, i64 824, !9, i64 832, !9, i64 840, !9, i64 848, !9, i64 856, !13, i64 864, !13, i64 872, !13, i64 880, !13, i64 888, !4, i64 896, !4, i64 900, !11, i64 904, !11, i64 912, !11, i64 920, !11, i64 928, !4, i64 936, !4, i64 940, !13, i64 944, !13, i64 952, !4, i64 960, !5, i64 964, !4, i64 996, !9, i64 1000, !9, i64 1008, !4, i64 1016, !4, i64 1020, !13, i64 1024, !5, i64 1032, !5, i64 1033, !17, i64 1034, !17, i64 1036, !13, i64 1040, !4, i64 1048, !5, i64 1052, !9, i64 1056, !9, i64 1064, !9, i64 1072, !13, i64 1080, !13, i64 1088, !13, i64 1096, !13, i64 1104, !5, i64 1112, !4, i64 1116, !4, i64 1120, !4, i64 1124, !11, i64 1128, !23, i64 1136, !11, i64 1168, !13, i64 1176, !11, i64 1184, !4, i64 1192, !4, i64 1196, !13, i64 1200, !5, i64 1208}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS13__jmp_buf_tag", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"z_stream_s", !13, i64 0, !4, i64 8, !11, i64 16, !13, i64 24, !4, i64 32, !11, i64 40, !13, i64 48, !14, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !4, i64 88, !11, i64 96, !11, i64 104}
!13 = !{!"p1 omnipotent char", !9, i64 0}
!14 = !{!"p1 _ZTS14internal_state", !9, i64 0}
!15 = !{!"p1 _ZTS22png_compression_buffer", !9, i64 0}
!16 = !{!"p1 _ZTS16png_color_struct", !9, i64 0}
!17 = !{!"short", !5, i64 0}
!18 = !{!"png_color_16_struct", !5, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8}
!19 = !{!"png_xy", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28}
!20 = !{!"p2 short", !21, i64 0}
!21 = !{!"any p2 pointer", !9, i64 0}
!22 = !{!"png_color_8_struct", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4}
!23 = !{!"png_unknown_chunk_t", !5, i64 0, !13, i64 8, !11, i64 16, !5, i64 24}
!24 = !{!8, !4, i64 596}
!25 = !{!8, !4, i64 544}
!26 = !{!8, !4, i64 304}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!5, !5, i64 0}
!30 = !{!8, !4, i64 1116}
!31 = !{!8, !4, i64 1120}
!32 = !{!8, !4, i64 1124}
!33 = !{!8, !11, i64 1128}
!34 = !{!8, !10, i64 208}
!35 = !{!8, !11, i64 216}
!36 = !{!8, !9, i64 200}
!37 = !{!8, !9, i64 384}
!38 = !{!8, !9, i64 392}
!39 = !{!8, !9, i64 400}
!40 = !{i64 0, i64 200, !29, i64 200, i64 8, !41, i64 208, i64 8, !42, i64 216, i64 8, !43, i64 224, i64 8, !41, i64 232, i64 8, !41, i64 240, i64 8, !41, i64 248, i64 8, !41, i64 256, i64 8, !41, i64 264, i64 8, !41, i64 272, i64 8, !41, i64 280, i64 8, !41, i64 288, i64 8, !41, i64 296, i64 1, !29, i64 297, i64 1, !29, i64 300, i64 4, !3, i64 304, i64 4, !3, i64 308, i64 4, !3, i64 312, i64 4, !3, i64 320, i64 8, !44, i64 328, i64 4, !3, i64 336, i64 8, !43, i64 344, i64 8, !44, i64 352, i64 4, !3, i64 360, i64 8, !43, i64 368, i64 8, !44, i64 376, i64 8, !45, i64 384, i64 8, !41, i64 392, i64 8, !41, i64 400, i64 8, !41, i64 408, i64 4, !3, i64 416, i64 8, !43, i64 424, i64 8, !43, i64 432, i64 8, !46, i64 440, i64 4, !3, i64 444, i64 4, !3, i64 448, i64 4, !3, i64 452, i64 4, !3, i64 456, i64 4, !3, i64 460, i64 4, !3, i64 464, i64 4, !3, i64 468, i64 4, !3, i64 472, i64 4, !3, i64 476, i64 4, !3, i64 480, i64 4, !3, i64 484, i64 4, !3, i64 488, i64 4, !3, i64 492, i64 4, !3, i64 496, i64 4, !3, i64 500, i64 4, !3, i64 504, i64 4, !3, i64 508, i64 4, !3, i64 512, i64 4, !3, i64 516, i64 4, !3, i64 520, i64 4, !3, i64 528, i64 8, !43, i64 536, i64 4, !3, i64 540, i64 4, !3, i64 544, i64 4, !3, i64 552, i64 8, !44, i64 560, i64 8, !44, i64 568, i64 8, !44, i64 576, i64 8, !44, i64 584, i64 8, !43, i64 592, i64 4, !3, i64 596, i64 4, !3, i64 600, i64 8, !47, i64 608, i64 2, !48, i64 612, i64 4, !3, i64 616, i64 2, !48, i64 618, i64 1, !29, i64 619, i64 1, !29, i64 620, i64 1, !29, i64 621, i64 1, !29, i64 622, i64 1, !29, i64 623, i64 1, !29, i64 624, i64 1, !29, i64 625, i64 1, !29, i64 626, i64 1, !29, i64 627, i64 1, !29, i64 628, i64 1, !29, i64 629, i64 1, !29, i64 630, i64 1, !29, i64 631, i64 1, !29, i64 632, i64 1, !29, i64 634, i64 2, !48, i64 636, i64 1, !29, i64 640, i64 4, !3, i64 644, i64 1, !29, i64 646, i64 2, !48, i64 648, i64 2, !48, i64 650, i64 2, !48, i64 652, i64 2, !48, i64 654, i64 1, !29, i64 656, i64 2, !48, i64 658, i64 2, !48, i64 660, i64 2, !48, i64 662, i64 2, !48, i64 664, i64 8, !41, i64 672, i64 4, !3, i64 676, i64 4, !3, i64 680, i64 4, !3, i64 684, i64 4, !3, i64 688, i64 4, !3, i64 692, i64 4, !3, i64 696, i64 4, !3, i64 700, i64 4, !3, i64 704, i64 4, !3, i64 708, i64 4, !3, i64 712, i64 4, !3, i64 716, i64 4, !3, i64 720, i64 4, !3, i64 724, i64 4, !3, i64 728, i64 4, !3, i64 736, i64 8, !44, i64 744, i64 8, !49, i64 752, i64 8, !44, i64 760, i64 8, !44, i64 768, i64 8, !49, i64 776, i64 8, !49, i64 784, i64 1, !29, i64 785, i64 1, !29, i64 786, i64 1, !29, i64 787, i64 1, !29, i64 788, i64 1, !29, i64 789, i64 1, !29, i64 790, i64 1, !29, i64 791, i64 1, !29, i64 792, i64 1, !29, i64 793, i64 1, !29, i64 800, i64 8, !44, i64 808, i64 1, !29, i64 810, i64 2, !48, i64 812, i64 2, !48, i64 814, i64 2, !48, i64 816, i64 2, !48, i64 824, i64 8, !41, i64 832, i64 8, !41, i64 840, i64 8, !41, i64 848, i64 8, !41, i64 856, i64 8, !41, i64 864, i64 8, !44, i64 872, i64 8, !44, i64 880, i64 8, !44, i64 888, i64 8, !44, i64 896, i64 4, !3, i64 900, i64 4, !3, i64 904, i64 8, !43, i64 912, i64 8, !43, i64 920, i64 8, !43, i64 928, i64 8, !43, i64 936, i64 4, !3, i64 940, i64 4, !3, i64 944, i64 8, !44, i64 952, i64 8, !44, i64 960, i64 4, !3, i64 964, i64 29, !29, i64 996, i64 4, !3, i64 1000, i64 8, !41, i64 1008, i64 8, !41, i64 1016, i64 4, !3, i64 1020, i64 4, !3, i64 1024, i64 8, !44, i64 1032, i64 1, !29, i64 1033, i64 1, !29, i64 1034, i64 2, !48, i64 1036, i64 2, !48, i64 1040, i64 8, !44, i64 1048, i64 4, !3, i64 1052, i64 1, !29, i64 1056, i64 8, !41, i64 1064, i64 8, !41, i64 1072, i64 8, !41, i64 1080, i64 8, !44, i64 1088, i64 8, !44, i64 1096, i64 8, !44, i64 1104, i64 8, !44, i64 1112, i64 1, !29, i64 1116, i64 4, !3, i64 1120, i64 4, !3, i64 1124, i64 4, !3, i64 1128, i64 8, !43, i64 1136, i64 5, !29, i64 1144, i64 8, !44, i64 1152, i64 8, !43, i64 1160, i64 1, !29, i64 1168, i64 8, !43, i64 1176, i64 8, !44, i64 1184, i64 8, !43, i64 1192, i64 4, !3, i64 1196, i64 4, !3, i64 1200, i64 8, !44, i64 1208, i64 32, !29}
!41 = !{!9, !9, i64 0}
!42 = !{!10, !10, i64 0}
!43 = !{!11, !11, i64 0}
!44 = !{!13, !13, i64 0}
!45 = !{!14, !14, i64 0}
!46 = !{!15, !15, i64 0}
!47 = !{!16, !16, i64 0}
!48 = !{!17, !17, i64 0}
!49 = !{!20, !20, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"p1 _ZTS12png_info_def", !9, i64 0}
!52 = !{!53, !54, i64 120}
!53 = !{!"png_info_def", !4, i64 0, !4, i64 4, !4, i64 8, !11, i64 16, !16, i64 24, !17, i64 32, !17, i64 34, !5, i64 36, !5, i64 37, !5, i64 38, !5, i64 39, !5, i64 40, !5, i64 41, !5, i64 42, !5, i64 43, !5, i64 44, !5, i64 52, !5, i64 53, !5, i64 54, !5, i64 55, !13, i64 56, !13, i64 64, !4, i64 72, !4, i64 76, !4, i64 80, !17, i64 84, !17, i64 86, !17, i64 88, !17, i64 90, !17, i64 92, !17, i64 94, !17, i64 96, !17, i64 98, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !54, i64 120, !55, i64 128, !22, i64 136, !13, i64 144, !18, i64 152, !18, i64 162, !4, i64 172, !4, i64 176, !5, i64 180, !4, i64 184, !4, i64 188, !5, i64 192, !4, i64 196, !13, i64 200, !56, i64 208, !13, i64 216, !4, i64 224, !4, i64 228, !13, i64 232, !57, i64 240, !5, i64 248, !5, i64 249, !4, i64 252, !58, i64 256, !4, i64 264, !59, i64 272, !4, i64 280, !5, i64 284, !13, i64 288, !13, i64 296, !57, i64 304, !19, i64 312, !4, i64 344, !4, i64 348}
!54 = !{!"p1 _ZTS15png_text_struct", !9, i64 0}
!55 = !{!"png_time_struct", !17, i64 0, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6}
!56 = !{!"p1 short", !9, i64 0}
!57 = !{!"p2 omnipotent char", !21, i64 0}
!58 = !{!"p1 _ZTS19png_unknown_chunk_t", !9, i64 0}
!59 = !{!"p1 _ZTS15png_sPLT_struct", !9, i64 0}
!60 = !{!53, !4, i64 252}
!61 = !{!53, !4, i64 108}
!62 = !{!63, !13, i64 8}
!63 = !{!"png_text_struct", !4, i64 0, !13, i64 8, !13, i64 16, !11, i64 24, !11, i64 32, !13, i64 40, !13, i64 48}
!64 = distinct !{!64, !28}
!65 = !{!53, !4, i64 112}
!66 = !{!53, !4, i64 8}
!67 = !{!53, !13, i64 144}
!68 = !{!53, !17, i64 34}
!69 = !{!53, !13, i64 288}
!70 = !{!53, !13, i64 296}
!71 = !{!53, !13, i64 216}
!72 = !{!53, !13, i64 232}
!73 = !{!53, !57, i64 240}
!74 = !{!53, !5, i64 249}
!75 = distinct !{!75, !28}
!76 = !{!53, !13, i64 56}
!77 = !{!53, !13, i64 64}
!78 = !{!53, !59, i64 272}
!79 = !{!53, !4, i64 280}
!80 = !{!81, !13, i64 0}
!81 = !{!"png_sPLT_struct", !13, i64 0, !5, i64 8, !82, i64 16, !4, i64 24}
!82 = !{!"p1 _ZTS21png_sPLT_entry_struct", !9, i64 0}
!83 = !{!81, !82, i64 16}
!84 = distinct !{!84, !28}
!85 = !{!53, !58, i64 256}
!86 = !{!53, !4, i64 264}
!87 = !{!23, !13, i64 8}
!88 = distinct !{!88, !28}
!89 = !{!53, !13, i64 200}
!90 = !{!53, !56, i64 208}
!91 = !{!53, !16, i64 24}
!92 = !{!53, !17, i64 32}
!93 = !{!53, !57, i64 304}
!94 = !{!53, !4, i64 4}
!95 = distinct !{!95, !28}
!96 = !{!8, !9, i64 264}
!97 = !{!55, !17, i64 0}
!98 = !{!55, !5, i64 2}
!99 = !{!55, !5, i64 3}
!100 = !{!55, !5, i64 4}
!101 = !{!55, !5, i64 5}
!102 = !{!55, !5, i64 6}
!103 = !{!104, !5, i64 0}
!104 = !{!"png_color_struct", !5, i64 0, !5, i64 1, !5, i64 2}
!105 = !{!104, !5, i64 1}
!106 = !{!104, !5, i64 2}
!107 = distinct !{!107, !28}
!108 = !{!8, !4, i64 1020}
!109 = !{!8, !13, i64 1024}
!110 = distinct !{!110, !28}
!111 = !{!112}
!112 = distinct !{!112, !113, !"png_handle_as_unknown: argument 0"}
!113 = distinct !{!113, !"png_handle_as_unknown"}
!114 = !{!8, !13, i64 368}
!115 = !{!116, !4, i64 0}
!116 = !{!"png_XYZ", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32}
!117 = !{!116, !4, i64 4}
!118 = !{!116, !4, i64 8}
!119 = !{!116, !4, i64 12}
!120 = !{!116, !4, i64 16}
!121 = !{!116, !4, i64 20}
!122 = !{!116, !4, i64 24}
!123 = !{!116, !4, i64 28}
!124 = !{!116, !4, i64 32}
!125 = !{!19, !4, i64 0}
!126 = !{!19, !4, i64 4}
!127 = !{!19, !4, i64 8}
!128 = !{!19, !4, i64 12}
!129 = !{!19, !4, i64 16}
!130 = !{!19, !4, i64 20}
!131 = !{!19, !4, i64 24}
!132 = !{!19, !4, i64 28}
!133 = distinct !{!133, !28}
!134 = !{!8, !5, i64 1033}
!135 = !{!8, !4, i64 504}
!136 = !{!8, !17, i64 1034}
!137 = !{!8, !17, i64 1036}
!138 = !{!8, !4, i64 300}
!139 = !{!8, !4, i64 1048}
!140 = distinct !{!140, !28}
!141 = distinct !{!141, !28}
!142 = distinct !{!142, !28}
!143 = distinct !{!143, !28}
!144 = distinct !{!144, !28}
!145 = distinct !{!145, !28}
!146 = distinct !{!146, !28}
!147 = !{!148}
!148 = distinct !{!148, !149}
!149 = distinct !{!149, !"LVerDomain"}
!150 = !{!151}
!151 = distinct !{!151, !149}
!152 = distinct !{!152, !28, !153, !154}
!153 = !{!"llvm.loop.isvectorized", i32 1}
!154 = !{!"llvm.loop.unroll.runtime.disable"}
!155 = !{!"branch_weights", i32 8, i32 24}
!156 = distinct !{!156, !28, !153, !154}
!157 = distinct !{!157, !158}
!158 = !{!"llvm.loop.unroll.disable"}
!159 = distinct !{!159, !28, !153}
end_hunk_1
