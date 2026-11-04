Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/neatosplines?download=true
inline.NumInlined: 43
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@makeObstacle:bb.a
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !132 ; 2 uses
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = fcmp ogt double %i.ao, 0.000000e+00
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  %i.au = zext i1 %i.at to i64
  %i.av = add i64 %i.aq, %i.au                    ; 2 uses
  %.not = icmp eq i64 %i.av, 0
  %i.aw = add i64 %i.av, -1
  %i.ax = mul i64 %i.aw, %i.ah
  %i.ay = select i1 %.not, i64 0, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !133
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.ay
  %i.bc = load <2 x double>, ptr %1, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ah, ptr %i.bd, align 8, !tbaa !52
  %mul.ov.i = icmp ugt i64 %i.ah, 1152921504606846975
  br i1 %mul.ov.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.bf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.be, ptr noundef nonnull @.str.5, i64 noundef %i.ah, i64 noundef 16) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.j:                                             ; preds = %.thread, %bb.h
  %.0267353 = phi i64 [ %.0267.ph, %.thread ], [ %i.ah, %bb.h ] ; 16 uses
  %.0268352 = phi i1 [ %2, %.thread ], [ true, %bb.h ]
  %.0269351 = phi ptr [ %.0269.ph, %.thread ], [ %i.bb, %bb.h ] ; 13 uses
  %i.bg = phi <2 x double> [ zeroinitializer, %.thread ], [ %i.bc, %bb.h ] ; 10 uses
  %i.bh = call noalias ptr @calloc(i64 noundef %.0267353, i64 noundef 16) #16 ; 8 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.k, label %gv_calloc.exit

bb.k:                                             ; preds = %bb.j
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.bk = shl nuw i64 %.0267353, 4
  %i.bl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bj, ptr noundef nonnull @.str.6, i64 noundef %i.bk) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit:                                   ; preds = %bb.j
  store ptr %i.bh, ptr %i.b, align 8, !tbaa !53
  %i.bm = icmp eq i64 %.0267353, 4
  %i.bn = getelementptr [16 x i8], ptr %i.bh, i64 %.0267353 ; 12 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.0268352, label %gv_calloc.exit.split.us, label %gv_calloc.exit.split

gv_calloc.exit.split.us:                          ; preds = %gv_calloc.exit
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !134, !range !38, !noundef !55
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = fneg <2 x double> %i.bg                 ; 2 uses
  br i1 %i.bq, label %gv_calloc.exit.split.us.split.us, label %gv_calloc.exit.split.us.split

gv_calloc.exit.split.us.split.us:                 ; preds = %gv_calloc.exit.split.us
  br i1 %i.bm, label %gv_calloc.exit.split.us.split.us.split.us.1, label %gv_calloc.exit.split.us.split.us.split

gv_calloc.exit.split.us.split.us.split.us.1:      ; preds = %gv_calloc.exit.split.us.split.us
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = getelementptr i8, ptr %i.bn, i64 -16
  %i.bv = load <2 x double>, ptr %.0269351, align 8, !tbaa !14
  %i.bw = fadd <2 x double> %i.bg, %i.bv
  %i.bx = load <2 x double>, ptr %i.bt, align 8, !tbaa !14
  %i.by = fadd <2 x double> %i.bw, %i.bx
  store <2 x double> %i.by, ptr %i.bu, align 8, !tbaa !14
  %i.bz = shufflevector <2 x double> %i.br, <2 x double> %i.bg, <2 x i32> <i32 0, i32 3>
  %i.ca = getelementptr inbounds nuw i8, ptr %.0269351, i64 16
  %i.cb = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = getelementptr i8, ptr %i.bn, i64 -32
  %i.ce = load <2 x double>, ptr %i.ca, align 8, !tbaa !14
  %i.cf = fadd <2 x double> %i.bz, %i.ce
  %i.cg = load <2 x double>, ptr %i.cc, align 8, !tbaa !14
  %i.ch = fadd <2 x double> %i.cf, %i.cg
  store <2 x double> %i.ch, ptr %i.cd, align 8, !tbaa !14
  %i.ci = getelementptr inbounds nuw i8, ptr %.0269351, i64 32
  %i.cj = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = getelementptr i8, ptr %i.bn, i64 -48
  %i.cm = load <2 x double>, ptr %i.ci, align 8, !tbaa !14
  %i.cn = fsub <2 x double> %i.cm, %i.bg
  %i.co = load <2 x double>, ptr %i.ck, align 8, !tbaa !14
  %i.cp = fadd <2 x double> %i.cn, %i.co
  store <2 x double> %i.cp, ptr %i.cl, align 8, !tbaa !14
  %i.cq = shufflevector <2 x double> %i.bg, <2 x double> %i.br, <2 x i32> <i32 0, i32 3>
  %i.cr = getelementptr inbounds nuw i8, ptr %.0269351, i64 48
  %i.cs = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = getelementptr i8, ptr %i.bn, i64 -64
  %i.cv = load <2 x double>, ptr %i.cr, align 8, !tbaa !14
  %i.cw = fadd <2 x double> %i.cq, %i.cv
  %i.cx = load <2 x double>, ptr %i.ct, align 8, !tbaa !14
  %i.cy = fadd <2 x double> %i.cw, %i.cx
  store <2 x double> %i.cy, ptr %i.cu, align 8, !tbaa !14
  br label %.loopexit

gv_calloc.exit.split.us.split.us.split:           ; preds = %gv_calloc.exit.split.us.split.us
  %i.cz = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %gv_calloc.exit.split.us.split.us.split
  %.0270325.us.us = phi i64 [ 0, %gv_calloc.exit.split.us.split.us.split ], [ %i.dp, %bb.l ] ; 3 uses
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %.0269351, i64 %.0270325.us.us
  %i.dc = xor i64 %.0270325.us.us, -1
  %i.dd = getelementptr [16 x i8], ptr %i.bn, i64 %i.dc
  %i.de = load <2 x double>, ptr %i.db, align 8, !tbaa !14 ; 3 uses
  %i.df = extractelement <2 x double> %i.de, i64 0
  %i.dg = extractelement <2 x double> %i.de, i64 1
  %i.dh = call double @hypot(double noundef %i.df, double noundef %i.dg) #19
  %i.di = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dk = fdiv <2 x double> %i.bg, %i.dj
  %i.dl = fadd <2 x double> %i.dk, splat (double 1.000000e+00)
  %i.dm = fmul <2 x double> %i.de, %i.dl
  %i.dn = load <2 x double>, ptr %i.da, align 8, !tbaa !14
  %i.do = fadd <2 x double> %i.dm, %i.dn
  store <2 x double> %i.do, ptr %i.dd, align 8, !tbaa !14
  %i.dp = add nuw nsw i64 %.0270325.us.us, 1      ; 2 uses
  %exitcond332.not = icmp eq i64 %i.dp, %.0267353
  br i1 %exitcond332.not, label %.loopexit, label %bb.l, !llvm.loop !117

