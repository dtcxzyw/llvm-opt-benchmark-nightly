Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/util?download=true
inline.NumInlined: 87
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ruby_dtoa:bb.a
  %.sroa.0.4.insert.mask = and i64 %i.de, 4294967295
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.4.insert.ext, %.sroa.0.4.insert.mask
  %i.dg = bitcast i64 %.sroa.0.4.insert.insert to double ; 4 uses
  %i.dh = icmp eq i32 %.1415, 0
  br i1 %i.dh, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.di = fadd double %.sroa.090.5, -5.000000e+00 ; 2 uses
  %i.dj = fcmp ogt double %i.di, %i.dg
  br i1 %i.dj, label %cmp.exit609.thread756, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dk = fneg double %i.dg
  %i.dl = fcmp olt double %i.di, %i.dk
  br i1 %i.dl, label %cmp.exit609.thread, label %.loopexit831

bb.ap:                                            ; preds = %bb.am
  %.not499 = icmp eq i32 %.2397, 0
  %i.dm = zext nneg i32 %.1415 to i64
  %i.dn = getelementptr [8 x i8], ptr @tens, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 -8
  %i.dp = load double, ptr %i.do, align 8, !tbaa !20 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.bp, i64 1      ; 4 uses
  br i1 %.not499, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dr = fdiv double 5.000000e-01, %i.dp
  %i.ds = fsub double %i.dr, %i.dg                ; 2 uses
  %i.dt = fptosi double %.sroa.090.5 to i32       ; 2 uses
  %i.du = sitofp i32 %i.dt to double
  %i.dv = fsub double %.sroa.090.5, %i.du         ; 2 uses
  %i.dw = trunc i32 %i.dt to i8
  %i.dx = add i8 %i.dw, 48
  store i8 %i.dx, ptr %i.bp, align 1, !tbaa !12
  %i.dy = fcmp olt double %i.dv, %i.ds
  br i1 %i.dy, label %Bclear.exit649, label %.lr.ph948.preheader

.lr.ph948.preheader:                              ; preds = %bb.aq
  %i.dz = add nsw i32 %.1415, -1
  br label %.lr.ph948

.lr.ph948:                                        ; preds = %.lr.ph948.preheader, %bb.as
  %i.ea = phi ptr [ %i.em, %bb.as ], [ %i.dq, %.lr.ph948.preheader ] ; 3 uses
  %i.eb = phi double [ %i.ej, %bb.as ], [ %i.dv, %.lr.ph948.preheader ] ; 2 uses
  %.sroa.0.0946 = phi double [ %i.ef, %bb.as ], [ %i.ds, %.lr.ph948.preheader ] ; 2 uses
  %.4431945 = phi i32 [ %i.ee, %bb.as ], [ 0, %.lr.ph948.preheader ] ; 2 uses
  %i.ec = fsub double 1.000000e+00, %i.eb
  %i.ed = fcmp olt double %i.ec, %.sroa.0.0946
  br i1 %i.ed, label %.loopexit830, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph948
  %exitcond.not = icmp eq i32 %.4431945, %i.dz
  br i1 %exitcond.not, label %.loopexit831, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ee = add nuw nsw i32 %.4431945, 1
  %i.ef = fmul double %.sroa.0.0946, 1.000000e+01 ; 2 uses
  %i.eg = fmul double %i.eb, 1.000000e+01         ; 2 uses
  %i.eh = fptosi double %i.eg to i32              ; 2 uses
  %i.ei = sitofp i32 %i.eh to double
  %i.ej = fsub double %i.eg, %i.ei                ; 2 uses
  %i.ek = trunc i32 %i.eh to i8
  %i.el = add i8 %i.ek, 48
  %i.em = getelementptr i8, ptr %i.ea, i64 1      ; 2 uses
  store i8 %i.el, ptr %i.ea, align 1, !tbaa !12
  %i.en = fcmp olt double %i.ej, %i.ef
  br i1 %i.en, label %Bclear.exit649, label %.lr.ph948

bb.at:                                            ; preds = %bb.ap
  %i.eo = fmul double %i.dp, %i.dg                ; 2 uses
  %i.ep = fptosi double %.sroa.090.5 to i32       ; 2 uses
  %i.eq = sitofp i32 %i.ep to double
  %i.er = fsub double %.sroa.090.5, %i.eq         ; 3 uses
  %i.es = fcmp oeq double %i.er, 0.000000e+00
  %i.et = trunc i32 %i.ep to i8                   ; 2 uses
  %i.eu = add i8 %i.et, 48
  store i8 %i.eu, ptr %i.bp, align 1, !tbaa !12
  %i.ev = icmp eq i32 %.1415, 1
  %i.ew = or i1 %i.es, %i.ev
  br i1 %i.ew, label %._crit_edge955, label %.lr.ph954

._crit_edge955:                                   ; preds = %.lr.ph954, %bb.at
  %.lcssa926 = phi double [ %i.er, %bb.at ], [ %i.fl, %.lr.ph954 ] ; 2 uses
  %.lcssa925 = phi i8 [ %i.et, %bb.at ], [ %i.fn, %.lr.ph954 ]
  %.lcssa924 = phi ptr [ %i.dq, %bb.at ], [ %i.fp, %.lr.ph954 ] ; 3 uses
  %i.ex = fadd double %i.eo, 5.000000e-01
  %i.ey = fcmp ogt double %.lcssa926, %i.ex
  br i1 %i.ey, label %.loopexit830, label %bb.au

bb.au:                                            ; preds = %._crit_edge955
  %i.ez = fsub double 5.000000e-01, %i.eo
  %i.fa = fcmp olt double %.lcssa926, %i.ez
  br i1 %i.fa, label %.preheader827, label %bb.av

