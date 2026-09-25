Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/homography_solver?download=true
inline.NumInlined: 1025
inline.NumDeleted: 487
loop-unroll.NumCompletelyUnrolled: 130
loop-unroll.NumUnrolled: 130
begin_hunk_0_@_ZNK2cv4usac30HomographyNonMinimalSolverImpl8estimateERKSt6vectorIiSaIiEEiRS2_INS_3MatESaIS7_EERKS2_IdSaIdEE:bb.a
  br i1 %i.af, label %.lr.ph455, label %.loopexit

.lr.ph455:                                        ; preds = %.preheader431
  %wide.trip.count509 = zext nneg i32 %2 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 96 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 112 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 128 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 160 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 176 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 192 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 208 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 240 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 256 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 272 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 320 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 336 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 344 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 400 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 408
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 416
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 480 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 496 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 560 ; 2 uses
  br label %bb.l

.preheader428:                                    ; preds = %.noexc
  br i1 %i.af, label %.lr.ph459, label %.loopexit

.lr.ph459:                                        ; preds = %.preheader428
  %i.be = load i8, ptr %i.f, align 8, !tbaa !42, !range !68, !noundef !69
  %i.bf = trunc nuw i8 %i.be to i1
  %wide.trip.count522 = zext nneg i32 %2 to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 80 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 96 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.x, i64 112 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 128 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 160 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.x, i64 176 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.x, i64 192 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.x, i64 208 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.x, i64 240 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.x, i64 256 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 272 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 320 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.x, i64 336 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.x, i64 344 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.x, i64 400 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.x, i64 408 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.x, i64 416 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.x, i64 480 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.x, i64 496 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.x, i64 560 ; 2 uses
  %i.ce = load <2 x double>, ptr %i.x, align 8, !tbaa !61
  %i.cf = load <2 x double>, ptr %i.bg, align 8, !tbaa !61
  %i.cg = load <2 x double>, ptr %i.bh, align 8, !tbaa !61
  %i.ch = load <2 x double>, ptr %i.bi, align 8, !tbaa !61
  %.promoted1112 = load double, ptr %i.bj, align 8, !tbaa !61
  %i.ci = load <2 x double>, ptr %i.bk, align 8, !tbaa !61
  %i.cj = load <2 x double>, ptr %i.bl, align 8, !tbaa !61
  %i.ck = load <2 x double>, ptr %i.bm, align 8, !tbaa !61
  %i.cl = load <2 x double>, ptr %i.bn, align 8, !tbaa !61
  %i.cm = load <2 x double>, ptr %i.bo, align 8, !tbaa !61
  %.promoted1134 = load double, ptr %i.bp, align 8, !tbaa !61
  %i.cn = load <2 x double>, ptr %i.bq, align 8, !tbaa !61
  %.promoted1140 = load double, ptr %i.br, align 8, !tbaa !61
  %i.co = load <2 x double>, ptr %i.bs, align 8, !tbaa !61
  %i.cp = load <2 x double>, ptr %i.bt, align 8, !tbaa !61
  %i.cq = load <2 x double>, ptr %i.bu, align 8, !tbaa !61
  %i.cr = load <2 x double>, ptr %i.bv, align 8, !tbaa !61
  %.promoted1158 = load double, ptr %i.bw, align 8, !tbaa !61
  %i.cs = load <2 x double>, ptr %i.bx, align 8, !tbaa !61
  %.promoted1164 = load double, ptr %i.by, align 8, !tbaa !61
  %.promoted1166 = load double, ptr %i.bz, align 8, !tbaa !61
  %i.ct = load <2 x double>, ptr %i.ca, align 8, !tbaa !61
  %i.cu = load <2 x double>, ptr %i.cb, align 8, !tbaa !61
  %.promoted1176 = load double, ptr %i.cc, align 8, !tbaa !61
  %i.cv = load <2 x double>, ptr %i.cd, align 8, !tbaa !61
  %i.cw = insertelement <2 x double> poison, double %.promoted1158, i64 0
  %i.cx = insertelement <2 x double> %i.cw, double %.promoted1166, i64 1
  %i.cy = insertelement <4 x double> poison, double %.promoted1176, i64 0
  %i.cz = insertelement <4 x double> %i.cy, double %.promoted1164, i64 1
  %i.da = insertelement <4 x double> %i.cz, double %.promoted1140, i64 2
  %i.db = insertelement <4 x double> %i.da, double %.promoted1134, i64 3
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit384

bb.j:                                             ; preds = %.lr.ph459, %.preheader427
  %i.dd = phi double [ %.promoted1112, %.lr.ph459 ], [ %i.fz, %.preheader427 ]
  %indvars.iv519 = phi i64 [ 0, %.lr.ph459 ], [ %indvars.iv.next520, %.preheader427 ] ; 3 uses
  %i.de = phi <2 x double> [ %i.cx, %.lr.ph459 ], [ %i.hh, %.preheader427 ]
  %i.df = phi <2 x double> [ %i.ce, %.lr.ph459 ], [ %i.em, %.preheader427 ]
  %i.dg = phi <2 x double> [ %i.cf, %.lr.ph459 ], [ %i.fk, %.preheader427 ]
  %i.dh = phi <2 x double> [ %i.cg, %.lr.ph459 ], [ %i.fp, %.preheader427 ]
  %i.di = phi <2 x double> [ %i.ch, %.lr.ph459 ], [ %i.fg, %.preheader427 ]
  %i.dj = phi <2 x double> [ %i.ci, %.lr.ph459 ], [ %i.ey, %.preheader427 ]
  %i.dk = phi <2 x double> [ %i.cj, %.lr.ph459 ], [ %i.fs, %.preheader427 ]
  %i.dl = phi <2 x double> [ %i.ck, %.lr.ph459 ], [ %i.fu, %.preheader427 ]
  %i.dm = phi <2 x double> [ %i.cl, %.lr.ph459 ], [ %i.gc, %.preheader427 ]
  %i.dn = phi <2 x double> [ %i.cm, %.lr.ph459 ], [ %i.ge, %.preheader427 ]
  %i.do = phi <2 x double> [ %i.cn, %.lr.ph459 ], [ %i.gg, %.preheader427 ]
  %i.dp = phi <2 x double> [ %i.co, %.lr.ph459 ], [ %i.gk, %.preheader427 ]
  %i.dq = phi <2 x double> [ %i.cp, %.lr.ph459 ], [ %i.gz, %.preheader427 ]
  %i.dr = phi <2 x double> [ %i.cq, %.lr.ph459 ], [ %i.gq, %.preheader427 ]
  %i.ds = phi <2 x double> [ %i.cr, %.lr.ph459 ], [ %i.gt, %.preheader427 ]
  %i.dt = phi <2 x double> [ %i.cs, %.lr.ph459 ], [ %i.hc, %.preheader427 ]
  %i.du = phi <2 x double> [ %i.ct, %.lr.ph459 ], [ %i.hk, %.preheader427 ]
  %i.dv = phi <2 x double> [ %i.cu, %.lr.ph459 ], [ %i.hn, %.preheader427 ]
  %i.dw = phi <2 x double> [ %i.cv, %.lr.ph459 ], [ %i.hz, %.preheader427 ]
  %i.dx = phi <4 x double> [ %i.db, %.lr.ph459 ], [ %i.hu, %.preheader427 ]
  %i.dy = trunc nuw nsw i64 %indvars.iv519 to i32
  br i1 %i.bf, label %.preheader427, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dz = load ptr, ptr %1, align 8, !tbaa !65
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv519
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !52
  br label %.preheader427

.preheader427:                                    ; preds = %bb.j, %bb.k
  %.in377 = phi i32 [ %i.eb, %bb.k ], [ %i.dy, %bb.j ]
  %i.ec = shl nsw i32 %.in377, 2
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ed ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 8
  %i.eg = load <2 x float>, ptr %i.ee, align 4, !tbaa !67
  %i.eh = fpext <2 x float> %i.eg to <2 x double> ; 11 uses
  %i.ei = extractelement <2 x double> %i.eh, i64 0
  %i.ej = extractelement <2 x double> %i.eh, i64 1 ; 5 uses
  %i.ek = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.el = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.eh, <2 x double> zeroinitializer)
  %i.em = fadd <2 x double> %i.df, %i.el          ; 2 uses
  %i.en = load <2 x float>, ptr %i.ef, align 4, !tbaa !67
  %i.eo = fpext <2 x float> %i.en to <2 x double> ; 7 uses
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = fmul <2 x double> %i.ep, %i.eh          ; 8 uses
  %i.er = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.es = fmul <2 x double> %i.er, %i.eh          ; 7 uses
  %i.et = fmul <2 x double> %i.es, zeroinitializer ; 4 uses
  %i.eu = extractelement <2 x double> %i.eo, i64 0 ; 3 uses
  %i.ev = call double @llvm.fmuladd.f64(double %i.ej, double %i.ej, double 0.000000e+00)
  %i.ew = fadd <2 x double> %i.eh, zeroinitializer ; 2 uses
  %i.ex = insertelement <2 x double> %i.ew, double %i.ev, i64 0
  %i.ey = fadd <2 x double> %i.dj, %i.ex          ; 2 uses
  %i.ez = fmul <2 x double> %i.eh, splat (double -0.000000e+00) ; 5 uses
  %i.fa = extractelement <2 x double> %i.ez, i64 0
  %i.fb = fmul <2 x double> %i.eh, splat (double -0.000000e+00) ; 2 uses
  %i.fc = extractelement <2 x double> %i.eq, i64 0 ; 2 uses
  %i.fd = fneg <2 x double> %i.eh                 ; 5 uses
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ff = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fe, <2 x double> %i.eq, <2 x double> %i.et)
  %i.fg = fadd <2 x double> %i.di, %i.ff          ; 2 uses
  %i.fh = extractelement <2 x double> %i.fd, i64 0 ; 2 uses
  %i.fi = call double @llvm.fmuladd.f64(double %i.fh, double 0.000000e+00, double %i.fa)
  %i.fj = insertelement <2 x double> %i.ew, double %i.fi, i64 1
  %i.fk = fadd <2 x double> %i.dg, %i.fj          ; 2 uses
  %i.fl = shufflevector <2 x double> %i.eq, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.fm = shufflevector <2 x double> %i.ez, <2 x double> %i.et, <2 x i32> <i32 1, i32 2>
  %i.fn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.fl, <2 x double> %i.fm) ; 2 uses
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> %i.fb, <2 x i32> <i32 0, i32 2>
  %i.fp = fadd <2 x double> %i.dh, %i.fo          ; 2 uses
  %i.fq = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.fr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> zeroinitializer, <2 x double> %i.ez)
  %i.fs = fadd <2 x double> %i.dk, %i.fr          ; 2 uses
  %i.ft = shufflevector <2 x double> %i.fb, <2 x double> %i.fn, <2 x i32> <i32 1, i32 3>
  %i.fu = fadd <2 x double> %i.dl, %i.ft          ; 2 uses
  %i.fv = shufflevector <2 x double> %i.et, <2 x double> %i.eo, <2 x i32> <i32 1, i32 3>
  %i.fw = fmul <2 x double> %i.fv, <double 1.000000e+00, double 0.000000e+00> ; 2 uses
  %i.fx = extractelement <2 x double> %i.fw, i64 1 ; 2 uses
  %i.fy = call double @llvm.fmuladd.f64(double %i.fh, double %i.eu, double %i.fx)
  %i.fz = fadd double %i.dd, %i.fy                ; 2 uses
  %i.ga = shufflevector <2 x double> %i.eq, <2 x double> %i.eo, <2 x i32> <i32 1, i32 2> ; 5 uses
  %i.gb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %i.ga, <2 x double> %i.fw)
  %i.gc = fadd <2 x double> %i.dm, %i.gb          ; 2 uses
  %i.gd = shufflevector <2 x double> %i.ez, <2 x double> <double 1.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.ge = fadd <2 x double> %i.dn, %i.gd          ; 2 uses
  %i.gf = fsub <2 x double> %i.et, %i.eq
  %i.gg = fadd <2 x double> %i.do, %i.gf          ; 2 uses
  %i.gh = fsub double %i.fx, %i.eu
  %i.gi = fmul <2 x double> %i.ek, %i.eh
  %i.gj = fadd <2 x double> %i.gi, <double -0.000000e+00, double 0.000000e+00>
  %i.gk = fadd <2 x double> %i.dp, %i.gj          ; 2 uses
  %i.gl = fadd double %i.ei, 0.000000e+00
  %i.gm = insertelement <2 x double> poison, double %i.gl, i64 0
  %i.gn = shufflevector <2 x double> %i.es, <2 x double> %i.eo, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.go = fmul <2 x double> %i.gn, %i.fe
  %i.gp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> zeroinitializer, <2 x double> %i.go)
  %i.gq = fadd <2 x double> %i.dr, %i.gp          ; 3 uses
  %24 = fadd double %i.ej, 0.000000e+00
  %25 = fmul double %i.ej, %i.ej
  %i.gr = insertelement <2 x double> poison, double %25, i64 0
  %i.gs = insertelement <2 x double> %i.gr, double %24, i64 1
  %i.gt = fadd <2 x double> %i.ds, %i.gs          ; 3 uses
  %i.gu = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gv = fmul <2 x double> %i.gu, %i.fd          ; 2 uses
  %i.gw = extractelement <2 x double> %i.gv, i64 0
  %i.gx = call double @llvm.fmuladd.f64(double %i.fc, double 0.000000e+00, double %i.gw)
  %i.gy = insertelement <2 x double> %i.gm, double %i.gx, i64 1
  %i.gz = fadd <2 x double> %i.dq, %i.gy          ; 2 uses
  %i.ha = fmul <2 x double> %i.gn, %i.fq
  %i.hb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> zeroinitializer, <2 x double> %i.ha)
  %i.hc = fadd <2 x double> %i.dt, %i.hb          ; 2 uses
  %i.hd = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.he = fneg <2 x double> %i.es
  %i.hf = shufflevector <2 x double> %i.gv, <2 x double> %i.he, <2 x i32> <i32 1, i32 2>
  %i.hg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hd, <2 x double> zeroinitializer, <2 x double> %i.hf)
  %i.hh = fadd <2 x double> %i.de, %i.hg          ; 4 uses
  %i.hi = fneg <2 x double> %i.gn
  %i.hj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> zeroinitializer, <2 x double> %i.hi)
  %i.hk = fadd <2 x double> %i.du, %i.hj          ; 2 uses
  %i.hl = fmul <2 x double> %i.gu, %i.es
  %i.hm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hd, <2 x double> %i.eq, <2 x double> %i.hl)
  %i.hn = fadd <2 x double> %i.dv, %i.hm          ; 2 uses
  %shift = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.es, %shift
  %i.ho = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.hp = call double @llvm.fmuladd.f64(double %i.fc, double %i.eu, double %i.ho)
  %i.hq = shufflevector <2 x double> %i.ez, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hr = shufflevector <4 x double> %i.hq, <4 x double> <double poison, double 1.000000e+00, double poison, double poison>, <4 x i32> <i32 poison, i32 5, i32 poison, i32 1>
  %i.hs = insertelement <4 x double> %i.hr, double %i.hp, i64 0
  %i.ht = insertelement <4 x double> %i.hs, double %i.gh, i64 2
  %i.hu = fadd <4 x double> %i.dx, %i.ht          ; 5 uses
  %i.hv = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hw = fmul <2 x double> %i.hv, %i.gn
  %i.hx = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hx, <2 x double> %i.ga, <2 x double> %i.hw)
  %i.hz = fadd <2 x double> %i.dw, %i.hy          ; 2 uses
  %indvars.iv.next520 = add nuw nsw i64 %indvars.iv519, 1 ; 2 uses
  %exitcond523.not = icmp eq i64 %indvars.iv.next520, %wide.trip.count522
  br i1 %exitcond523.not, label %.loopexit.loopexit, label %bb.j, !llvm.loop !202