gv_calloc.exit.split.us.split:                    ; preds = %gv_calloc.exit.split.us
  %i.dq = load ptr, ptr %i.f, align 8, !tbaa !26  ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 40 ; 3 uses
  %min.iters.check = icmp ult i64 %.0267353, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %gv_calloc.exit.split.us.split
  %i.dt = add i64 %.0267353, -1                   ; 2 uses
  %i.du = shl i64 %.0267353, 4
  %i.dv = getelementptr i8, ptr %i.bh, i64 %i.du
  %scevgep = getelementptr i8, ptr %i.dv, i64 -16 ; 2 uses
  %mul.result.neg = mul i64 %i.dt, -16
  %mul.overflow = icmp ugt i64 %i.dt, 1152921504606846975
  %i.dw = getelementptr i8, ptr %scevgep, i64 %mul.result.neg
  %i.dx = icmp ugt ptr %i.dw, %scevgep
  %i.dy = or i1 %i.dx, %mul.overflow
  br i1 %i.dy, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.dz = shl i64 %.0267353, 4                    ; 2 uses
  %i.ea = add i64 %i.dz, -8                       ; 2 uses
  %i.eb = getelementptr i8, ptr %.0269351, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.bh, i64 %i.ea  ; 2 uses
  %i.ed = getelementptr i8, ptr %i.bh, i64 8      ; 2 uses
  %i.ee = getelementptr i8, ptr %.0269351, i64 8
  %i.ef = getelementptr i8, ptr %.0269351, i64 %i.dz
  %i.eg = getelementptr i8, ptr %i.dq, i64 48
  %bound0 = icmp ult ptr %.0269351, %i.ec
  %bound1 = icmp ult ptr %i.bh, %i.eb
  %found.conflict = and i1 %bound0, %bound1
  %bound0379 = icmp ult ptr %i.dr, %i.ec
  %bound1380 = icmp ult ptr %i.bh, %i.ds
  %found.conflict381 = and i1 %bound0379, %bound1380
  %conflict.rdx = or i1 %found.conflict, %found.conflict381
  %bound0382 = icmp ult ptr %i.ed, %i.ef
  %bound1383 = icmp ult ptr %i.ee, %i.bn
  %found.conflict384 = and i1 %bound0382, %bound1383
  %conflict.rdx385 = or i1 %conflict.rdx, %found.conflict384
  %bound0386 = icmp ult ptr %i.ed, %i.eg
  %bound1387 = icmp ult ptr %i.ds, %i.bn
  %found.conflict388 = and i1 %bound0386, %bound1387
  %conflict.rdx389 = or i1 %conflict.rdx385, %found.conflict388
  br i1 %conflict.rdx389, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0267353, 2305843009213693950 ; 3 uses
  %i.eh = shufflevector <2 x double> %i.bg, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %.0269351, i64 %index
  %wide.vec = load <4 x double>, ptr %i.ei, align 8, !tbaa !14
  %i.ej = load double, ptr %i.dr, align 8, !tbaa !56, !alias.scope !135, !noalias !136
  %broadcast.splatinsert393 = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.ek = xor i64 %index, -1
  %i.el = getelementptr [16 x i8], ptr %i.bn, i64 %i.ek
  %i.em = load double, ptr %i.ds, align 8, !tbaa !57, !alias.scope !137
  %broadcast.splatinsert395 = insertelement <2 x double> poison, double %i.em, i64 0
  %i.en = getelementptr inbounds i8, ptr %i.el, i64 -16
  %i.eo = shufflevector <4 x double> %wide.vec, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ep = fmul <4 x double> %i.eh, %i.eo
  %i.eq = shufflevector <2 x double> %broadcast.splatinsert393, <2 x double> %broadcast.splatinsert395, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %interleaved.vec = fadd <4 x double> %i.ep, %i.eq
  store <4 x double> %interleaved.vec, ptr %i.en, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0267353, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %gv_calloc.exit.split.us.split, %middle.block
  %.0270325.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %gv_calloc.exit.split.us.split ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.0270325.us.ph, 1
  %xtraiter = and i64 %.0267353, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %.0269351, i64 %.0270325.us.ph
  %i.et = xor i64 %.0270325.us.ph, -1
  %i.eu = getelementptr [16 x i8], ptr %i.bn, i64 %i.et
  %i.ev = load <2 x double>, ptr %i.es, align 8, !tbaa !14
  %i.ew = fmul <2 x double> %i.bg, %i.ev
  %i.ex = load <2 x double>, ptr %i.dr, align 8, !tbaa !14
  %i.ey = fadd <2 x double> %i.ew, %i.ex
  store <2 x double> %i.ey, ptr %i.eu, align 8, !tbaa !14
  %i.ez = or disjoint i64 %.0270325.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0270325.us.unr = phi i64 [ %.0270325.us.ph, %scalar.ph.preheader ], [ %i.ez, %scalar.ph.prol ]
  %i.fa = icmp eq i64 %.0267353, %.neg
  br i1 %i.fa, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0270325.us = phi i64 [ %i.fq, %scalar.ph ], [ %.0270325.us.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %.0269351, i64 %.0270325.us
  %i.fc = xor i64 %.0270325.us, -1
  %i.fd = getelementptr [16 x i8], ptr %i.bn, i64 %i.fc
  %i.fe = load <2 x double>, ptr %i.fb, align 8, !tbaa !14
  %i.ff = fmul <2 x double> %i.bg, %i.fe
  %i.fg = load <2 x double>, ptr %i.dr, align 8, !tbaa !14
  %i.fh = fadd <2 x double> %i.ff, %i.fg
  store <2 x double> %i.fh, ptr %i.fd, align 8, !tbaa !14
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %.0269351, i64 %.0270325.us
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = sub i64 -2, %.0270325.us
  %i.fl = getelementptr [16 x i8], ptr %i.bn, i64 %i.fk
  %i.fm = load <2 x double>, ptr %i.fj, align 8, !tbaa !14
  %i.fn = fmul <2 x double> %i.bg, %i.fm
  %i.fo = load <2 x double>, ptr %i.dr, align 8, !tbaa !14
  %i.fp = fadd <2 x double> %i.fn, %i.fo
  store <2 x double> %i.fp, ptr %i.fl, align 8, !tbaa !14
  %i.fq = add nuw nsw i64 %.0270325.us, 2         ; 2 uses
  %exitcond331.not.1 = icmp eq i64 %i.fq, %.0267353
  br i1 %exitcond331.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !123

gv_calloc.exit.split:                             ; preds = %gv_calloc.exit
  %i.fr = uitofp nneg i64 %.0267353 to double
  %i.fs = load ptr, ptr %i.f, align 8, !tbaa !26  ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 120
  %i.fu = load <2 x double>, ptr %i.ft, align 8, !tbaa !14
  %i.fv = fmul <2 x double> %i.fu, splat (double 7.200000e+01)
  %i.fw = load i8, ptr %i.bo, align 8, !tbaa !134, !range !38, !noundef !55
  %i.fx = trunc nuw i8 %i.fw to i1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.fz = insertelement <2 x double> poison, double %i.fr, i64 0
  %i.ga = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.m

bb.m:                                             ; preds = %gv_calloc.exit.split, %bb.o
  %.0270325 = phi i64 [ 0, %gv_calloc.exit.split ], [ %i.ik, %bb.o ] ; 3 uses
  br i1 %i.fx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.gb = load <2 x double>, ptr %1, align 8, !tbaa !14
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.gc = phi <2 x double> [ %i.gb, %bb.n ], [ zeroinitializer, %bb.m ]
  %i.gd = fadd <2 x double> %i.fv, %i.gc
  %i.ge = uitofp nneg i64 %.0270325 to double
  %i.gf = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.gg = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gh = fadd nnan <2 x double> %i.gg, <double -5.000000e-01, double 5.000000e-01>
  %i.gi = fmul nnan <2 x double> %i.gh, splat (double f0x401921FB54442D18)
  %i.gj = fdiv <2 x double> %i.gi, %i.ga          ; 2 uses
  %i.gk = extractelement <2 x double> %i.gj, i64 0 ; 2 uses
  %i.gl = call double @cos(double noundef %i.gk) #19
  %i.gm = fmul <2 x double> %i.gd, <double 5.000000e-01, double 1.000000e+00> ; 3 uses
  %i.gn = insertelement <2 x double> <double poison, double 5.000000e-01>, double %i.gl, i64 0
  %i.go = fmul <2 x double> %i.gn, %i.gm          ; 3 uses
  %i.gp = call double @sin(double noundef %i.gk) #19
  %i.gq = extractelement <2 x double> %i.gj, i64 1 ; 2 uses
  %i.gr = call double @cos(double noundef %i.gq) #19
  %i.gs = extractelement <2 x double> %i.gm, i64 0
  %i.gt = fmul double %i.gs, %i.gr                ; 2 uses
  %i.gu = call double @sin(double noundef %i.gq) #19
  %i.gv = extractelement <2 x double> %i.go, i64 0 ; 2 uses
  %i.gw = insertelement <2 x double> %i.go, double %i.gt, i64 1 ; 3 uses
  %i.gx = fneg <2 x double> %i.gw
  %i.gy = fmul <2 x double> %i.gw, %i.gx
  %i.gz = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ha = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gz, <2 x double> %i.gz, <2 x double> %i.gy) ; 2 uses
  %i.hb = extractelement <2 x double> %i.ha, i64 0
  %i.hc = call double @sqrt(double noundef %i.hb) #19
  %i.hd = extractelement <2 x double> %i.ha, i64 1
  %i.he = call double @sqrt(double noundef %i.hd) #19
  %i.hf = xor i64 %.0270325, -1
  %i.hg = getelementptr [16 x i8], ptr %i.bn, i64 %i.hf
  %i.hh = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hi = fmul <2 x double> %i.hh, %i.gw          ; 2 uses
  %i.hj = fneg <2 x double> %i.hi
  %i.hk = insertelement <2 x double> poison, double %i.hc, i64 0
  %i.hl = insertelement <2 x double> %i.hk, double %i.he, i64 1
  %i.hm = fmul <2 x double> %i.gz, %i.hl
  %i.hn = insertelement <2 x double> poison, double %i.gp, i64 0
  %i.ho = insertelement <2 x double> %i.hn, double %i.gu, i64 1
  %i.hp = fmul <2 x double> %i.hh, %i.ho          ; 3 uses
  %i.hq = fcmp oge <2 x double> %i.hp, zeroinitializer
  %i.hr = select <2 x i1> %i.hq, <2 x double> %i.hj, <2 x double> %i.hi
  %i.hs = fdiv <2 x double> %i.hr, %i.hm          ; 2 uses
  %i.ht = extractelement <2 x double> %i.hs, i64 1 ; 2 uses
  %i.hu = fneg double %i.ht
  %i.hv = extractelement <2 x double> %i.hp, i64 0 ; 2 uses
  %i.hw = fneg double %i.hv
  %i.hx = extractelement <2 x double> %i.hs, i64 0 ; 3 uses
  %i.hy = call double @llvm.fmuladd.f64(double %i.hx, double %i.gv, double %i.hw)
  %i.hz = call double @llvm.fmuladd.f64(double %i.hu, double %i.gt, double %i.hy)
  %i.ia = extractelement <2 x double> %i.hp, i64 1
  %i.ib = fadd double %i.ia, %i.hz
  %i.ic = fsub double %i.hx, %i.ht
  %i.id = fdiv double %i.ib, %i.ic                ; 2 uses
  %i.ie = fsub double %i.id, %i.gv
  %i.if = call double @llvm.fmuladd.f64(double %i.hx, double %i.ie, double %i.hv)
  %i.ig = load <2 x double>, ptr %i.fy, align 8, !tbaa !14
  %i.ih = insertelement <2 x double> poison, double %i.id, i64 0
  %i.ii = insertelement <2 x double> %i.ih, double %i.if, i64 1
  %i.ij = fadd <2 x double> %i.ii, %i.ig
  store <2 x double> %i.ij, ptr %i.hg, align 8, !tbaa !14
  %i.ik = add nuw nsw i64 %.0270325, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ik, %.0267353
  br i1 %exitcond.not, label %.loopexit, label %bb.m, !llvm.loop !117

bb.p:                                             ; preds = %bb.a
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !26 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !124
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = load <4 x double>, ptr %i.ip, align 8, !tbaa !14 ; 4 uses
  %i.ir = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef range(i64 8, 73) 16) #16 ; 5 uses
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %bb.q, label %gv_alloc.exit291