.preheader827:                                    ; preds = %bb.au, %.preheader827
  %.2 = phi ptr [ %i.fb, %.preheader827 ], [ %.lcssa924, %bb.au ] ; 2 uses
  %i.fb = getelementptr i8, ptr %.2, i64 -1       ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !12
  %i.fd = icmp eq i8 %i.fc, 48
  br i1 %i.fd, label %.preheader827, label %Bclear.exit649, !llvm.loop !67

bb.av:                                            ; preds = %bb.au
  %i.fe = and i8 %.lcssa925, 1
  %.not500 = icmp eq i8 %i.fe, 0
  br i1 %.not500, label %.loopexit831.thread, label %.loopexit830

.lr.ph954:                                        ; preds = %bb.at, %.lr.ph954
  %i.ff = phi ptr [ %i.fp, %.lr.ph954 ], [ %i.dq, %bb.at ] ; 2 uses
  %spec.select561952 = phi i32 [ %spec.select561, %.lr.ph954 ], [ %.1415, %bb.at ]
  %i.fg = phi double [ %i.fl, %.lr.ph954 ], [ %i.er, %bb.at ]
  %.5432951 = phi i32 [ %i.fh, %.lr.ph954 ], [ 1, %bb.at ]
  %i.fh = add i32 %.5432951, 1                    ; 3 uses
  %i.fi = fmul double %i.fg, 1.000000e+01         ; 2 uses
  %i.fj = fptosi double %i.fi to i32              ; 2 uses
  %i.fk = sitofp i32 %i.fj to double
  %i.fl = fsub double %i.fi, %i.fk                ; 3 uses
  %i.fm = fcmp une double %i.fl, 0.000000e+00
  %spec.select561 = select i1 %i.fm, i32 %spec.select561952, i32 %i.fh ; 2 uses
  %i.fn = trunc i32 %i.fj to i8                   ; 2 uses
  %i.fo = add i8 %i.fn, 48
  %i.fp = getelementptr i8, ptr %i.ff, i64 1      ; 2 uses
  store i8 %i.fo, ptr %i.ff, align 1, !tbaa !12
  %i.fq = icmp eq i32 %i.fh, %spec.select561
  br i1 %i.fq, label %._crit_edge955, label %.lr.ph954

.loopexit831:                                     ; preds = %bb.ar, %bb.ak, %bb.ao, %bb.ab
  %i.fr = load i32, ptr %i.b, align 4, !tbaa !11  ; 2 uses
  %i.fs = icmp sgt i32 %i.fr, -1
  %i.ft = icmp slt i32 %.2401, 15
  %or.cond14 = and i1 %i.ft, %i.fs
  br i1 %or.cond14, label %bb.aw, label %bb.bc

.loopexit831.thread:                              ; preds = %bb.av
  %i.fu = load i32, ptr %i.b, align 4, !tbaa !11
  %i.fv = icmp sgt i32 %i.fu, -1
  %i.fw = icmp slt i32 %.2401, 15
  %or.cond141161 = and i1 %i.fw, %i.fv
  br i1 %or.cond141161, label %bb.aw, label %.thread

bb.aw:                                            ; preds = %.loopexit831.thread, %.loopexit831
  %i.fx = sext i32 %.2401 to i64
  %i.fy = getelementptr [8 x i8], ptr @tens, i64 %i.fx
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !20 ; 7 uses
  %i.ga = icmp slt i32 %.0449, 0
  %i.gb = icmp slt i32 %.0414, 1
  %or.cond16 = and i1 %i.ga, %i.gb
  br i1 %or.cond16, label %bb.ax, label %.preheader

.preheader:                                       ; preds = %bb.aw
  %i.gc = fdiv double %.sroa.090.0, %i.fz
  %i.gd = fptosi double %i.gc to i32              ; 3 uses
  %i.ge = sitofp i32 %i.gd to double
  %i.gf = fneg double %i.ge
  %i.gg = tail call double @llvm.fmuladd.f64(double %i.gf, double %i.fz, double %.sroa.090.0) ; 3 uses
  %i.gh = trunc i32 %i.gd to i8
  %i.gi = add i8 %i.gh, 48
  %i.gj = getelementptr i8, ptr %i.bp, i64 1      ; 3 uses
  store i8 %i.gi, ptr %i.bp, align 1, !tbaa !12
  %i.gk = fcmp une double %i.gg, 0.000000e+00
  br i1 %i.gk, label %.lr.ph960.preheader, label %Bclear.exit649

.lr.ph960.preheader:                              ; preds = %.preheader
  %i.gl = icmp eq i32 %.0414, 1
  br i1 %i.gl, label %.lr.ph960._crit_edge, label %.lr.ph1374

bb.ax:                                            ; preds = %bb.aw
  %i.gm = icmp sgt i32 %.0414, -1
  %i.gn = fmul double %i.fz, 5.000000e+00
  %i.go = fcmp ugt double %.sroa.090.0, %i.gn
  %or.cond563 = select i1 %i.gm, i1 %i.go, i1 false
  br i1 %or.cond563, label %cmp.exit609.thread756, label %cmp.exit609.thread

.lr.ph960:                                        ; preds = %.lr.ph1374
  %i.gp = add i32 %.64339591373, 1                ; 2 uses
  %i.gq = icmp eq i32 %i.gp, %.0414
  br i1 %i.gq, label %.lr.ph960._crit_edge, label %.lr.ph1374