bb.l:                                             ; preds = %.lr.ph455, %.loopexit430
  %i.ia = phi double [ 0.000000e+00, %.lr.ph455 ], [ %i.nx, %.loopexit430 ]
  %i.ib = phi double [ 0.000000e+00, %.lr.ph455 ], [ %i.ny, %.loopexit430 ]
  %indvars.iv506 = phi i64 [ 0, %.lr.ph455 ], [ %indvars.iv.next507, %.loopexit430 ] ; 4 uses
  %i.ic = phi <2 x double> [ zeroinitializer, %.lr.ph455 ], [ %i.nz, %.loopexit430 ]
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv506
  %i.ie = load double, ptr %i.id, align 8, !tbaa !61 ; 8 uses
  %i.if = fcmp olt double %i.ie, f0x3E80000000000000
  br i1 %i.if, label %.loopexit430, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ig = load i8, ptr %i.f, align 8, !tbaa !42, !range !68, !noundef !69
  %i.ih = trunc nuw i8 %i.ig to i1
  %i.ii = trunc nuw nsw i64 %indvars.iv506 to i32
  br i1 %i.ih, label %.preheader429, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ij = load ptr, ptr %1, align 8, !tbaa !65
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv506
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !52
  br label %.preheader429

.preheader429:                                    ; preds = %bb.m, %bb.n
  %.in368 = phi i32 [ %i.il, %bb.n ], [ %i.ii, %bb.m ]
  %i.im = shl nsw i32 %.in368, 2
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.in ; 2 uses
  %i.ip = getelementptr i8, ptr %i.io, i64 8
  %i.iq = load double, ptr %i.aj, align 8, !tbaa !61
  %i.ir = load double, ptr %i.ar, align 8, !tbaa !61
  %i.is = load double, ptr %i.aw, align 8, !tbaa !61
  %i.it = load double, ptr %i.ay, align 8, !tbaa !61
  %i.iu = load double, ptr %i.az, align 8, !tbaa !61
  %i.iv = load <2 x float>, ptr %i.ip, align 4, !tbaa !67
  %i.iw = fpext <2 x float> %i.iv to <2 x double>
  %i.ix = insertelement <2 x double> poison, double %i.ie, i64 0 ; 2 uses
  %i.iy = shufflevector <2 x double> %i.ix, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iz = fmul <2 x double> %i.iy, %i.iw          ; 9 uses
  %i.ja = load <2 x float>, ptr %i.io, align 4, !tbaa !67
  %i.jb = fpext <2 x float> %i.ja to <2 x double> ; 3 uses
  %i.jc = fneg double %i.ie                       ; 8 uses
  %i.jd = extractelement <2 x double> %i.jb, i64 1 ; 2 uses
  %i.je = fmul double %i.jd, %i.jc                ; 5 uses
  %i.jf = insertelement <2 x double> %i.iz, double %i.jc, i64 0
  %i.jg = fmul <2 x double> %i.jf, %i.jb          ; 11 uses
  %i.jh = extractelement <2 x double> %i.jg, i64 0
  %i.ji = load <2 x double>, ptr %i.x, align 8, !tbaa !61
  %i.jj = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.jk = insertelement <2 x double> %i.jg, double %i.je, i64 1 ; 2 uses
  %i.jl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> %i.jk, <2 x double> zeroinitializer)
  %i.jm = fadd <2 x double> %i.ji, %i.jl
  store <2 x double> %i.jm, ptr %i.x, align 8, !tbaa !61
  %i.jn = load <2 x double>, ptr %i.ag, align 8, !tbaa !61
  %i.jo = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.jc, i64 0
  %i.jp = load <2 x double>, ptr %i.ah, align 8, !tbaa !61
  %i.jq = insertelement <2 x double> poison, double %i.je, i64 0 ; 3 uses
  %i.jr = insertelement <2 x double> %i.jq, double %i.ie, i64 1
  %i.js = fmul <2 x double> %i.jr, <double 0.000000e+00, double -0.000000e+00> ; 4 uses
  %i.jt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> zeroinitializer, <2 x double> %i.js)
  %i.ju = fadd <2 x double> %i.jp, %i.jt
  store <2 x double> %i.ju, ptr %i.ah, align 8, !tbaa !61
  %i.jv = load <2 x double>, ptr %i.ak, align 8, !tbaa !61
  %i.jw = shufflevector <2 x double> %i.jq, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.jx = insertelement <2 x double> %i.jw, double %i.jc, i64 1
  %i.jy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jw, <2 x double> %i.jx, <2 x double> zeroinitializer)
  %i.jz = fadd <2 x double> %i.jv, %i.jy
  store <2 x double> %i.jz, ptr %i.ak, align 8, !tbaa !61
  %i.ka = load <2 x double>, ptr %i.al, align 8, !tbaa !61
  %i.kb = shufflevector <2 x double> %i.jg, <2 x double> %i.js, <2 x i32> <i32 0, i32 2>
  %i.kc = fmul <2 x double> %i.kb, <double 0.000000e+00, double 1.000000e+00> ; 3 uses
  %i.kd = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.kc, <2 x i32> <i32 0, i32 2>
  %i.ke = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> %i.jo, <2 x double> %i.kd)
  %i.kf = fadd <2 x double> %i.jn, %i.ke
  store <2 x double> %i.kf, ptr %i.ag, align 8, !tbaa !61
  %i.kg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jw, <2 x double> zeroinitializer, <2 x double> %i.kc)
  %i.kh = fadd <2 x double> %i.ka, %i.kg
  store <2 x double> %i.kh, ptr %i.al, align 8, !tbaa !61
  %i.ki = load <2 x double>, ptr %i.ao, align 8, !tbaa !61
  %i.kj = insertelement <2 x double> %i.ix, double %i.jc, i64 1 ; 2 uses
  %i.kk = insertelement <2 x double> %i.kj, double 0.000000e+00, i64 1
  %i.kl = shufflevector <2 x double> %i.kc, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.km = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kj, <2 x double> %i.kk, <2 x double> %i.kl)
  %i.kn = fadd <2 x double> %i.ki, %i.km
  store <2 x double> %i.kn, ptr %i.ao, align 8, !tbaa !61
  %i.ko = load <2 x double>, ptr %i.ap, align 8, !tbaa !61
  %i.kp = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.kq = shufflevector <2 x double> %i.kp, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.kr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kq, <2 x double> zeroinitializer, <2 x double> %i.js)
  %i.ks = fadd <2 x double> %i.ko, %i.kr
  store <2 x double> %i.ks, ptr %i.ap, align 8, !tbaa !61
  %i.kt = load <2 x double>, ptr %i.as, align 8, !tbaa !61
  %i.ku = fmul <2 x double> %i.jj, %i.jk
  %i.kv = fadd <2 x double> %i.ku, <double -0.000000e+00, double 0.000000e+00>
  %i.kw = fadd <2 x double> %i.kt, %i.kv
  store <2 x double> %i.kw, ptr %i.as, align 8, !tbaa !61
  %i.kx = fmul double %i.ie, %i.jh
  %i.ky = fmul double %i.ie, %i.je
  %i.kz = load <2 x double>, ptr %i.av, align 8, !tbaa !61
  %26 = fsub double 0.000000e+00, %i.ky
  %27 = fmul double %i.je, %i.je
  %i.la = insertelement <2 x double> poison, double %27, i64 0
  %i.lb = insertelement <2 x double> %i.la, double %26, i64 1
  %i.lc = fadd <2 x double> %i.kz, %i.lb          ; 2 uses
  store <2 x double> %i.lc, ptr %i.av, align 8, !tbaa !61
  %i.ld = shufflevector <2 x double> %i.jb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.le = fmul <2 x double> %i.iz, %i.ld          ; 8 uses
  %28 = extractelement <2 x double> %i.le, i64 0  ; 2 uses
  %i.lf = load <2 x double>, ptr %i.ai, align 8, !tbaa !61
  %i.lg = shufflevector <2 x double> %i.le, <2 x double> %i.jg, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.lh = fmul <2 x double> %i.lg, zeroinitializer ; 4 uses
  %i.li = load <2 x double>, ptr %i.am, align 8, !tbaa !61
  %i.lj = shufflevector <2 x double> %i.le, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.lk = shufflevector <2 x double> %i.js, <2 x double> %i.lh, <2 x i32> <i32 1, i32 2>
  %i.ll = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jw, <2 x double> %i.lj, <2 x double> %i.lk)
  %i.lm = fadd <2 x double> %i.li, %i.ll
  store <2 x double> %i.lm, ptr %i.am, align 8, !tbaa !61
  %i.ln = load <2 x double>, ptr %i.an, align 8, !tbaa !61
  %i.lo = shufflevector <2 x double> %i.lh, <2 x double> %i.iz, <2 x i32> <i32 1, i32 3>
  %i.lp = fmul <2 x double> %i.lo, <double 1.000000e+00, double 0.000000e+00> ; 2 uses
  %i.lq = shufflevector <2 x double> %i.iz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lr = load <2 x double>, ptr %i.aq, align 8, !tbaa !61
  %29 = load <2 x double>, ptr %i.at, align 8, !tbaa !61
  %shift1281 = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1282 = fmul <2 x double> %i.jg, %shift1281
  %i.ls = extractelement <2 x double> %foldExtExtBinop1282, i64 0
  %30 = fsub double 0.000000e+00, %i.kx
  %31 = call double @llvm.fmuladd.f64(double %28, double 0.000000e+00, double %i.ls)
  %32 = insertelement <2 x double> poison, double %30, i64 0
  %33 = insertelement <2 x double> %32, double %31, i64 1
  %34 = fadd <2 x double> %29, %33
  store <2 x double> %34, ptr %i.at, align 8, !tbaa !61
  %i.lt = load <2 x double>, ptr %i.au, align 8, !tbaa !61
  %i.lu = shufflevector <2 x double> %i.iz, <2 x double> %i.jg, <2 x i32> <i32 1, i32 2>
  %i.lv = fmul <2 x double> %i.lu, %i.jg
  %i.lw = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.lx = insertelement <2 x double> %i.jq, double %i.jc, i64 1
  %i.ly = fmul <2 x double> %i.lw, %i.lx
  %i.lz = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ma = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lz, <2 x double> zeroinitializer, <2 x double> %i.ly)
  %i.mb = insertelement <2 x double> poison, double %i.is, i64 0
  %i.mc = insertelement <2 x double> %i.mb, double %i.iu, i64 1
  %i.md = fadd <2 x double> %i.mc, %i.ma          ; 3 uses
  %i.me = extractelement <2 x double> %i.md, i64 0
  store double %i.me, ptr %i.aw, align 8, !tbaa !61
  %i.mf = load <2 x double>, ptr %i.ax, align 8, !tbaa !61
  %i.mg = shufflevector <2 x double> %i.jg, <2 x double> %i.iz, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.mh = fmul <2 x double> %i.jw, %i.mg
  %35 = extractelement <2 x double> %i.iz, i64 0  ; 2 uses
  %i.mi = fmul double %35, %i.jd                  ; 4 uses
  %i.mj = insertelement <2 x double> %i.le, double %i.mi, i64 1 ; 3 uses
  %i.mk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> %i.mj, <2 x double> %i.lh)
  %i.ml = fadd <2 x double> %i.lf, %i.mk
  store <2 x double> %i.ml, ptr %i.ai, align 8, !tbaa !61
  %i.mm = insertelement <2 x double> %i.lq, double %i.mi, i64 0 ; 4 uses
  %36 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jw, <2 x double> %i.mm, <2 x double> %i.lp)
  %37 = fadd <2 x double> %i.ln, %36
  store <2 x double> %37, ptr %i.an, align 8, !tbaa !61
  %i.mn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kq, <2 x double> %i.mj, <2 x double> %i.lh)
  %i.mo = fadd <2 x double> %i.lr, %i.mn
  store <2 x double> %i.mo, ptr %i.aq, align 8, !tbaa !61
  %38 = insertelement <2 x double> %i.jg, double %i.jc, i64 1
  %39 = shufflevector <2 x double> %i.lp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.mp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %38, <2 x double> %i.lq, <2 x double> %39)
  %40 = insertelement <2 x double> poison, double %i.iq, i64 0
  %41 = insertelement <2 x double> %40, double %i.ir, i64 1
  %i.mq = fadd <2 x double> %41, %i.mp            ; 2 uses
  %42 = extractelement <2 x double> %i.mq, i64 0
  store double %42, ptr %i.aj, align 8, !tbaa !61
  %43 = extractelement <2 x double> %i.mq, i64 1
  store double %43, ptr %i.ar, align 8, !tbaa !61
  %i.mr = insertelement <2 x double> %i.iz, double %i.mi, i64 1
  %i.ms = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mr, <2 x double> zeroinitializer, <2 x double> %i.lv)
  %i.mt = shufflevector <2 x double> %i.ms, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mu = fadd <2 x double> %i.lt, %i.mt          ; 2 uses
  store <2 x double> %i.mu, ptr %i.au, align 8, !tbaa !61
  %i.mv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mm, <2 x double> zeroinitializer, <2 x double> %i.mh)
  %i.mw = fadd <2 x double> %i.mf, %i.mv
  store <2 x double> %i.mw, ptr %i.ax, align 8, !tbaa !61
  %44 = fmul double %i.ie, %i.ie
  %i.mx = fmul <2 x double> %i.mg, %i.kq
  %i.my = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mm, <2 x double> zeroinitializer, <2 x double> %i.mx)
  %i.mz = load <2 x double>, ptr %i.ba, align 8, !tbaa !61
  %i.na = shufflevector <2 x double> %i.md, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.nb = insertelement <4 x double> %i.na, double %i.it, i64 0
  %i.nc = shufflevector <2 x double> %i.mz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nd = shufflevector <4 x double> %i.nb, <4 x double> %i.nc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ne = insertelement <4 x double> <double poison, double -0.000000e+00, double poison, double poison>, double %44, i64 0
  %i.nf = shufflevector <2 x double> %i.my, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ng = shufflevector <4 x double> %i.ne, <4 x double> %i.nf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.nh = fadd <4 x double> %i.nd, %i.ng
  store <4 x double> %i.nh, ptr %i.ay, align 8, !tbaa !61
  %i.ni = fmul <2 x double> %i.lw, %i.lg
  %i.nj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lz, <2 x double> %i.mj, <2 x double> %i.ni)
  %i.nk = load <2 x double>, ptr %i.bb, align 8, !tbaa !61
  %i.nl = fadd <2 x double> %i.nk, %i.nj
  store <2 x double> %i.nl, ptr %i.bb, align 8, !tbaa !61
  %foldExtExtBinop1275.a = fmul <2 x double> %i.iz, %i.le
  %45 = extractelement <2 x double> %foldExtExtBinop1275.a, i64 1
  %46 = call double @llvm.fmuladd.f64(double %28, double %35, double %45)
  %i.nm = load double, ptr %i.bc, align 8, !tbaa !61
  %i.nn = fadd double %i.nm, %46
  store double %i.nn, ptr %i.bc, align 8, !tbaa !61
  %i.no = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.np = fmul <2 x double> %i.mg, %i.no
  %i.nq = insertelement <2 x double> poison, double %i.mi, i64 0
  %i.nr = shufflevector <2 x double> %i.nq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ns = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nr, <2 x double> %i.mm, <2 x double> %i.np)
  %i.nt = load <2 x double>, ptr %i.bd, align 8, !tbaa !61
  %i.nu = fadd <2 x double> %i.nt, %i.ns
  store <2 x double> %i.nu, ptr %i.bd, align 8, !tbaa !61
  %i.nv = extractelement <2 x double> %i.mu, i64 0
  %i.nw = extractelement <2 x double> %i.lc, i64 1
  br label %.loopexit430

