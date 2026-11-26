Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/fast_float_cmyk?download=true
inline.NumInlined: 10
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@FloatCMYKCLUTEval:bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.0498582.us
  %.1.us = select i1 %.not524, ptr %.0499581.us, ptr %i.cm ; 2 uses
  %.not525.us = icmp ne ptr %.1.us, null
  %i.cn = zext i1 %.not525.us to i32
  %.0509.us = add i32 %i.o, %i.cn                 ; 3 uses
  %invariant.gep.us = getelementptr i8, ptr %2, i64 %.0583.us ; 3 uses
  %.not609 = icmp eq i32 %.0509.us, 0
  br i1 %.not609, label %.preheader559.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.d
  %wide.trip.count = zext i32 %.0509.us to i64    ; 3 uses
  %min.iters.check683 = icmp ult i32 %.0509.us, 4
  br i1 %min.iters.check683, label %.lr.ph.us.preheader727, label %vector.ph684

vector.ph684:                                     ; preds = %.lr.ph.us.preheader
  %n.vec685 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  br label %vector.body686

vector.body686:                                   ; preds = %vector.body686, %vector.ph684
  %index687 = phi i64 [ 0, %vector.ph684 ], [ %index.next691, %vector.body686 ] ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index687 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %wide.load688 = load <2 x i32>, ptr %i.co, align 16, !tbaa !10
  %wide.load689 = load <2 x i32>, ptr %i.cp, align 8, !tbaa !10
  %i.cq = zext <2 x i32> %wide.load688 to <2 x i64>
  %i.cr = zext <2 x i32> %wide.load689 to <2 x i64>
  %wide.gep = getelementptr i8, ptr %invariant.gep.us, <2 x i64> %i.cq
  %wide.gep690 = getelementptr i8, ptr %invariant.gep.us, <2 x i64> %i.cr
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index687 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <2 x ptr> %wide.gep, ptr %i.cs, align 16, !tbaa !43
  store <2 x ptr> %wide.gep690, ptr %i.ct, align 16, !tbaa !43
  %index.next691 = add nuw i64 %index687, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next691, %n.vec685
  br i1 %i.cu, label %middle.block692, label %vector.body686, !llvm.loop !21

middle.block692:                                  ; preds = %vector.body686
  %cmp.n693 = icmp eq i64 %n.vec685, %wide.trip.count
  br i1 %cmp.n693, label %.preheader559.us, label %.lr.ph.us.preheader727

