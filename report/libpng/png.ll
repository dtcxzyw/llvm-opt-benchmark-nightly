Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/png?download=true
inline.NumInlined: 72
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@png_XYZ_from_xy:bb.a
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
  %i.ed = uitofp nneg i32 %.0262 to double        ; 4 uses
  %i.ee = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.ef = insertelement <2 x double> %i.ee, double %i.ed, i64 1
  %i.eg = fdiv <2 x double> splat (double 1.000000e+10), %i.ef
  %i.eh = fadd <2 x double> %i.eg, splat (double 5.000000e-01)
  %i.ei = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.eh) ; 3 uses
  %2 = fcmp ole <2 x double> %i.ei, splat (double f0x41DFFFFFFFC00000)
  %3 = fcmp oge <2 x double> %i.ei, splat (double f0xC1E0000000000000)
  %4 = and <2 x i1> %2, %3
  %5 = fptosi <2 x double> %i.ei to <2 x i32>
  %6 = select <2 x i1> %4, <2 x i32> %5, <2 x i32> zeroinitializer ; 2 uses
  %7 = extractelement <2 x i32> %6, i64 1         ; 3 uses
  %.not = icmp eq i32 %7, 0                       ; 2 uses
  %8 = add nsw i32 %7, -2147483647
  %9 = extractelement <2 x i32> %6, i64 0         ; 3 uses
  %.not15.i167 = icmp sle i32 %8, %9              ; 2 uses
  %10 = sub nsw i32 %9, %7
  %spec.select359 = select i1 %.not15.i167, i32 %10, i32 50000
  %.3 = select i1 %.not, i1 true, i1 %.not15.i167
  %.0.i162 = select i1 %.not, i32 %9, i32 %spec.select359 ; 3 uses
  %11 = uitofp nneg i32 %.0261 to double          ; 4 uses
  %12 = fdiv double 1.000000e+10, %11
  %13 = fadd double %12, 5.000000e-01
  %14 = tail call double @llvm.floor.f64(double %13) ; 3 uses
  %15 = fcmp ugt double %14, f0x41DFFFFFFFC00000
  %16 = fcmp ult double %14, f0xC1E0000000000000
  %or.cond.i169.not = or i1 %15, %16
  %i.ej = fptosi double %14 to i32                ; 3 uses
  %.not362363 = icmp eq i32 %i.ej, 0
  %.not362 = select i1 %or.cond.i169.not, i1 true, i1 %.not362363
  br i1 %.not362, label %png_fp_sub.exit174, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ek = add nsw i32 %i.ej, -2147483647
  %.not15.i173 = icmp sgt i32 %i.ek, %.0.i162
  br i1 %.not15.i173, label %.critedge, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.el = sub nsw i32 %.0.i162, %i.ej
  br label %png_fp_sub.exit174

png_fp_sub.exit174:                               ; preds = %bb.as, %bb.au
  %.0.i171 = phi i32 [ %i.el, %bb.au ], [ %.0.i162, %bb.as ] ; 4 uses
  %17 = icmp sgt i32 %.0.i171, 0
  %or.cond5.not = select i1 %.3, i1 %17, i1 false
  br i1 %or.cond5.not, label %bb.av, label %.critedge

bb.av:                                            ; preds = %png_fp_sub.exit174
  %i.em = icmp eq i32 %i.a, 0
  br i1 %i.em, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.en = uitofp nneg i32 %i.a to double
  %i.eo = fmul nnan double %i.en, 1.000000e+05
  %i.ep = fdiv double %i.eo, %i.ed
  %i.eq = fadd double %i.ep, 5.000000e-01
  %i.er = tail call double @llvm.floor.f64(double %i.eq) ; 3 uses
  %i.es = fcmp ole double %i.er, f0x41DFFFFFFFC00000
  %i.et = fcmp oge double %i.er, f0xC1E0000000000000
  %or.cond3.i177 = and i1 %i.es, %i.et
  br i1 %or.cond3.i177, label %bb.ax, label %.critedge

bb.ax:                                            ; preds = %bb.aw
  %i.eu = fptosi double %i.er to i32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.ax
  %.sink.i180 = phi i32 [ %i.eu, %bb.ax ], [ 0, %bb.av ]
  store i32 %.sink.i180, ptr %0, align 4, !tbaa !34
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ew = load i32, ptr %i.b, align 4, !tbaa !138 ; 2 uses
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ey = sitofp i32 %i.ew to double
  %i.ez = fmul nnan double %i.ey, 1.000000e+05
  %i.fa = fdiv double %i.ez, %i.ed
  %i.fb = fadd double %i.fa, 5.000000e-01
  %i.fc = tail call double @llvm.floor.f64(double %i.fb) ; 3 uses
  %i.fd = fcmp ole double %i.fc, f0x41DFFFFFFFC00000
  %i.fe = fcmp oge double %i.fc, f0xC1E0000000000000
  %or.cond3.i184 = and i1 %i.fd, %i.fe
  br i1 %or.cond3.i184, label %bb.ba, label %.critedge