bb.q:                                             ; preds = %bb.p
  %i.it = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.iu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.it, ptr noundef nonnull @.str.6, i64 noundef 16) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_alloc.exit291:                                 ; preds = %bb.p
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i64 4, ptr %i.iv, align 8, !tbaa !52
  %i.iw = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 4, i64 noundef 16) #16 ; 10 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %bb.r, label %gv_calloc.exit292

bb.r:                                             ; preds = %gv_alloc.exit291
  %i.iy = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.iz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iy, ptr noundef nonnull @.str.6, i64 noundef 64) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit292:                                ; preds = %gv_alloc.exit291
  store ptr %i.iw, ptr %i.ir, align 8, !tbaa !53
  %i.ja = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  %i.jb = load <2 x double>, ptr %i.ja, align 8, !tbaa !14 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jd = load i8, ptr %i.jc, align 8, !tbaa !134, !range !38, !noundef !55
  %i.je = trunc nuw i8 %i.jd to i1
  br i1 %i.je, label %bb.s, label %bb.t

bb.s:                                             ; preds = %gv_calloc.exit292
  %i.jf = shufflevector <2 x double> %i.jb, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.jg = load <2 x double>, ptr %1, align 8, !tbaa !14
  %i.jh = shufflevector <2 x double> %i.jg, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ji = fsub <4 x double> %i.iq, %i.jh
  %i.jj = fadd <4 x double> %i.iq, %i.jh
  %i.jk = shufflevector <4 x double> %i.ji, <4 x double> %i.jj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jl = fadd <4 x double> %i.jf, %i.jk          ; 3 uses
  %i.jm = shufflevector <4 x double> %i.jl, <4 x double> poison, <6 x i32> <i32 0, i32 1, i32 0, i32 3, i32 2, i32 3>
  store <6 x double> %i.jm, ptr %i.iw, align 8, !tbaa !14
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iw, i64 48
  %i.jo = extractelement <4 x double> %i.jl, i64 2
  store double %i.jo, ptr %i.jn, align 8, !tbaa !14
  %i.jp = extractelement <4 x double> %i.jl, i64 1
  br label %.loopexit.sink.split

bb.t:                                             ; preds = %gv_calloc.exit292
  %i.jq = load <2 x double>, ptr %1, align 8, !tbaa !14
  %i.jr = shufflevector <4 x double> %i.iq, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.js = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jr, <2 x double> %i.jq, <2 x double> %i.jb) ; 3 uses
  store <2 x double> %i.js, ptr %i.iw, align 8, !tbaa !14
  %i.jt = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.ju = extractelement <2 x double> %i.js, i64 0
  store double %i.ju, ptr %i.jt, align 8, !tbaa !14
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.jv = load <2 x double>, ptr %1, align 8, !tbaa !14
  %i.jw = shufflevector <4 x double> %i.iq, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.jx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jw, <2 x double> %i.jv, <2 x double> %i.jb)
  %i.jy = shufflevector <2 x double> %i.jx, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  store <2 x double> %i.jy, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !14
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 40
  store <2 x double> %i.jy, ptr %.sroa.418.0..sroa_idx, align 8, !tbaa !14
  %i.jz = extractelement <2 x double> %i.js, i64 1