.loopexit430:                                     ; preds = %.preheader429, %bb.l
  %i.nx = phi double [ %i.nv, %.preheader429 ], [ %i.ia, %bb.l ] ; 2 uses
  %i.ny = phi double [ %i.nw, %.preheader429 ], [ %i.ib, %bb.l ] ; 2 uses
  %i.nz = phi <2 x double> [ %i.md, %.preheader429 ], [ %i.ic, %bb.l ] ; 2 uses
  %indvars.iv.next507 = add nuw nsw i64 %indvars.iv506, 1 ; 2 uses
  %exitcond510.not = icmp eq i64 %indvars.iv.next507, %wide.trip.count509
  br i1 %exitcond510.not, label %.loopexit, label %bb.l, !llvm.loop !203

.loopexit.loopexit:                               ; preds = %.preheader427
  store <2 x double> %i.em, ptr %i.x, align 8, !tbaa !61
  store <2 x double> %i.fk, ptr %i.bg, align 8, !tbaa !61
  store <2 x double> %i.fp, ptr %i.bh, align 8, !tbaa !61
  store <2 x double> %i.fg, ptr %i.bi, align 8, !tbaa !61
  store double %i.fz, ptr %i.bj, align 8, !tbaa !61
  store <2 x double> %i.ey, ptr %i.bk, align 8, !tbaa !61
  store <2 x double> %i.fs, ptr %i.bl, align 8, !tbaa !61
  store <2 x double> %i.fu, ptr %i.bm, align 8, !tbaa !61
  store <2 x double> %i.gc, ptr %i.bn, align 8, !tbaa !61
  store <2 x double> %i.ge, ptr %i.bo, align 8, !tbaa !61
  %i.oa = extractelement <4 x double> %i.hu, i64 3
  store double %i.oa, ptr %i.bp, align 8, !tbaa !61
  store <2 x double> %i.gg, ptr %i.bq, align 8, !tbaa !61
  %i.ob = extractelement <4 x double> %i.hu, i64 2
  store double %i.ob, ptr %i.br, align 8, !tbaa !61
  store <2 x double> %i.gk, ptr %i.bs, align 8, !tbaa !61
  store <2 x double> %i.gz, ptr %i.bt, align 8, !tbaa !61
  store <2 x double> %i.gq, ptr %i.bu, align 8, !tbaa !61
  store <2 x double> %i.gt, ptr %i.bv, align 8, !tbaa !61
  %i.oc = extractelement <2 x double> %i.hh, i64 0
  store double %i.oc, ptr %i.bw, align 8, !tbaa !61
  store <2 x double> %i.hc, ptr %i.bx, align 8, !tbaa !61
  %i.od = extractelement <4 x double> %i.hu, i64 1
  store double %i.od, ptr %i.by, align 8, !tbaa !61
  %i.oe = extractelement <2 x double> %i.hh, i64 1
  store double %i.oe, ptr %i.bz, align 8, !tbaa !61
  store <2 x double> %i.hk, ptr %i.ca, align 8, !tbaa !61
  store <2 x double> %i.hn, ptr %i.cb, align 8, !tbaa !61
  %i.of = extractelement <4 x double> %i.hu, i64 0
  store double %i.of, ptr %i.cc, align 8, !tbaa !61
  store <2 x double> %i.hz, ptr %i.cd, align 8, !tbaa !61
  %i.og = extractelement <2 x double> %i.gq, i64 0
  %i.oh = extractelement <2 x double> %i.gt, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit430, %.loopexit.loopexit, %.preheader431, %.preheader428
  %i.oi = phi double [ %i.og, %.loopexit.loopexit ], [ 0.000000e+00, %.preheader428 ], [ 0.000000e+00, %.preheader431 ], [ %i.nx, %.loopexit430 ]
  %i.oj = phi double [ %i.oh, %.loopexit.loopexit ], [ 0.000000e+00, %.preheader428 ], [ 0.000000e+00, %.preheader431 ], [ %i.ny, %.loopexit430 ]
  %i.ok = phi <2 x double> [ %i.hh, %.loopexit.loopexit ], [ zeroinitializer, %.preheader428 ], [ zeroinitializer, %.preheader431 ], [ %i.nz, %.loopexit430 ]
  %i.ol = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.om = load double, ptr %i.ol, align 8, !tbaa !61
  %i.on = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  store double %i.om, ptr %i.on, align 8, !tbaa !61
  %i.oo = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.op = load double, ptr %i.oo, align 8, !tbaa !61
  %i.oq = getelementptr inbounds nuw i8, ptr %i.x, i64 144
  store double %i.op, ptr %i.oq, align 8, !tbaa !61
  %i.or = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.os = load double, ptr %i.or, align 8, !tbaa !61
  %i.ot = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  store double %i.os, ptr %i.ot, align 8, !tbaa !61
  %i.ou = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !61
  %i.ow = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  store double %i.ov, ptr %i.ow, align 8, !tbaa !61
  %i.ox = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !61
  %i.oz = getelementptr inbounds nuw i8, ptr %i.x, i64 224
  store double %i.oy, ptr %i.oz, align 8, !tbaa !61
  %i.pa = getelementptr inbounds nuw i8, ptr %i.x, i64 168
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !61
  %i.pc = getelementptr inbounds nuw i8, ptr %i.x, i64 232
  store double %i.pb, ptr %i.pc, align 8, !tbaa !61
  %i.pd = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.pe = load double, ptr %i.pd, align 8, !tbaa !61
  %i.pf = getelementptr inbounds nuw i8, ptr %i.x, i64 288
  store double %i.pe, ptr %i.pf, align 8, !tbaa !61
  %i.pg = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !61
  %i.pi = getelementptr inbounds nuw i8, ptr %i.x, i64 296
  store double %i.ph, ptr %i.pi, align 8, !tbaa !61
  %i.pj = getelementptr inbounds nuw i8, ptr %i.x, i64 176
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !61
  %i.pl = getelementptr inbounds nuw i8, ptr %i.x, i64 304
  store double %i.pk, ptr %i.pl, align 8, !tbaa !61
  %i.pm = getelementptr inbounds nuw i8, ptr %i.x, i64 248
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !61
  %i.po = getelementptr inbounds nuw i8, ptr %i.x, i64 312
  store double %i.pn, ptr %i.po, align 8, !tbaa !61
  %i.pp = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.pq = load double, ptr %i.pp, align 8, !tbaa !61
  %i.pr = getelementptr inbounds nuw i8, ptr %i.x, i64 360
  store double %i.pq, ptr %i.pr, align 8, !tbaa !61
  %i.ps = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !61
  %i.pu = getelementptr inbounds nuw i8, ptr %i.x, i64 368
  store double %i.pt, ptr %i.pu, align 8, !tbaa !61
  %i.pv = getelementptr inbounds nuw i8, ptr %i.x, i64 184
  %i.pw = load double, ptr %i.pv, align 8, !tbaa !61
  %i.px = getelementptr inbounds nuw i8, ptr %i.x, i64 376
  store double %i.pw, ptr %i.px, align 8, !tbaa !61
  %i.py = getelementptr inbounds nuw i8, ptr %i.x, i64 256
  %i.pz = load double, ptr %i.py, align 8, !tbaa !61
  %i.qa = getelementptr inbounds nuw i8, ptr %i.x, i64 384
  store double %i.pz, ptr %i.qa, align 8, !tbaa !61
  %i.qb = getelementptr inbounds nuw i8, ptr %i.x, i64 392
  store double %i.oj, ptr %i.qb, align 8, !tbaa !61
  %i.qc = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !61
  %i.qe = getelementptr inbounds nuw i8, ptr %i.x, i64 432
  store double %i.qd, ptr %i.qe, align 8, !tbaa !61
  %i.qf = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !61
  %i.qh = getelementptr inbounds nuw i8, ptr %i.x, i64 440
  store double %i.qg, ptr %i.qh, align 8, !tbaa !61
  %i.qi = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !61
  %i.qk = getelementptr inbounds nuw i8, ptr %i.x, i64 448
  store double %i.qj, ptr %i.qk, align 8, !tbaa !61
  %i.ql = getelementptr inbounds nuw i8, ptr %i.x, i64 264
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !61
  %i.qn = getelementptr inbounds nuw i8, ptr %i.x, i64 456
  store double %i.qm, ptr %i.qn, align 8, !tbaa !61
  %i.qo = getelementptr inbounds nuw i8, ptr %i.x, i64 464
  store <2 x double> %i.ok, ptr %i.qo, align 8, !tbaa !61
  %i.qp = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !61
  %i.qr = getelementptr inbounds nuw i8, ptr %i.x, i64 504
  store double %i.qq, ptr %i.qr, align 8, !tbaa !61
  %i.qs = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.qt = load double, ptr %i.qs, align 8, !tbaa !61
  %i.qu = getelementptr inbounds nuw i8, ptr %i.x, i64 512
  store double %i.qt, ptr %i.qu, align 8, !tbaa !61
  %i.qv = getelementptr inbounds nuw i8, ptr %i.x, i64 200
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !61
  %i.qx = getelementptr inbounds nuw i8, ptr %i.x, i64 520
  store double %i.qw, ptr %i.qx, align 8, !tbaa !61
  %i.qy = getelementptr inbounds nuw i8, ptr %i.x, i64 528
  store double %i.oi, ptr %i.qy, align 8, !tbaa !61
  %i.qz = getelementptr inbounds nuw i8, ptr %i.x, i64 344
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !61
  %i.rb = getelementptr inbounds nuw i8, ptr %i.x, i64 536
  store double %i.ra, ptr %i.rb, align 8, !tbaa !61
  %i.rc = getelementptr inbounds nuw i8, ptr %i.x, i64 416
  %i.rd = load double, ptr %i.rc, align 8, !tbaa !61
  %i.re = getelementptr inbounds nuw i8, ptr %i.x, i64 544
  store double %i.rd, ptr %i.re, align 8, !tbaa !61
  %i.rf = getelementptr inbounds nuw i8, ptr %i.x, i64 488
  %i.rg = load double, ptr %i.rf, align 8, !tbaa !61
  %i.rh = getelementptr inbounds nuw i8, ptr %i.x, i64 552
  store double %i.rg, ptr %i.rh, align 8, !tbaa !61
  %i.ri = invoke noundef zeroext i1 @_ZN2cv4usac4Math24eliminateUpperTriangularERSt6vectorIdSaIdEEii(ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef 8, i32 noundef 9)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.loopexit
  br i1 %i.ri, label %bb.q, label %.critedge