bb.ba:                                            ; preds = %bb.az
  %i.ff = fptosi double %i.fc to i32
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ay, %bb.ba
  %.sink.i187 = phi i32 [ %i.ff, %bb.ba ], [ 0, %bb.ay ]
  store i32 %.sink.i187, ptr %i.ev, align 4, !tbaa !34
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fh = load i32, ptr %1, align 4, !tbaa !137
  %i.fi = load i32, ptr %i.b, align 4, !tbaa !138
  %i.fj = add i32 %i.fi, %i.fh                    ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 100000
  br i1 %i.fk, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fl = sub i32 100000, %i.fj
  %i.fm = sitofp i32 %i.fl to double
  %i.fn = fmul nnan double %i.fm, 1.000000e+05
  %i.fo = fdiv double %i.fn, %i.ed
  %i.fp = fadd double %i.fo, 5.000000e-01
  %i.fq = tail call double @llvm.floor.f64(double %i.fp) ; 3 uses
  %i.fr = fcmp ole double %i.fq, f0x41DFFFFFFFC00000
  %i.fs = fcmp oge double %i.fq, f0xC1E0000000000000
  %or.cond3.i191 = and i1 %i.fr, %i.fs
  br i1 %or.cond3.i191, label %bb.bd, label %.critedge

bb.bd:                                            ; preds = %bb.bc
  %i.ft = fptosi double %i.fq to i32
  br label %bb.be

bb.be:                                            ; preds = %bb.bb, %bb.bd
  %.sink.i194 = phi i32 [ %i.ft, %bb.bd ], [ 0, %bb.bb ]
  store i32 %.sink.i194, ptr %i.fg, align 4, !tbaa !34
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fv = load i32, ptr %i.g, align 4, !tbaa !139 ; 2 uses
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fx = sitofp i32 %i.fv to double
  %i.fy = fmul nnan double %i.fx, 1.000000e+05
  %i.fz = fdiv double %i.fy, %11
  %i.ga = fadd double %i.fz, 5.000000e-01
  %i.gb = tail call double @llvm.floor.f64(double %i.ga) ; 3 uses
  %i.gc = fcmp ole double %i.gb, f0x41DFFFFFFFC00000
  %i.gd = fcmp oge double %i.gb, f0xC1E0000000000000
  %or.cond3.i198 = and i1 %i.gc, %i.gd
  br i1 %or.cond3.i198, label %bb.bg, label %.critedge

bb.bg:                                            ; preds = %bb.bf
  %i.ge = fptosi double %i.gb to i32
  br label %bb.bh

bb.bh:                                            ; preds = %bb.be, %bb.bg
  %.sink.i201 = phi i32 [ %i.ge, %bb.bg ], [ 0, %bb.be ]
  store i32 %.sink.i201, ptr %i.fu, align 4, !tbaa !34
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gg = load i32, ptr %i.i, align 4, !tbaa !140 ; 2 uses
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gi = sitofp i32 %i.gg to double
  %i.gj = fmul nnan double %i.gi, 1.000000e+05
  %i.gk = fdiv double %i.gj, %11
  %i.gl = fadd double %i.gk, 5.000000e-01
  %i.gm = tail call double @llvm.floor.f64(double %i.gl) ; 3 uses
  %i.gn = fcmp ole double %i.gm, f0x41DFFFFFFFC00000
  %i.go = fcmp oge double %i.gm, f0xC1E0000000000000
  %or.cond3.i205 = and i1 %i.gn, %i.go
  br i1 %or.cond3.i205, label %bb.bj, label %.critedge

bb.bj:                                            ; preds = %bb.bi
  %i.gp = fptosi double %i.gm to i32
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bh, %bb.bj
  %.sink.i208 = phi i32 [ %i.gp, %bb.bj ], [ 0, %bb.bh ]
  store i32 %.sink.i208, ptr %i.gf, align 4, !tbaa !34
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.gr = load i32, ptr %i.g, align 4, !tbaa !139
  %i.gs = load i32, ptr %i.i, align 4, !tbaa !140
  %i.gt = add i32 %i.gs, %i.gr                    ; 2 uses
  %i.gu = icmp eq i32 %i.gt, 100000
  br i1 %i.gu, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gv = sub i32 100000, %i.gt
  %i.gw = sitofp i32 %i.gv to double
  %i.gx = fmul nnan double %i.gw, 1.000000e+05
  %i.gy = fdiv double %i.gx, %11
  %i.gz = fadd double %i.gy, 5.000000e-01
  %i.ha = tail call double @llvm.floor.f64(double %i.gz) ; 3 uses
  %i.hb = fcmp ole double %i.ha, f0x41DFFFFFFFC00000
  %i.hc = fcmp oge double %i.ha, f0xC1E0000000000000
  %or.cond3.i212 = and i1 %i.hb, %i.hc
  br i1 %or.cond3.i212, label %bb.bm, label %.critedge