end_hunk_0
begin_hunk_1_@makeObstacle:bb.a
  %i.mh = insertelement <2 x double> poison, double %i.ks, i64 0
  %i.mi = insertelement <2 x double> %i.mh, double %i.mf, i64 1
  %i.mj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mi, <2 x double> %i.mg, <2 x double> %i.km)
  store <2 x double> %i.mj, ptr %i.kf, align 8, !tbaa !14
  %i.mk = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.ml = load double, ptr %i.kq, align 8, !tbaa !138
  %i.mm = fneg double %i.ml
  %i.mn = load double, ptr %i.md, align 8, !tbaa !139
  %i.mo = insertelement <2 x double> poison, double %i.mm, i64 0
  %i.mp = insertelement <2 x double> %i.mo, double %i.mn, i64 1
  %i.mq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mp, <2 x double> %i.mg, <2 x double> %i.km)
  store <2 x double> %i.mq, ptr %i.mk, align 8, !tbaa !14
  %i.mr = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  %i.ms = getelementptr inbounds nuw i8, ptr %i.kk, i64 112 ; 2 uses
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !140
  %i.mu = load double, ptr %i.md, align 8, !tbaa !139
  %i.mv = insertelement <2 x double> poison, double %i.mt, i64 0
  %i.mw = insertelement <2 x double> %i.mv, double %i.mu, i64 1
  %i.mx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mw, <2 x double> %i.mg, <2 x double> %i.km)
  store <2 x double> %i.mx, ptr %i.mr, align 8, !tbaa !14
  %i.my = getelementptr inbounds nuw i8, ptr %i.kf, i64 48
  %i.mz = load double, ptr %i.ms, align 8, !tbaa !140
  %i.na = load double, ptr %i.md, align 8, !tbaa !139
  %i.nb = fneg double %i.na
  %i.nc = insertelement <2 x double> poison, double %i.mz, i64 0
  %i.nd = insertelement <2 x double> %i.nc, double %i.nb, i64 1
  %i.ne = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nd, <2 x double> %i.mg, <2 x double> %i.km) ; 2 uses
  %i.nf = extractelement <2 x double> %i.ne, i64 0
  store double %i.nf, ptr %i.my, align 8, !tbaa !14
  %i.ng = extractelement <2 x double> %i.ne, i64 1
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.t, %bb.s, %bb.y, %bb.x
  %.sink358 = phi ptr [ %i.kf, %bb.x ], [ %i.kf, %bb.y ], [ %i.iw, %bb.s ], [ %i.iw, %bb.t ]
  %.sink = phi double [ %i.mc, %bb.x ], [ %i.ng, %bb.y ], [ %i.jp, %bb.s ], [ %i.jz, %bb.t ]
  %.0.ph = phi ptr [ %i.ka, %bb.x ], [ %i.ka, %bb.y ], [ %i.ir, %bb.s ], [ %i.ir, %bb.t ]
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink358, i64 56
  store double %.sink, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %scalar.ph.prol.loopexit, %scalar.ph, %bb.l, %gv_calloc.exit.split.us.split.us.split.us.1, %middle.block, %.loopexit.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.b, %bb.l ], [ %.0.ph, %.loopexit.sink.split ], [ %i.b, %middle.block ], [ %i.b, %gv_calloc.exit.split.us.split.us.split.us.1 ], [ %i.b, %scalar.ph.prol.loopexit ], [ %i.b, %scalar.ph ], [ %i.b, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @shapeOf(ptr noundef) local_unnamed_addr #5

declare void @polyBB(ptr dead_on_unwind writable sret(%struct.boxf) align 8, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare double @late_double(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define { ptr, i64 } @getPath(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.Ppoly_t, align 8            ; 3 uses
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = icmp eq i32 %i.b, 3
  %i.d = select i1 %i.c, i64 56, i64 120
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load <2 x double>, ptr %i.i, align 8
  %i.n = load <2 x double>, ptr %i.l, align 8
  %i.o = icmp eq i32 %i.b, 2
  %i.p = select i1 %i.o, i64 56, i64 -8
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.w = load <2 x double>, ptr %i.u, align 8
  %i.x = load <2 x double>, ptr %i.v, align 8
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 452
  %i.z = load i32, ptr %i.y, align 4, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 452
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !62
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.023 = phi i32 [ %i.ab, %bb.b ], [ -1111, %bb.a ]
  %.0 = phi i32 [ %i.z, %bb.b ], [ -1111, %bb.a ]
  %i.ac = fadd <2 x double> %i.w, %i.x            ; 2 uses
  %i.ad = fadd <2 x double> %i.m, %i.n            ; 2 uses
  %i.ae = extractelement <2 x double> %i.ac, i64 0
  %i.af = extractelement <2 x double> %i.ac, i64 1
  %i.ag = extractelement <2 x double> %i.ad, i64 0
  %i.ah = extractelement <2 x double> %i.ad, i64 1
  call void @Pobspath(ptr noundef %1, double %i.ag, double %i.ah, i32 noundef %.0, double %i.ae, double %i.af, i32 noundef %.023, ptr noundef nonnull %3) #19
  %.fca.0.load = load ptr, ptr %3, align 8
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare void @Pobspath(ptr noundef, double, double, i32 noundef, double, double, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @makeSpline(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %struct.Ppoly_t, align 8            ; 5 uses
  %5 = alloca [2 x %struct.pointf_s], align 16    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %.sroa.012.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !63 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !64 ; 2 uses
  %.sroa.01.0.copyload = load double, ptr %.sroa.012.0.copyload, align 8, !tbaa !14
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload, i64 8
  %.sroa.42.0.copyload = load double, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !14
  %i.d = getelementptr [16 x i8], ptr %.sroa.012.0.copyload, i64 %.sroa.6.0.copyload ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -16
  %.sroa.0.0.copyload = load double, ptr %i.e, align 8, !tbaa !14
  %.sroa.4.0..sroa_idx = getelementptr i8, ptr %i.d, i64 -8
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %i.f = icmp sgt i32 %2, 0                       ; 3 uses
  %or.cond = and i1 %3, %i.f
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %.047 = phi i32 [ -1111, %.lr.ph.preheader ], [ %.1, %bb.e ] ; 2 uses
  %.03946 = phi i32 [ -1111, %.lr.ph.preheader ], [ %.140, %bb.e ] ; 2 uses
  %i.g = icmp eq i32 %.03946, -1111
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = tail call zeroext i1 @in_poly(ptr %i.j, i64 %i.l, double %.sroa.01.0.copyload, double %.sroa.42.0.copyload) #19
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.m, i32 %i.n, i32 -1111
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.140 = phi i32 [ %.03946, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.o = icmp eq i32 %.047, -1111
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !66   ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = tail call zeroext i1 @in_poly(ptr %i.r, i64 %i.t, double %.sroa.0.0.copyload, double %.sroa.4.0.copyload) #19
  %i.v = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select43 = select i1 %i.u, i32 %i.v, i32 -1111
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %.047, %bb.c ], [ %spec.select43, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !141

.loopexit.loopexit:                               ; preds = %bb.e
  %i.w = zext i32 %.1 to i64
  %i.x = zext i32 %.140 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.241 = phi i64 [ 4294966185, %bb.a ], [ %i.x, %.loopexit.loopexit ] ; 4 uses
  %.2 = phi i64 [ 4294966185, %bb.a ], [ %i.w, %.loopexit.loopexit ] ; 4 uses
  br i1 %i.f, label %.lr.ph.preheader.i, label %.thread.i.i

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.y = icmp eq i32 %2, 1
  br i1 %i.y, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.h ] ; 5 uses
  %.04051.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %.141.i.1, %bb.h ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.h ]
  %i.z = icmp eq i64 %indvars.iv.i, %.241
  %i.aa = icmp eq i64 %indvars.iv.i, %.2
  %or.cond.i = or i1 %i.z, %i.aa
  br i1 %or.cond.i, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !52
  %i.af = add i64 %i.ae, %.04051.i
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.141.i = phi i64 [ %.04051.i, %.lr.ph.i ], [ %i.af, %bb.f ] ; 2 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.ag = icmp eq i64 %indvars.iv.next.i, %.241
  %i.ah = icmp eq i64 %indvars.iv.next.i, %.2
  %or.cond.i.1 = or i1 %i.ag, %i.ah
  br i1 %or.cond.i.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !66
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !52
  %i.am = add i64 %i.al, %.141.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.1
  %.141.i.1 = phi i64 [ %.141.i, %.lr.ph.i.1 ], [ %i.am, %bb.g ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !142

._crit_edge.i.unr-lcssa:                          ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 3 uses
  %.04051.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %.141.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %lcmp.mod55 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod55)
  %i.an = icmp eq i64 %indvars.iv.i.epil.init, %.241
  %i.ao = icmp eq i64 %indvars.iv.i.epil.init, %.2
  %or.cond.i.epil = or i1 %i.an, %i.ao
  br i1 %or.cond.i.epil, label %._crit_edge.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i.epil.init
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !52
  %i.at = add i64 %i.as, %.04051.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %bb.i, %._crit_edge.i.unr-lcssa
  %.141.i.lcssa = phi i64 [ %.141.i.1, %._crit_edge.i.unr-lcssa ], [ %.04051.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.at, %bb.i ] ; 6 uses
  %.not.i.i = icmp eq i64 %.141.i.lcssa, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.j

.thread.i.i:                                      ; preds = %._crit_edge.i, %.loopexit
  %i.au = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 32) #16
  br label %gv_calloc.exit.i

bb.j:                                             ; preds = %._crit_edge.i
  %mul.ov.i.i = icmp ugt i64 %.141.i.lcssa, 576460752303423487
  br i1 %mul.ov.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.aw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.5, i64 noundef %.141.i.lcssa, i64 noundef 32) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ax = tail call noalias ptr @calloc(i64 noundef %.141.i.lcssa, i64 noundef 32) #16 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.m, label %gv_calloc.exit.i

bb.m:                                             ; preds = %bb.l
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ba = shl nuw i64 %.141.i.lcssa, 5
  %i.bb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.az, ptr noundef nonnull @.str.6, i64 noundef %i.ba) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit.i:                                 ; preds = %bb.l, %.thread.i.i
  %.040.lcssa73.i = phi i64 [ 0, %.thread.i.i ], [ %.141.i.lcssa, %bb.l ]
  %i.bc = phi ptr [ %i.au, %.thread.i.i ], [ %i.ax, %bb.l ] ; 3 uses
  br i1 %i.f, label %.lr.ph58.preheader.i, label %make_barriers.exit

.lr.ph58.preheader.i:                             ; preds = %gv_calloc.exit.i
  %wide.trip.count67.i = zext nneg i32 %2 to i64
  br label %.lr.ph58.i

.lr.ph58.i:                                       ; preds = %.loopexit.i, %.lr.ph58.preheader.i
  %indvars.iv64.i = phi i64 [ 0, %.lr.ph58.preheader.i ], [ %indvars.iv.next65.i, %.loopexit.i ] ; 4 uses
  %.057.i = phi i64 [ 0, %.lr.ph58.preheader.i ], [ %.2.i, %.loopexit.i ] ; 3 uses
  %i.bd = icmp eq i64 %indvars.iv64.i, %.241
  %i.be = icmp eq i64 %indvars.iv64.i, %.2
  %or.cond49.i = or i1 %i.bd, %i.be
  br i1 %or.cond49.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph58.i
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv64.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !66 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !52 ; 2 uses
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph54.preheader.i, label %.loopexit.i

.lr.ph54.preheader.i:                             ; preds = %.preheader.i
  %.pre.i = load ptr, ptr %i.bg, align 8, !tbaa !53 ; 2 uses
  %i.bl = and i64 %i.bi, 2147483647               ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  br label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %.lr.ph54.i, %.lr.ph54.preheader.i
  %indvars.iv61.i = phi i64 [ 0, %.lr.ph54.preheader.i ], [ %indvars.iv.next62.i, %.lr.ph54.i ] ; 2 uses
  %.153.i = phi i64 [ %.057.i, %.lr.ph54.preheader.i ], [ %i.br, %.lr.ph54.i ] ; 2 uses
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1 ; 4 uses
  %.not.i = icmp samesign ult i64 %indvars.iv.next62.i, %i.bl
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %.153.i ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %indvars.iv61.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !145
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bp = select i1 %.not.i, i64 %indvars.iv.next62.i, i64 0
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.bp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !145
  %i.br = add i64 %.153.i, 1                      ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next62.i, %umax
  br i1 %exitcond50.not, label %.loopexit.i, label %.lr.ph54.i, !llvm.loop !143

.loopexit.i:                                      ; preds = %.lr.ph54.i, %.preheader.i, %.lr.ph58.i
  %.2.i = phi i64 [ %.057.i, %.lr.ph58.i ], [ %.057.i, %.preheader.i ], [ %i.br, %.lr.ph54.i ]
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, %wide.trip.count67.i
  br i1 %exitcond68.not.i, label %make_barriers.exit, label %.lr.ph58.i, !llvm.loop !144

make_barriers.exit:                               ; preds = %.loopexit.i, %gv_calloc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.bs = call i32 @Proutespline(ptr noundef %i.bc, i64 noundef %.040.lcssa73.i, ptr nonnull %.sroa.012.0.copyload, i64 %.sroa.6.0.copyload, ptr noundef nonnull %5, ptr noundef nonnull %4) #19
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %make_barriers.exit
  %i.bu = load i32, ptr %0, align 8
  %i.bv = and i32 %i.bu, 3
  %i.bw = icmp eq i32 %i.bv, 3
  %i.bx = select i1 %i.bw, i64 56, i64 120
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !41
  %i.ca = call ptr @agnameof(ptr noundef %i.bz) #19
  %i.cb = load i32, ptr %0, align 8
  %i.cc = and i32 %i.cb, 3
  %i.cd = icmp eq i32 %i.cc, 2
  %i.ce = select i1 %i.cd, i64 56, i64 -8
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !41
  %i.ch = call ptr @agnameof(ptr noundef %i.cg) #19
  call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.2, ptr noundef %i.ca, ptr noundef %i.ch) #19
  br label %bb.r

bb.o:                                             ; preds = %make_barriers.exit
  %i.ci = load i8, ptr @Verbose, align 1, !tbaa !67
  %i.cj = icmp ugt i8 %i.ci, 1
  br i1 %i.cj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ck = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.cl = load i32, ptr %0, align 8
  %i.cm = and i32 %i.cl, 3
  %i.cn = icmp eq i32 %i.cm, 3
  %i.co = select i1 %i.cn, i64 56, i64 120
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !41
  %i.cr = call ptr @agnameof(ptr noundef %i.cq) #19
  %i.cs = load i32, ptr %0, align 8
  %i.ct = and i32 %i.cs, 3
  %i.cu = icmp eq i32 %i.ct, 2
  %i.cv = select i1 %i.cu, i64 56, i64 -8
  %i.cw = getelementptr inbounds i8, ptr %0, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !41
  %i.cy = call ptr @agnameof(ptr noundef %i.cx) #19
  %i.cz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ck, ptr noundef nonnull @.str.3, ptr noundef %i.cr, ptr noundef %i.cy) #17 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.da = load i32, ptr %0, align 8
  %i.db = and i32 %i.da, 3
  %i.dc = icmp eq i32 %i.db, 2
  %i.dd = select i1 %i.dc, i64 56, i64 -8
  %i.de = getelementptr inbounds i8, ptr %0, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !41
  %i.dg = load ptr, ptr %4, align 8, !tbaa !53
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !52
  call void @clip_and_install(ptr noundef nonnull %0, ptr noundef %i.df, ptr noundef %i.dg, i64 noundef %i.di, ptr noundef nonnull @sinfo) #19
  call void @free(ptr noundef %i.bc) #19
  call void @addEdgeLabels(ptr noundef nonnull %0) #19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void
}

declare zeroext i1 @in_poly(ptr, i64, double, double) local_unnamed_addr #5