bb.p:                                             ; preds = %.loopexit
  %i.rj = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 3, i32 noundef 3, i32 noundef 6)
          to label %_ZN2cv4Mat_IdEC2Eii.exit unwind label %bb.r

_ZN2cv4Mat_IdEC2Eii.exit:                         ; preds = %bb.q
  %i.rk = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %._crit_edge unwind label %bb.s ; 0 uses

._crit_edge.1:                                    ; preds = %._crit_edge
  %i.rl = getelementptr inbounds nuw i8, ptr %i.xo, i64 488
  %i.rm = load double, ptr %i.rl, align 8, !tbaa !61
  %i.rn = fneg double %i.rm
  %i.ro = call double @llvm.fmuladd.f64(double %i.rn, double %i.xu, double 0.000000e+00)
  %i.rp = getelementptr inbounds nuw i8, ptr %i.xo, i64 496
  %i.rq = load double, ptr %i.rp, align 8, !tbaa !61
  %i.rr = fsub double %i.ro, %i.rq
  %i.rs = getelementptr inbounds nuw i8, ptr %i.xo, i64 480
  %i.rt = load double, ptr %i.rs, align 8, !tbaa !61
  %i.ru = fdiv double %i.rr, %i.rt                ; 8 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.xm, i64 48
  store double %i.ru, ptr %i.rv, align 8, !tbaa !61
  %i.rw = fcmp uno double %i.ru, 0.000000e+00
  br i1 %i.rw, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %._crit_edge.2

._crit_edge.2:                                    ; preds = %._crit_edge.1
end_hunk_0
begin_hunk_1_@_ZNK2cv4usac30HomographyNonMinimalSolverImpl8estimateERKSt6vectorIiSaIiEEiRS2_INS_3MatESaIS7_EERKS2_IdSaIdEE:bb.a
  %i.vd = fneg <2 x double> %i.vc                 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.xo, i64 104
  %i.vf = load <2 x double>, ptr %i.ve, align 8, !tbaa !61
  %i.vg = fneg <2 x double> %i.vf                 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.xo, i64 88
  %i.vi = load <2 x double>, ptr %i.vh, align 8, !tbaa !61
  %i.vj = fneg <2 x double> %i.vi                 ; 2 uses
  %i.vk = extractelement <2 x double> %i.vj, i64 0
  %i.vl = call double @llvm.fmuladd.f64(double %i.vk, double %i.uy, double 0.000000e+00)
  %i.vm = extractelement <2 x double> %i.vj, i64 1
  %i.vn = call double @llvm.fmuladd.f64(double %i.vm, double %i.ty, double %i.vl)
  %i.vo = extractelement <2 x double> %i.vg, i64 0
  %i.vp = call double @llvm.fmuladd.f64(double %i.vo, double %i.tc, double %i.vn)
  %i.vq = extractelement <2 x double> %i.vg, i64 1
  %i.vr = call double @llvm.fmuladd.f64(double %i.vq, double %i.sj, double %i.vp)
  %i.vs = extractelement <2 x double> %i.vd, i64 0
  %i.vt = call double @llvm.fmuladd.f64(double %i.vs, double %i.ru, double %i.vr)
  %i.vu = extractelement <2 x double> %i.vd, i64 1
  %i.vv = call double @llvm.fmuladd.f64(double %i.vu, double %i.xu, double %i.vt)
  %i.vw = getelementptr inbounds nuw i8, ptr %i.xo, i64 136
  %i.vx = load double, ptr %i.vw, align 8, !tbaa !61
  %i.vy = fsub double %i.vv, %i.vx
  %i.vz = getelementptr inbounds nuw i8, ptr %i.xo, i64 80
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !61
  %i.wb = fdiv double %i.vy, %i.wa                ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.xm, i64 8
  store double %i.wb, ptr %i.wc, align 8, !tbaa !61
  %i.wd = fcmp uno double %i.wb, 0.000000e+00
  br i1 %i.wd, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %._crit_edge.7

._crit_edge.7:                                    ; preds = %._crit_edge.6
  %i.we = getelementptr inbounds nuw i8, ptr %i.xo, i64 48
  %i.wf = load <2 x double>, ptr %i.we, align 8, !tbaa !61
  %i.wg = fneg <2 x double> %i.wf                 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.xo, i64 32
  %i.wi = load <2 x double>, ptr %i.wh, align 8, !tbaa !61
  %i.wj = fneg <2 x double> %i.wi                 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.xo, i64 16
  %i.wl = load <2 x double>, ptr %i.wk, align 8, !tbaa !61
  %i.wm = fneg <2 x double> %i.wl                 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.xo, i64 8
  %i.wo = load double, ptr %i.wn, align 8, !tbaa !61
  %i.wp = fneg double %i.wo
  %i.wq = call double @llvm.fmuladd.f64(double %i.wp, double %i.wb, double 0.000000e+00)
  %i.wr = extractelement <2 x double> %i.wm, i64 0
  %i.ws = call double @llvm.fmuladd.f64(double %i.wr, double %i.uy, double %i.wq)
  %i.wt = extractelement <2 x double> %i.wm, i64 1
  %i.wu = call double @llvm.fmuladd.f64(double %i.wt, double %i.ty, double %i.ws)
  %i.wv = extractelement <2 x double> %i.wj, i64 0
  %i.ww = call double @llvm.fmuladd.f64(double %i.wv, double %i.tc, double %i.wu)
  %i.wx = extractelement <2 x double> %i.wj, i64 1
  %i.wy = call double @llvm.fmuladd.f64(double %i.wx, double %i.sj, double %i.ww)
  %i.wz = extractelement <2 x double> %i.wg, i64 0
  %i.xa = call double @llvm.fmuladd.f64(double %i.wz, double %i.ru, double %i.wy)
  %i.xb = extractelement <2 x double> %i.wg, i64 1
  %i.xc = call double @llvm.fmuladd.f64(double %i.xb, double %i.xu, double %i.xa)
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xo, i64 64
  %i.xe = load double, ptr %i.xd, align 8, !tbaa !61
  %i.xf = fsub double %i.xc, %i.xe
  %i.xg = load double, ptr %i.xo, align 8, !tbaa !61
  %i.xh = fdiv double %i.xf, %i.xg                ; 2 uses
  store double %i.xh, ptr %i.xm, align 8, !tbaa !61
  %i.xi = fcmp uno double %i.xh, 0.000000e+00
  br i1 %i.xi, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %_ZNSt6vectorIdSaIdEED2Ev.exit388

bb.r:                                             ; preds = %bb.q
  %i.xj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %_ZN2cv4Mat_IdEC2Eii.exit
  %i.xk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn369 = phi { ptr, i32 } [ %i.xk, %bb.s ], [ %i.xj, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.u

._crit_edge:                                      ; preds = %_ZN2cv4Mat_IdEC2Eii.exit
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.xl = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !55 ; 9 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 64
  store double 1.000000e+00, ptr %i.xn, align 8, !tbaa !61
  %i.xo = load ptr, ptr %12, align 8, !tbaa !58   ; 36 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 568
  %i.xq = load double, ptr %i.xp, align 8, !tbaa !61
  %i.xr = fsub double 0.000000e+00, %i.xq
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xo, i64 560
  %i.xt = load double, ptr %i.xs, align 8, !tbaa !61
  %i.xu = fdiv double %i.xr, %i.xt                ; 9 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xm, i64 56
  store double %i.xu, ptr %i.xv, align 8, !tbaa !61
  %i.xw = fcmp uno double %i.xu, 0.000000e+00
  br i1 %i.xw, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %._crit_edge.1

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %._crit_edge.7, %._crit_edge.6, %._crit_edge.5, %._crit_edge.4, %._crit_edge.3, %._crit_edge.2, %._crit_edge.1, %._crit_edge
  %i.xx = load ptr, ptr %i.z, align 8, !tbaa !59
  %i.xy = ptrtoint ptr %i.xx to i64
  %i.xz = ptrtoint ptr %i.xo to i64
  %i.ya = sub i64 %i.xy, %i.xz
  call void @_ZdlPvm(ptr noundef nonnull %i.xo, i64 noundef %i.ya) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.av

bb.u:                                             ; preds = %bb.t, %bb.p
  %.pn369.pn = phi { ptr, i32 } [ %.pn369, %bb.t ], [ %i.rj, %bb.p ] ; 2 uses
  %i.yb = load ptr, ptr %12, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i383 = icmp eq ptr %i.yb, null
  br i1 %.not.i.i.i383, label %_ZNSt6vectorIdSaIdEED2Ev.exit384, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.yc = load ptr, ptr %i.z, align 8, !tbaa !59
  %i.yd = ptrtoint ptr %i.yc to i64
  %i.ye = ptrtoint ptr %i.yb to i64
  %i.yf = sub i64 %i.yd, %i.ye
  call void @_ZdlPvm(ptr noundef nonnull %i.yb, i64 noundef %i.yf) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit384

_ZNSt6vectorIdSaIdEED2Ev.exit384:                 ; preds = %bb.v, %bb.u, %bb.i
  %.pn369.pn.pn = phi { ptr, i32 } [ %i.dc, %bb.i ], [ %.pn369.pn, %bb.u ], [ %.pn369.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.aw

bb.w:                                             ; preds = %bb.g
  %i.yg = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !83
  %i.yj = icmp eq ptr %i.yg, %i.yi
  %i.yk = icmp sgt i32 %2, 0                      ; 2 uses
  br i1 %i.yj, label %.preheader435, label %.preheader439

.preheader439:                                    ; preds = %bb.w
  br i1 %i.yk, label %.lr.ph, label %.loopexit436

.lr.ph:                                           ; preds = %.preheader439
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.z

.preheader435:                                    ; preds = %bb.w
  br i1 %i.yk, label %.lr.ph449, label %.loopexit436

.lr.ph449:                                        ; preds = %.preheader435
  %i.yl = load i8, ptr %i.f, align 8, !tbaa !42, !range !68, !noundef !69
  %i.ym = trunc nuw i8 %i.yl to i1
  %wide.trip.count487 = zext nneg i32 %2 to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph449, %.preheader434
  %.sroa.101.0 = phi double [ 0.000000e+00, %.lr.ph449 ], [ %i.abt, %.preheader434 ]
  %.sroa.254.0 = phi double [ 0.000000e+00, %.lr.ph449 ], [ %i.adw, %.preheader434 ]
  %indvars.iv484 = phi i64 [ 0, %.lr.ph449 ], [ %indvars.iv.next485, %.preheader434 ] ; 3 uses
  %i.yn = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.zv, %.preheader434 ]
  %i.yo = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.aay, %.preheader434 ]
  %i.yp = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.abe, %.preheader434 ]
  %i.yq = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.aam, %.preheader434 ]
  %i.yr = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.aat, %.preheader434 ]
  %i.ys = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.abb, %.preheader434 ]
  %i.yt = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.abk, %.preheader434 ]
  %i.yu = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.abq, %.preheader434 ]
  %i.yv = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.abs, %.preheader434 ]
  %i.yw = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.abv, %.preheader434 ]
  %i.yx = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.abz, %.preheader434 ]
  %i.yy = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.acg, %.preheader434 ]
  %i.yz = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.acl, %.preheader434 ]
  %i.za = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.aco, %.preheader434 ]
  %i.zb = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.acr, %.preheader434 ]
  %i.zc = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.acv, %.preheader434 ]
  %i.zd = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.acy, %.preheader434 ]
  %i.ze = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.add, %.preheader434 ]
  %i.zf = phi <2 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.adt, %.preheader434 ]
  %i.zg = phi <4 x double> [ zeroinitializer, %.lr.ph449 ], [ %i.adq, %.preheader434 ]
  %i.zh = trunc nuw nsw i64 %indvars.iv484 to i32
  br i1 %i.ym, label %.preheader434, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.zi = load ptr, ptr %1, align 8, !tbaa !65
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv484
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !52
  br label %.preheader434