bb.bm:                                            ; preds = %bb.bl
  %i.hd = fptosi double %i.ha to i32
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bk
  %.sink.i215 = phi i32 [ %i.hd, %bb.bm ], [ 0, %bb.bk ]
  store i32 %.sink.i215, ptr %i.gq, align 4, !tbaa !34
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hf = load i32, ptr %i.n, align 4, !tbaa !141 ; 2 uses
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hh = sitofp i32 %i.hf to double
  %i.hi = uitofp nneg i32 %.0.i171 to double
  %i.hj = fmul nnan double %i.hi, %i.hh
  %i.hk = fdiv double %i.hj, 1.000000e+05
  %i.hl = fadd double %i.hk, 5.000000e-01
  %i.hm = tail call double @llvm.floor.f64(double %i.hl) ; 3 uses
  %i.hn = fcmp ole double %i.hm, f0x41DFFFFFFFC00000
  %i.ho = fcmp oge double %i.hm, f0xC1E0000000000000
  %or.cond3.i218 = and i1 %i.hn, %i.ho
  br i1 %or.cond3.i218, label %bb.bp, label %.critedge

bb.bp:                                            ; preds = %bb.bo
  %i.hp = fptosi double %i.hm to i32
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bn
  %.sink.i221 = phi i32 [ %i.hp, %bb.bp ], [ 0, %bb.bn ]
  store i32 %.sink.i221, ptr %i.he, align 4, !tbaa !34
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.hr = load i32, ptr %i.p, align 4, !tbaa !142 ; 2 uses
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ht = sitofp i32 %i.hr to double
  %i.hu = uitofp nneg i32 %.0.i171 to double
  %i.hv = fmul nnan double %i.hu, %i.ht
  %i.hw = fdiv double %i.hv, 1.000000e+05
  %i.hx = fadd double %i.hw, 5.000000e-01
  %i.hy = tail call double @llvm.floor.f64(double %i.hx) ; 3 uses
  %i.hz = fcmp ole double %i.hy, f0x41DFFFFFFFC00000
  %i.ia = fcmp oge double %i.hy, f0xC1E0000000000000
  %or.cond3.i224 = and i1 %i.hz, %i.ia
  br i1 %or.cond3.i224, label %bb.bs, label %.critedge

bb.bs:                                            ; preds = %bb.br
  %i.ib = fptosi double %i.hy to i32
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bq
  %.sink.i227 = phi i32 [ %i.ib, %bb.bs ], [ 0, %bb.bq ]
  store i32 %.sink.i227, ptr %i.hq, align 4, !tbaa !34
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.id = load i32, ptr %i.n, align 4, !tbaa !141
  %i.ie = load i32, ptr %i.p, align 4, !tbaa !142
  %i.if = add i32 %i.ie, %i.id                    ; 2 uses
  %i.ig = icmp eq i32 %i.if, 100000
  br i1 %i.ig, label %png_muldiv.exit234, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ih = sub i32 100000, %i.if
  %i.ii = sitofp i32 %i.ih to double
  %i.ij = uitofp nneg i32 %.0.i171 to double
  %i.ik = fmul nnan double %i.ij, %i.ii
  %i.il = fdiv double %i.ik, 1.000000e+05
  %i.im = fadd double %i.il, 5.000000e-01
  %i.in = tail call double @llvm.floor.f64(double %i.im) ; 3 uses
  %i.io = fcmp ole double %i.in, f0x41DFFFFFFFC00000
  %i.ip = fcmp oge double %i.in, f0xC1E0000000000000
  %or.cond3.i230 = and i1 %i.io, %i.ip
  br i1 %or.cond3.i230, label %bb.bv, label %.critedge

bb.bv:                                            ; preds = %bb.bu
  %i.iq = fptosi double %i.in to i32
  br label %png_muldiv.exit234

png_muldiv.exit234:                               ; preds = %bb.bt, %bb.bv
  %.sink.i233 = phi i32 [ %i.iq, %bb.bv ], [ 0, %bb.bt ]
  store i32 %.sink.i233, ptr %i.ic, align 4, !tbaa !34
  br label %.critedge