.lr.ph.us.preheader727:                           ; preds = %.lr.ph.us.preheader, %middle.block692
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.us.preheader ], [ %n.vec685, %middle.block692 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader727, %.lr.ph.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.us ], [ %indvars.iv.ph, %.lr.ph.us.preheader727 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !10
  %i.cx = zext i32 %i.cw to i64
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %i.cx
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store ptr %gep.us, ptr %i.cy, align 8, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader559.us, label %.lr.ph.us, !llvm.loop !22

.preheader559.us:                                 ; preds = %.lr.ph.us, %middle.block692, %bb.d
  %i.cz = load i32, ptr %i.bd, align 16
  %i.da = zext i32 %i.cz to i64
  br label %bb.e

bb.e:                                             ; preds = %.preheader559.us, %bb.ad
  %.2575.us = phi ptr [ %.1.us, %.preheader559.us ], [ %.3.us, %bb.ad ] ; 3 uses
  %.0500574.us = phi ptr [ %i.ci, %.preheader559.us ], [ %i.do, %bb.ad ] ; 2 uses
  %.0501573.us = phi ptr [ %i.ch, %.preheader559.us ], [ %i.dn, %bb.ad ] ; 2 uses
  %.0502572.us = phi ptr [ %i.cg, %.preheader559.us ], [ %i.dm, %bb.ad ] ; 2 uses
  %.0503571.us = phi ptr [ %i.cf, %.preheader559.us ], [ %i.dl, %bb.ad ] ; 2 uses
  %.1505570.us = phi i32 [ 0, %.preheader559.us ], [ %i.se, %bb.ad ]
  %.1508569.us = phi ptr [ %.0507579.us, %.preheader559.us ], [ %i.ms, %bb.ad ] ; 25 uses
  %.1508569.us669 = ptrtoaddr ptr %.1508569.us to i64
  %i.db = load float, ptr %.0503571.us, align 4, !tbaa !48 ; 4 uses
  %i.dc = fcmp olt float %i.db, f0x3089705F
  %i.dd = fcmp uno float %i.db, 0.000000e+00
  %or.cond.i.us = or i1 %i.dc, %i.dd
  %i.de = fcmp ogt float %i.db, 1.000000e+02
  %i.df = select i1 %i.de, float 1.000000e+02, float %i.db
  %i.dg = fdiv float %i.df, 1.000000e+02
  %i.dh = select i1 %or.cond.i.us, float 0.000000e+00, float %i.dg ; 2 uses
  %i.di = load float, ptr %.0502572.us, align 4, !tbaa !48 ; 2 uses
  %i.dj = load float, ptr %.0501573.us, align 4, !tbaa !48 ; 2 uses
  %i.dk = load float, ptr %.0500574.us, align 4, !tbaa !48 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0503571.us, i64 %i.ar
  %i.dm = getelementptr inbounds nuw i8, ptr %.0502572.us, i64 %i.au
  %i.dn = getelementptr inbounds nuw i8, ptr %.0501573.us, i64 %i.ax
  %i.do = getelementptr inbounds nuw i8, ptr %.0500574.us, i64 %i.ba
  %i.dp = fmul float %i.dh, %i.br                 ; 2 uses
  %i.dq = fpext float %i.dp to double
  %i.dr = fadd double %i.dq, f0x4238000000000000
  %i.ds = bitcast double %i.dr to i64
  %.sroa.0.0.extract.trunc.i.us = trunc i64 %i.ds to i32
  %i.dt = ashr i32 %.sroa.0.0.extract.trunc.i.us, 16 ; 2 uses
  %i.du = sitofp i32 %i.dt to float
  %i.dv = fsub float %i.dp, %i.du                 ; 3 uses
  %i.dw = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.dk, i64 0
  %i.dx = insertelement <4 x float> %i.dw, float %i.di, i64 1 ; 3 uses
  %i.dy = insertelement <4 x float> <float f0x3089705F, float f0x3089705F, float poison, float poison>, float %i.dk, i64 2
  %i.dz = insertelement <4 x float> %i.dy, float %i.dj, i64 3 ; 3 uses
  %i.ea = fcmp uno <4 x float> %i.dx, %i.dz
  %i.eb = fcmp olt <4 x float> %i.dx, %i.dz
  %i.ec = shufflevector <4 x i1> %i.eb, <4 x i1> %i.ea, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ed = shufflevector <4 x float> %i.dz, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 2, i32 3> ; 2 uses
  %i.ee = shufflevector <4 x float> %i.dx, <4 x float> <float poison, float poison, float f0x3089705F, float f0x3089705F>, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ef = fcmp olt <4 x float> %i.ed, %i.ee
  %i.eg = fcmp uno <4 x float> %i.ed, %i.ee
  %i.eh = shufflevector <4 x i1> %i.eg, <4 x i1> %i.ef, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ei = or <4 x i1> %i.ec, %i.eh
  %i.ej = insertelement <4 x float> poison, float %i.dj, i64 0
  %i.ek = insertelement <4 x float> %i.ej, float %i.dk, i64 1
  %i.el = insertelement <4 x float> %i.ek, float %i.di, i64 2
  %i.em = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 1, i32 0> ; 2 uses
  %i.en = fcmp ogt <4 x float> %i.em, splat (float 1.000000e+02)
  %i.eo = select <4 x i1> %i.en, <4 x float> splat (float 1.000000e+02), <4 x float> %i.em
  %i.ep = fdiv <4 x float> %i.eo, splat (float 1.000000e+02)
  %i.eq = select <4 x i1> %i.ei, <4 x float> zeroinitializer, <4 x float> %i.ep ; 4 uses
  %i.er = fmul <4 x float> %i.eq, %i.bu           ; 2 uses
  %i.es = fpext <4 x float> %i.er to <4 x double>
  %i.et = fadd <4 x double> %i.es, splat (double f0x4238000000000000)
  %i.eu = bitcast <4 x double> %i.et to <4 x i64>
  %i.ev = trunc <4 x i64> %i.eu to <4 x i32>
  %i.ew = ashr <4 x i32> %i.ev, splat (i32 16)    ; 4 uses
  %i.ex = sitofp <4 x i32> %i.ew to <4 x float>
  %i.ey = fsub <4 x float> %i.er, %i.ex           ; 11 uses
  %i.ez = mul i32 %i.dt, %i.bv
  %i.fa = fcmp ult float %i.dh, 1.000000e+00
  %spec.select.us = select i1 %i.fa, i32 %i.bv, i32 0
  %i.fb = add i32 %i.ez, %spec.select.us
  %i.fc = extractelement <4 x i32> %i.ew, i64 1
  %i.fd = mul i32 %i.fc, %i.bw                    ; 7 uses
  %i.fe = extractelement <4 x float> %i.eq, i64 1
  %i.ff = fcmp ult float %i.fe, 1.000000e+00
  %i.fg = select i1 %i.ff, i32 %i.bw, i32 0
  %i.fh = add i32 %i.fd, %i.fg                    ; 6 uses
  %i.fi = extractelement <4 x i32> %i.ew, i64 3
  %i.fj = mul i32 %i.fi, %i.bx                    ; 7 uses
  %i.fk = extractelement <4 x float> %i.eq, i64 3
  %i.fl = fcmp ult float %i.fk, 1.000000e+00
  %i.fm = select i1 %i.fl, i32 %i.bx, i32 0
  %i.fn = add i32 %i.fj, %i.fm                    ; 6 uses
  %i.fo = extractelement <4 x i32> %i.ew, i64 0
  %i.fp = mul i32 %i.fo, %i.by                    ; 9 uses
  %i.fq = extractelement <4 x float> %i.eq, i64 0
  %i.fr = fcmp ult float %i.fq, 1.000000e+00
  %i.fs = select i1 %i.fr, i32 %i.by, i32 0
  %i.ft = add i32 %i.fp, %i.fs                    ; 12 uses
  br i1 %.not604, label %._crit_edge.us, label %.lr.ph562.us

.lr.ph562.us:                                     ; preds = %bb.e
  %i.fu = add i32 %i.fj, %i.fd                    ; 2 uses
  %i.fv = add i32 %i.fu, %i.fp                    ; 5 uses
  %i.fw = extractelement <4 x float> %i.ey, i64 1 ; 6 uses
  %i.fx = extractelement <4 x float> %i.ey, i64 3 ; 6 uses
  %i.fy = fcmp ult float %i.fw, %i.fx             ; 2 uses
  %i.fz = extractelement <4 x float> %i.ey, i64 0 ; 6 uses
  %i.ga = fcmp ult float %i.fx, %i.fz             ; 2 uses
  %or.cond.us = select i1 %i.fy, i1 true, i1 %i.ga
  %i.gb = add i32 %i.fh, %i.fj                    ; 2 uses
  %i.gc = add i32 %i.gb, %i.fp                    ; 5 uses
  %i.gd = add i32 %i.fn, %i.fh                    ; 2 uses
  %i.ge = add i32 %i.gd, %i.fp                    ; 5 uses
  %i.gf = add i32 %i.gd, %i.ft                    ; 9 uses
  %i.gg = fcmp ult float %i.fw, %i.fz             ; 2 uses
  %i.gh = fcmp ult float %i.fz, %i.fx             ; 2 uses
  %or.cond529.us = or i1 %i.gg, %i.gh
  %i.gi = add nsw i32 %i.ft, %i.gb
  %i.gj = fcmp ult float %i.fz, %i.fw             ; 2 uses
  %brmerge.us = or i1 %i.fy, %i.gj
  %i.gk = add i32 %i.ft, %i.fh
  %i.gl = add i32 %i.gk, %i.fj
  %i.gm = add nsw i32 %i.ft, %i.fu                ; 2 uses
  %i.gn = fcmp ult float %i.fx, %i.fw             ; 2 uses
  %brmerge534.us = or i1 %i.gn, %i.gg
  %i.go = add nsw i32 %i.fn, %i.fd                ; 2 uses
  %i.gp = add nsw i32 %i.go, %i.fp                ; 2 uses
  %brmerge536.us = or i1 %i.ga, %i.gj
  %i.gq = add nsw i32 %i.go, %i.ft
  %brmerge538.us = or i1 %i.gn, %i.gh
  %i.gr = add i32 %i.ft, %i.fn
  %i.gs = add i32 %i.gr, %i.fd
  br i1 %or.cond.us, label %.lr.ph562.split.us.us, label %.lr.ph562.split.us587.preheader

.lr.ph562.split.us587.preheader:                  ; preds = %.lr.ph562.us
  br i1 %min.iters.check, label %.lr.ph562.split.us587.preheader725, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph562.split.us587.preheader
  %i.gt = xor i32 %i.fv, -1
  %i.gu = icmp ult i32 %i.gt, %i.cc
  %i.gv = xor i32 %i.gc, -1
  %i.gw = icmp ult i32 %i.gv, %i.cc
  %i.gx = or i1 %i.gw, %i.cd
  %i.gy = xor i32 %i.ge, -1
  %i.gz = icmp ult i32 %i.gy, %i.cc
  %i.ha = xor i32 %i.gf, -1
  %i.hb = icmp ult i32 %i.ha, %i.cc
  %i.hc = or i1 %i.gu, %i.gx
  %i.hd = or i1 %i.gz, %i.hc
  %i.he = or i1 %i.hb, %i.hd
  br i1 %i.he, label %.lr.ph562.split.us587.preheader725, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.hf = zext i32 %i.gf to i64
  %i.hg = shl nuw nsw i64 %i.hf, 2
  %i.hh = sub i64 %i.b, %.1508569.us669           ; 4 uses
  %i.hi = sub i64 %i.hg, %i.hh
  %diff.check = icmp ugt i64 %i.hi, -16
  %i.hj = zext i32 %i.ge to i64
  %i.hk = shl nuw nsw i64 %i.hj, 2
  %i.hl = sub i64 %i.hk, %i.hh
  %diff.check670 = icmp ugt i64 %i.hl, -16
  %conflict.rdx = or i1 %diff.check, %diff.check670
  %i.hm = zext i32 %i.gc to i64
  %i.hn = shl nuw nsw i64 %i.hm, 2
  %i.ho = sub i64 %i.hn, %i.hh
  %diff.check671 = icmp ugt i64 %i.ho, -16
  %conflict.rdx672 = or i1 %conflict.rdx, %diff.check671
  %i.hp = zext i32 %i.fv to i64
  %i.hq = shl nuw nsw i64 %i.hp, 2
  %i.hr = sub i64 %i.hq, %i.hh
  %diff.check673 = icmp ugt i64 %i.hr, -16
  %conflict.rdx674 = or i1 %conflict.rdx672, %diff.check673
  br i1 %conflict.rdx674, label %.lr.ph562.split.us587.preheader725, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splat = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat676 = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat678 = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hs = trunc nuw i64 %index to i32             ; 4 uses
  %i.ht = add i32 %i.fv, %i.hs
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.hu
  %wide.load = load <4 x float>, ptr %i.hv, align 4, !tbaa !48 ; 2 uses
  %i.hw = add i32 %i.gc, %i.hs
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.hx
  %wide.load679 = load <4 x float>, ptr %i.hy, align 4, !tbaa !48 ; 2 uses
  %i.hz = fsub <4 x float> %wide.load679, %wide.load
  %i.ia = add i32 %i.ge, %i.hs
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.ib
  %wide.load680 = load <4 x float>, ptr %i.ic, align 4, !tbaa !48 ; 2 uses
  %i.id = fsub <4 x float> %wide.load680, %wide.load679
  %i.ie = add i32 %i.gf, %i.hs
  %i.if = zext i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.if
  %wide.load681 = load <4 x float>, ptr %i.ig, align 4, !tbaa !48
  %i.ih = fsub <4 x float> %wide.load681, %wide.load680
  %i.ii = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hz, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ij = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.id, <4 x float> %broadcast.splat676, <4 x float> %i.ii)
  %i.ik = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ih, <4 x float> %broadcast.splat678, <4 x float> %i.ij)
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  store <4 x float> %i.ik, ptr %i.il, align 16, !tbaa !48
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.im = icmp eq i64 %index.next, %n.vec
  br i1 %i.im, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph562.split.us587.preheader725