.preheader434:                                    ; preds = %bb.x, %bb.y
  %.in367 = phi i32 [ %i.zk, %bb.y ], [ %i.zh, %bb.x ]
  %i.zl = shl nsw i32 %.in367, 2
  %i.zm = sext i32 %i.zl to i64
  %i.zn = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.zm ; 3 uses
  %i.zo = getelementptr i8, ptr %i.zn, i64 8
  %i.zp = getelementptr i8, ptr %i.zn, i64 12
  %i.zq = load <2 x float>, ptr %i.zn, align 4, !tbaa !67 ; 3 uses
  %i.zr = fneg <2 x float> %i.zq
  %i.zs = fpext <2 x float> %i.zr to <2 x double> ; 13 uses
  %i.zt = shufflevector <2 x double> %i.zs, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.zu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zt, <2 x double> %i.zs, <2 x double> zeroinitializer)
  %i.zv = fadd <2 x double> %i.yn, %i.zu          ; 2 uses
  %i.zw = extractelement <2 x double> %i.zs, i64 0
  %i.zx = extractelement <2 x double> %i.zs, i64 1 ; 4 uses
  %i.zy = load float, ptr %i.zp, align 4, !tbaa !67 ; 2 uses
  %i.zz = load float, ptr %i.zo, align 4, !tbaa !67 ; 2 uses
  %i.aaa = fpext float %i.zz to double            ; 6 uses
  %i.aab = fpext float %i.zy to double            ; 5 uses
  %i.aac = insertelement <2 x float> poison, float %i.zz, i64 0
  %i.aad = shufflevector <2 x float> %i.aac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aae = fmul <2 x float> %i.zq, %i.aad
  %i.aaf = fpext <2 x float> %i.aae to <2 x double> ; 8 uses
  %i.aag = insertelement <2 x float> poison, float %i.zy, i64 0
  %i.aah = shufflevector <2 x float> %i.aag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aai = fmul <2 x float> %i.zq, %i.aah
  %i.aaj = fpext <2 x float> %i.aai to <2 x double> ; 8 uses
  %i.aak = fmul <2 x double> %i.aaj, zeroinitializer ; 4 uses
  %i.aal = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zt, <2 x double> %i.aaf, <2 x double> %i.aak)
  %i.aam = fadd <2 x double> %i.yq, %i.aal        ; 2 uses
  %i.aan = fmul double %i.aab, 0.000000e+00       ; 3 uses
  %i.aao = insertelement <2 x double> %i.zs, double %i.aaa, i64 0
  %i.aap = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.aan, i64 0
  %i.aaq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zs, <2 x double> %i.aao, <2 x double> %i.aap) ; 2 uses
  %i.aar = fsub <2 x double> zeroinitializer, %i.zs ; 2 uses
  %i.aas = shufflevector <2 x double> %i.aaq, <2 x double> %i.aar, <2 x i32> <i32 1, i32 3>
  %i.aat = fadd <2 x double> %i.yr, %i.aas        ; 2 uses
  %i.aau = fmul <2 x double> %i.zs, zeroinitializer ; 4 uses
  %i.aav = extractelement <2 x double> %i.aau, i64 1
  %i.aaw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zt, <2 x double> zeroinitializer, <2 x double> %i.aau) ; 2 uses
  %i.aax = shufflevector <2 x double> %i.aar, <2 x double> %i.aaw, <2 x i32> <i32 0, i32 2>
  %i.aay = fadd <2 x double> %i.yo, %i.aax        ; 2 uses
  %i.aaz = shufflevector <2 x double> %i.zs, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.aba = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aaz, <2 x double> zeroinitializer, <2 x double> %i.aau)
  %i.abb = fadd <2 x double> %i.ys, %i.aba        ; 2 uses
  %i.abc = fmul <2 x double> %i.zs, zeroinitializer ; 2 uses
  %i.abd = shufflevector <2 x double> %i.aaw, <2 x double> %i.abc, <2 x i32> <i32 1, i32 2>
  %i.abe = fadd <2 x double> %i.yp, %i.abd        ; 2 uses
  %i.abf = extractelement <2 x double> %i.aaf, i64 0 ; 3 uses
  %i.abg = extractelement <2 x double> %i.aak, i64 0
  %i.abh = call double @llvm.fmuladd.f64(double %i.zx, double %i.abf, double %i.abg)
  %i.abi = shufflevector <2 x double> %i.abc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.abj = insertelement <2 x double> %i.abi, double %i.abh, i64 1
  %i.abk = fadd <2 x double> %i.yt, %i.abj        ; 2 uses
  %i.abl = shufflevector <2 x double> %i.aaf, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.abm = insertelement <2 x double> %i.abl, double %i.aaa, i64 1 ; 4 uses
  %i.abn = shufflevector <2 x double> %i.aak, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.abo = insertelement <2 x double> %i.abn, double %i.aan, i64 1
  %i.abp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aaz, <2 x double> %i.abm, <2 x double> %i.abo)
  %i.abq = fadd <2 x double> %i.yu, %i.abp        ; 2 uses
  %i.abr = shufflevector <2 x double> %i.aau, <2 x double> <double 1.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.abs = fadd <2 x double> %i.yv, %i.abr        ; 2 uses
  %i.abt = fadd double %.sroa.101.0, %i.aav       ; 2 uses
  %i.abu = fsub <2 x double> %i.aak, %i.aaf
  %i.abv = fadd <2 x double> %i.yw, %i.abu        ; 2 uses
  %i.abw = fsub double %i.aan, %i.aaa
  %i.abx = fmul <2 x double> %i.zt, %i.zs
  %i.aby = fadd <2 x double> %i.abx, <double -0.000000e+00, double 0.000000e+00>
  %i.abz = fadd <2 x double> %i.yx, %i.aby        ; 2 uses
  %i.aca = fsub double 0.000000e+00, %i.zw
  %i.acb = extractelement <2 x double> %i.aaj, i64 0
  %foldExtExtBinop1277.a = fmul <2 x double> %i.zs, %i.aaj
  %i.acc = extractelement <2 x double> %foldExtExtBinop1277.a, i64 0
  %i.acd = call double @llvm.fmuladd.f64(double %i.abf, double 0.000000e+00, double %i.acc)
  %i.ace = insertelement <2 x double> poison, double %i.aca, i64 0
  %i.acf = insertelement <2 x double> %i.ace, double %i.acd, i64 1
  %i.acg = fadd <2 x double> %i.yy, %i.acf        ; 2 uses
  %i.ach = shufflevector <2 x double> %i.aaj, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.aci = insertelement <2 x double> %i.ach, double %i.aab, i64 1 ; 3 uses
  %i.acj = fmul <2 x double> %i.zt, %i.aci
  %i.ack = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abm, <2 x double> zeroinitializer, <2 x double> %i.acj)
  %i.acl = fadd <2 x double> %i.yz, %i.ack        ; 2 uses
  %47 = fsub double 0.000000e+00, %i.zx
  %48 = fmul double %i.zx, %i.zx
  %i.acm = insertelement <2 x double> poison, double %48, i64 0
  %i.acn = insertelement <2 x double> %i.acm, double %47, i64 1
  %i.aco = fadd <2 x double> %i.za, %i.acn        ; 2 uses
  %i.acp = fmul <2 x double> %i.aaz, %i.aaj
  %i.acq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aaf, <2 x double> zeroinitializer, <2 x double> %i.acp)
  %i.acr = fadd <2 x double> %i.zb, %i.acq        ; 2 uses
  %i.acs = fneg double %i.acb
  %i.act = call double @llvm.fmuladd.f64(double %i.abf, double 0.000000e+00, double %i.acs)
  %i.acu = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.act, i64 1
  %i.acv = fadd <2 x double> %i.zc, %i.acu        ; 2 uses
  %i.acw = fneg <2 x double> %i.aci
  %i.acx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abm, <2 x double> zeroinitializer, <2 x double> %i.acw)
  %i.acy = fadd <2 x double> %i.zd, %i.acx        ; 2 uses
  %i.acz = shufflevector <2 x double> %i.aaj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ada = fmul <2 x double> %i.acz, %i.aaj
  %i.adb = shufflevector <2 x double> %i.aaf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adb, <2 x double> %i.aaf, <2 x double> %i.ada)
  %i.add = fadd <2 x double> %i.ze, %i.adc        ; 2 uses
  %i.ade = shufflevector <2 x double> %i.zs, <2 x double> %i.aaj, <2 x i32> <i32 1, i32 2>
  %i.adf = insertelement <2 x double> poison, double %i.aab, i64 0
  %i.adg = shufflevector <2 x double> %i.adf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adh = fmul <2 x double> %i.ade, %i.adg
  %i.adi = shufflevector <2 x double> %i.aaf, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.adj = insertelement <2 x double> poison, double %i.aaa, i64 0
  %i.adk = shufflevector <2 x double> %i.adj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adi, <2 x double> %i.adk, <2 x double> %i.adh)
  %i.adm = shufflevector <2 x double> %i.aaq, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.adn = insertelement <4 x double> %i.adm, double %i.abw, i64 1
  %i.ado = shufflevector <2 x double> %i.adl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.adp = shufflevector <4 x double> %i.adn, <4 x double> %i.ado, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.adq = fadd <4 x double> %i.zg, %i.adp        ; 2 uses
  %i.adr = fmul <2 x double> %i.ach, %i.aci
  %i.ads = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abl, <2 x double> %i.abm, <2 x double> %i.adr)
  %i.adt = fadd <2 x double> %i.zf, %i.ads        ; 2 uses
  %i.adu = fmul double %i.aab, %i.aab
  %i.adv = call double @llvm.fmuladd.f64(double %i.aaa, double %i.aaa, double %i.adu)
  %i.adw = fadd double %.sroa.254.0, %i.adv       ; 2 uses
  %indvars.iv.next485 = add nuw nsw i64 %indvars.iv484, 1 ; 2 uses
  %exitcond488.not = icmp eq i64 %indvars.iv.next485, %wide.trip.count487
  br i1 %exitcond488.not, label %.loopexit436.loopexit, label %bb.x, !llvm.loop !204

bb.z:                                             ; preds = %.lr.ph, %.loopexit438
  %.sroa.254.1 = phi double [ 0.000000e+00, %.lr.ph ], [ %.sroa.254.2, %.loopexit438 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit438 ] ; 4 uses
  %i.adx = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ajj, %.loopexit438 ] ; 2 uses
  %i.ady = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ajk, %.loopexit438 ] ; 2 uses
  %i.adz = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ajl, %.loopexit438 ] ; 2 uses
  %i.aea = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ajm, %.loopexit438 ] ; 2 uses
  %i.aeb = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ajn, %.loopexit438 ] ; 2 uses
  %i.aec = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ajo, %.loopexit438 ] ; 2 uses
  %i.aed = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ajp, %.loopexit438 ] ; 2 uses
  %i.aee = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ajq, %.loopexit438 ] ; 2 uses
  %i.aef = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ajr, %.loopexit438 ] ; 2 uses
  %i.aeg = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ajs, %.loopexit438 ] ; 2 uses
  %i.aeh = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ajt, %.loopexit438 ] ; 2 uses
  %i.aei = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.aju, %.loopexit438 ] ; 2 uses
  %i.aej = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ajv, %.loopexit438 ] ; 2 uses
  %i.aek = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ajw, %.loopexit438 ] ; 2 uses
  %i.ael = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ajx, %.loopexit438 ] ; 2 uses
  %i.aem = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ajy, %.loopexit438 ] ; 2 uses
  %i.aen = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ajz, %.loopexit438 ] ; 2 uses
  %i.aeo = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.aka, %.loopexit438 ] ; 2 uses
  %i.aep = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akb, %.loopexit438 ] ; 2 uses
  %i.aeq = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.akc, %.loopexit438 ] ; 2 uses
  %i.aer = phi <4 x double> [ zeroinitializer, %.lr.ph ], [ %i.akd, %.loopexit438 ] ; 2 uses
  %i.aes = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %indvars.iv
  %i.aet = load double, ptr %i.aes, align 8, !tbaa !61 ; 8 uses
  %i.aeu = fcmp olt double %i.aet, f0x3E80000000000000
  br i1 %i.aeu, label %.loopexit438, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aev = load i8, ptr %i.f, align 8, !tbaa !42, !range !68, !noundef !69
  %i.aew = trunc nuw i8 %i.aev to i1
  %i.aex = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.aew, label %.preheader437, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aey = load ptr, ptr %1, align 8, !tbaa !65
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.aey, i64 %indvars.iv
  %i.afa = load i32, ptr %i.aez, align 4, !tbaa !52
  br label %.preheader437