.critedge:                                        ; preds = %bb.br, %bb.bo, %bb.bl, %bb.bi, %bb.bf, %bb.bc, %bb.az, %bb.aw, %bb.at, %bb.aq, %png_fp_sub.exit153, %bb.ad, %png_fp_sub.exit130, %png_muldiv.exit160, %png_muldiv.exit137, %bb.j, %bb.m, %bb.o, %bb.r, %bb.t, %bb.w, %bb.ag, %bb.aj, %png_muldiv.exit234, %bb.bu, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %png_fp_sub.exit174
  %.1 = phi i32 [ 1, %png_fp_sub.exit174 ], [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.bu ], [ 1, %bb.at ], [ 1, %bb.aw ], [ 1, %bb.az ], [ 1, %bb.bc ], [ 1, %bb.bf ], [ 1, %bb.bi ], [ 1, %bb.bl ], [ 1, %bb.aq ], [ 1, %bb.bo ], [ 1, %bb.h ], [ 0, %png_muldiv.exit234 ], [ 1, %bb.ad ], [ 1, %bb.aj ], [ 1, %bb.ag ], [ 1, %png_muldiv.exit160 ], [ 1, %bb.w ], [ 1, %bb.t ], [ 1, %bb.r ], [ 1, %bb.o ], [ 1, %bb.m ], [ 1, %bb.j ], [ 1, %png_fp_sub.exit153 ], [ 1, %bb.br ], [ 1, %png_muldiv.exit137 ], [ 1, %png_fp_sub.exit130 ]
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
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.d = load i64, ptr %i.c, align 8, !tbaa !31
  %i.e = icmp ult i64 %i.d, %i.b
  br i1 %i.e, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %icc_check_length.exit, %bb.a
  %.str.57.sink = phi ptr [ @.str.57, %bb.a ], [ @.str.20, %icc_check_length.exit ]
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.b, ptr noundef nonnull %.str.57.sink)
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %icc_check_length.exit
  %.0 = phi i32 [ 1, %icc_check_length.exit ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @png_icc_profile_error(ptr noalias noundef %0, ptr noundef %1, i64 noundef range(i64 0, 4294967296) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [196 x i8], align 16              ; 10 uses
  %i.b = alloca [24 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.c = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 196, i64 noundef 0, ptr noundef nonnull @.str.58) #28 ; 2 uses
  %i.d = add i64 %i.c, 79
  %i.e = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef %i.d, i64 noundef %i.c, ptr noundef %1) #28
  %i.f = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 196, i64 noundef %i.e, ptr noundef nonnull @.str.59) #28 ; 3 uses
  %i.g = lshr i64 %2, 24                          ; 4 uses
  %i.h = icmp ne i64 %i.g, 32
  %i.i = add nsw i64 %i.g, -58
  %or.cond.i.i = icmp ult i64 %i.i, -10
  %or.cond10.i.not23.i = select i1 %i.h, i1 %or.cond.i.i, i1 false
  %i.j = add nsw i64 %i.g, -91
  %or.cond3.i.i = icmp ult i64 %i.j, -26
  %or.cond11.i.not22.i = select i1 %or.cond10.i.not23.i, i1 %or.cond3.i.i, i1 false
  %i.k = add nsw i64 %i.g, -123
  %i.l = icmp ult i64 %i.k, -26
  %narrow.i.not.i = select i1 %or.cond11.i.not22.i, i1 %i.l, i1 false
  br i1 %narrow.i.not.i, label %is_ICC_signature.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = lshr i64 %2, 16
  %i.n = and i64 %i.m, 255                        ; 4 uses
  %i.o = icmp ne i64 %i.n, 32
  %i.p = add nsw i64 %i.n, -58
  %or.cond.i6.i = icmp ult i64 %i.p, -10
  %or.cond10.i7.not26.i = select i1 %i.o, i1 %or.cond.i6.i, i1 false
  %i.q = add nsw i64 %i.n, -91
  %or.cond3.i8.i = icmp ult i64 %i.q, -26
  %or.cond11.i9.not24.i = select i1 %or.cond10.i7.not26.i, i1 %or.cond3.i8.i, i1 false
  %i.r = add nsw i64 %i.n, -123
  %i.s = icmp ult i64 %i.r, -26
  %narrow.i10.not.i = select i1 %or.cond11.i9.not24.i, i1 %i.s, i1 false
  br i1 %narrow.i10.not.i, label %is_ICC_signature.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = lshr i64 %2, 8
  %i.u = and i64 %i.t, 255                        ; 4 uses
  %i.v = icmp ne i64 %i.u, 32
  %i.w = add nsw i64 %i.u, -58
  %or.cond.i11.i = icmp ult i64 %i.w, -10
  %or.cond10.i12.not29.i = select i1 %i.v, i1 %or.cond.i11.i, i1 false
  %i.x = add nsw i64 %i.u, -91
  %or.cond3.i13.i = icmp ult i64 %i.x, -26
  %or.cond11.i14.not27.i = select i1 %or.cond10.i12.not29.i, i1 %or.cond3.i13.i, i1 false
  %i.y = add nsw i64 %i.u, -123
  %i.z = icmp ult i64 %i.y, -26
  %narrow.i15.not.i = select i1 %or.cond11.i14.not27.i, i1 %i.z, i1 false
  br i1 %narrow.i15.not.i, label %is_ICC_signature.exit.thread, label %is_ICC_signature.exit