.lr.ph562.split.us587.preheader725:               ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph562.split.us587.preheader, %middle.block
  %indvars.iv614.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph562.split.us587.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph562.split.us587

.lr.ph562.split.us587:                            ; preds = %.lr.ph562.split.us587.preheader725, %.lr.ph562.split.us587
  %indvars.iv614 = phi i64 [ %indvars.iv.next615, %.lr.ph562.split.us587 ], [ %indvars.iv614.ph, %.lr.ph562.split.us587.preheader725 ] ; 3 uses
  %i.in = trunc nuw i64 %indvars.iv614 to i32     ; 4 uses
  %i.io = add i32 %i.fv, %i.in
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.ip
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !48 ; 2 uses
  %i.is = add i32 %i.gc, %i.in
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.it
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !48 ; 2 uses
  %i.iw = fsub float %i.iv, %i.ir
  %i.ix = add i32 %i.ge, %i.in
  %i.iy = zext i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.iy
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !48 ; 2 uses
  %i.jb = fsub float %i.ja, %i.iv
  %i.jc = add i32 %i.gf, %i.in
  %i.jd = zext i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.jd
  %i.jf = load float, ptr %i.je, align 4, !tbaa !48
  %i.jg = fsub float %i.jf, %i.ja
  %i.jh = call float @llvm.fmuladd.f32(float %i.iw, float %i.fw, float %i.ir)
  %i.ji = call float @llvm.fmuladd.f32(float %i.jb, float %i.fx, float %i.jh)
  %i.jj = call float @llvm.fmuladd.f32(float %i.jg, float %i.fz, float %i.ji)
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv614
  store float %i.jj, ptr %i.jk, align 4, !tbaa !48
  %indvars.iv.next615 = add nuw nsw i64 %indvars.iv614, 1 ; 2 uses
  %exitcond618.not = icmp eq i64 %indvars.iv.next615, %i.bb
  br i1 %exitcond618.not, label %._crit_edge.us, label %.lr.ph562.split.us587, !llvm.loop !24