declare i32 @Proutespline(ptr noundef, i64 noundef, ptr, i64, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @agerrorf(ptr noundef, ...) local_unnamed_addr #5

declare ptr @agnameof(ptr noundef) local_unnamed_addr #5

declare void @clip_and_install(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare void @addEdgeLabels(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @splineEdges(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.edgeitem, align 8           ; 8 uses
  %4 = alloca %struct.expand_t, align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @esepFactor(ptr dead_on_unwind nonnull writable sret(%struct.expand_t) align 8 %4, ptr noundef %0) #19
  %i.a = call ptr @agfstnode(ptr noundef %0) #19  ; 2 uses
  %.not47 = icmp eq ptr %i.a, null
  br i1 %.not47, label %._crit_edge51, label %.lr.ph50

.lr.ph50:                                         ; preds = %bb.a, %._crit_edge
  %.03548 = phi ptr [ %i.d, %._crit_edge ], [ %i.a, %bb.a ] ; 2 uses
  %i.b = call ptr @agfstout(ptr noundef %0, ptr noundef nonnull %.03548) #19 ; 2 uses
end_hunk_1
begin_hunk_2_@spline_edges_:bb.a
  call void @makeSelfArcs(ptr noundef nonnull %.1110163, i32 noundef %i.dn)
  br label %.loopexit

bb.ae:                                            ; preds = %bb.ac
  br i1 %.not130, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.do = load i8, ptr @Concentrate, align 1, !tbaa !164, !range !38, !noundef !55
  %i.dp = trunc nuw i8 %i.do to i1
  %spec.store.select = select i1 %i.dp, i32 1, i32 %i.dg ; 3 uses
  %i.dq = icmp sgt i32 %spec.store.select, 0
  br i1 %i.dq, label %.lr.ph161, label %.loopexit

.lr.ph161:                                        ; preds = %bb.af
  br i1 %i.cc, label %.lr.ph161.split.us, label %.lr.ph161.split

.lr.ph161.split.us:                               ; preds = %.lr.ph161, %.lr.ph161.split.us
  %.0111159.us = phi ptr [ %i.du, %.lr.ph161.split.us ], [ %.1110163, %.lr.ph161 ] ; 2 uses
  %.3158.us = phi i32 [ %i.dv, %.lr.ph161.split.us ], [ 0, %.lr.ph161 ]
  call void @makeSpline(ptr noundef %.0111159.us, ptr noundef %.0112143, i32 noundef %.2118142, i1 noundef zeroext true)
  %i.dr = getelementptr inbounds nuw i8, ptr %.0111159.us, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !26
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 232
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !42
  %i.dv = add nuw nsw i32 %.3158.us, 1            ; 2 uses
  %exitcond178.not = icmp eq i32 %i.dv, %spec.store.select
  br i1 %exitcond178.not, label %.loopexit, label %.lr.ph161.split.us, !llvm.loop !159

.lr.ph161.split:                                  ; preds = %.lr.ph161, %makePolyline.exit
  %.0111159 = phi ptr [ %i.fb, %makePolyline.exit ], [ %.1110163, %.lr.ph161 ] ; 9 uses
  %.3158 = phi i32 [ %i.fc, %makePolyline.exit ], [ 0, %.lr.ph161 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.dw = getelementptr inbounds nuw i8, ptr %.0111159, i64 16 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !26 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 192
  %.sroa.0.0.copyload.i = load ptr, ptr %i.dy, align 8, !tbaa !63
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 200
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !64
  call void @make_polyline(ptr %.sroa.0.0.copyload.i, i64 %.sroa.4.0.copyload.i, ptr noundef nonnull %3) #19
  %i.dz = load i8, ptr @Verbose, align 1, !tbaa !67
  %i.ea = icmp ugt i8 %i.dz, 1
  br i1 %i.ea, label %bb.ag, label %makePolyline.exit

bb.ag:                                            ; preds = %.lr.ph161.split
  %i.eb = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ec = load i32, ptr %.0111159, align 8
  %i.ed = and i32 %i.ec, 3
  %i.ee = icmp eq i32 %i.ed, 3
  %i.ef = select i1 %i.ee, i64 56, i64 120
  %i.eg = getelementptr inbounds nuw i8, ptr %.0111159, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !41
  %i.ei = call ptr @agnameof(ptr noundef %i.eh) #19
  %i.ej = load i32, ptr %.0111159, align 8
  %i.ek = and i32 %i.ej, 3
  %i.el = icmp eq i32 %i.ek, 2
  %i.em = select i1 %i.el, i64 56, i64 -8
  %i.en = getelementptr inbounds i8, ptr %.0111159, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !41
  %i.ep = call ptr @agnameof(ptr noundef %i.eo) #19
  %i.eq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eb, ptr noundef nonnull @.str.15, ptr noundef %i.ei, ptr noundef %i.ep) #17 ; 0 uses
  br label %makePolyline.exit

makePolyline.exit:                                ; preds = %.lr.ph161.split, %bb.ag
  %i.er = load i32, ptr %.0111159, align 8
  %i.es = and i32 %i.er, 3
  %i.et = icmp eq i32 %i.es, 2
  %i.eu = select i1 %i.et, i64 56, i64 -8
  %i.ev = getelementptr inbounds i8, ptr %.0111159, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !41
  %i.ex = load ptr, ptr %3, align 8, !tbaa !53
  %i.ey = load i64, ptr %i.cd, align 8, !tbaa !52
  call void @clip_and_install(ptr noundef nonnull %.0111159, ptr noundef %i.ew, ptr noundef %i.ex, i64 noundef %i.ey, ptr noundef nonnull @sinfo) #19
  call void @addEdgeLabels(ptr noundef nonnull %.0111159) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ez = load ptr, ptr %i.dw, align 8, !tbaa !26
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 232
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !42
  %i.fc = add nuw nsw i32 %.3158, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fc, %spec.store.select
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph161.split, !llvm.loop !159

bb.ah:                                            ; preds = %bb.ae
  call void @makeStraightEdge(ptr noundef %0, ptr noundef nonnull %.1110163, i32 noundef %2, ptr noundef nonnull @sinfo) #19
  br label %.loopexit

.loopexit:                                        ; preds = %makePolyline.exit, %.lr.ph161.split.us, %bb.af, %bb.ab, %bb.y, %bb.ad, %bb.ah, %bb.z, %.lr.ph167._crit_edge
  %i.fd = call ptr @agnxtout(ptr noundef %0, ptr noundef nonnull %.1110163) #19 ; 2 uses
  %.not133 = icmp eq ptr %i.fd, null
  br i1 %.not133, label %._crit_edge168, label %.lr.ph167, !llvm.loop !160

._crit_edge168:                                   ; preds = %.loopexit, %bb.w
  %i.fe = call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.2170) #19 ; 2 uses
  %.not132 = icmp eq ptr %i.fe, null
  br i1 %.not132, label %._crit_edge173, label %bb.w, !llvm.loop !161

._crit_edge173:                                   ; preds = %._crit_edge168, %.loopexit145
  br i1 %.not130, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge173
  call void @Pobsclose(ptr noundef nonnull %.0115) #19
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge173
  br i1 %.not125144, label %bb.ak, label %.preheader

.preheader:                                       ; preds = %bb.aj
  %i.ff = icmp sgt i32 %.2118142, 0
  br i1 %i.ff, label %.lr.ph175.preheader, label %._crit_edge176

.lr.ph175.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %.2118142 to i64
  br label %.lr.ph175

.lr.ph175:                                        ; preds = %.lr.ph175.preheader, %.lr.ph175
  %indvars.iv = phi i64 [ 0, %.lr.ph175.preheader ], [ %indvars.iv.next, %.lr.ph175 ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.0112143, i64 %indvars.iv ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !66
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !53
  call void @free(ptr noundef %i.fi) #19
  %i.fj = load ptr, ptr %i.fg, align 8, !tbaa !66
  call void @free(ptr noundef %i.fj) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond180.not, label %._crit_edge176, label %.lr.ph175, !llvm.loop !162

._crit_edge176:                                   ; preds = %.lr.ph175, %.preheader
  call void @free(ptr noundef %.0112143) #19
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge176, %bb.aj
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @spline_edges0(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = load i16, ptr %i.c, align 8, !tbaa !93
  %i.e = and i16 %i.d, 14                         ; 2 uses
  %i.f = zext nneg i16 %i.e to i32
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 @neato_set_aspect(ptr noundef nonnull %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = icmp eq i16 %i.e, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call range(i32 0, 2) i32 @splineEdges(ptr noundef nonnull %0, ptr noundef nonnull @spline_edges_, i32 noundef %i.f) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @neato_set_aspect(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %.not.i = icmp eq ptr %i.b, %0
  br i1 %.not.i, label %bb.b, label %_neato_set_aspect.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !174
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.h = load i32, ptr %i.g, align 4, !tbaa !176
  %.not102.i = icmp eq i32 %i.h, 0
  br i1 %.not102.i, label %_neato_set_aspect.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = load double, ptr %i.i, align 8, !tbaa !177
  %i.k = fcmp une double %i.j, 0.000000e+00
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.m = load double, ptr %i.l, align 8, !tbaa !178
  %i.n = fcmp une double %i.m, 0.000000e+00
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @neato_translate(ptr noundef nonnull %0)
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ %.pre.i, %bb.e ], [ %i.d, %bb.d ] ; 7 uses
  %.084.i = phi i1 [ true, %bb.e ], [ false, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 132
  %i.q = load i32, ptr %i.p, align 4, !tbaa !179
  %1 = and i32 %i.q, 1
  %.not103.i = icmp eq i32 %1, 0                  ; 2 uses
  br i1 %.not103.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.s = load <2 x double>, ptr %i.r, align 8
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.t, ptr %i.r, align 8, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !174  ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 84
  %i.x = load i32, ptr %i.w, align 4, !tbaa !176
  switch i32 %i.x, label %_neato_set_aspect.exit [
    i32 2, label %bb.i
    i32 5, label %bb.n
    i32 1, label %bb.q
  ]

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 64 ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !180
  %i.aa = fcmp ugt double %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.j, label %_neato_set_aspect.exit

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ac = load <2 x double>, ptr %i.y, align 8, !tbaa !14
  %i.ad = load <2 x double>, ptr %i.ab, align 8, !tbaa !14
  %i.ae = fdiv <2 x double> %i.ac, %i.ad          ; 3 uses
  %i.af = extractelement <2 x double> %i.ae, i64 0 ; 4 uses
  %i.ag = fcmp olt double %i.af, 1.000000e+00
  %i.ah = extractelement <2 x double> %i.ae, i64 1 ; 4 uses
  %i.ai = fcmp olt double %i.ah, 1.000000e+00
  %or.cond.i = select i1 %i.ag, i1 true, i1 %i.ai
  br i1 %or.cond.i, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.aj = fcmp olt double %i.af, %i.ah
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = fdiv double %i.ah, %i.af
  %i.al = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.ak, i64 1
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.am = fdiv double %i.af, %i.ah
  %i.an = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.am, i64 0
  br label %bb.t

bb.n:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 64 ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !180
  %i.aq = fcmp ugt double %i.ap, 0.000000e+00
  br i1 %i.aq, label %bb.o, label %_neato_set_aspect.exit

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.as = load <2 x double>, ptr %i.ao, align 8, !tbaa !14
  %i.at = load <2 x double>, ptr %i.ar, align 8, !tbaa !14
  %i.au = fdiv <2 x double> %i.as, %i.at          ; 3 uses
  %i.av = fcmp ogt <2 x double> %i.au, splat (double 1.000000e+00) ; 2 uses
  %i.aw = extractelement <2 x i1> %i.av, i64 0
  %i.ax = extractelement <2 x i1> %i.av, i64 1
  %or.cond3.i = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond3.i, label %bb.p, label %_neato_set_aspect.exit

bb.p:                                             ; preds = %bb.o
  %i.ay = extractelement <2 x double> %i.au, i64 0
  %i.az = extractelement <2 x double> %i.au, i64 1
  %i.ba = tail call nsz double @llvm.minnum.f64(double %i.ay, double %i.az)
  %i.bb = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.t

bb.q:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.be = load double, ptr %i.bd, align 8, !tbaa !181 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !182
  %i.bi = load double, ptr %i.bf, align 8, !tbaa !183
  %i.bj = fdiv double %i.bh, %i.bi                ; 3 uses
  %i.bk = fcmp olt double %i.bj, %i.be
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bl = fdiv double %i.be, %i.bj
  %i.bm = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.bl, i64 1
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bn = fdiv double %i.bj, %i.be
  %i.bo = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.bn, i64 0
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.p, %bb.m, %bb.l, %bb.j
  %i.bp = phi <2 x double> [ %i.al, %bb.l ], [ %i.an, %bb.m ], [ %i.ae, %bb.j ], [ %i.bc, %bb.p ], [ %i.bm, %bb.r ], [ %i.bo, %bb.s ] ; 2 uses
  %i.bq = insertelement <2 x i1> poison, i1 %.not103.i, i64 0
  %i.br = shufflevector <2 x i1> %i.bq, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bs = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bt = select <2 x i1> %i.br, <2 x double> %i.bp, <2 x double> %i.bs ; 11 uses
  %i.bu = load i32, ptr @Nop, align 4, !tbaa !68
  %i.bv = icmp sgt i32 %i.bu, 1
  br i1 %i.bv, label %bb.u, label %.loopexit.i

bb.u:                                             ; preds = %bb.t
  %i.bw = tail call ptr @agfstnode(ptr noundef nonnull %0) #19 ; 2 uses
  %.not105111.i = icmp eq ptr %i.bw, null
  br i1 %.not105111.i, label %.loopexit.i, label %.lr.ph114.i

.lr.ph114.i:                                      ; preds = %bb.u
  %i.bx = fadd <2 x double> %i.bt, splat (double -1.000000e+00) ; 2 uses
  %broadcast.splat57.a = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat59 = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat41 = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat43 = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.i, %.lr.ph114.i
  %.085112.i = phi ptr [ %i.bw, %.lr.ph114.i ], [ %i.gp, %._crit_edge.i ] ; 2 uses
  %i.by = tail call ptr @agfstout(ptr noundef nonnull %0, ptr noundef nonnull %.085112.i) #19 ; 2 uses
  %.not107109.i = icmp eq ptr %i.by, null
  br i1 %.not107109.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %scaleEdge.exit.i
  %.0110.i = phi ptr [ %i.go, %scaleEdge.exit.i ], [ %i.by, %bb.v ] ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0110.i, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !26 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !69 ; 3 uses
  %.not108.i = icmp eq ptr %i.cc, null
  br i1 %.not108.i, label %scaleEdge.exit.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  %i.cd = load i32, ptr %.0110.i, align 8
  %i.ce = and i32 %i.cd, 3                        ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 2
  %i.cg = select i1 %i.cf, i64 56, i64 -8
  %i.ch = getelementptr inbounds i8, ptr %.0110.i, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !26
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 176
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !94
  %i.cn = load <2 x double>, ptr %i.cm, align 8, !tbaa !14
  %i.co = fmul <2 x double> %i.bx, %i.cn
  %i.cp = fmul <2 x double> %i.co, splat (double 7.200000e+01) ; 5 uses
  %i.cq = icmp eq i32 %i.ce, 3
  %i.cr = select i1 %i.cq, i64 56, i64 120
  %i.cs = getelementptr inbounds nuw i8, ptr %.0110.i, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !41
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !26
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 176
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !94
  %i.cy = load <2 x double>, ptr %i.cx, align 8, !tbaa !14
  %i.cz = fmul <2 x double> %i.bx, %i.cy
  %i.da = fmul <2 x double> %i.cz, splat (double 7.200000e+01) ; 9 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !73 ; 3 uses
  %.not91.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not91.i.i, label %._crit_edge90.i.i, label %.lr.ph89.i.i

.lr.ph89.i.i:                                     ; preds = %bb.w
  %i.dd = load ptr, ptr %i.cc, align 8, !tbaa !74
  %i.de = add i64 %i.dc, -1
  %broadcast.splat53 = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat55 = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat37 = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat39 = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.x

._crit_edge90.i.i:                                ; preds = %bb.ac, %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %i.ca, i64 120
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !39 ; 3 uses
  %.not.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i, label %bb.af, label %bb.ad

bb.x:                                             ; preds = %bb.ac, %.lr.ph89.i.i
  %.07086.i.i = phi i64 [ 0, %.lr.ph89.i.i ], [ %i.fr, %bb.ac ] ; 7 uses
  %.07185.i.i = phi ptr [ %i.dd, %.lr.ph89.i.i ], [ %i.fq, %bb.ac ] ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.07185.i.i, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !76 ; 8 uses
  %.not92.i.i = icmp eq i64 %i.di, 0
  br i1 %.not92.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x
  %i.dj = load ptr, ptr %.07185.i.i, align 8, !tbaa !77 ; 8 uses
  %i.dk = icmp eq i64 %.07086.i.i, %i.de
  %.fr.i.i = freeze i1 %i.dk
  %.not104.i.i = icmp eq i64 %i.di, 1             ; 2 uses
  br i1 %.fr.i.i, label %.lr.ph.split.preheader.i.i, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %.lr.ph.i.i
  br i1 %.not104.i.i, label %.lr.ph.split.us.i.i.preheader74, label %vector.ph48

vector.ph48:                                      ; preds = %.lr.ph.split.us.i.i.preheader
  %n.vec49 = and i64 %i.di, -2                    ; 4 uses
  %i.dl = shl i64 %n.vec49, 4
  %i.dm = getelementptr i8, ptr %i.dj, i64 %i.dl
  %broadcast.splatinsert50 = insertelement <2 x i64> poison, i64 %.07086.i.i, i64 0
  %broadcast.splat51 = shufflevector <2 x i64> %broadcast.splatinsert50, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body60

vector.body60:                                    ; preds = %vector.body60, %vector.ph48
  %index61 = phi i64 [ 0, %vector.ph48 ], [ %index.next68, %vector.body60 ] ; 2 uses
  %vec.ind62 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph48 ], [ %vec.ind.next69, %vector.body60 ] ; 2 uses
  %i.dn = shl i64 %index61, 4
  %next.gep63 = getelementptr i8, ptr %i.dj, i64 %i.dn ; 2 uses
  %i.do = or <2 x i64> %vec.ind62, %broadcast.splat51
  %i.dp = icmp eq <2 x i64> %i.do, zeroinitializer ; 2 uses
  %wide.vec64 = load <4 x double>, ptr %next.gep63, align 8, !tbaa !14 ; 2 uses
  %strided.vec65 = shufflevector <4 x double> %wide.vec64, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec66 = shufflevector <4 x double> %wide.vec64, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dq = fadd <2 x double> %broadcast.splat53, %strided.vec65
  %i.dr = fadd <2 x double> %broadcast.splat55, %strided.vec66
  %i.ds = fmul <2 x double> %broadcast.splat57.a, %strided.vec65
  %i.dt = fmul <2 x double> %broadcast.splat59, %strided.vec66
  %i.du = select <2 x i1> %i.dp, <2 x double> %i.dq, <2 x double> %i.ds
  %i.dv = select <2 x i1> %i.dp, <2 x double> %i.dr, <2 x double> %i.dt
  %interleaved.vec67 = shufflevector <2 x double> %i.du, <2 x double> %i.dv, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec67, ptr %next.gep63, align 8, !tbaa !14
  %index.next68 = add nuw i64 %index61, 2         ; 2 uses
  %vec.ind.next69 = add nuw <2 x i64> %vec.ind62, splat (i64 2)
  %i.dw = icmp eq i64 %index.next68, %n.vec49
  br i1 %i.dw, label %middle.block70, label %vector.body60, !llvm.loop !165

middle.block70:                                   ; preds = %vector.body60
  %cmp.n71 = icmp eq i64 %i.di, %n.vec49
  br i1 %cmp.n71, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i.preheader74

.lr.ph.split.us.i.i.preheader74:                  ; preds = %.lr.ph.split.us.i.i.preheader, %middle.block70
  %.084.us.i.i.ph = phi i64 [ 0, %.lr.ph.split.us.i.i.preheader ], [ %n.vec49, %middle.block70 ]
  %.07283.us.i.i.ph = phi ptr [ %i.dj, %.lr.ph.split.us.i.i.preheader ], [ %i.dm, %middle.block70 ]
  br label %.lr.ph.split.us.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.lr.ph.i.i
  br i1 %.not104.i.i, label %._crit_edge.loopexit.peel.begin.thread.i.i, label %.lr.ph.split.preheader.split.i.i

.lr.ph.split.preheader.split.i.i:                 ; preds = %.lr.ph.split.preheader.i.i
  %i.dx = add i64 %i.di, -2
  %i.dy = add i64 %i.di, -1                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.di, 3
  br i1 %min.iters.check, label %.lr.ph.split.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader.split.i.i
  %n.vec = and i64 %i.dy, -2                      ; 4 uses
  %i.dz = shl i64 %n.vec, 4
  %i.ea = getelementptr i8, ptr %i.dj, i64 %i.dz  ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.07086.i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.eb = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.dj, i64 %i.eb ; 2 uses
  %i.ec = or <2 x i64> %vec.ind, %broadcast.splat
  %i.ed = icmp eq <2 x i64> %i.ec, zeroinitializer ; 2 uses
  %wide.vec = load <4 x double>, ptr %next.gep, align 8, !tbaa !14 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec44 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ee = fadd <2 x double> %broadcast.splat37, %strided.vec
  %i.ef = fadd <2 x double> %broadcast.splat39, %strided.vec44
  %i.eg = fmul <2 x double> %broadcast.splat41, %strided.vec
  %i.eh = fmul <2 x double> %broadcast.splat43, %strided.vec44
  %i.ei = select <2 x i1> %i.ed, <2 x double> %i.ee, <2 x double> %i.eg
  %i.ej = select <2 x i1> %i.ed, <2 x double> %i.ef, <2 x double> %i.eh
  %interleaved.vec = shufflevector <2 x double> %i.ei, <2 x double> %i.ej, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %next.gep, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !166

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dy, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.sink.split.i, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.split.preheader.split.i.i, %middle.block
  %.084.i.i.ph = phi i64 [ 0, %.lr.ph.split.preheader.split.i.i ], [ %n.vec, %middle.block ]
  %.07283.i.i.ph = phi ptr [ %i.dj, %.lr.ph.split.preheader.split.i.i ], [ %i.ea, %middle.block ]
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.preheader74, %.lr.ph.split.us.i.i
  %.084.us.i.i = phi i64 [ %i.et, %.lr.ph.split.us.i.i ], [ %.084.us.i.i.ph, %.lr.ph.split.us.i.i.preheader74 ] ; 2 uses
  %.07283.us.i.i = phi ptr [ %i.es, %.lr.ph.split.us.i.i ], [ %.07283.us.i.i.ph, %.lr.ph.split.us.i.i.preheader74 ] ; 3 uses
  %i.el = or i64 %.084.us.i.i, %.07086.i.i
  %or.cond.us.i.i = icmp eq i64 %i.el, 0
  %i.em = load <2 x double>, ptr %.07283.us.i.i, align 8, !tbaa !14 ; 2 uses
  %i.en = fadd <2 x double> %i.da, %i.em
  %i.eo = fmul <2 x double> %i.bt, %i.em
  %i.ep = insertelement <2 x i1> poison, i1 %or.cond.us.i.i, i64 0
  %i.eq = shufflevector <2 x i1> %i.ep, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.er = select <2 x i1> %i.eq, <2 x double> %i.en, <2 x double> %i.eo
  store <2 x double> %i.er, ptr %.07283.us.i.i, align 8, !tbaa !14
  %i.es = getelementptr inbounds nuw i8, ptr %.07283.us.i.i, i64 16
  %i.et = add nuw i64 %.084.us.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.et, %i.di
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !167

._crit_edge.loopexit.peel.begin.thread.i.i:       ; preds = %.lr.ph.split.preheader.i.i
  %or.cond.peel105.i.i = icmp eq i64 %.07086.i.i, 0
  br i1 %or.cond.peel105.i.i, label %bb.y, label %._crit_edge.i.sink.split.i

bb.y:                                             ; preds = %._crit_edge.loopexit.peel.begin.thread.i.i
  br label %._crit_edge.i.sink.split.i

._crit_edge.i.sink.split.i:                       ; preds = %.lr.ph.split.i.i, %middle.block, %bb.y, %._crit_edge.loopexit.peel.begin.thread.i.i
  %.sink157.i = phi ptr [ %i.dj, %bb.y ], [ %i.dj, %._crit_edge.loopexit.peel.begin.thread.i.i ], [ %i.ea, %middle.block ], [ %i.fg, %.lr.ph.split.i.i ] ; 2 uses
  %i.eu = phi <2 x double> [ %i.da, %bb.y ], [ %i.cp, %._crit_edge.loopexit.peel.begin.thread.i.i ], [ %i.cp, %middle.block ], [ %i.cp, %.lr.ph.split.i.i ]
  %i.ev = load <2 x double>, ptr %.sink157.i, align 8, !tbaa !14
  %i.ew = fadd <2 x double> %i.eu, %i.ev
  store <2 x double> %i.ew, ptr %.sink157.i, align 8, !tbaa !14
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.us.i.i, %middle.block70, %._crit_edge.i.sink.split.i, %bb.x
  %i.ex = getelementptr inbounds nuw i8, ptr %.07185.i.i, i64 16
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !95
  %.not79.i.i = icmp eq i32 %i.ey, 0
  br i1 %.not79.i.i, label %bb.aa, label %bb.z

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader, %.lr.ph.split.i.i
  %.084.i.i = phi i64 [ %i.fh, %.lr.ph.split.i.i ], [ %.084.i.i.ph, %.lr.ph.split.i.i.preheader ] ; 3 uses
  %.07283.i.i = phi ptr [ %i.fg, %.lr.ph.split.i.i ], [ %.07283.i.i.ph, %.lr.ph.split.i.i.preheader ] ; 3 uses
  %i.ez = or i64 %.084.i.i, %.07086.i.i
  %or.cond.i.i = icmp eq i64 %i.ez, 0
  %i.fa = load <2 x double>, ptr %.07283.i.i, align 8, !tbaa !14 ; 2 uses
  %i.fb = fadd <2 x double> %i.da, %i.fa
  %i.fc = fmul <2 x double> %i.bt, %i.fa
  %i.fd = insertelement <2 x i1> poison, i1 %or.cond.i.i, i64 0
  %i.fe = shufflevector <2 x i1> %i.fd, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ff = select <2 x i1> %i.fe, <2 x double> %i.fb, <2 x double> %i.fc
  store <2 x double> %i.ff, ptr %.07283.i.i, align 8, !tbaa !14
  %i.fg = getelementptr inbounds nuw i8, ptr %.07283.i.i, i64 16 ; 2 uses
  %i.fh = add nuw i64 %.084.i.i, 1
  %exitcond94.not.i.i = icmp eq i64 %.084.i.i, %i.dx
  br i1 %exitcond94.not.i.i, label %._crit_edge.i.sink.split.i, label %.lr.ph.split.i.i, !llvm.loop !168

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %.07185.i.i, i64 24 ; 2 uses
  %i.fj = load <2 x double>, ptr %i.fi, align 8, !tbaa !14
  %i.fk = fadd <2 x double> %i.da, %i.fj
  store <2 x double> %i.fk, ptr %i.fi, align 8, !tbaa !14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %.07185.i.i, i64 20
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !96
  %.not80.i.i = icmp eq i32 %i.fm, 0
  br i1 %.not80.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fn = getelementptr inbounds nuw i8, ptr %.07185.i.i, i64 40 ; 2 uses
  %i.fo = load <2 x double>, ptr %i.fn, align 8, !tbaa !14
  %i.fp = fadd <2 x double> %i.cp, %i.fo
  store <2 x double> %i.fp, ptr %i.fn, align 8, !tbaa !14
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fq = getelementptr inbounds nuw i8, ptr %.07185.i.i, i64 56
  %i.fr = add nuw i64 %.07086.i.i, 1              ; 2 uses
  %exitcond96.not.i.i = icmp eq i64 %i.fr, %i.dc
  br i1 %exitcond96.not.i.i, label %._crit_edge90.i.i, label %bb.x, !llvm.loop !169

bb.ad:                                            ; preds = %._crit_edge90.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dg, i64 105
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !98, !range !38, !noundef !55
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dg, i64 72 ; 2 uses
  %i.fw = load <2 x double>, ptr %i.fv, align 8, !tbaa !14
  %i.fx = fmul <2 x double> %i.bt, %i.fw
  store <2 x double> %i.fx, ptr %i.fv, align 8, !tbaa !14
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge90.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ca, i64 128
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !99 ; 3 uses
  %.not77.i.i = icmp eq ptr %i.fz, null
  br i1 %.not77.i.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 105
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !98, !range !38, !noundef !55
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 72 ; 2 uses
  %i.ge = load <2 x double>, ptr %i.gd, align 8, !tbaa !14
  %i.gf = fadd <2 x double> %i.cp, %i.ge
  store <2 x double> %i.gf, ptr %i.gd, align 8, !tbaa !14
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ca, i64 136
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !100 ; 3 uses
  %.not78.i.i = icmp eq ptr %i.gh, null
  br i1 %.not78.i.i, label %scaleEdge.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 105
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !98, !range !38, !noundef !55
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.ak, label %scaleEdge.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 72 ; 2 uses
  %i.gm = load <2 x double>, ptr %i.gl, align 8, !tbaa !14
  %i.gn = fadd <2 x double> %i.da, %i.gm
  store <2 x double> %i.gn, ptr %i.gl, align 8, !tbaa !14
  br label %scaleEdge.exit.i

scaleEdge.exit.i:                                 ; preds = %bb.ak, %bb.aj, %bb.ai, %.lr.ph.i
  %i.go = tail call ptr @agnxtout(ptr noundef nonnull %0, ptr noundef nonnull %.0110.i) #19 ; 2 uses
  %.not107.i = icmp eq ptr %i.go, null
  br i1 %.not107.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !170

._crit_edge.i:                                    ; preds = %scaleEdge.exit.i, %bb.v
  %i.gp = tail call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.085112.i) #19 ; 2 uses
  %.not105.i = icmp eq ptr %i.gp, null
  br i1 %.not105.i, label %.loopexit.i, label %bb.v, !llvm.loop !171

.loopexit.i:                                      ; preds = %._crit_edge.i, %bb.u, %bb.t
  %i.gq = tail call ptr @agfstnode(ptr noundef nonnull %0) #19 ; 2 uses
  %.not106115.i = icmp eq ptr %i.gq, null
  br i1 %.not106115.i, label %._crit_edge119.i, label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %.loopexit.i, %.lr.ph118.i
  %.186116.i = phi ptr [ %i.gx, %.lr.ph118.i ], [ %i.gq, %.loopexit.i ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.186116.i, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !26
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 176
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !94 ; 2 uses
  %i.gv = load <2 x double>, ptr %i.gu, align 8, !tbaa !14
  %i.gw = fmul <2 x double> %i.bt, %i.gv
  store <2 x double> %i.gw, ptr %i.gu, align 8, !tbaa !14
  %i.gx = tail call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.186116.i) #19 ; 2 uses
  %.not106.i = icmp eq ptr %i.gx, null
  br i1 %.not106.i, label %._crit_edge119.i, label %.lr.ph118.i, !llvm.loop !172

._crit_edge119.i:                                 ; preds = %.lr.ph118.i, %.loopexit.i
  %i.gy = extractelement <2 x double> %i.bt, i64 0
  %i.gz = extractelement <2 x double> %i.bt, i64 1
  tail call fastcc void @scaleBB(ptr noundef nonnull %0, double noundef %i.gy, double noundef %i.gz)
  br label %_neato_set_aspect.exit

_neato_set_aspect.exit:                           ; preds = %bb.a, %bb.b, %bb.h, %bb.i, %bb.n, %bb.o, %._crit_edge119.i
  %.080.i = phi i1 [ %.084.i, %bb.h ], [ false, %bb.a ], [ true, %._crit_edge119.i ], [ %.084.i, %bb.i ], [ %.084.i, %bb.n ], [ %.084.i, %bb.o ], [ false, %bb.b ]
  %i.ha = tail call ptr @agfstnode(ptr noundef nonnull %0) #19 ; 2 uses
  %.not9 = icmp eq ptr %i.ha, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_neato_set_aspect.exit, %.lr.ph
  %.010 = phi ptr [ %i.hm, %.lr.ph ], [ %i.ha, %_neato_set_aspect.exit ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.010, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !26 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 176
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !94 ; 2 uses
  %i.hf = load double, ptr %i.he, align 8, !tbaa !14
  %i.hg = fmul double %i.hf, 7.200000e+01
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  store double %i.hg, ptr %i.hh, align 8, !tbaa !56
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !14
  %i.hk = fmul double %i.hj, 7.200000e+01
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  store double %i.hk, ptr %i.hl, align 8, !tbaa !57
  %i.hm = tail call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.010) #19 ; 2 uses
  %.not = icmp eq ptr %i.hm, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !173

._crit_edge:                                      ; preds = %.lr.ph, %_neato_set_aspect.exit
  ret i1 %.080.i
}

; Function Attrs: nounwind uwtable
define void @spline_edges(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  tail call void @compute_bb(ptr noundef %0) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load <2 x double>, ptr %i.c, align 8, !tbaa !14
  %i.e = fdiv <2 x double> %i.d, splat (double 7.200000e+01)
  %i.f = tail call ptr @agfstnode(ptr noundef %0) #19 ; 2 uses
  %.not12 = icmp eq ptr %i.f, null
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.013 = phi ptr [ %i.m, %.lr.ph ], [ %i.f, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.013, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !94   ; 2 uses
  %i.k = load <2 x double>, ptr %i.j, align 8, !tbaa !14
  %i.l = fsub <2 x double> %i.k, %i.e
  store <2 x double> %i.l, ptr %i.j, align 8, !tbaa !14
  %i.m = tail call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.013) #19 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !185

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load double, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.r = load double, ptr %i.q, align 8
  tail call fastcc void @shiftClusters(ptr noundef nonnull %0, double %i.p, double %i.r)
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.u = load i16, ptr %i.t, align 8, !tbaa !93
  %i.v = and i16 %i.u, 14                         ; 2 uses
  %i.w = tail call zeroext i1 @neato_set_aspect(ptr noundef nonnull %0) ; 0 uses
  %i.x = icmp eq i16 %i.v, 0
  br i1 %i.x, label %spline_edges0.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.y = zext nneg i16 %i.v to i32
  %i.z = tail call range(i32 0, 2) i32 @splineEdges(ptr noundef nonnull %0, ptr noundef nonnull @spline_edges_, i32 noundef %i.y) ; 0 uses
  br label %spline_edges0.exit

spline_edges0.exit:                               ; preds = %._crit_edge, %bb.b
  ret void
}

declare void @compute_bb(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @shiftClusters(ptr nofree noundef readonly captures(none) %0, double %1, double %2) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.d = load i32, ptr %i.c, align 4, !tbaa !101
  %.not12 = icmp slt i32 %i.d, 1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.a ] ; 3 uses
  %i.e = phi ptr [ %i.j, %.lr.ph ], [ %i.b, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !103
  tail call fastcc void @shiftClusters(ptr noundef %i.i, double %1, double %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 236
  %i.l = load i32, ptr %i.k, align 4, !tbaa !101
  %i.m = sext i32 %i.l to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.m
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !186

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.j, %.lr.ph ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.lcssa, i64 48 ; 2 uses
  %i.o = load <2 x double>, ptr %i.n, align 8, !tbaa !14
  %i.p = insertelement <2 x double> poison, double %1, i64 0
  %i.q = insertelement <2 x double> %i.p, double %2, i64 1 ; 2 uses
  %i.r = fsub <2 x double> %i.o, %i.q
  store <2 x double> %i.r, ptr %i.n, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %.lcssa, i64 32 ; 2 uses
  %i.t = load <2 x double>, ptr %i.s, align 8, !tbaa !14
  %i.u = fsub <2 x double> %i.t, %i.q
  store <2 x double> %i.u, ptr %i.s, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define void @neato_translate(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load <2 x double>, ptr %i.c, align 8, !tbaa !14 ; 13 uses
  %i.e = fdiv <2 x double> %i.d, splat (double 7.200000e+01)
  %i.f = tail call ptr @agfstnode(ptr noundef %0) #19 ; 2 uses
  %.not36 = icmp eq ptr %i.f, null
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.03037 = phi ptr [ %i.u, %bb.d ], [ %i.f, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.03037, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !94   ; 2 uses
  %i.k = load <2 x double>, ptr %i.j, align 8, !tbaa !14
  %i.l = fsub <2 x double> %i.k, %i.e
  store <2 x double> %i.l, ptr %i.j, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !193  ; 3 uses
  %.not35 = icmp eq ptr %i.n, null
  br i1 %.not35, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 105
  %i.p = load i8, ptr %i.o, align 1, !tbaa !98, !range !38, !noundef !55
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 72 ; 2 uses
  %i.s = load <2 x double>, ptr %i.r, align 8, !tbaa !14
  %i.t = fsub <2 x double> %i.s, %i.d
  store <2 x double> %i.t, ptr %i.r, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.b, %bb.c
  %i.u = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.03037) #19 ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !187

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.v = tail call ptr @agfstnode(ptr noundef %0) #19 ; 2 uses
  %.not3243 = icmp eq ptr %i.v, null
  br i1 %.not3243, label %._crit_edge47, label %.lr.ph46

.lr.ph46:                                         ; preds = %._crit_edge, %._crit_edge42
  %.144 = phi ptr [ %i.cl, %._crit_edge42 ], [ %i.v, %._crit_edge ] ; 2 uses
  %i.w = tail call ptr @agfstout(ptr noundef %0, ptr noundef nonnull %.144) #19 ; 2 uses
  %.not3338 = icmp eq ptr %i.w, null
  br i1 %.not3338, label %._crit_edge42, label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph46, %translateE.exit
  %.039 = phi ptr [ %i.ck, %translateE.exit ], [ %i.w, %.lr.ph46 ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.039, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !69  ; 3 uses
  %.not34 = icmp eq ptr %i.aa, null
  br i1 %.not34, label %translateE.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph41
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !73 ; 2 uses
  %.not8.i = icmp eq i64 %i.ac, 0
  br i1 %.not8.i, label %._crit_edge7.i, label %.lr.ph6.preheader.i

.lr.ph6.preheader.i:                              ; preds = %bb.e
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !74
  br label %.lr.ph6.i

._crit_edge7.i:                                   ; preds = %bb.i, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 120
end_hunk_2