is_ICC_signature.exit:                            ; preds = %bb.c
  %i.aa = and i64 %2, 255                         ; 4 uses
  %i.ab = icmp ne i64 %i.aa, 32
  %i.ac = add nsw i64 %i.aa, -58
  %or.cond.i16.i = icmp ult i64 %i.ac, -10
  %or.cond10.i17.i.not20 = select i1 %i.ab, i1 %or.cond.i16.i, i1 false
  %i.ad = add nsw i64 %i.aa, -91
  %or.cond3.i18.i = icmp ult i64 %i.ad, -26
  %or.cond11.i19.i.not19 = select i1 %or.cond10.i17.i.not20, i1 %or.cond3.i18.i, i1 false
  %i.ae = add nsw i64 %i.aa, -123
  %i.af = icmp ult i64 %i.ae, -26
  %narrow.i20.i.not = select i1 %or.cond11.i19.i.not19, i1 %i.af, i1 false
  br i1 %narrow.i20.i.not, label %is_ICC_signature.exit.thread, label %bb.d

bb.d:                                             ; preds = %is_ICC_signature.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f ; 8 uses
  %i.ah = trunc nuw i64 %2 to i32                 ; 4 uses
  store i8 39, ptr %i.ag, align 1, !tbaa !28
  %i.ai = lshr i32 %i.ah, 24                      ; 2 uses
  %i.aj = add nsw i32 %i.ai, -32
  %or.cond.i.i15 = icmp ult i32 %i.aj, 95
  %i.ak = trunc nuw nsw i32 %i.ai to i8
  %.0.i.i = select i1 %or.cond.i.i15, i8 %i.ak, i8 63
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 %.0.i.i, ptr %i.al, align 1, !tbaa !28
  %i.am = lshr i32 %i.ah, 16                      ; 2 uses
  %i.an = and i32 %i.am, 255
  %i.ao = add nsw i32 %i.an, -32
  %or.cond.i9.i = icmp ult i32 %i.ao, 95
  %i.ap = trunc i32 %i.am to i8
  %.0.i10.i = select i1 %or.cond.i9.i, i8 %i.ap, i8 63
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  store i8 %.0.i10.i, ptr %i.aq, align 1, !tbaa !28
  %i.ar = lshr i32 %i.ah, 8                       ; 2 uses
  %i.as = and i32 %i.ar, 255
  %i.at = add nsw i32 %i.as, -32
  %or.cond.i11.i16 = icmp ult i32 %i.at, 95
  %i.au = trunc i32 %i.ar to i8
  %.0.i12.i = select i1 %or.cond.i11.i16, i8 %i.au, i8 63
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  store i8 %.0.i12.i, ptr %i.av, align 1, !tbaa !28
  %i.aw = and i32 %i.ah, 255
  %i.ax = add nsw i32 %i.aw, -32
  %or.cond.i13.i = icmp ult i32 %i.ax, 95
  %i.ay = trunc i64 %2 to i8
  %.0.i14.i = select i1 %or.cond.i13.i, i8 %i.ay, i8 63
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i8 %.0.i14.i, ptr %i.az, align 1, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 5
  store i8 39, ptr %i.ba, align 1, !tbaa !28
  %i.bb = getelementptr i8, ptr %i.ag, i64 6
  store i8 58, ptr %i.bb, align 1, !tbaa !28
  %i.bc = add nuw nsw i64 %i.f, 8
  %i.bd = getelementptr i8, ptr %i.ag, i64 7
  store i8 32, ptr %i.bd, align 1, !tbaa !28
  br label %bb.e

is_ICC_signature.exit.thread:                     ; preds = %bb.a, %bb.b, %bb.c, %is_ICC_signature.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bf = call ptr @png_format_number(ptr noundef nonnull %i.b, ptr noundef nonnull %i.be, i32 noundef 3, i64 noundef %2) #28
  %i.bg = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 196, i64 noundef %i.f, ptr noundef %i.bf) #28
  %i.bh = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 196, i64 noundef %i.bg, ptr noundef nonnull @.str.60) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.e

bb.e:                                             ; preds = %is_ICC_signature.exit.thread, %bb.d
  %.0 = phi i64 [ %i.bc, %bb.d ], [ %i.bh, %is_ICC_signature.exit.thread ]
  %i.bi = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 196, i64 noundef %.0, ptr noundef %3) #28 ; 0 uses
  call void @png_chunk_benign_error(ptr noundef %0, ptr noundef nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @png_icc_check_header(ptr noalias noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 1
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)  ; 2 uses
  %.not = icmp eq i32 %i.b, %2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %i.b to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.c, ptr noundef nonnull @.str.21)
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i8, ptr %i.d, align 1, !tbaa !28
  %i.f = icmp ult i8 %i.e, 4
  %i.g = and i32 %2, 3
  %.not98 = icmp eq i32 %i.g, 0
  %or.cond = or i1 %.not98, %i.f
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = zext i32 %2 to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.h, ptr noundef nonnull @.str.22)
  br label %bb.ac

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.j = load i32, ptr %i.i, align 1
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.j)  ; 3 uses
  %i.l = icmp ugt i32 %i.k, 357913930