.preheader437:                                    ; preds = %bb.aa, %bb.ab
  %.in = phi i32 [ %i.afa, %bb.ab ], [ %i.aex, %bb.aa ]
  %i.afb = shl nsw i32 %.in, 2
  %i.afc = sext i32 %i.afb to i64
  %i.afd = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.afc ; 2 uses
  %i.afe = getelementptr i8, ptr %i.afd, i64 8
  %i.aff = fneg double %i.aet                     ; 6 uses
  %i.afg = load <2 x float>, ptr %i.afd, align 4, !tbaa !67
  %i.afh = fpext <2 x float> %i.afg to <2 x double> ; 3 uses
  %i.afi = insertelement <2 x double> poison, double %i.aff, i64 0
  %i.afj = shufflevector <2 x double> %i.afi, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.afk = fmul <2 x double> %i.afj, %i.afh       ; 10 uses
  %i.afl = shufflevector <2 x double> %i.afk, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.afm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afl, <2 x double> %i.afk, <2 x double> zeroinitializer)
  %i.afn = fadd <2 x double> %i.adx, %i.afm
  %i.afo = extractelement <2 x double> %i.afk, i64 0
  %i.afp = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.aff, i64 0
  %i.afq = extractelement <2 x double> %i.afk, i64 1 ; 3 uses
  %i.afr = shufflevector <2 x double> %i.afk, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 7 uses
  %i.afs = insertelement <2 x double> %i.afr, double %i.aet, i64 1
  %i.aft = fmul <2 x double> %i.afs, <double 0.000000e+00, double -0.000000e+00> ; 4 uses
  %i.afu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afl, <2 x double> zeroinitializer, <2 x double> %i.aft)
  %i.afv = fadd <2 x double> %i.adz, %i.afu
  %i.afw = load <2 x float>, ptr %i.afe, align 4, !tbaa !67
  %i.afx = fpext <2 x float> %i.afw to <2 x double>
  %i.afy = insertelement <2 x double> poison, double %i.aet, i64 0 ; 2 uses
  %i.afz = shufflevector <2 x double> %i.afy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aga = fmul <2 x double> %i.afz, %i.afx       ; 9 uses
  %i.agb = shufflevector <2 x double> %i.aga, <2 x double> poison, <2 x i32> zeroinitializer
  %i.agc = fmul <2 x double> %i.agb, %i.afh       ; 9 uses
  %i.agd = shufflevector <2 x double> %i.aga, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.age = fmul <2 x double> %i.agd, %i.afh       ; 7 uses
  %i.agf = fmul <2 x double> %i.age, zeroinitializer ; 4 uses
  %i.agg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afl, <2 x double> %i.agc, <2 x double> %i.agf)
  %i.agh = fadd <2 x double> %i.aea, %i.agg
  %i.agi = extractelement <2 x double> %i.aga, i64 0 ; 2 uses
  %i.agj = insertelement <2 x double> %i.afr, double %i.aff, i64 1
  %i.agk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afr, <2 x double> %i.agj, <2 x double> zeroinitializer)
  %i.agl = fadd <2 x double> %i.aeb, %i.agk
  %i.agm = shufflevector <2 x double> %i.afk, <2 x double> %i.aft, <2 x i32> <i32 0, i32 2>
  %i.agn = fmul <2 x double> %i.agm, <double 0.000000e+00, double 1.000000e+00> ; 3 uses
  %i.ago = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.agn, <2 x i32> <i32 0, i32 2>
  %i.agp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afl, <2 x double> %i.afp, <2 x double> %i.ago)
  %i.agq = fadd <2 x double> %i.ady, %i.agp
  %i.agr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afr, <2 x double> zeroinitializer, <2 x double> %i.agn)
  %i.ags = fadd <2 x double> %i.aec, %i.agr
  %i.agt = shufflevector <2 x double> %i.agc, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.agu = shufflevector <2 x double> %i.aft, <2 x double> %i.agf, <2 x i32> <i32 1, i32 2>
  %i.agv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afr, <2 x double> %i.agt, <2 x double> %i.agu)
  %i.agw = fadd <2 x double> %i.aed, %i.agv
  %i.agx = shufflevector <2 x double> %i.agf, <2 x double> %i.aga, <2 x i32> <i32 1, i32 3>
  %i.agy = fmul <2 x double> %i.agx, <double 1.000000e+00, double 0.000000e+00> ; 2 uses
  %i.agz = shufflevector <2 x double> %i.agc, <2 x double> %i.aga, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.aha = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afr, <2 x double> %i.agz, <2 x double> %i.agy)
  %i.ahb = fadd <2 x double> %i.aee, %i.aha
  %i.ahc = insertelement <2 x double> %i.afy, double %i.aff, i64 1 ; 2 uses
  %i.ahd = insertelement <2 x double> %i.ahc, double 0.000000e+00, i64 1
  %i.ahe = shufflevector <2 x double> %i.agn, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.ahf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahc, <2 x double> %i.ahd, <2 x double> %i.ahe)
  %i.ahg = fadd <2 x double> %i.aef, %i.ahf
  %i.ahh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afj, <2 x double> zeroinitializer, <2 x double> %i.aft)
  %i.ahi = fadd <2 x double> %i.aeg, %i.ahh
  %i.ahj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afj, <2 x double> %i.agc, <2 x double> %i.agf)
  %i.ahk = fadd <2 x double> %i.aeh, %i.ahj
  %i.ahl = fmul <2 x double> %i.afl, %i.afk
  %i.ahm = fadd <2 x double> %i.ahl, <double -0.000000e+00, double 0.000000e+00>
  %i.ahn = fadd <2 x double> %i.aei, %i.ahm
  %i.aho = fmul double %i.aet, %i.afo
  %i.ahp = fsub double 0.000000e+00, %i.aho
  %i.ahq = insertelement <2 x double> poison, double %i.ahp, i64 0
  %i.ahr = shufflevector <2 x double> %i.age, <2 x double> %i.aga, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.ahs = fmul <2 x double> %i.afl, %i.ahr
  %i.aht = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agz, <2 x double> zeroinitializer, <2 x double> %i.ahs)
  %i.ahu = fadd <2 x double> %i.aek, %i.aht
  %i.ahv = fmul double %i.aet, %i.afq
  %49 = fsub double 0.000000e+00, %i.ahv
  %50 = fmul double %i.afq, %i.afq
  %i.ahw = insertelement <2 x double> poison, double %50, i64 0
  %i.ahx = insertelement <2 x double> %i.ahw, double %49, i64 1
  %i.ahy = fadd <2 x double> %i.ael, %i.ahx
  %i.ahz = fmul <2 x double> %i.afr, %i.age
  %i.aia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agc, <2 x double> zeroinitializer, <2 x double> %i.ahz)
  %i.aib = fadd <2 x double> %i.aem, %i.aia
  %i.aic = fmul double %i.aet, %i.aet
  %i.aid = shufflevector <2 x double> %i.age, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aie = insertelement <2 x double> %i.afk, double %i.aff, i64 1
  %i.aif = fmul <2 x double> %i.aid, %i.aie
  %i.aig = shufflevector <2 x double> %i.agc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aih = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aig, <2 x double> zeroinitializer, <2 x double> %i.aif) ; 2 uses
  %i.aii = shufflevector <2 x double> %i.ahq, <2 x double> %i.aih, <2 x i32> <i32 0, i32 2>
  %i.aij = fadd <2 x double> %i.aej, %i.aii
  %i.aik = insertelement <2 x double> %i.aih, double %i.aic, i64 0
  %i.ail = fadd <2 x double> %i.aen, %i.aik
  %i.aim = fmul <2 x double> %i.ahr, %i.afj
  %i.ain = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agz, <2 x double> zeroinitializer, <2 x double> %i.aim)
  %i.aio = fadd <2 x double> %i.aeo, %i.ain
  %i.aip = fmul <2 x double> %i.aid, %i.age
  %i.aiq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aig, <2 x double> %i.agc, <2 x double> %i.aip)
  %i.air = fadd <2 x double> %i.aep, %i.aiq
  %i.ais = shufflevector <2 x double> %i.afk, <2 x double> %i.age, <2 x i32> <i32 1, i32 2>
  %i.ait = fmul <2 x double> %i.ais, %i.agd
  %i.aiu = shufflevector <2 x double> %i.afk, <2 x double> %i.agc, <4 x i32> <i32 0, i32 poison, i32 poison, i32 2>
  %i.aiv = insertelement <4 x double> %i.aiu, double 0.000000e+00, i64 2
  %i.aiw = insertelement <4 x double> %i.aiv, double %i.aff, i64 1
  %i.aix = shufflevector <2 x double> %i.aga, <2 x double> poison, <4 x i32> zeroinitializer
  %i.aiy = shufflevector <2 x double> %i.agy, <2 x double> %i.ait, <4 x i32> <i32 1, i32 1, i32 2, i32 3>
  %i.aiz = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aiw, <4 x double> %i.aix, <4 x double> %i.aiy)
  %i.aja = fadd <4 x double> %i.aer, %i.aiz
  %i.ajb = shufflevector <2 x double> %i.age, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ajc = fmul <2 x double> %i.ajb, %i.ahr
  %i.ajd = shufflevector <2 x double> %i.agc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aje = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajd, <2 x double> %i.agz, <2 x double> %i.ajc)
  %i.ajf = fadd <2 x double> %i.aeq, %i.aje
  %foldExtExtBinop1279 = fmul <2 x double> %i.aga, %i.aga
  %i.ajg = extractelement <2 x double> %foldExtExtBinop1279, i64 1
  %i.ajh = call double @llvm.fmuladd.f64(double %i.agi, double %i.agi, double %i.ajg)
  %i.aji = fadd double %.sroa.254.1, %i.ajh
  br label %.loopexit438

.loopexit438:                                     ; preds = %.preheader437, %bb.z
  %.sroa.254.2 = phi double [ %.sroa.254.1, %bb.z ], [ %i.aji, %.preheader437 ] ; 2 uses
  %i.ajj = phi <2 x double> [ %i.adx, %bb.z ], [ %i.afn, %.preheader437 ] ; 2 uses
  %i.ajk = phi <2 x double> [ %i.ady, %bb.z ], [ %i.agq, %.preheader437 ] ; 2 uses
  %i.ajl = phi <2 x double> [ %i.adz, %bb.z ], [ %i.afv, %.preheader437 ] ; 2 uses
  %i.ajm = phi <2 x double> [ %i.aea, %bb.z ], [ %i.agh, %.preheader437 ] ; 2 uses
  %i.ajn = phi <2 x double> [ %i.aeb, %bb.z ], [ %i.agl, %.preheader437 ] ; 2 uses
  %i.ajo = phi <2 x double> [ %i.aec, %bb.z ], [ %i.ags, %.preheader437 ] ; 2 uses
  %i.ajp = phi <2 x double> [ %i.aed, %bb.z ], [ %i.agw, %.preheader437 ] ; 2 uses
  %i.ajq = phi <2 x double> [ %i.aee, %bb.z ], [ %i.ahb, %.preheader437 ] ; 2 uses
  %i.ajr = phi <2 x double> [ %i.aef, %bb.z ], [ %i.ahg, %.preheader437 ] ; 2 uses
  %i.ajs = phi <2 x double> [ %i.aeg, %bb.z ], [ %i.ahi, %.preheader437 ] ; 2 uses
  %i.ajt = phi <2 x double> [ %i.aeh, %bb.z ], [ %i.ahk, %.preheader437 ] ; 2 uses
  %i.aju = phi <2 x double> [ %i.aei, %bb.z ], [ %i.ahn, %.preheader437 ] ; 2 uses
  %i.ajv = phi <2 x double> [ %i.aej, %bb.z ], [ %i.aij, %.preheader437 ] ; 2 uses
  %i.ajw = phi <2 x double> [ %i.aek, %bb.z ], [ %i.ahu, %.preheader437 ] ; 2 uses
  %i.ajx = phi <2 x double> [ %i.ael, %bb.z ], [ %i.ahy, %.preheader437 ] ; 2 uses
  %i.ajy = phi <2 x double> [ %i.aem, %bb.z ], [ %i.aib, %.preheader437 ] ; 2 uses
  %i.ajz = phi <2 x double> [ %i.aen, %bb.z ], [ %i.ail, %.preheader437 ] ; 2 uses
  %i.aka = phi <2 x double> [ %i.aeo, %bb.z ], [ %i.aio, %.preheader437 ] ; 2 uses
  %i.akb = phi <2 x double> [ %i.aep, %bb.z ], [ %i.air, %.preheader437 ] ; 2 uses
  %i.akc = phi <2 x double> [ %i.aeq, %bb.z ], [ %i.ajf, %.preheader437 ] ; 2 uses
  %i.akd = phi <4 x double> [ %i.aer, %bb.z ], [ %i.aja, %.preheader437 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit436, label %bb.z, !llvm.loop !205

.loopexit436.loopexit:                            ; preds = %.preheader434
  %i.ake = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.abt, i64 0
  br label %.loopexit436

.loopexit436:                                     ; preds = %.loopexit438, %.loopexit436.loopexit, %.preheader439, %.preheader435
  %.sroa.254.3 = phi double [ 0.000000e+00, %.preheader439 ], [ 0.000000e+00, %.preheader435 ], [ %i.adw, %.loopexit436.loopexit ], [ %.sroa.254.2, %.loopexit438 ]
  %i.akf = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.zv, %.loopexit436.loopexit ], [ %i.ajj, %.loopexit438 ] ; 2 uses
  %i.akg = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.aay, %.loopexit436.loopexit ], [ %i.ajk, %.loopexit438 ] ; 3 uses
  %i.akh = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.abe, %.loopexit436.loopexit ], [ %i.ajl, %.loopexit438 ] ; 3 uses
  %i.aki = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.aam, %.loopexit436.loopexit ], [ %i.ajm, %.loopexit438 ] ; 3 uses
  %i.akj = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.aat, %.loopexit436.loopexit ], [ %i.ajn, %.loopexit438 ] ; 2 uses
  %i.akk = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.abb, %.loopexit436.loopexit ], [ %i.ajo, %.loopexit438 ] ; 3 uses
  %i.akl = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.abk, %.loopexit436.loopexit ], [ %i.ajp, %.loopexit438 ] ; 3 uses
  %i.akm = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.abq, %.loopexit436.loopexit ], [ %i.ajq, %.loopexit438 ] ; 3 uses
  %i.akn = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.abs, %.loopexit436.loopexit ], [ %i.ajr, %.loopexit438 ] ; 2 uses
  %i.ako = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.ake, %.loopexit436.loopexit ], [ %i.ajs, %.loopexit438 ] ; 3 uses
  %i.akp = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.abv, %.loopexit436.loopexit ], [ %i.ajt, %.loopexit438 ] ; 3 uses
  %i.akq = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.abz, %.loopexit436.loopexit ], [ %i.aju, %.loopexit438 ] ; 2 uses
  %i.akr = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.acg, %.loopexit436.loopexit ], [ %i.ajv, %.loopexit438 ] ; 3 uses
  %i.aks = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.acl, %.loopexit436.loopexit ], [ %i.ajw, %.loopexit438 ] ; 3 uses
  %i.akt = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.aco, %.loopexit436.loopexit ], [ %i.ajx, %.loopexit438 ] ; 2 uses
  %i.aku = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.acr, %.loopexit436.loopexit ], [ %i.ajy, %.loopexit438 ] ; 3 uses
  %i.akv = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.acv, %.loopexit436.loopexit ], [ %i.ajz, %.loopexit438 ] ; 2 uses
  %i.akw = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.acy, %.loopexit436.loopexit ], [ %i.aka, %.loopexit438 ] ; 3 uses
  %i.akx = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.add, %.loopexit436.loopexit ], [ %i.akb, %.loopexit438 ] ; 2 uses
  %i.aky = phi <2 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.adt, %.loopexit436.loopexit ], [ %i.akc, %.loopexit438 ] ; 2 uses
  %i.akz = phi <4 x double> [ zeroinitializer, %.preheader439 ], [ zeroinitializer, %.preheader435 ], [ %i.adq, %.loopexit436.loopexit ], [ %i.akd, %.loopexit438 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(648) %14, i8 0, i64 648, i1 false), !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %15, i8 0, i64 72, i1 false), !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  store <2 x double> %i.akf, ptr %17, align 16, !tbaa !61
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 16
  store <2 x double> %i.akg, ptr %.sroa.15.0..sroa_idx, align 16, !tbaa !61
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 32
  store <2 x double> %i.akh, ptr %.sroa.25.0..sroa_idx, align 16, !tbaa !61
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 48
  store <2 x double> %i.aki, ptr %.sroa.35.0..sroa_idx, align 16, !tbaa !61
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.ala = extractelement <4 x double> %i.akz, i64 0 ; 2 uses
  store double %i.ala, ptr %.sroa.45.0..sroa_idx, align 16, !tbaa !61
  %.sroa.50.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 72
  %i.alb = extractelement <2 x double> %i.akf, i64 1
  store double %i.alb, ptr %.sroa.50.0..sroa_idx, align 8, !tbaa !61
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 80
  store <2 x double> %i.akj, ptr %.sroa.51.0..sroa_idx, align 16, !tbaa !61
  %.sroa.60.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 96
  store <2 x double> %i.akk, ptr %.sroa.60.0..sroa_idx, align 16, !tbaa !61
  %.sroa.70.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 112
  store <2 x double> %i.akl, ptr %.sroa.70.0..sroa_idx, align 16, !tbaa !61
  %.sroa.80.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 128
  store <2 x double> %i.akm, ptr %.sroa.80.0..sroa_idx, align 16, !tbaa !61
  %.sroa.90.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 144
  %i.alc = shufflevector <2 x double> %i.akg, <2 x double> %i.akj, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.alc, ptr %.sroa.90.0..sroa_idx, align 16, !tbaa !61
  %.sroa.92.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 160
  store <2 x double> %i.akn, ptr %.sroa.92.0..sroa_idx, align 16, !tbaa !61
  %.sroa.101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 176
  store <2 x double> %i.ako, ptr %.sroa.101.0..sroa_idx, align 16, !tbaa !61
  %.sroa.111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 192
  store <2 x double> %i.akp, ptr %.sroa.111.0..sroa_idx, align 16, !tbaa !61
  %.sroa.121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 208
  %i.ald = extractelement <4 x double> %i.akz, i64 1 ; 2 uses
  store double %i.ald, ptr %.sroa.121.0..sroa_idx, align 16, !tbaa !61
  %.sroa.126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 216
  %i.ale = shufflevector <2 x double> %i.akg, <2 x double> %i.akk, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.ale, ptr %.sroa.126.0..sroa_idx, align 8, !tbaa !61
  %.sroa.128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 232
  %i.alf = extractelement <2 x double> %i.akn, i64 1
  store double %i.alf, ptr %.sroa.128.0..sroa_idx, align 8, !tbaa !61
  %.sroa.129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 240
  store <2 x double> %i.akq, ptr %.sroa.129.0..sroa_idx, align 16, !tbaa !61
  %.sroa.138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 256
  store <2 x double> %i.akr, ptr %.sroa.138.0..sroa_idx, align 16, !tbaa !61
  %.sroa.148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 272
  store <2 x double> %i.aks, ptr %.sroa.148.0..sroa_idx, align 16, !tbaa !61
  %.sroa.158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 288
  %i.alg = shufflevector <2 x double> %i.akh, <2 x double> %i.akk, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.alg, ptr %.sroa.158.0..sroa_idx, align 16, !tbaa !61
  %.sroa.160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 304
  %i.alh = shufflevector <2 x double> %i.ako, <2 x double> %i.akq, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.alh, ptr %.sroa.160.0..sroa_idx, align 16, !tbaa !61
  %.sroa.162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 320
  store <2 x double> %i.akt, ptr %.sroa.162.0..sroa_idx, align 16, !tbaa !61
  %.sroa.171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 336
  store <2 x double> %i.aku, ptr %.sroa.171.0..sroa_idx, align 16, !tbaa !61
  %.sroa.181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 352
  %i.ali = extractelement <4 x double> %i.akz, i64 2 ; 2 uses
  store double %i.ali, ptr %.sroa.181.0..sroa_idx, align 16, !tbaa !61
  %.sroa.186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 360
  %i.alj = shufflevector <2 x double> %i.akh, <2 x double> %i.akl, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.alj, ptr %.sroa.186.0..sroa_idx, align 8, !tbaa !61
  %.sroa.188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 376
  %i.alk = shufflevector <2 x double> %i.ako, <2 x double> %i.akr, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.alk, ptr %.sroa.188.0..sroa_idx, align 8, !tbaa !61
  %.sroa.190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 392
  %i.all = extractelement <2 x double> %i.akt, i64 1
  store double %i.all, ptr %.sroa.190.0..sroa_idx, align 8, !tbaa !61
  %.sroa.191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 400
  store <2 x double> %i.akv, ptr %.sroa.191.0..sroa_idx, align 16, !tbaa !61
  %.sroa.200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 416
  store <2 x double> %i.akw, ptr %.sroa.200.0..sroa_idx, align 16, !tbaa !61
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 432
  %i.alm = shufflevector <2 x double> %i.aki, <2 x double> %i.akl, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.alm, ptr %.sroa.210.0..sroa_idx, align 16, !tbaa !61
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 448
  %i.aln = shufflevector <2 x double> %i.akp, <2 x double> %i.akr, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.aln, ptr %.sroa.212.0..sroa_idx, align 16, !tbaa !61
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 464
  %i.alo = shufflevector <2 x double> %i.aku, <2 x double> %i.akv, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.alo, ptr %.sroa.214.0..sroa_idx, align 16, !tbaa !61
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 480
  store <2 x double> %i.akx, ptr %.sroa.216.0..sroa_idx, align 16, !tbaa !61
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 496
  %i.alp = extractelement <4 x double> %i.akz, i64 3 ; 2 uses
  store double %i.alp, ptr %.sroa.225.0..sroa_idx, align 16, !tbaa !61
  %.sroa.230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 504
  %i.alq = shufflevector <2 x double> %i.aki, <2 x double> %i.akm, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.alq, ptr %.sroa.230.0..sroa_idx, align 8, !tbaa !61
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 520
  %i.alr = shufflevector <2 x double> %i.akp, <2 x double> %i.aks, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.alr, ptr %.sroa.232.0..sroa_idx, align 8, !tbaa !61
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 536
  %i.als = shufflevector <2 x double> %i.aku, <2 x double> %i.akw, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.als, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !61
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 552
  %i.alt = extractelement <2 x double> %i.akx, i64 1
  store double %i.alt, ptr %.sroa.236.0..sroa_idx, align 8, !tbaa !61
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 560
  store <2 x double> %i.aky, ptr %.sroa.237.0..sroa_idx, align 16, !tbaa !61
