Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/intersection?download=true
inline.NumInlined: 11
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@intersection_angle:bb.a
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.t, double %i.m)
  %i.al = fsub double %i.e, %i.ak                 ; 2 uses
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double %i.al, double 0.000000e+00)
  %i.an = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.s, double %i.q)
  %i.ao = fsub double %i.f, %i.an                 ; 2 uses
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.ao, double %i.am)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.ap)
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.aq = fsub <2 x double> %i.d, %i.n            ; 2 uses
  %i.ar = shufflevector <2 x double> %foldExtExtBinop139, <2 x double> %i.aq, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.ar, <2 x double> zeroinitializer)
  %i.at = insertelement <2 x double> %i.aq, double %i.ac, i64 0 ; 2 uses
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.at, <2 x double> %i.as)
  %i.av = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.au) ; 2 uses
  %i.aw = extractelement <2 x double> %i.av, i64 0 ; 2 uses
  %i.ax = extractelement <2 x double> %i.av, i64 1 ; 2 uses
  %i.ay = fcmp olt double %i.aw, %i.ax
  %i.az = select i1 %i.ay, double %i.aw, double %i.ax
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.ba = fsub <2 x double> %i.a, %i.l            ; 2 uses
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> %foldExtExtBinop139, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.bb, <2 x double> zeroinitializer)
  %i.bd = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.be = insertelement <2 x double> %i.bd, double %i.ac, i64 1 ; 2 uses
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> %i.be, <2 x double> %i.bc)
  %i.bg = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bf)
  br label %point_line_distance.exit30.i

bb.e:                                             ; preds = %bb.c, %.preheader.preheader.i.i
  %.054.i.ph.i = phi double [ %i.az, %bb.c ], [ %sqrt.i, %.preheader.preheader.i.i ] ; 2 uses
  %foldExtExtBinop141 = fsub <2 x double> %i.a, %i.l ; 2 uses
  %i.bh = extractelement <2 x double> %foldExtExtBinop141, i64 0
  %i.bi = fsub double %i.b, %i.q                  ; 2 uses
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.t, double 0.000000e+00)
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.s, double %i.bj)
  %i.bl = fdiv double %i.bk, %i.aa                ; 4 uses
  %i.bm = fcmp oge double %i.bl, 0.000000e+00
  %i.bn = fcmp ole double %i.bl, 1.000000e+00
  %or.cond.i26.i = and i1 %i.bm, %i.bn
  br i1 %or.cond.i26.i, label %.preheader.preheader.i29.i, label %bb.f

.preheader.preheader.i29.i:                       ; preds = %bb.e
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.t, double %i.m)
  %i.bp = fsub double %i.c, %i.bo                 ; 2 uses
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bp, double 0.000000e+00)
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.s, double %i.q)
  %i.bs = fsub double %i.b, %i.br                 ; 2 uses
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bs, double %i.bq)
  %sqrt15.i = tail call double @llvm.sqrt.f64(double %i.bt)
  %i.bu = insertelement <2 x double> poison, double %sqrt15.i, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %.054.i.ph.i, i64 1
  br label %point_line_distance.exit30.i

bb.f:                                             ; preds = %bb.e
  %i.bw = fsub <2 x double> %i.a, %i.n            ; 2 uses
  %i.bx = shufflevector <2 x double> %foldExtExtBinop141, <2 x double> %i.bw, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.bx, <2 x double> zeroinitializer)
  %i.bz = insertelement <2 x double> %i.bw, double %i.bi, i64 0 ; 2 uses
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.bz, <2 x double> %i.by)
  %i.cb = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ca) ; 2 uses
  %i.cc = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.cd = extractelement <2 x double> %i.cb, i64 1 ; 2 uses
  %i.ce = fcmp olt double %i.cc, %i.cd
  %i.cf = select i1 %i.ce, double %i.cc, double %i.cd
  %i.cg = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.ch = insertelement <2 x double> %i.cg, double %.054.i.ph.i, i64 1
  br label %point_line_distance.exit30.i

point_line_distance.exit30.i:                     ; preds = %bb.f, %.preheader.preheader.i29.i, %bb.d
  %i.ci = phi <2 x double> [ %i.bg, %bb.d ], [ %i.bv, %.preheader.preheader.i29.i ], [ %i.ch, %bb.f ] ; 2 uses
  %i.cj = fsub <2 x double> %i.l, %i.d            ; 8 uses
  %i.ck = fcmp ugt double %i.j, f0x3C9CD2B297D889BC
  br i1 %i.ck, label %bb.g, label %bb.i

bb.g:                                             ; preds = %point_line_distance.exit30.i
  %i.cl = extractelement <2 x double> %i.cj, i64 0
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.h, double 0.000000e+00)
  %i.cn = extractelement <2 x double> %i.cj, i64 1
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.g, double %i.cm)
  %i.cp = fdiv double %i.co, %i.j                 ; 4 uses
  %i.cq = fcmp oge double %i.cp, 0.000000e+00
  %i.cr = fcmp ole double %i.cp, 1.000000e+00
  %or.cond.i33.i = and i1 %i.cq, %i.cr
  br i1 %or.cond.i33.i, label %.preheader.preheader.i36.i, label %bb.h