end_hunk_0
begin_hunk_1_@png_icc_check_header:bb.a
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @png_icc_check_tag_table(ptr noalias noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.b = load i32, ptr %i.a, align 1              ; 2 uses
  %i.c = tail call i32 @llvm.bswap.i32(i32 %i.b)
  %.not41 = icmp eq i32 %i.b, 0
  br i1 %.not41, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 132
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.03440 = phi ptr [ %i.ax, %bb.e ], [ %i.d, %.lr.ph.preheader ] ; 10 uses
  %.03539 = phi i32 [ %i.aw, %bb.e ], [ 0, %.lr.ph.preheader ]
  %i.e = load i8, ptr %.03440, align 1, !tbaa !28
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw i32 %i.f, 24
  %i.h = getelementptr inbounds nuw i8, ptr %.03440, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !28
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 16
  %i.l = or disjoint i32 %i.k, %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %.03440, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !28
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 8
  %i.q = or disjoint i32 %i.l, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %.03440, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !28
  %i.t = zext i8 %i.s to i32
  %i.u = or disjoint i32 %i.q, %i.t               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.03440, i64 4
  %i.w = load i8, ptr %i.v, align 1, !tbaa !28
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw i32 %i.x, 24
  %i.z = getelementptr inbounds nuw i8, ptr %.03440, i64 5
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !28
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 16
  %i.ad = or disjoint i32 %i.ac, %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %.03440, i64 6
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !28
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = or disjoint i32 %i.ad, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.03440, i64 7
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !28
  %i.al = zext i8 %i.ak to i32                    ; 2 uses
  %i.am = or disjoint i32 %i.ai, %i.al            ; 2 uses
  %i.an = icmp ugt i32 %i.am, %2
  br i1 %i.an, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %.03440, i64 8
  %i.ap = load i32, ptr %i.ao, align 1
  %i.aq = tail call i32 @llvm.bswap.i32(i32 %i.ap)
  %i.ar = sub nuw i32 %2, %i.am
  %i.as = icmp ugt i32 %i.aq, %i.ar
  br i1 %i.as, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.b, %.lr.ph
  %i.at = zext i32 %i.u to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.at, ptr noundef nonnull @.str.36)
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.au = and i32 %i.al, 3
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = zext i32 %i.u to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.av, ptr noundef nonnull @.str.37)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aw = add nuw i32 %.03539, 1                  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.03440, i64 12
  %exitcond.not = icmp eq i32 %i.aw, %i.c
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !145