end_hunk_1
begin_hunk_2_@_ZN2cv4usac26AffineNonMinimalSolverImplD0Ev:bb.a

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !52
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN2cv4usac26AffineNonMinimalSolverImplD2Ev.exit, !prof !81

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !228
  br label %_ZN2cv4usac26AffineNonMinimalSolverImplD2Ev.exit

_ZN2cv4usac26AffineNonMinimalSolverImplD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.r) #18, !inline_history !228
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(377) %0) #18, !inline_history !228
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 384) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac26AffineNonMinimalSolverImpl8estimateERKSt6vectorIiSaIiEEiRS2_INS_3MatESaIS7_EERKS2_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(377) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %7 = alloca %"class.cv::Matx", align 8          ; 8 uses
  %8 = alloca %"class.cv::Matx", align 8          ; 8 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %10 = alloca %"class.cv::Vec.109", align 16     ; 9 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %12 = alloca %"class.cv::Matx.111", align 16    ; 27 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %14 = alloca %"class.cv::Vec.109", align 16     ; 7 uses
  %15 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %16 = alloca [1 x %"class.cv::Mat"], align 16   ; 12 uses
  %17 = alloca %"class.cv::Matx", align 16        ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(377) %0)
  %i.e = icmp slt i32 %2, %i.d
  br i1 %i.e, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false), !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false), !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %9) #18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !118, !range !68, !noundef !69
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !82   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %8)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !82
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !55
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = phi ptr [ %i.r, %bb.f ], [ %i.t, %bb.g ] ; 2 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !83     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !83
  %i.y = icmp eq ptr %i.v, %i.x
  %i.z = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.y, label %.preheader219, label %.preheader222

.preheader222:                                    ; preds = %bb.h
  br i1 %i.z, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader222
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.k

.preheader219:                                    ; preds = %bb.h
  br i1 %i.z, label %.lr.ph231, label %.loopexit

.lr.ph231:                                        ; preds = %.preheader219
  %i.aa = load i8, ptr %i.f, align 8, !tbaa !118, !range !68, !noundef !69
  %i.ab = trunc nuw i8 %i.aa to i1
  %wide.trip.count253 = zext nneg i32 %2 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph231, %.preheader218
  %.sroa.85.0 = phi double [ 0.000000e+00, %.lr.ph231 ], [ %i.ci, %.preheader218 ]
  %.sroa.149.0 = phi double [ 0.000000e+00, %.lr.ph231 ], [ %i.da, %.preheader218 ]
  %indvars.iv250 = phi i64 [ 0, %.lr.ph231 ], [ %indvars.iv.next251, %.preheader218 ] ; 3 uses
  %i.ac = phi <2 x double> [ zeroinitializer, %.lr.ph231 ], [ %i.bf, %.preheader218 ]
  %i.ad = phi <2 x double> [ zeroinitializer, %.lr.ph231 ], [ %i.br, %.preheader218 ]
  %i.ae = phi <2 x double> [ zeroinitializer, %.lr.ph231 ], [ %i.bu, %.preheader218 ]
  %i.af = phi <2 x double> [ zeroinitializer, %.lr.ph231 ], [ %i.bp, %.preheader218 ]
  %i.ag = phi <2 x double> [ zeroinitializer, %.lr.ph231 ], [ %i.bx, %.preheader218 ]
  %i.ah = phi <2 x double> [ zeroinitializer, %.lr.ph231 ], [ %i.cg, %.preheader218 ]
  %i.ai = phi <2 x double> [ zeroinitializer, %.lr.ph231 ], [ %i.cm, %.preheader218 ]
  %i.aj = phi <2 x double> [ zeroinitializer, %.lr.ph231 ], [ %i.cy, %.preheader218 ]
  %i.ak = phi <2 x double> [ zeroinitializer, %.lr.ph231 ], [ %i.cd, %.preheader218 ]
  %i.al = phi <2 x double> [ zeroinitializer, %.lr.ph231 ], [ %i.cv, %.preheader218 ]
  %i.am = phi <2 x double> [ zeroinitializer, %.lr.ph231 ], [ %i.de, %.preheader218 ]
  %i.an = phi <2 x double> [ zeroinitializer, %.lr.ph231 ], [ %i.ct, %.preheader218 ]
  %i.ao = trunc nuw nsw i64 %indvars.iv250 to i32
  br i1 %i.ab, label %.preheader218, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %1, align 8, !tbaa !65
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv250
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !52
  br label %.preheader218

.preheader218:                                    ; preds = %bb.i, %bb.j
  %.in186 = phi i32 [ %i.ar, %bb.j ], [ %i.ao, %bb.i ]
  %i.as = shl nsw i32 %.in186, 2
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.at ; 3 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load float, ptr %i.av, align 4, !tbaa !67
  %i.ax = getelementptr i8, ptr %i.au, i64 12
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !67
  %i.az = fpext float %i.aw to double             ; 3 uses
  %i.ba = fpext float %i.ay to double             ; 4 uses
  %i.bb = load <2 x float>, ptr %i.au, align 4, !tbaa !67
  %i.bc = fpext <2 x float> %i.bb to <2 x double> ; 11 uses
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.be = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.bc, <2 x double> zeroinitializer)
  %i.bf = fadd <2 x double> %i.ac, %i.be          ; 2 uses
  %i.bg = extractelement <2 x double> %i.bc, i64 0 ; 2 uses
  %i.bh = extractelement <2 x double> %i.bc, i64 1 ; 4 uses
  %i.bi = fmul double %i.ba, 0.000000e+00         ; 2 uses
  %i.bj = fadd <2 x double> %i.bc, zeroinitializer ; 2 uses
  %i.bk = fmul <2 x double> %i.bc, zeroinitializer ; 4 uses
  %i.bl = insertelement <2 x double> %i.bc, double 0.000000e+00, i64 0
  %i.bm = insertelement <2 x double> %i.bk, double 0.000000e+00, i64 1
  %i.bn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bl, <2 x double> %i.bm) ; 2 uses
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> %i.bj, <2 x i32> <i32 1, i32 3>
  %i.bp = fadd <2 x double> %i.af, %i.bo          ; 2 uses
  %i.bq = shufflevector <2 x double> %i.bj, <2 x double> %i.bn, <2 x i32> <i32 0, i32 2>
  %i.br = fadd <2 x double> %i.ad, %i.bq          ; 2 uses
  %i.bs = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.bk, <2 x i32> <i32 3, i32 1>
  %i.bt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> zeroinitializer, <2 x double> %i.bs)
  %i.bu = fadd <2 x double> %i.ae, %i.bt          ; 2 uses
  %i.bv = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> zeroinitializer, <2 x double> %i.bk)
  %i.bx = fadd <2 x double> %i.ag, %i.bw          ; 2 uses
  %i.by = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ca = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bz, <2 x double> %i.cb)
  %i.cd = fadd <2 x double> %i.ak, %i.cc          ; 2 uses
  %i.ce = fadd <2 x double> %i.bk, zeroinitializer ; 2 uses
  %i.cf = shufflevector <2 x double> <double 1.000000e+00, double poison>, <2 x double> %i.ce, <2 x i32> <i32 0, i32 2>
  %i.cg = fadd <2 x double> %i.ah, %i.cf          ; 2 uses
  %i.ch = extractelement <2 x double> %i.ce, i64 1
  %i.ci = fadd double %.sroa.85.0, %i.ch          ; 2 uses
  %i.cj = fadd double %i.bi, %i.az
  %i.ck = fmul <2 x double> %i.bd, %i.bc
  %i.cl = fadd <2 x double> %i.ck, <double -0.000000e+00, double 0.000000e+00>
  %i.cm = fadd <2 x double> %i.ai, %i.cl          ; 2 uses
  %i.cn = fadd double %i.bg, 0.000000e+00
  %i.co = fmul double %i.bg, %i.ba
  %i.cp = insertelement <2 x double> %i.bv, double %i.az, i64 1
  %i.cq = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.co, i64 1
  %i.cr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> zeroinitializer, <2 x double> %i.cq) ; 2 uses
  %i.cs = insertelement <2 x double> %i.cr, double %i.cn, i64 1
  %i.ct = fadd <2 x double> %i.an, %i.cs          ; 2 uses
  %i.cu = insertelement <2 x double> %i.cr, double %i.cj, i64 0
  %i.cv = fadd <2 x double> %i.al, %i.cu          ; 2 uses
  %18 = fadd double %i.bh, 0.000000e+00
  %19 = fmul double %i.bh, %i.bh
  %i.cw = insertelement <2 x double> poison, double %19, i64 0
  %i.cx = insertelement <2 x double> %i.cw, double %18, i64 1
  %i.cy = fadd <2 x double> %i.aj, %i.cx          ; 2 uses
  %i.cz = fmul double %i.bh, %i.ba
  %i.da = fadd double %.sroa.149.0, 1.000000e+00  ; 2 uses
  %i.db = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.ba, i64 1
  %i.dd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> zeroinitializer, <2 x double> %i.dc)
  %i.de = fadd <2 x double> %i.am, %i.dd          ; 2 uses
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %exitcond254.not = icmp eq i64 %indvars.iv.next251, %wide.trip.count253
  br i1 %exitcond254.not, label %.loopexit.loopexit, label %bb.i, !llvm.loop !229