.preheader.preheader.i36.i:                       ; preds = %bb.g
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.h, double %i.e)
  %i.ct = fsub double %i.m, %i.cs                 ; 2 uses
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.ct, double 0.000000e+00)
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.g, double %i.f)
  %i.cw = fsub double %i.q, %i.cv                 ; 2 uses
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.cw, double %i.cu)
  %sqrt16.i = tail call double @llvm.sqrt.f64(double %i.cx)
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.cy = fsub <2 x double> %i.l, %i.a            ; 2 uses
  %i.cz = shufflevector <2 x double> %i.cj, <2 x double> %i.cy, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> %i.cz, <2 x double> zeroinitializer)
  %i.db = shufflevector <2 x double> %i.cj, <2 x double> %i.cy, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.db, <2 x double> %i.da)
  %i.dd = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.dc) ; 2 uses
  %i.de = extractelement <2 x double> %i.dd, i64 0 ; 2 uses
  %i.df = extractelement <2 x double> %i.dd, i64 1 ; 2 uses
  %i.dg = fcmp olt double %i.de, %i.df
  %i.dh = select i1 %i.dg, double %i.de, double %i.df
  br label %bb.j

bb.i:                                             ; preds = %point_line_distance.exit30.i
  %i.di = fsub <2 x double> %i.n, %i.d            ; 2 uses
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> %i.cj, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.dj, <2 x double> zeroinitializer)
  %i.dl = shufflevector <2 x double> %i.cj, <2 x double> %i.di, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.dl, <2 x double> %i.dk)
  %i.dn = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.dm)
  br label %line_segments_distance.exit

bb.j:                                             ; preds = %bb.h, %.preheader.preheader.i36.i
  %.054.i32.ph.i = phi double [ %i.dh, %bb.h ], [ %sqrt16.i, %.preheader.preheader.i36.i ] ; 2 uses
  %foldExtExtBinop143 = fsub <2 x double> %i.n, %i.d ; 2 uses
  %i.do = extractelement <2 x double> %foldExtExtBinop143, i64 0
  %i.dp = fsub double %i.o, %i.f                  ; 2 uses
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.do, double %i.h, double 0.000000e+00)
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.g, double %i.dq)
  %i.ds = fdiv double %i.dr, %i.j                 ; 4 uses
  %i.dt = fcmp oge double %i.ds, 0.000000e+00
  %i.du = fcmp ole double %i.ds, 1.000000e+00
  %or.cond.i40.i = and i1 %i.dt, %i.du
  br i1 %or.cond.i40.i, label %.preheader.preheader.i43.i, label %bb.k

.preheader.preheader.i43.i:                       ; preds = %bb.j
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.h, double %i.e)
  %i.dw = fsub double %i.p, %i.dv                 ; 2 uses
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.dw, double %i.dw, double 0.000000e+00)
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.g, double %i.f)
  %i.dz = fsub double %i.o, %i.dy                 ; 2 uses
  %i.ea = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.dz, double %i.dx)
  %sqrt17.i = tail call double @llvm.sqrt.f64(double %i.ea)
  %i.eb = insertelement <2 x double> poison, double %sqrt17.i, i64 0
  %i.ec = insertelement <2 x double> %i.eb, double %.054.i32.ph.i, i64 1
  br label %line_segments_distance.exit

bb.k:                                             ; preds = %bb.j
  %i.ed = fsub <2 x double> %i.n, %i.a            ; 2 uses
  %i.ee = shufflevector <2 x double> %foldExtExtBinop143, <2 x double> %i.ed, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ee, <2 x double> %i.ee, <2 x double> zeroinitializer)
  %i.eg = insertelement <2 x double> %i.ed, double %i.dp, i64 0 ; 2 uses
  %i.eh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.eg, <2 x double> %i.ef)
  %i.ei = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.eh) ; 2 uses
  %i.ej = extractelement <2 x double> %i.ei, i64 0 ; 2 uses
  %i.ek = extractelement <2 x double> %i.ei, i64 1 ; 2 uses
  %i.el = fcmp olt double %i.ej, %i.ek
  %i.em = select i1 %i.el, double %i.ej, double %i.ek
  %i.en = insertelement <2 x double> poison, double %i.em, i64 0
  %i.eo = insertelement <2 x double> %i.en, double %.054.i32.ph.i, i64 1
  br label %line_segments_distance.exit