.lr.ph960._crit_edge:                             ; preds = %.lr.ph960, %.lr.ph960.preheader
  %.lcssa1283 = phi ptr [ %i.gj, %.lr.ph960.preheader ], [ %i.hq, %.lr.ph960 ] ; 3 uses
  %.lcssa1281 = phi double [ %i.gg, %.lr.ph960.preheader ], [ %i.hn, %.lr.ph960 ]
  %.lcssa1279 = phi i32 [ %i.gd, %.lr.ph960.preheader ], [ %i.hk, %.lr.ph960 ]
  %i.gr = fmul double %.lcssa1281, 2.000000e+00   ; 2 uses
  %i.gs = fcmp ogt double %i.gr, %i.fz
  br i1 %i.gs, label %.loopexit830, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph960._crit_edge
  %i.gt = fcmp une double %i.gr, %i.fz
  %i.gu = and i32 %.lcssa1279, 1
  %.not549 = icmp eq i32 %i.gu, 0
  %or.cond564 = select i1 %i.gt, i1 true, i1 %.not549
  br i1 %or.cond564, label %Bclear.exit649, label %.loopexit830

.loopexit830:                                     ; preds = %.lr.ph948, %bb.ay, %.lr.ph960._crit_edge, %bb.av, %._crit_edge955
  %.5404 = phi i32 [ %.2401, %.lr.ph960._crit_edge ], [ %.2401, %bb.ay ], [ %.3402, %bb.av ], [ %.3402, %._crit_edge955 ], [ %.3402, %.lr.ph948 ] ; 2 uses
  %.5 = phi ptr [ %.lcssa1283, %.lr.ph960._crit_edge ], [ %.lcssa1283, %bb.ay ], [ %.lcssa924, %bb.av ], [ %.lcssa924, %._crit_edge955 ], [ %i.ea, %.lr.ph948 ] ; 4 uses
  %i.gv = add i64 %i.bq, 1
  %.51072 = ptrtoaddr ptr %.5 to i64              ; 2 uses
  %i.gw = sub i64 %i.gv, %.51072
  %scevgep1073 = getelementptr i8, ptr %.5, i64 %i.gw
  %i.gx = sub i64 %i.bq, %.51072
  %scevgep1074 = getelementptr i8, ptr %.5, i64 %i.gx
  br label %bb.az

bb.az:                                            ; preds = %bb.ba, %.loopexit830
  %.6 = phi ptr [ %.5, %.loopexit830 ], [ %i.gy, %bb.ba ] ; 2 uses
  %i.gy = getelementptr i8, ptr %.6, i64 -1       ; 4 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !12  ; 2 uses
  %i.ha = icmp eq i8 %i.gz, 57
  br i1 %i.ha, label %bb.ba, label %.loopexit.loopexit

bb.ba:                                            ; preds = %bb.az
  %i.hb = icmp eq ptr %i.gy, %i.bp
  br i1 %i.hb, label %bb.bb, label %bb.az, !llvm.loop !68

bb.bb:                                            ; preds = %bb.ba
  %i.hc = add i32 %.5404, 1
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.az
  %i.hd = add i8 %i.gz, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.bb
  %i.he = phi i8 [ 49, %bb.bb ], [ %i.hd, %.loopexit.loopexit ]
  %.6971 = phi ptr [ %scevgep1073, %bb.bb ], [ %.6, %.loopexit.loopexit ]
  %i.hf = phi ptr [ %scevgep1074, %bb.bb ], [ %i.gy, %.loopexit.loopexit ]
  %.6405 = phi i32 [ %i.hc, %bb.bb ], [ %.5404, %.loopexit.loopexit ]
  store i8 %i.he, ptr %i.hf, align 1, !tbaa !12
  br label %Bclear.exit649

.lr.ph1374:                                       ; preds = %.lr.ph960.preheader, %.lr.ph960
  %.64339591373 = phi i32 [ %i.gp, %.lr.ph960 ], [ 1, %.lr.ph960.preheader ]
  %i.hg = phi double [ %i.hn, %.lr.ph960 ], [ %i.gg, %.lr.ph960.preheader ]
  %i.hh = phi ptr [ %i.hq, %.lr.ph960 ], [ %i.gj, %.lr.ph960.preheader ] ; 2 uses
  %i.hi = fmul double %i.hg, 1.000000e+01         ; 2 uses
  %i.hj = fdiv double %i.hi, %i.fz
  %i.hk = fptosi double %i.hj to i32              ; 3 uses
  %i.hl = sitofp i32 %i.hk to double
  %i.hm = fneg double %i.hl
  %i.hn = tail call double @llvm.fmuladd.f64(double %i.hm, double %i.fz, double %i.hi) ; 3 uses
  %i.ho = trunc i32 %i.hk to i8
  %i.hp = add i8 %i.ho, 48
  %i.hq = getelementptr i8, ptr %i.hh, i64 1      ; 3 uses
  store i8 %i.hp, ptr %i.hh, align 1, !tbaa !12
  %i.hr = fcmp une double %i.hn, 0.000000e+00
  br i1 %i.hr, label %.lr.ph960, label %Bclear.exit649

bb.bc:                                            ; preds = %.loopexit831
  %i.hs = icmp eq i32 %.2397, 0
  br i1 %i.hs, label %.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ht = tail call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #26 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ht, null
  br i1 %.not.i.i, label %.thread775.thread, label %i2b.exit

i2b.exit:                                         ; preds = %bb.bd
  %i.hu = add i32 %i.fr, 1075
  %i.hv = sub i32 54, %i.ax
  %i.hw = select i1 %.not492.not, i32 %i.hu, i32 %i.hv ; 2 uses
  %i.hx = add i32 %i.hw, %.1388
  %i.hy = add i32 %i.hw, %.1442
  %i.hz = getelementptr i8, ptr %i.ht, i64 8
  %i.ia = getelementptr i8, ptr %i.ht, i64 24
  store i32 1, ptr %i.ia, align 8, !tbaa !11
  store <4 x i32> <i32 1, i32 2, i32 0, i32 1>, ptr %i.hz, align 8, !tbaa !11
  br label %.thread