.loopexit:                                        ; preds = %bb.e, %bb.a, %.critedge
  %.2 = phi i32 [ 0, %.critedge ], [ 1, %bb.a ], [ 1, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define void @png_set_rgb_coefficients(ptr noalias noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.png_XYZ, align 4            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1033
  %i.b = load i8, ptr %i.a, align 1, !tbaa !146
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.d = getelementptr i8, ptr %0, i64 504
  %.val = load i32, ptr %i.d, align 8, !tbaa !147 ; 2 uses
  %i.e = and i32 %.val, 65536
  %.not.i = icmp ne i32 %i.e, 0
  %i.f = and i32 %.val, 8388672
  %or.cond102.not = icmp eq i32 %i.f, 64
  %or.cond113 = or i1 %.not.i, %or.cond102.not
  br i1 %or.cond113, label %have_chromaticities.exit.thread87, label %have_chromaticities.exit.thread

have_chromaticities.exit.thread87:                ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.h = call i32 @png_XYZ_from_xy(ptr noundef nonnull %1, ptr noundef nonnull %i.g)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %have_chromaticities.exit.thread

bb.c:                                             ; preds = %have_chromaticities.exit.thread87
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !52   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !53   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !54   ; 4 uses
  %i.p = add nsw i32 %i.m, %i.k
  %i.q = add nsw i32 %i.p, %i.o                   ; 4 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = icmp sgt i32 %i.k, -1
  %or.cond = and i1 %i.s, %i.r
  br i1 %or.cond, label %bb.d, label %png_muldiv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.t = icmp eq i32 %i.k, 0
  br i1 %i.t, label %png_muldiv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = uitofp nneg i32 %i.k to double
  %i.v = fmul nnan double %i.u, 3.276800e+04
  %i.w = uitofp nneg i32 %i.q to double
  %i.x = fdiv double %i.v, %i.w
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = tail call double @llvm.floor.f64(double %i.y) ; 3 uses
  %i.aa = fcmp ole double %i.z, f0x41DFFFFFFFC00000
  %i.ab = fcmp oge double %i.z, f0xC1E0000000000000
  %or.cond3.i = and i1 %i.aa, %i.ab
  br i1 %or.cond3.i, label %bb.f, label %png_muldiv.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ac = fptosi double %i.z to i32
  br label %png_muldiv.exit

png_muldiv.exit:                                  ; preds = %bb.d, %bb.f
  %.184 = phi i32 [ 0, %bb.d ], [ %i.ac, %bb.f ]  ; 9 uses
  %i.ad = icmp ult i32 %.184, 32769
  %i.ae = icmp sgt i32 %i.m, -1
  %or.cond7 = and i1 %i.ae, %i.ad
  br i1 %or.cond7, label %bb.g, label %png_muldiv.exit.thread

bb.g:                                             ; preds = %png_muldiv.exit
  %i.af = icmp eq i32 %i.m, 0
  br i1 %i.af, label %png_muldiv.exit55, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = uitofp nneg i32 %i.m to double
  %i.ah = fmul nnan double %i.ag, 3.276800e+04
  %i.ai = uitofp nneg i32 %i.q to double
  %i.aj = fdiv double %i.ah, %i.ai
  %i.ak = fadd double %i.aj, 5.000000e-01
  %i.al = tail call double @llvm.floor.f64(double %i.ak) ; 3 uses
  %i.am = fcmp ole double %i.al, f0x41DFFFFFFFC00000
  %i.an = fcmp oge double %i.al, f0xC1E0000000000000
  %or.cond3.i51 = and i1 %i.am, %i.an
  br i1 %or.cond3.i51, label %bb.i, label %png_muldiv.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ao = fptosi double %i.al to i32
  br label %png_muldiv.exit55

png_muldiv.exit55:                                ; preds = %bb.g, %bb.i
  %.182 = phi i32 [ 0, %bb.g ], [ %i.ao, %bb.i ]  ; 9 uses
  %i.ap = icmp ult i32 %.182, 32769
  %i.aq = icmp sgt i32 %i.o, -1
  %or.cond13 = and i1 %i.aq, %i.ap
  br i1 %or.cond13, label %bb.j, label %png_muldiv.exit.thread

bb.j:                                             ; preds = %png_muldiv.exit55
  %i.ar = icmp eq i32 %i.o, 0
  br i1 %i.ar, label %png_muldiv.exit61.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = uitofp nneg i32 %i.o to double
  %i.at = fmul nnan double %i.as, 3.276800e+04
  %i.au = uitofp nneg i32 %i.q to double
  %i.av = fdiv double %i.at, %i.au
  %i.aw = fadd double %i.av, 5.000000e-01
  %i.ax = tail call double @llvm.floor.f64(double %i.aw) ; 3 uses
  %i.ay = fcmp ole double %i.ax, f0x41DFFFFFFFC00000
  %i.az = fcmp oge double %i.ax, f0xC1E0000000000000
  %or.cond3.i57 = and i1 %i.ay, %i.az
  %i.ba = fptosi double %i.ax to i32              ; 2 uses
  %i.bb = icmp samesign ult i32 %i.ba, 32769
  %or.cond115 = select i1 %or.cond3.i57, i1 %i.bb, i1 false
  br i1 %or.cond115, label %png_muldiv.exit61.thread, label %png_muldiv.exit.thread

png_muldiv.exit61.thread:                         ; preds = %bb.k, %bb.j
  %.1112 = phi i32 [ %i.ba, %bb.k ], [ 0, %bb.j ] ; 7 uses
  %i.bc = add nuw nsw i32 %.182, %.184
  %i.bd = add nuw nsw i32 %i.bc, %.1112           ; 3 uses
  %i.be = icmp samesign ult i32 %i.bd, 32770
  br i1 %i.be, label %bb.l, label %png_muldiv.exit.thread

bb.l:                                             ; preds = %png_muldiv.exit61.thread
  %i.bf = icmp ne i32 %i.bd, 32769                ; 2 uses
  %i.bg = icmp samesign ugt i32 %i.bd, 32767      ; 2 uses
  %not. = xor i1 %i.bg, true
  %spec.select46 = zext i1 %not. to i32
  %.not40 = and i1 %i.bf, %i.bg
  %.0 = select i1 %i.bf, i32 %spec.select46, i32 -1 ; 3 uses
  br i1 %.not40, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not41 = icmp samesign ult i32 %.182, %.184
  %.not42 = icmp samesign ult i32 %.182, %.1112
  %or.cond47 = select i1 %.not41, i1 true, i1 %.not42
  br i1 %or.cond47, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = add nsw i32 %.0, %.182
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %.not43 = icmp samesign ult i32 %.184, %.182
  %.not44 = icmp samesign ult i32 %.184, %.1112
  %or.cond48 = select i1 %.not43, i1 true, i1 %.not44
  br i1 %or.cond48, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = add nsw i32 %.0, %.184
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bj = add nsw i32 %.0, %.1112
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q, %bb.p, %bb.l
  %.083 = phi i32 [ %.184, %bb.l ], [ %.184, %bb.q ], [ %i.bi, %bb.p ], [ %.184, %bb.n ] ; 2 uses
  %.081 = phi i32 [ %.182, %bb.l ], [ %.182, %bb.q ], [ %.182, %bb.p ], [ %i.bh, %bb.n ] ; 2 uses
  %.080 = phi i32 [ %.1112, %bb.l ], [ %i.bj, %bb.q ], [ %.1112, %bb.p ], [ %.1112, %bb.n ]
  %i.bk = add nsw i32 %.081, %.083
  %i.bl = add nsw i32 %i.bk, %.080
  %.not45 = icmp eq i32 %i.bl, 32768
  br i1 %.not45, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.38) #26
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bm = trunc i32 %.083 to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1034
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !148
  %i.bo = trunc i32 %.081 to i16
  br label %png_muldiv.exit.thread.sink.split

have_chromaticities.exit.thread:                  ; preds = %bb.b, %have_chromaticities.exit.thread87
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1034
  store i16 6968, ptr %i.bp, align 2, !tbaa !148
  br label %png_muldiv.exit.thread.sink.split

png_muldiv.exit.thread.sink.split:                ; preds = %have_chromaticities.exit.thread, %bb.t
  %.sink = phi i16 [ %i.bo, %bb.t ], [ 23434, %have_chromaticities.exit.thread ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1036
  store i16 %.sink, ptr %i.bq, align 4, !tbaa !149
  br label %png_muldiv.exit.thread

png_muldiv.exit.thread:                           ; preds = %png_muldiv.exit.thread.sink.split, %bb.k, %bb.h, %bb.e, %bb.c, %png_muldiv.exit, %png_muldiv.exit55, %png_muldiv.exit61.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.u

bb.u:                                             ; preds = %png_muldiv.exit.thread, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_check_IHDR(ptr noalias noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.str.39.sink = phi ptr [ @.str.39, %bb.a ], [ @.str.40, %bb.b ]
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull %.str.39.sink) #28
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 1, %.sink.split ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1108
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29
  %i.e = icmp ugt i32 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.42) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.3 = phi i32 [ 1, %bb.d ], [ %.1, %bb.c ]
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %.sink.split96, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = icmp slt i32 %2, 0
  br i1 %i.g, label %.sink.split96, label %bb.g

.sink.split96:                                    ; preds = %bb.f, %bb.e
  %.str.43.sink = phi ptr [ @.str.43, %bb.e ], [ @.str.44, %bb.f ]
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull %.str.43.sink) #28
  br label %bb.g