line_segments_distance.exit:                      ; preds = %bb.i, %.preheader.preheader.i43.i, %bb.k
  %i.ep = phi <2 x double> [ %i.dn, %bb.i ], [ %i.ec, %.preheader.preheader.i43.i ], [ %i.eo, %bb.k ] ; 2 uses
  %i.eq = extractelement <2 x double> %i.ci, i64 0 ; 2 uses
  %i.er = extractelement <2 x double> %i.ci, i64 1 ; 2 uses
  %i.es = fcmp olt double %i.er, %i.eq
  %i.et = select i1 %i.es, double %i.er, double %i.eq ; 2 uses
  %i.eu = extractelement <2 x double> %i.ep, i64 0 ; 2 uses
  %i.ev = extractelement <2 x double> %i.ep, i64 1 ; 2 uses
  %i.ew = fcmp olt double %i.ev, %i.eu
  %i.ex = select i1 %i.ew, double %i.ev, double %i.eu ; 2 uses
  %i.ey = fcmp olt double %i.et, %i.ex
  %i.ez = select i1 %i.ey, double %i.et, double %i.ex
  %i.fa = fcmp ogt double %i.k, %i.ab
  %i.fb = select i1 %i.fa, double %i.k, double %i.ab
  %i.fc = fmul double %i.fb, 1.000000e-02
  %i.fd = fcmp ole double %i.ez, %i.fc            ; 2 uses
  %i.fe = extractelement <2 x double> %i.y, i64 1
  %i.ff = tail call double @llvm.fabs.f64(double %i.fe)
  %i.fg = fmul double %i.ab, f0x3F76C1646AE565A7
  %i.fh = fmul double %i.k, %i.fg
  %i.fi = fcmp ugt double %i.ff, %i.fh
  br i1 %i.fi, label %.preheader113.preheader, label %bb.l

.preheader113.preheader:                          ; preds = %line_segments_distance.exit
  %i.fj = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fk = insertelement <2 x double> poison, double %i.u, i64 0
  %i.fl = fneg <2 x double> %foldExtExtBinop
  %i.fm = shufflevector <2 x double> %i.fk, <2 x double> %i.fl, <2 x i32> <i32 0, i32 2>
  %i.fn = fmul <2 x double> %i.fj, %i.fm
  %i.fo = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fp = insertelement <2 x double> poison, double %i.s, i64 0
  %i.fq = insertelement <2 x double> %i.fp, double %i.g, i64 1
  %i.fr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> %i.fq, <2 x double> %i.fn)
  %i.fs = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ft = fdiv <2 x double> %i.fr, %i.fs
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.fv = fcmp ole <4 x double> %i.fu, <double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00>
  %i.fw = fcmp oge <4 x double> %i.fu, <double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00>
  %i.fx = shufflevector <4 x i1> %i.fv, <4 x i1> %i.fw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fy = bitcast <4 x i1> %i.fx to i4
  %i.fz = icmp eq i4 %i.fy, -1
  %or.cond7 = select i1 %i.fz, i1 true, i1 %i.fd
  br i1 %or.cond7, label %bb.m, label %bb.t

bb.l:                                             ; preds = %line_segments_distance.exit
  %. = select i1 %i.fd, double 1.000000e+00, double -2.000000e+00
  br label %bb.t

bb.m:                                             ; preds = %.preheader113.preheader
  %i.ga = fmul double %i.k, %i.ab                 ; 2 uses
  %i.gb = fcmp olt double %i.ga, f0x3C9CD2B297D889BC
  br i1 %i.gb, label %bb.t, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.m
  %i.gc = tail call double @llvm.fmuladd.f64(double %i.h, double %i.t, double 0.000000e+00)
  %i.gd = tail call double @llvm.fmuladd.f64(double %i.g, double %i.s, double %i.gc)
  %i.ge = fdiv double %i.gd, %i.ga                ; 5 uses
  %i.gf = fcmp oeq double %i.e, %i.m
  %i.gg = fcmp oeq double %i.f, %i.q
  %or.cond111 = and i1 %i.gf, %i.gg
  br i1 %or.cond111, label %bb.t, label %bb.n

bb.n:                                             ; preds = %.preheader.preheader
  %i.gh = fcmp oeq double %i.e, %i.p
  %i.gi = fcmp oeq double %i.f, %i.o
  %or.cond112 = and i1 %i.gh, %i.gi
  br i1 %or.cond112, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gj = fneg double %i.ge
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.gk = fcmp oeq double %i.c, %i.m
  %i.gl = fcmp oeq double %i.b, %i.q
  %or.cond136 = and i1 %i.gk, %i.gl
  br i1 %or.cond136, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gm = fneg double %i.ge
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.gn = fcmp oeq double %i.c, %i.p
  %i.go = fcmp oeq double %i.b, %i.o
  %or.cond137 = and i1 %i.gn, %i.go
  br i1 %or.cond137, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gp = tail call double @llvm.fabs.f64(double %i.ge)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %.preheader.preheader, %.preheader113.preheader, %bb.o, %bb.q, %bb.s, %bb.m, %bb.l
  %.192 = phi double [ %., %bb.l ], [ %i.ge, %bb.r ], [ %i.gp, %bb.s ], [ 0.000000e+00, %bb.m ], [ %i.gj, %bb.o ], [ %i.gm, %bb.q ], [ %i.ge, %.preheader.preheader ], [ -2.000000e+00, %.preheader113.preheader ]
  ret double %.192
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!8, !8, i64 0}
end_hunk_0