.thread:                                          ; preds = %.loopexit831.thread, %i2b.exit, %bb.bc
  %i.ib = phi i1 [ true, %bb.bc ], [ false, %i2b.exit ], [ true, %.loopexit831.thread ] ; 4 uses
  %.1383.not11621164 = phi i1 [ false, %bb.bc ], [ false, %i2b.exit ], [ true, %.loopexit831.thread ]
  %.1719 = phi ptr [ null, %bb.bc ], [ %i.ht, %i2b.exit ], [ null, %.loopexit831.thread ] ; 4 uses
  %.2443 = phi i32 [ %.1442, %bb.bc ], [ %i.hy, %i2b.exit ], [ %.1442, %.loopexit831.thread ] ; 2 uses
  %.2389 = phi i32 [ %.1388, %bb.bc ], [ %i.hx, %i2b.exit ], [ %.1388, %.loopexit831.thread ] ; 4 uses
  %i.ic = icmp sgt i32 %.1442, 0
  %i.id = icmp sgt i32 %.2389, 0
  %or.cond18 = select i1 %i.ic, i1 %i.id, i1 false
  br i1 %or.cond18, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.thread
  %i.ie = tail call i32 @llvm.umin.i32(i32 %.1442, i32 %.2389) ; 3 uses
  %i.if = sub i32 %.2443, %i.ie
  %i.ig = sub nsw i32 %.1442, %i.ie
  %i.ih = sub nsw i32 %.2389, %i.ie
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.thread
  %.3444 = phi i32 [ %i.if, %bb.be ], [ %.2443, %.thread ]
  %.0393 = phi i32 [ %i.ig, %bb.be ], [ %.1442, %.thread ] ; 3 uses
  %.3390 = phi i32 [ %i.ih, %bb.be ], [ %.2389, %.thread ]
  %i.ii = icmp sgt i32 %.0440, 0
  br i1 %i.ii, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.ib, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ij = tail call fastcc ptr @pow5mult(ptr noundef %.1719, i32 noundef %.0440) ; 4 uses
  %.not505 = icmp eq ptr %i.ij, null
  br i1 %.not505, label %.thread775.thread, label %Bclear.exit598

Bclear.exit598:                                   ; preds = %bb.bh
  %i.ik = tail call fastcc ptr @mult(ptr noundef nonnull %i.ij, ptr noundef nonnull %i.n) ; 2 uses
  tail call void @free(ptr noundef nonnull %i.n) #24
  %.not506 = icmp eq ptr %i.ik, null
  br i1 %.not506, label %Bclear.exit655, label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.il = tail call fastcc ptr @pow5mult(ptr noundef nonnull %i.n, i32 noundef %.0440) ; 2 uses
  %.not504 = icmp eq ptr %i.il, null
  br i1 %.not504, label %.thread775, label %bb.bj

bb.bj:                                            ; preds = %Bclear.exit598, %bb.bi, %bb.bf
  %.0736 = phi ptr [ %i.il, %bb.bi ], [ %i.ik, %Bclear.exit598 ], [ %i.n, %bb.bf ] ; 4 uses
  %.2720 = phi ptr [ %.1719, %bb.bi ], [ %i.ij, %Bclear.exit598 ], [ %.1719, %bb.bf ] ; 11 uses
  %i.im = tail call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #26 ; 5 uses
  %.not.i.i599 = icmp eq ptr %i.im, null
  br i1 %.not.i.i599, label %.thread775, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.in = getelementptr i8, ptr %i.im, i64 8
  %i.io = getelementptr i8, ptr %i.im, i64 24
  store i32 1, ptr %i.io, align 8, !tbaa !11
  store <4 x i32> <i32 1, i32 2, i32 0, i32 1>, ptr %i.in, align 8, !tbaa !11
  %i.ip = icmp sgt i32 %.0386, 0
  br i1 %i.ip, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.iq = tail call fastcc ptr @pow5mult(ptr noundef nonnull %i.im, i32 noundef %.0386) ; 2 uses
  %.not508 = icmp eq ptr %i.iq, null
  br i1 %.not508, label %.thread775, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.1713 = phi ptr [ %i.iq, %bb.bl ], [ %i.im, %bb.bk ] ; 5 uses
  %i.ir = icmp sgt i32 %spec.select560, 1
  %or.cond20.not511 = and i1 %i.ir, %i.ib
  %.sroa.090.0.extract.trunc133 = trunc i64 %.pre-phi to i32 ; 2 uses
  %i.is = and i32 %.sroa.090.4.extract.trunc139, 1048575
  %i.it = or i32 %i.is, %.sroa.090.0.extract.trunc133
  %i.iu = icmp ne i32 %i.it, 0
  %or.cond565.not816 = or i1 %i.iu, %or.cond20.not511
  %.not513 = icmp samesign ult i64 %.pre-phi, 9007199254740992
  %or.cond566 = or i1 %.not513, %or.cond565.not816 ; 2 uses
  %not.or.cond566 = xor i1 %or.cond566, true
  %i.iv = zext i1 %not.or.cond566 to i32          ; 2 uses
  %.4445 = add i32 %.3444, %i.iv                  ; 3 uses
  %.4391 = add i32 %.3390, %i.iv                  ; 4 uses
  %.not514 = icmp eq i32 %.0386, 0
  br i1 %.not514, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iw = getelementptr i8, ptr %.1713, i64 24
  %i.ix = getelementptr i8, ptr %.1713, i64 20
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !26
  %i.iz = add i32 %i.iy, -1
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr [4 x i8], ptr %i.iw, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !11
  %i.jd = tail call fastcc i32 @hi0bits(i32 noundef %i.jc)
  %i.je = sub nuw nsw i32 32, %i.jd
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %i.jf = phi i32 [ %i.je, %bb.bn ], [ 1, %bb.bm ]
  %i.jg = add i32 %i.jf, %.4391
  %i.jh = and i32 %i.jg, 31                       ; 2 uses
  %.not515 = icmp eq i32 %i.jh, 0
  %i.ji = sub nuw nsw i32 32, %i.jh
  %spec.select567 = select i1 %.not515, i32 0, i32 %i.ji ; 4 uses
  %i.jj = icmp samesign ugt i32 %spec.select567, 4
  br i1 %i.jj, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.jk = add nsw i32 %spec.select567, -4         ; 3 uses
  %i.jl = add i32 %i.jk, %.4445
  %i.jm = add i32 %i.jk, %.0393
  %i.jn = add i32 %i.jk, %.4391
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  %.not516 = icmp eq i32 %spec.select567, 4
  br i1 %.not516, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jo = add nuw nsw i32 %spec.select567, 28     ; 3 uses
  %i.jp = add i32 %i.jo, %.4445
  %i.jq = add i32 %i.jo, %.0393
  %i.jr = add i32 %i.jo, %.4391
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br, %bb.bp
  %.5446 = phi i32 [ %i.jl, %bb.bp ], [ %i.jp, %bb.br ], [ %.4445, %bb.bq ] ; 2 uses
  %.1394 = phi i32 [ %i.jm, %bb.bp ], [ %i.jq, %bb.br ], [ %.0393, %bb.bq ] ; 2 uses
  %.5392 = phi i32 [ %i.jn, %bb.bp ], [ %i.jr, %bb.br ], [ %.4391, %bb.bq ] ; 2 uses
  %i.js = icmp sgt i32 %.5446, 0
  br i1 %i.js, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.jt = tail call fastcc ptr @lshift(ptr noundef nonnull %.0736, i32 noundef %.5446) ; 2 uses
  %.not517 = icmp eq ptr %i.jt, null
  br i1 %.not517, label %Bclear.exit651, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.1737 = phi ptr [ %i.jt, %bb.bt ], [ %.0736, %bb.bs ] ; 8 uses
  %i.ju = icmp sgt i32 %.5392, 0
  br i1 %i.ju, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.jv = tail call fastcc ptr @lshift(ptr noundef nonnull %.1713, i32 noundef %.5392) ; 2 uses
  %.not518 = icmp eq ptr %i.jv, null
  br i1 %.not518, label %.thread775, label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.2714 = phi ptr [ %i.jv, %bb.bv ], [ %.1713, %bb.bu ] ; 32 uses
  br i1 %or.cond, label %bb.bx, label %cmp.exit.thread