bb.g:                                             ; preds = %.sink.split96, %bb.f
  %.5 = phi i32 [ %.3, %bb.f ], [ 1, %.sink.split96 ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.i = load i32, ptr %i.h, align 8, !tbaa !30
  %i.j = icmp ugt i32 %2, %i.i
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.45) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.6 = phi i32 [ 1, %bb.h ], [ %.5, %bb.g ]
  %i.k = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %3)
  %i.l = icmp eq i32 %i.k, 1
  %i.m = and i32 %3, 31
  %switch = icmp ne i32 %i.m, 0
  %or.cond81 = and i1 %i.l, %switch
  br i1 %or.cond81, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.7 = phi i32 [ 1, %bb.j ], [ %.6, %bb.i ]
  %i.n = and i32 %4, -5                           ; 3 uses
  %i.o = icmp eq i32 %i.n, 1
  %i.p = icmp ugt i32 %4, 6
  %or.cond13 = or i1 %i.p, %i.o
  br i1 %or.cond13, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.47) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.8 = phi i32 [ 1, %bb.l ], [ %.7, %bb.k ]
  %i.q = icmp eq i32 %4, 3
  %i.r = icmp sgt i32 %3, 8
  %or.cond15 = and i1 %i.r, %i.q
  br i1 %or.cond15, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = icmp eq i32 %4, 4
  %i.t = icmp eq i32 %i.n, 2
  %or.cond19 = or i1 %i.s, %i.t
  %i.u = icmp slt i32 %3, 8
  %or.cond21 = and i1 %i.u, %or.cond19
  br i1 %or.cond21, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.48) #28
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.9 = phi i32 [ 1, %bb.o ], [ %.8, %bb.n ]
  %i.v = icmp sgt i32 %5, 1
  br i1 %i.v, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.49) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.10 = phi i32 [ 1, %bb.q ], [ %.9, %bb.p ]
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.50) #28
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.11 = phi i32 [ 1, %bb.s ], [ %.10, %bb.r ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !150
  %i.y = and i32 %i.x, 4096
end_hunk_1