.lr.ph562.split.us.us:                            ; preds = %.lr.ph562.us, %bb.o
  %indvars.iv619 = phi i64 [ %indvars.iv.next620, %bb.o ], [ 0, %.lr.ph562.us ] ; 3 uses
  %i.jl = trunc nuw i64 %indvars.iv619 to i32     ; 16 uses
  %i.jm = add i32 %i.fv, %i.jl
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.jn
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !48 ; 6 uses
  br i1 %or.cond529.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph562.split.us.us
  %i.jq = add i32 %i.gc, %i.jl
  %i.jr = zext i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.jr
  %i.jt = load float, ptr %i.js, align 4, !tbaa !48 ; 2 uses
  %i.ju = fsub float %i.jt, %i.jp
  %i.jv = add i32 %i.gf, %i.jl
  %i.jw = zext i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.jw
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !48
  %i.jz = add i32 %i.gi, %i.jl
  %i.ka = zext i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.ka
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !48 ; 2 uses
  %i.kd = fsub float %i.jy, %i.kc
  %i.ke = fsub float %i.kc, %i.jt
  br label %bb.o

bb.g:                                             ; preds = %.lr.ph562.split.us.us
  br i1 %brmerge.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.kf = add i32 %i.gl, %i.jl
  %i.kg = zext i32 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.kg
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !48 ; 2 uses
  %i.kj = add i32 %i.gm, %i.jl
  %i.kk = zext i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.kk
  %i.km = load float, ptr %i.kl, align 4, !tbaa !48 ; 2 uses
  %i.kn = fsub float %i.ki, %i.km
  %i.ko = add i32 %i.gf, %i.jl
  %i.kp = zext i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.kp
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !48
  %i.ks = fsub float %i.kr, %i.ki
  %i.kt = fsub float %i.km, %i.jp
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  br i1 %brmerge534.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ku = add i32 %i.ge, %i.jl
  %i.kv = zext i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.kv
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !48 ; 2 uses
  %i.ky = add i32 %i.gp, %i.jl
  %i.kz = zext i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.kz
  %i.lb = load float, ptr %i.la, align 4, !tbaa !48 ; 2 uses
  %i.lc = fsub float %i.kx, %i.lb
  %i.ld = fsub float %i.lb, %i.jp
  %i.le = add i32 %i.gf, %i.jl
  %i.lf = zext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.lf
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !48
  %i.li = fsub float %i.lh, %i.kx
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  br i1 %brmerge536.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.lj = add i32 %i.gf, %i.jl
  %i.lk = zext i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.lk
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !48
  %i.ln = add i32 %i.gq, %i.jl
  %i.lo = zext i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.lo
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !48 ; 2 uses
  %i.lr = fsub float %i.lm, %i.lq
  %i.ls = add i32 %i.gp, %i.jl
  %i.lt = zext i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.lt
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !48 ; 2 uses
  %i.lw = fsub float %i.lv, %i.jp
  %i.lx = fsub float %i.lq, %i.lv
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  br i1 %brmerge538.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ly = add i32 %i.gf, %i.jl
  %i.lz = zext i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.lz
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !48
  %i.mc = add i32 %i.gs, %i.jl
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.md
  %i.mf = load float, ptr %i.me, align 4, !tbaa !48 ; 2 uses
  %i.mg = fsub float %i.mb, %i.mf
  %i.mh = add i32 %i.gm, %i.jl
  %i.mi = zext i32 %i.mh to i64
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.mi
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !48 ; 2 uses
  %i.ml = fsub float %i.mf, %i.mk
  %i.mm = fsub float %i.mk, %i.jp
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %bb.h, %bb.f
  %.0517.us.us = phi float [ 0.000000e+00, %bb.m ], [ %i.ju, %bb.f ], [ %i.kn, %bb.h ], [ %i.lc, %bb.j ], [ %i.lr, %bb.l ], [ %i.mg, %bb.n ]
  %.0515.us.us = phi float [ 0.000000e+00, %bb.m ], [ %i.kd, %bb.f ], [ %i.ks, %bb.h ], [ %i.ld, %bb.j ], [ %i.lw, %bb.l ], [ %i.ml, %bb.n ]
  %.0513.us.us = phi float [ 0.000000e+00, %bb.m ], [ %i.ke, %bb.f ], [ %i.kt, %bb.h ], [ %i.li, %bb.j ], [ %i.lx, %bb.l ], [ %i.mm, %bb.n ]
  %i.mn = call float @llvm.fmuladd.f32(float %.0517.us.us, float %i.fw, float %i.jp)
  %i.mo = call float @llvm.fmuladd.f32(float %.0515.us.us, float %i.fx, float %i.mn)
  %i.mp = call float @llvm.fmuladd.f32(float %.0513.us.us, float %i.fz, float %i.mo)
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv619
end_hunk_0