end_hunk_0
begin_hunk_1_@ruby_dtoa:bb.a
  %.13749781806814 = phi ptr [ %.13749781, %bb.et ], [ %.13749781, %Bclear.exit653 ], [ null, %Bclear.exit598 ]
  tail call void @free(ptr noundef nonnull %.13729783804815) #24
  br label %.thread775.thread

.thread775.thread:                                ; preds = %bb.bd, %bb.bh, %Bclear.exit655, %.thread775
  %.13749781798 = phi ptr [ %.13749781, %.thread775 ], [ %.13749781806814, %Bclear.exit655 ], [ %i.n, %bb.bh ], [ %i.n, %bb.bd ] ; 2 uses
  %.not545 = icmp eq ptr %.13749781798, null
  br i1 %.not545, label %bb.eu, label %Bclear.exit657

Bclear.exit657:                                   ; preds = %.thread775.thread
  tail call void @free(ptr noundef nonnull %.13749781798) #24
  br label %bb.eu

bb.eu:                                            ; preds = %Bclear.exit657, %.thread775.thread
  tail call void @free(ptr noundef %i.bp) #24
  br label %nrv_alloc.exit

nrv_alloc.exit:                                   ; preds = %bb.i, %.preheader.i586, %bb.h, %bb.f, %.preheader.i577, %bb.e, %bb.d, %.preheader.i, %bb.c, %Bclear.exit649, %bb.es, %bb.j, %bb.eu, %Bclear.exit596, %Bclear.exit
  %.0447 = phi ptr [ %i.i, %bb.d ], [ %i.bp, %Bclear.exit649 ], [ null, %bb.j ], [ null, %bb.eu ], [ null, %Bclear.exit596 ], [ null, %Bclear.exit ], [ %i.j, %bb.f ], [ %i.bp, %bb.es ], [ null, %bb.c ], [ %i.i, %.preheader.i ], [ null, %bb.e ], [ %i.j, %.preheader.i577 ], [ null, %bb.h ], [ %i.l, %.preheader.i586 ], [ %i.l, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret ptr %.0447
}

; Function Attrs: nofree nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @nrv_alloc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i64 noundef range(i64 2, 10) %2) unnamed_addr #17 {
bb.a:
  %i.a = tail call noalias ptr @malloc(i64 noundef %2) #26 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !12      ; 2 uses
  store i8 %i.b, ptr %i.a, align 1, !tbaa !12
  %.not1315 = icmp eq i8 %i.b, 0
  br i1 %.not1315, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.017 = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %.preheader ]
  %.01016 = phi ptr [ %i.c, %.lr.ph ], [ %0, %.preheader ]
  %i.c = getelementptr i8, ptr %.01016, i64 1     ; 2 uses
  %i.d = getelementptr i8, ptr %.017, i64 1       ; 3 uses
  %i.e = load i8, ptr %i.c, align 1, !tbaa !12    ; 2 uses
  store i8 %i.e, ptr %i.d, align 1, !tbaa !12
  %.not13 = icmp eq i8 %i.e, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph, !llvm.loop !71

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.0.lcssa = phi ptr [ %i.a, %.preheader ], [ %i.d, %.lr.ph ]
  %.not14 = icmp eq ptr %1, null
  br i1 %.not14, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store ptr %.0.lcssa, ptr %1, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal fastcc range(i32 0, 33) i32 @hi0bits(i32 noundef %0) unnamed_addr #19 {