bb.k:                                             ; preds = %.lr.ph, %.loopexit221
  %.sroa.149.1 = phi double [ 0.000000e+00, %.lr.ph ], [ %.sroa.149.2, %.loopexit221 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit221 ] ; 4 uses
  %i.df = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.go, %.loopexit221 ] ; 2 uses
  %i.dg = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.gp, %.loopexit221 ] ; 2 uses
  %i.dh = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.gq, %.loopexit221 ] ; 2 uses
  %i.di = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.gr, %.loopexit221 ] ; 2 uses
  %i.dj = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.gs, %.loopexit221 ] ; 2 uses
  %i.dk = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.gt, %.loopexit221 ] ; 2 uses
  %i.dl = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.gu, %.loopexit221 ] ; 2 uses
  %i.dm = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.gv, %.loopexit221 ] ; 2 uses
  %i.dn = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.gw, %.loopexit221 ] ; 2 uses
  %i.do = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.gx, %.loopexit221 ] ; 2 uses
  %i.dp = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.gy, %.loopexit221 ] ; 2 uses
  %i.dq = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.gz, %.loopexit221 ] ; 2 uses
  %i.dr = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ha, %.loopexit221 ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !61 ; 7 uses
  %i.du = fcmp olt double %i.dt, f0x3E80000000000000
  br i1 %i.du, label %.loopexit221, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dv = load i8, ptr %i.f, align 8, !tbaa !118, !range !68, !noundef !69
  %i.dw = trunc nuw i8 %i.dv to i1
  %i.dx = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.dw, label %.preheader220, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dy = load ptr, ptr %1, align 8, !tbaa !65
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !52
  br label %.preheader220

.preheader220:                                    ; preds = %bb.l, %bb.m
  %.in = phi i32 [ %i.ea, %bb.m ], [ %i.dx, %bb.l ]
  %i.eb = shl nsw i32 %.in, 2
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ec ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 8
  %i.ef = load <2 x float>, ptr %i.ed, align 4, !tbaa !67
  %i.eg = fpext <2 x float> %i.ef to <2 x double>
  %i.eh = insertelement <2 x double> poison, double %i.dt, i64 0 ; 2 uses
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ej = fmul <2 x double> %i.ei, %i.eg          ; 9 uses
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.el = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.ej, <2 x double> zeroinitializer)
  %i.em = fadd <2 x double> %i.df, %i.el
  %i.en = extractelement <2 x double> %i.ej, i64 0
  %i.eo = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.dt, i64 0 ; 2 uses
  %i.ep = extractelement <2 x double> %i.ej, i64 1
  %i.eq = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.er = insertelement <2 x double> %i.eq, double %i.dt, i64 1 ; 4 uses
  %i.es = fmul <2 x double> %i.er, zeroinitializer ; 4 uses
  %i.et = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> zeroinitializer, <2 x double> %i.es)
  %i.eu = fadd <2 x double> %i.dh, %i.et
  %i.ev = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.er, <2 x double> zeroinitializer)
  %i.ew = fadd <2 x double> %i.di, %i.ev
  %i.ex = shufflevector <2 x double> %i.ej, <2 x double> %i.es, <2 x i32> <i32 0, i32 2>
  %i.ey = fmul <2 x double> %i.ex, <double 0.000000e+00, double 1.000000e+00> ; 3 uses
  %i.ez = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.ey, <2 x i32> <i32 0, i32 2>
  %i.fa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.eo, <2 x double> %i.ez)
  %i.fb = fadd <2 x double> %i.dg, %i.fa
  %i.fc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> zeroinitializer, <2 x double> %i.ey)
  %i.fd = fadd <2 x double> %i.dj, %i.fc
  %i.fe = extractelement <2 x double> %i.es, i64 1
  %i.ff = insertelement <2 x double> %i.eh, double 0.000000e+00, i64 1
  %i.fg = shufflevector <2 x double> %i.ey, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.fh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.ff, <2 x double> %i.fg)
  %i.fi = fadd <2 x double> %i.dk, %i.fh
  %i.fj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> zeroinitializer, <2 x double> %i.es)
  %i.fk = fadd <2 x double> %i.dl, %i.fj
  %i.fl = fmul <2 x double> %i.ek, %i.ej
  %i.fm = fadd <2 x double> %i.fl, <double -0.000000e+00, double 0.000000e+00>
  %i.fn = fadd <2 x double> %i.dm, %i.fm
  %i.fo = fmul double %i.en, %i.dt
  %i.fp = fadd double %i.fo, 0.000000e+00
  %i.fq = call double @llvm.fmuladd.f64(double %i.ep, double 0.000000e+00, double %i.fe)
  %i.fr = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.fs = insertelement <2 x double> %i.fr, double %i.fp, i64 1
  %i.ft = fadd <2 x double> %i.dr, %i.fs
  %i.fu = load <2 x float>, ptr %i.ee, align 4, !tbaa !67
  %i.fv = fpext <2 x float> %i.fu to <2 x double>
  %i.fw = fmul <2 x double> %i.ei, %i.fv          ; 2 uses
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fy = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fz = shufflevector <2 x double> %i.ej, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.ga = fmul <2 x double> %i.fy, %i.fz          ; 2 uses
  %i.gb = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> %i.fx, <2 x double> %i.gb)
  %i.gd = fadd <2 x double> %i.do, %i.gc
  %i.ge = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.fx, <2 x double> %i.ga)
  %i.gf = fadd <2 x double> %i.dp, %i.ge
  %i.gg = fmul <2 x double> %i.eq, %i.er
  %i.gh = fadd <2 x double> %i.gg, <double -0.000000e+00, double 0.000000e+00>
  %i.gi = fadd <2 x double> %i.dn, %i.gh
  %i.gj = fmul double %i.dt, %i.dt
  %i.gk = fadd double %.sroa.149.1, %i.gj
  %i.gl = fmul <2 x double> %i.fy, %i.er
  %i.gm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> zeroinitializer, <2 x double> %i.gl)
  %i.gn = fadd <2 x double> %i.dq, %i.gm
  br label %.loopexit221

.loopexit221:                                     ; preds = %.preheader220, %bb.k
  %.sroa.149.2 = phi double [ %.sroa.149.1, %bb.k ], [ %i.gk, %.preheader220 ] ; 2 uses
  %i.go = phi <2 x double> [ %i.df, %bb.k ], [ %i.em, %.preheader220 ] ; 2 uses
  %i.gp = phi <2 x double> [ %i.dg, %bb.k ], [ %i.fb, %.preheader220 ] ; 2 uses
  %i.gq = phi <2 x double> [ %i.dh, %bb.k ], [ %i.eu, %.preheader220 ] ; 2 uses
  %i.gr = phi <2 x double> [ %i.di, %bb.k ], [ %i.ew, %.preheader220 ] ; 2 uses
  %i.gs = phi <2 x double> [ %i.dj, %bb.k ], [ %i.fd, %.preheader220 ] ; 2 uses
  %i.gt = phi <2 x double> [ %i.dk, %bb.k ], [ %i.fi, %.preheader220 ] ; 2 uses
  %i.gu = phi <2 x double> [ %i.dl, %bb.k ], [ %i.fk, %.preheader220 ] ; 2 uses
  %i.gv = phi <2 x double> [ %i.dm, %bb.k ], [ %i.fn, %.preheader220 ] ; 2 uses
  %i.gw = phi <2 x double> [ %i.dn, %bb.k ], [ %i.gi, %.preheader220 ] ; 2 uses
  %i.gx = phi <2 x double> [ %i.do, %bb.k ], [ %i.gd, %.preheader220 ] ; 2 uses
  %i.gy = phi <2 x double> [ %i.dp, %bb.k ], [ %i.gf, %.preheader220 ] ; 2 uses
  %i.gz = phi <2 x double> [ %i.dq, %bb.k ], [ %i.gn, %.preheader220 ] ; 2 uses
  %i.ha = phi <2 x double> [ %i.dr, %bb.k ], [ %i.ft, %.preheader220 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.k, !llvm.loop !230

.loopexit.loopexit:                               ; preds = %.preheader218
  %i.hb = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ci, i64 0
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit221, %.loopexit.loopexit, %.preheader222, %.preheader219
  %.sroa.149.3 = phi double [ 0.000000e+00, %.preheader222 ], [ 0.000000e+00, %.preheader219 ], [ %i.da, %.loopexit.loopexit ], [ %.sroa.149.2, %.loopexit221 ]
  %i.hc = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.bf, %.loopexit.loopexit ], [ %i.go, %.loopexit221 ] ; 2 uses
  %i.hd = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.br, %.loopexit.loopexit ], [ %i.gp, %.loopexit221 ] ; 3 uses
  %i.he = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.bu, %.loopexit.loopexit ], [ %i.gq, %.loopexit221 ] ; 3 uses
  %i.hf = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.bp, %.loopexit.loopexit ], [ %i.gr, %.loopexit221 ] ; 2 uses
  %i.hg = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.bx, %.loopexit.loopexit ], [ %i.gs, %.loopexit221 ] ; 3 uses
  %i.hh = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.cg, %.loopexit.loopexit ], [ %i.gt, %.loopexit221 ] ; 2 uses
  %i.hi = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.hb, %.loopexit.loopexit ], [ %i.gu, %.loopexit221 ] ; 3 uses
  %i.hj = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.cm, %.loopexit.loopexit ], [ %i.gv, %.loopexit221 ] ; 2 uses
  %i.hk = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.cy, %.loopexit.loopexit ], [ %i.gw, %.loopexit221 ] ; 2 uses
  %i.hl = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.cd, %.loopexit.loopexit ], [ %i.gx, %.loopexit221 ]
  %i.hm = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.cv, %.loopexit.loopexit ], [ %i.gy, %.loopexit221 ]
  %i.hn = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.de, %.loopexit.loopexit ], [ %i.gz, %.loopexit221 ]
  %i.ho = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.ct, %.loopexit.loopexit ], [ %i.ha, %.loopexit221 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %10, i8 0, i64 48, i1 false), !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  store <2 x double> %i.hc, ptr %12, align 16, !tbaa !61
  %i.hp = getelementptr inbounds nuw i8, ptr %12, i64 16
  store <2 x double> %i.hd, ptr %i.hp, align 16, !tbaa !61
  %i.hq = getelementptr inbounds nuw i8, ptr %12, i64 32
  store <2 x double> %i.he, ptr %i.hq, align 16, !tbaa !61
  %i.hr = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.hs = extractelement <2 x double> %i.hc, i64 1
  store double %i.hs, ptr %i.hr, align 16, !tbaa !61
  %i.ht = getelementptr inbounds nuw i8, ptr %12, i64 56
  store <2 x double> %i.hf, ptr %i.ht, align 8, !tbaa !61
  %i.hu = getelementptr inbounds nuw i8, ptr %12, i64 72
  store <2 x double> %i.hg, ptr %i.hu, align 8, !tbaa !61
  %i.hv = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.hw = extractelement <2 x double> %i.ho, i64 0 ; 2 uses
  store double %i.hw, ptr %i.hv, align 8, !tbaa !61
  %i.hx = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.hy = shufflevector <2 x double> %i.hd, <2 x double> %i.hf, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.hy, ptr %i.hx, align 16, !tbaa !61
  %i.hz = getelementptr inbounds nuw i8, ptr %12, i64 112
  store <2 x double> %i.hh, ptr %i.hz, align 16, !tbaa !61
  %i.ia = getelementptr inbounds nuw i8, ptr %12, i64 128
  store <2 x double> %i.hi, ptr %i.ia, align 16, !tbaa !61
  %i.ib = getelementptr inbounds nuw i8, ptr %12, i64 144
  %i.ic = shufflevector <2 x double> %i.hd, <2 x double> %i.hg, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.ic, ptr %i.ib, align 16, !tbaa !61
  %i.id = getelementptr inbounds nuw i8, ptr %12, i64 160
  %i.ie = extractelement <2 x double> %i.hh, i64 1
  store double %i.ie, ptr %i.id, align 16, !tbaa !61
  %i.if = getelementptr inbounds nuw i8, ptr %12, i64 168
  store <2 x double> %i.hj, ptr %i.if, align 8, !tbaa !61
  %i.ig = getelementptr inbounds nuw i8, ptr %12, i64 184
  %i.ih = extractelement <2 x double> %i.ho, i64 1 ; 2 uses
  store double %i.ih, ptr %i.ig, align 8, !tbaa !61
  %i.ii = getelementptr inbounds nuw i8, ptr %12, i64 192
  %i.ij = shufflevector <2 x double> %i.he, <2 x double> %i.hg, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ij, ptr %i.ii, align 16, !tbaa !61
  %i.ik = getelementptr inbounds nuw i8, ptr %12, i64 208
  %i.il = shufflevector <2 x double> %i.hi, <2 x double> %i.hj, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.il, ptr %i.ik, align 16, !tbaa !61
  %i.im = getelementptr inbounds nuw i8, ptr %12, i64 224
  store <2 x double> %i.hk, ptr %i.im, align 16, !tbaa !61
  %i.in = getelementptr inbounds nuw i8, ptr %12, i64 240
  %i.io = extractelement <2 x double> %i.he, i64 1
  store double %i.io, ptr %i.in, align 16, !tbaa !61
  %i.ip = getelementptr inbounds nuw i8, ptr %12, i64 248
end_hunk_2