bb.a:
  %.not = icmp ult i32 %0, 65536                  ; 2 uses
  %i.a = shl nuw i32 %0, 16
  %spec.select = select i1 %.not, i32 %i.a, i32 %0 ; 3 uses
  %spec.select26 = select i1 %.not, i32 16, i32 0 ; 2 uses
  %.not21 = icmp ult i32 %spec.select, 16777216   ; 2 uses
  %i.b = or disjoint i32 %spec.select26, 8
  %i.c = shl nuw i32 %spec.select, 8
  %.117 = select i1 %.not21, i32 %i.c, i32 %spec.select ; 3 uses
  %.1 = select i1 %.not21, i32 %i.b, i32 %spec.select26 ; 2 uses
  %.not22 = icmp ult i32 %.117, 268435456         ; 2 uses
  %i.d = or disjoint i32 %.1, 4
  %i.e = shl nuw i32 %.117, 4
  %.218 = select i1 %.not22, i32 %i.e, i32 %.117  ; 3 uses
  %.2 = select i1 %.not22, i32 %i.d, i32 %.1      ; 2 uses
  %.not23 = icmp ult i32 %.218, 1073741824        ; 2 uses
  %i.f = or disjoint i32 %.2, 2
  %i.g = shl nuw i32 %.218, 2
  %.319 = select i1 %.not23, i32 %i.g, i32 %.218  ; 2 uses
  %.3 = select i1 %.not23, i32 %i.f, i32 %.2      ; 2 uses
  %i.h = add nuw nsw i32 %.3, 1
  %.not25 = icmp ult i32 %.319, 1073741824
  %spec.select27 = select i1 %.not25, i32 32, i32 %i.h
  %.not2428 = icmp slt i32 %.319, 0
  %.020 = select i1 %.not2428, i32 %.3, i32 %spec.select27
  ret i32 %.020
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @multadd(ptr noundef captures(ret: address, provenance) %0, i32 noundef %1, i32 noundef range(i32 -176, 80) %2) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26   ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.d = sext i32 %2 to i64                       ; 2 uses
  %i.e = sext i32 %1 to i64                       ; 5 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1) ; 2 uses
  %xtraiter = and i32 %smax, 3                    ; 3 uses
  %i.f = icmp slt i32 %i.b, 4
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i32 %smax, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.017 = phi ptr [ %i.c, %.new ], [ %i.ah, %bb.b ] ; 6 uses
  %.0 = phi i64 [ %i.d, %.new ], [ %i.af, %bb.b ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %bb.b ]
  %i.g = load i32, ptr %.017, align 4, !tbaa !11
  %i.h = zext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, %i.e
  %i.j = add nsw i64 %i.i, %.0                    ; 2 uses
  %i.k = lshr i64 %i.j, 32
  %i.l = trunc i64 %i.j to i32
  %i.m = getelementptr i8, ptr %.017, i64 4       ; 2 uses
  store i32 %i.l, ptr %.017, align 4, !tbaa !11
  %i.n = load i32, ptr %i.m, align 4, !tbaa !11
  %i.o = zext i32 %i.n to i64
  %i.p = mul nsw i64 %i.o, %i.e
  %i.q = add nsw i64 %i.p, %i.k                   ; 2 uses
  %i.r = lshr i64 %i.q, 32
  %i.s = trunc i64 %i.q to i32
  %i.t = getelementptr i8, ptr %.017, i64 8       ; 2 uses
  store i32 %i.s, ptr %i.m, align 4, !tbaa !11
  %i.u = load i32, ptr %i.t, align 4, !tbaa !11
  %i.v = zext i32 %i.u to i64
  %i.w = mul nsw i64 %i.v, %i.e
  %i.x = add nsw i64 %i.w, %i.r                   ; 2 uses
  %i.y = lshr i64 %i.x, 32
  %i.z = trunc i64 %i.x to i32
  %i.aa = getelementptr i8, ptr %.017, i64 12     ; 2 uses
  store i32 %i.z, ptr %i.t, align 4, !tbaa !11
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !11
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.ac, %i.e
  %i.ae = add nsw i64 %i.ad, %i.y                 ; 2 uses
  %i.af = lshr i64 %i.ae, 32                      ; 3 uses
  %i.ag = trunc i64 %i.ae to i32
  %i.ah = getelementptr i8, ptr %.017, i64 16     ; 2 uses
  store i32 %i.ag, ptr %i.aa, align 4, !tbaa !11
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.b, !llvm.loop !72

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.017.epil.init = phi ptr [ %i.c, %bb.a ], [ %i.ah, %.unr-lcssa ]
  %.0.epil.init = phi i64 [ %i.d, %bb.a ], [ %i.af, %.unr-lcssa ]
  %lcmp.mod39 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.017.epil = phi ptr [ %.017.epil.init, %.epil.preheader ], [ %i.ao, %bb.c ] ; 3 uses
  %.0.epil = phi i64 [ %.0.epil.init, %.epil.preheader ], [ %i.am, %bb.c ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ai = load i32, ptr %.017.epil, align 4, !tbaa !11
  %i.aj = zext i32 %i.ai to i64
  %i.ak = mul nsw i64 %i.aj, %i.e
  %i.al = add nsw i64 %i.ak, %.0.epil             ; 2 uses
  %i.am = lshr i64 %i.al, 32                      ; 2 uses
  %i.an = trunc i64 %i.al to i32
  %i.ao = getelementptr i8, ptr %.017.epil, i64 4
  store i32 %i.an, ptr %.017.epil, align 4, !tbaa !11
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !73

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %.lcssa = phi i64 [ %i.af, %.unr-lcssa ], [ %i.am, %bb.c ] ; 2 uses
  %.not = icmp eq i64 %.lcssa, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %.epilog-lcssa
  %i.ap = getelementptr i8, ptr %0, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !24
  %.not23 = icmp slt i32 %i.b, %i.aq
  br i1 %.not23, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr i8, ptr %0, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !23
  %i.at = add i32 %i.as, 1                        ; 2 uses
  %i.au = shl nuw i32 1, %i.at                    ; 2 uses
  %i.av = add i32 %i.au, -1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2
  %i.ay = add nuw nsw i64 %i.ax, 32
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.ay) #26 ; 5 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %Bclear.exit, label %bb.f

Bclear.exit:                                      ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %0) #24
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  store i32 %i.at, ptr %i.ba, align 8, !tbaa !23
  %i.bb = getelementptr i8, ptr %i.az, i64 12
  store i32 %i.au, ptr %i.bb, align 4, !tbaa !24
  %i.bc = getelementptr i8, ptr %i.az, i64 16     ; 2 uses
  store i32 0, ptr %i.bc, align 8, !tbaa !25
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !26
  %i.be = sext i32 %i.bd to i64
  %i.bf = shl nsw i64 %i.be, 2
  %i.bg = add nsw i64 %i.bf, 8                    ; 2 uses
  %.not.i26 = icmp eq i64 %i.bg, 0
  br i1 %.not.i26, label %Bclear.exit28, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 %i.bc, ptr noundef nonnull readonly align 8 %i.bh, i64 noundef range(i64 1, 0) %i.bg, i1 noundef false) #24
  br label %Bclear.exit28

Bclear.exit28:                                    ; preds = %bb.f, %bb.g
  tail call void @free(ptr noundef nonnull %0) #24
  br label %bb.h

bb.h:                                             ; preds = %Bclear.exit28, %bb.d
  %.034 = phi ptr [ %0, %bb.d ], [ %i.az, %Bclear.exit28 ] ; 3 uses
  %i.bi = trunc nuw i64 %.lcssa to i32
  %i.bj = getelementptr i8, ptr %.034, i64 24
  %i.bk = add i32 %i.b, 1
  %i.bl = sext i32 %i.b to i64
  %i.bm = getelementptr [4 x i8], ptr %i.bj, i64 %i.bl
  store i32 %i.bi, ptr %i.bm, align 4, !tbaa !11
  %i.bn = getelementptr i8, ptr %.034, i64 20
  store i32 %i.bk, ptr %i.bn, align 4, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %.epilog-lcssa, %bb.h, %Bclear.exit
  %.019 = phi ptr [ null, %Bclear.exit ], [ %0, %.epilog-lcssa ], [ %.034, %bb.h ]
  ret ptr %.019
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal fastcc i32 @quorem(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 20         ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 20         ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !26   ; 2 uses
  %i.e = icmp slt i32 %i.d, %i.b
  br i1 %i.e, label %cmp.exit.thread84, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 24         ; 4 uses
  %i.g = add i32 %i.b, -1                         ; 5 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %i.f, i64 %i.h ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 24         ; 10 uses
  %i.k = getelementptr [4 x i8], ptr %i.j, i64 %i.h ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !11   ; 2 uses
  %i.m = load i32, ptr %i.i, align 4, !tbaa !11
  %i.n = add i32 %i.m, 1                          ; 2 uses
  %i.o = udiv i32 %i.l, %i.n                      ; 4 uses
  %.not = icmp ugt i32 %i.n, %i.l
  br i1 %.not, label %bb.f, label %.preheader90

.preheader90:                                     ; preds = %bb.b
  %i.p = zext i32 %i.o to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader90, %bb.c
  %.068 = phi ptr [ %i.ae, %bb.c ], [ %i.j, %.preheader90 ] ; 3 uses
  %.063 = phi ptr [ %i.q, %bb.c ], [ %i.f, %.preheader90 ] ; 2 uses
  %.061 = phi i64 [ %i.ac, %bb.c ], [ 0, %.preheader90 ]
  %.0 = phi i64 [ %i.v, %bb.c ], [ 0, %.preheader90 ]
  %i.q = getelementptr i8, ptr %.063, i64 4       ; 2 uses
  %i.r = load i32, ptr %.063, align 4, !tbaa !11
  %i.s = zext i32 %i.r to i64
  %i.t = mul nuw i64 %i.s, %i.p
  %i.u = add nuw i64 %i.t, %.0                    ; 2 uses
  %i.v = lshr i64 %i.u, 32
  %i.w = load i32, ptr %.068, align 4, !tbaa !11
  %i.x = zext i32 %i.w to i64
  %i.y = and i64 %i.u, 4294967295
  %i.z = add nuw nsw i64 %.061, %i.y
  %i.aa = sub nsw i64 %i.x, %i.z                  ; 2 uses
  %i.ab = lshr i64 %i.aa, 32
  %i.ac = and i64 %i.ab, 1
  %i.ad = trunc i64 %i.aa to i32
  %i.ae = getelementptr i8, ptr %.068, i64 4
  store i32 %i.ad, ptr %.068, align 4, !tbaa !11
  %.not77 = icmp ugt ptr %i.q, %i.i
  br i1 %.not77, label %bb.d, label %bb.c, !llvm.loop !74

bb.d:                                             ; preds = %bb.c
  %i.af = load i32, ptr %i.k, align 4, !tbaa !11
  %.not78 = icmp eq i32 %i.af, 0
  br i1 %.not78, label %.preheader89, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i32, ptr %i.c, align 4, !tbaa !26
  br label %bb.f

.preheader89:                                     ; preds = %bb.d
  %i.ag = getelementptr i8, ptr %i.k, i64 -4      ; 2 uses
  %i.ah = icmp ugt ptr %i.ag, %i.j
  br i1 %i.ah, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader89, %bb.e
  %i.ai = phi ptr [ %i.al, %bb.e ], [ %i.ag, %.preheader89 ] ; 2 uses
  %.07094 = phi i32 [ %i.ak, %bb.e ], [ %i.g, %.preheader89 ] ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !11
  %.not79 = icmp eq i32 %i.aj, 0
  br i1 %.not79, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.ak = add i32 %.07094, -1                     ; 2 uses
  %i.al = getelementptr i8, ptr %i.ai, i64 -4     ; 2 uses
  %i.am = icmp ugt ptr %i.al, %i.j
  br i1 %i.am, label %.lr.ph, label %.critedge, !llvm.loop !75

.critedge:                                        ; preds = %.lr.ph, %bb.e, %.preheader89
  %.070.lcssa = phi i32 [ %i.g, %.preheader89 ], [ %i.ak, %bb.e ], [ %.07094, %.lr.ph ] ; 3 uses
  store i32 %.070.lcssa, ptr %i.c, align 4, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %.critedge, %bb.b
  %i.an = phi i32 [ %.pre, %._crit_edge ], [ %.070.lcssa, %.critedge ], [ %i.d, %bb.b ] ; 3 uses
  %.171 = phi i32 [ %i.g, %._crit_edge ], [ %.070.lcssa, %.critedge ], [ %i.g, %bb.b ] ; 3 uses
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !26  ; 2 uses
  %.not.i = icmp eq i32 %i.an, %i.ao
  br i1 %.not.i, label %bb.g, label %cmp.exit

bb.g:                                             ; preds = %bb.f
  %i.ap = sext i32 %i.an to i64                   ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.j, i64 %i.ap
  %i.ar = getelementptr [4 x i8], ptr %i.f, i64 %i.ap
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.017.i = phi ptr [ %i.aq, %bb.g ], [ %i.as, %bb.j ]
  %.0.i = phi ptr [ %i.ar, %bb.g ], [ %i.au, %bb.j ]
  %i.as = getelementptr i8, ptr %.017.i, i64 -4   ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !11 ; 2 uses
  %i.au = getelementptr i8, ptr %.0.i, i64 -4     ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !11 ; 2 uses
  %.not23.i = icmp eq i32 %i.at, %i.av
  br i1 %.not23.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = icmp ult i32 %i.at, %i.av
  br i1 %i.aw, label %cmp.exit.thread84, label %cmp.exit.thread.preheader

bb.j:                                             ; preds = %bb.h
  %.not24.i = icmp ugt ptr %i.as, %i.j
  br i1 %.not24.i, label %bb.h, label %cmp.exit.thread.preheader

cmp.exit:                                         ; preds = %bb.f
  %i.ax = sub i32 %i.an, %i.ao
  %i.ay = icmp sgt i32 %i.ax, -1
  br i1 %i.ay, label %cmp.exit.thread.preheader, label %cmp.exit.thread84

cmp.exit.thread.preheader:                        ; preds = %bb.j, %bb.i, %cmp.exit
  br label %cmp.exit.thread

cmp.exit.thread:                                  ; preds = %cmp.exit.thread.preheader, %cmp.exit.thread
  %.169 = phi ptr [ %i.bj, %cmp.exit.thread ], [ %i.j, %cmp.exit.thread.preheader ] ; 3 uses
  %.164 = phi ptr [ %i.az, %cmp.exit.thread ], [ %i.f, %cmp.exit.thread.preheader ] ; 2 uses
  %.162 = phi i64 [ %i.bh, %cmp.exit.thread ], [ 0, %cmp.exit.thread.preheader ]
  %i.az = getelementptr i8, ptr %.164, i64 4      ; 2 uses
  %i.ba = load i32, ptr %.164, align 4, !tbaa !11
  %i.bb = zext i32 %i.ba to i64
  %i.bc = load i32, ptr %.169, align 4, !tbaa !11
  %i.bd = zext i32 %i.bc to i64
  %i.be = add nuw nsw i64 %.162, %i.bb
  %i.bf = sub nsw i64 %i.bd, %i.be                ; 2 uses
  %i.bg = lshr i64 %i.bf, 32
  %i.bh = and i64 %i.bg, 1
  %i.bi = trunc i64 %i.bf to i32
  %i.bj = getelementptr i8, ptr %.169, i64 4
  store i32 %i.bi, ptr %.169, align 4, !tbaa !11
  %.not80 = icmp ugt ptr %i.az, %i.i
  br i1 %.not80, label %bb.k, label %cmp.exit.thread, !llvm.loop !76

bb.k:                                             ; preds = %cmp.exit.thread
  %i.bk = add i32 %i.o, 1                         ; 2 uses
  %i.bl = sext i32 %.171 to i64
  %i.bm = getelementptr [4 x i8], ptr %i.j, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !11
  %.not81 = icmp eq i32 %i.bn, 0
  br i1 %.not81, label %.preheader, label %cmp.exit.thread84

.preheader:                                       ; preds = %bb.k
  %i.bo = getelementptr i8, ptr %i.bm, i64 -4     ; 2 uses
  %i.bp = icmp ugt ptr %i.bo, %i.j
  br i1 %i.bp, label %.lr.ph98, label %.critedge2

.lr.ph98:                                         ; preds = %.preheader, %bb.l
  %i.bq = phi ptr [ %i.bt, %bb.l ], [ %i.bo, %.preheader ] ; 2 uses
  %.297 = phi i32 [ %i.bs, %bb.l ], [ %.171, %.preheader ] ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !11
  %.not82 = icmp eq i32 %i.br, 0
  br i1 %.not82, label %bb.l, label %.critedge2

bb.l:                                             ; preds = %.lr.ph98
  %i.bs = add i32 %.297, -1                       ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bq, i64 -4     ; 2 uses
end_hunk_1
