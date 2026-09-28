Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/neatosplines?download=true
inline.NumInlined: 43
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@makeObstacle:bb.a
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
  %scevgep362 = getelementptr i8, ptr %.0269351, i64 %i.ea
  %scevgep363 = getelementptr i8, ptr %i.bh, i64 %i.ea ; 2 uses
  %scevgep364 = getelementptr i8, ptr %i.bh, i64 8 ; 2 uses
  %scevgep365 = getelementptr i8, ptr %.0269351, i64 8
  %scevgep366 = getelementptr i8, ptr %.0269351, i64 %i.dz
  %scevgep367 = getelementptr i8, ptr %i.dq, i64 48
  %bound0 = icmp ult ptr %.0269351, %scevgep363
  %bound1 = icmp ult ptr %i.bh, %scevgep362
  %found.conflict = and i1 %bound0, %bound1
  %bound0368 = icmp ult ptr %i.dr, %scevgep363
  %bound1369 = icmp ult ptr %i.bh, %i.ds
  %found.conflict370 = and i1 %bound0368, %bound1369
  %conflict.rdx = or i1 %found.conflict, %found.conflict370
  %bound0371 = icmp ult ptr %scevgep364, %scevgep366
  %bound1372 = icmp ult ptr %scevgep365, %i.bn
  %found.conflict373 = and i1 %bound0371, %bound1372
  %conflict.rdx374 = or i1 %conflict.rdx, %found.conflict373
  %bound0375 = icmp ult ptr %scevgep364, %scevgep367
  %bound1376 = icmp ult ptr %i.ds, %i.bn
  %found.conflict377 = and i1 %bound0375, %bound1376
  %conflict.rdx378 = or i1 %conflict.rdx374, %found.conflict377
  br i1 %conflict.rdx378, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0267353, 2305843009213693950 ; 3 uses
  %i.eb = shufflevector <2 x double> %i.bg, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %.0269351, i64 %index
  %wide.vec = load <4 x double>, ptr %i.ec, align 8, !tbaa !14
  %i.ed = load double, ptr %i.dr, align 8, !tbaa !56, !alias.scope !135, !noalias !136
  %broadcast.splatinsert382 = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ee = xor i64 %index, -1
  %i.ef = getelementptr [16 x i8], ptr %i.bn, i64 %i.ee
  %i.eg = load double, ptr %i.ds, align 8, !tbaa !57, !alias.scope !137
  %broadcast.splatinsert384 = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.eh = getelementptr inbounds i8, ptr %i.ef, i64 -16
  %i.ei = shufflevector <4 x double> %wide.vec, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ej = fmul <4 x double> %i.eb, %i.ei
  %i.ek = shufflevector <2 x double> %broadcast.splatinsert382, <2 x double> %broadcast.splatinsert384, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %interleaved.vec = fadd <4 x double> %i.ej, %i.ek
  store <4 x double> %interleaved.vec, ptr %i.eh, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !122

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
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %.0269351, i64 %.0270325.us.ph
  %i.en = xor i64 %.0270325.us.ph, -1
  %i.eo = getelementptr [16 x i8], ptr %i.bn, i64 %i.en
  %i.ep = load <2 x double>, ptr %i.em, align 8, !tbaa !14
  %i.eq = fmul <2 x double> %i.bg, %i.ep
  %i.er = load <2 x double>, ptr %i.dr, align 8, !tbaa !14
  %i.es = fadd <2 x double> %i.eq, %i.er
  store <2 x double> %i.es, ptr %i.eo, align 8, !tbaa !14
  %i.et = or disjoint i64 %.0270325.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0270325.us.unr = phi i64 [ %.0270325.us.ph, %scalar.ph.preheader ], [ %i.et, %scalar.ph.prol ]
  %i.eu = icmp eq i64 %.0267353, %.neg
  br i1 %i.eu, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0270325.us = phi i64 [ %i.fk, %scalar.ph ], [ %.0270325.us.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %.0269351, i64 %.0270325.us
  %i.ew = xor i64 %.0270325.us, -1
  %i.ex = getelementptr [16 x i8], ptr %i.bn, i64 %i.ew
  %i.ey = load <2 x double>, ptr %i.ev, align 8, !tbaa !14
  %i.ez = fmul <2 x double> %i.bg, %i.ey
  %i.fa = load <2 x double>, ptr %i.dr, align 8, !tbaa !14
  %i.fb = fadd <2 x double> %i.ez, %i.fa
  store <2 x double> %i.fb, ptr %i.ex, align 8, !tbaa !14
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %.0269351, i64 %.0270325.us
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = sub i64 -2, %.0270325.us
  %i.ff = getelementptr [16 x i8], ptr %i.bn, i64 %i.fe
  %i.fg = load <2 x double>, ptr %i.fd, align 8, !tbaa !14
  %i.fh = fmul <2 x double> %i.bg, %i.fg
  %i.fi = load <2 x double>, ptr %i.dr, align 8, !tbaa !14
  %i.fj = fadd <2 x double> %i.fh, %i.fi
  store <2 x double> %i.fj, ptr %i.ff, align 8, !tbaa !14
  %i.fk = add nuw nsw i64 %.0270325.us, 2         ; 2 uses
  %exitcond331.not.1 = icmp eq i64 %i.fk, %.0267353
  br i1 %exitcond331.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !123

gv_calloc.exit.split:                             ; preds = %gv_calloc.exit
  %i.fl = uitofp nneg i64 %.0267353 to double
  %i.fm = load ptr, ptr %i.f, align 8, !tbaa !26  ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 120
  %i.fo = load <2 x double>, ptr %i.fn, align 8, !tbaa !14
  %i.fp = fmul <2 x double> %i.fo, splat (double 7.200000e+01)
  %i.fq = load i8, ptr %i.bo, align 8, !tbaa !134, !range !38, !noundef !55
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.ft = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.m

bb.m:                                             ; preds = %gv_calloc.exit.split, %bb.o
  %.0270325 = phi i64 [ 0, %gv_calloc.exit.split ], [ %i.ht, %bb.o ] ; 3 uses
  br i1 %i.fr, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fv = load <2 x double>, ptr %1, align 8, !tbaa !14
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.fw = phi <2 x double> [ %i.fv, %bb.n ], [ zeroinitializer, %bb.m ]
  %i.fx = fadd <2 x double> %i.fp, %i.fw
  %i.fy = uitofp nneg i64 %.0270325 to double
  %i.fz = insertelement <2 x double> poison, double %i.fy, i64 0
  %i.ga = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gb = fadd nnan <2 x double> %i.ga, <double -5.000000e-01, double 5.000000e-01>
  %i.gc = fmul nnan <2 x double> %i.gb, splat (double f0x401921FB54442D18)
  %i.gd = fdiv <2 x double> %i.gc, %i.fu          ; 2 uses
  %i.ge = extractelement <2 x double> %i.gd, i64 0 ; 2 uses
  %i.gf = call double @cos(double noundef %i.ge) #19
  %i.gg = fmul <2 x double> %i.fx, <double 5.000000e-01, double 1.000000e+00> ; 3 uses
  %i.gh = insertelement <2 x double> <double poison, double 5.000000e-01>, double %i.gf, i64 0
  %i.gi = fmul <2 x double> %i.gh, %i.gg          ; 3 uses
  %i.gj = call double @sin(double noundef %i.ge) #19
  %i.gk = extractelement <2 x double> %i.gd, i64 1 ; 2 uses
  %i.gl = call double @cos(double noundef %i.gk) #19
  %i.gm = extractelement <2 x double> %i.gg, i64 0
  %i.gn = fmul double %i.gm, %i.gl                ; 2 uses
  %i.go = call double @sin(double noundef %i.gk) #19
  %i.gp = extractelement <2 x double> %i.gi, i64 0 ; 2 uses
  %i.gq = insertelement <2 x double> %i.gi, double %i.gn, i64 1 ; 3 uses
  %i.gr = fneg <2 x double> %i.gq
  %i.gs = fmul <2 x double> %i.gq, %i.gr
  %i.gt = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %i.gt, <2 x double> %i.gs) ; 2 uses
  %i.gv = extractelement <2 x double> %i.gu, i64 0
  %i.gw = call double @sqrt(double noundef %i.gv) #19
  %i.gx = extractelement <2 x double> %i.gu, i64 1
  %i.gy = call double @sqrt(double noundef %i.gx) #19
  %5 = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %6 = insertelement <2 x double> poison, double %i.gj, i64 0
  %7 = insertelement <2 x double> %6, double %i.go, i64 1
  %i.gz = fmul <2 x double> %5, %7                ; 3 uses
  %8 = fcmp oge <2 x double> %i.gz, zeroinitializer
  %9 = fmul <2 x double> %5, %i.gq                ; 2 uses
  %10 = fneg <2 x double> %9
  %11 = select <2 x i1> %8, <2 x double> %10, <2 x double> %9
  %i.ha = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.hb = insertelement <2 x double> %i.ha, double %i.gy, i64 1
  %i.hc = fmul <2 x double> %i.gt, %i.hb
  %i.hd = fdiv <2 x double> %11, %i.hc            ; 2 uses
  %i.he = extractelement <2 x double> %i.gz, i64 0 ; 2 uses
  %i.hf = fneg double %i.he
  %i.hg = extractelement <2 x double> %i.hd, i64 0 ; 3 uses
  %12 = call double @llvm.fmuladd.f64(double %i.hg, double %i.gp, double %i.hf)
  %i.hh = extractelement <2 x double> %i.hd, i64 1 ; 2 uses
  %13 = fneg double %i.hh
  %i.hi = call double @llvm.fmuladd.f64(double %13, double %i.gn, double %12)
  %i.hj = extractelement <2 x double> %i.gz, i64 1
  %i.hk = fadd double %i.hj, %i.hi
  %i.hl = fsub double %i.hg, %i.hh
  %i.hm = fdiv double %i.hk, %i.hl                ; 2 uses
  %i.hn = fsub double %i.hm, %i.gp
  %14 = xor i64 %.0270325, -1
  %15 = getelementptr [16 x i8], ptr %i.bn, i64 %14
  %i.ho = call double @llvm.fmuladd.f64(double %i.hg, double %i.hn, double %i.he)
  %i.hp = load <2 x double>, ptr %i.fs, align 8, !tbaa !14
  %i.hq = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.hr = insertelement <2 x double> %i.hq, double %i.ho, i64 1
  %i.hs = fadd <2 x double> %i.hr, %i.hp
  store <2 x double> %i.hs, ptr %15, align 8, !tbaa !14
  %i.ht = add nuw nsw i64 %.0270325, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ht, %.0267353
  br i1 %exitcond.not, label %.loopexit, label %bb.m, !llvm.loop !117

bb.p:                                             ; preds = %bb.a
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !26 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !124
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load <4 x double>, ptr %i.hy, align 8, !tbaa !14 ; 4 uses
  %i.ia = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef range(i64 8, 73) 16) #16 ; 5 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %bb.q, label %gv_alloc.exit291

bb.q:                                             ; preds = %bb.p
  %i.ic = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.id = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ic, ptr noundef nonnull @.str.6, i64 noundef 16) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_alloc.exit291:                                 ; preds = %bb.p
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store i64 4, ptr %i.ie, align 8, !tbaa !52
  %i.if = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 4, i64 noundef 16) #16 ; 10 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %bb.r, label %gv_calloc.exit292

bb.r:                                             ; preds = %gv_alloc.exit291
  %i.ih = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ii = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ih, ptr noundef nonnull @.str.6, i64 noundef 64) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit292:                                ; preds = %gv_alloc.exit291
  store ptr %i.if, ptr %i.ia, align 8, !tbaa !53
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.ik = load <2 x double>, ptr %i.ij, align 8, !tbaa !14 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.im = load i8, ptr %i.il, align 8, !tbaa !134, !range !38, !noundef !55
  %i.in = trunc nuw i8 %i.im to i1
  %i.io = load double, ptr %1, align 8, !tbaa !60 ; 2 uses
  br i1 %i.in, label %bb.s, label %bb.t

bb.s:                                             ; preds = %gv_calloc.exit292
  %i.ip = shufflevector <2 x double> %i.ik, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !61
  %i.is = insertelement <4 x double> poison, double %i.io, i64 0
  %i.it = insertelement <4 x double> %i.is, double %i.ir, i64 1
  %i.iu = shufflevector <4 x double> %i.it, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.iv = fsub <4 x double> %i.hz, %i.iu
  %i.iw = fadd <4 x double> %i.hz, %i.iu
  %i.ix = shufflevector <4 x double> %i.iv, <4 x double> %i.iw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.iy = fadd <4 x double> %i.ip, %i.ix          ; 3 uses
  %i.iz = shufflevector <4 x double> %i.iy, <4 x double> poison, <6 x i32> <i32 0, i32 1, i32 0, i32 3, i32 2, i32 3>
  store <6 x double> %i.iz, ptr %i.if, align 8, !tbaa !14
  %i.ja = getelementptr inbounds nuw i8, ptr %i.if, i64 48
  %i.jb = extractelement <4 x double> %i.iy, i64 2
  store double %i.jb, ptr %i.ja, align 8, !tbaa !14
  %i.jc = extractelement <4 x double> %i.iy, i64 1
  br label %.loopexit.sink.split

bb.t:                                             ; preds = %gv_calloc.exit292
  %i.jd = getelementptr i8, ptr %1, i64 8
  %.val290 = load double, ptr %i.jd, align 8, !tbaa !61
  %i.je = shufflevector <4 x double> %i.hz, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.jf = insertelement <2 x double> poison, double %i.io, i64 0
  %i.jg = insertelement <2 x double> %i.jf, double %.val290, i64 1 ; 2 uses
  %i.jh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.je, <2 x double> %i.jg, <2 x double> %i.ik) ; 3 uses
  store <2 x double> %i.jh, ptr %i.if, align 8, !tbaa !14
  %i.ji = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.jj = extractelement <2 x double> %i.jh, i64 0
  store double %i.jj, ptr %i.ji, align 8, !tbaa !14
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.jk = shufflevector <4 x double> %i.hz, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.jl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> %i.jg, <2 x double> %i.ik)
  %i.jm = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  store <2 x double> %i.jm, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !14
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.if, i64 40
  store <2 x double> %i.jm, ptr %.sroa.418.0..sroa_idx, align 8, !tbaa !14
  %i.jn = extractelement <2 x double> %i.jh, i64 1
  br label %.loopexit.sink.split

bb.u:                                             ; preds = %bb.a
  %i.jo = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef range(i64 8, 73) 16) #16 ; 5 uses
  %i.jp = icmp eq ptr %i.jo, null
  br i1 %i.jp, label %bb.v, label %gv_alloc.exit307

bb.v:                                             ; preds = %bb.u
  %i.jq = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.jr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jq, ptr noundef nonnull @.str.6, i64 noundef 16) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_alloc.exit307:                                 ; preds = %bb.u
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  store i64 4, ptr %i.js, align 8, !tbaa !52
  %i.jt = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 4, i64 noundef 16) #16 ; 15 uses
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %bb.w, label %gv_calloc.exit308

bb.w:                                             ; preds = %gv_alloc.exit307
  %i.jv = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.jw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jv, ptr noundef nonnull @.str.6, i64 noundef 64) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit308:                                ; preds = %gv_alloc.exit307
  store ptr %i.jt, ptr %i.jo, align 8, !tbaa !53
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !26 ; 6 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 32
  %i.ka = load <2 x double>, ptr %i.jz, align 8, !tbaa !14 ; 6 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kc = load i8, ptr %i.kb, align 8, !tbaa !134, !range !38, !noundef !55
  %i.kd = trunc nuw i8 %i.kc to i1
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 104 ; 3 uses
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !138
  %i.kg = fneg double %i.kf                       ; 2 uses
  br i1 %i.kd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %gv_calloc.exit308
  %i.kh = load double, ptr %1, align 8, !tbaa !60 ; 4 uses
  %i.ki = fsub double %i.kg, %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jy, i64 96 ; 4 uses
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !139
  %i.kl = fneg double %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kn = load double, ptr %i.km, align 8, !tbaa !61 ; 4 uses
  %i.ko = fsub double %i.kl, %i.kn
  %i.kp = extractelement <2 x double> %i.ka, i64 0 ; 4 uses
  %i.kq = fadd double %i.kp, %i.ki
  %i.kr = extractelement <2 x double> %i.ka, i64 1 ; 4 uses
  %i.ks = fadd double %i.kr, %i.ko
  store double %i.kq, ptr %i.jt, align 8, !tbaa !14
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store double %i.ks, ptr %.sroa.414.0..sroa_idx, align 8, !tbaa !14
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.ku = load double, ptr %i.ke, align 8, !tbaa !138
  %i.kv = fneg double %i.ku
  %i.kw = fsub double %i.kv, %i.kh
  %i.kx = load double, ptr %i.kj, align 8, !tbaa !139
  %i.ky = fadd double %i.kn, %i.kx
  %i.kz = fadd double %i.kp, %i.kw
  %i.la = fadd double %i.kr, %i.ky
  store double %i.kz, ptr %i.kt, align 8, !tbaa !14
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  store double %i.la, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !14
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jt, i64 32
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jy, i64 112 ; 2 uses
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !140
  %i.le = fadd double %i.kh, %i.ld
  %i.lf = load double, ptr %i.kj, align 8, !tbaa !139
  %i.lg = fadd double %i.kn, %i.lf
  %i.lh = fadd double %i.kp, %i.le
  %i.li = fadd double %i.kr, %i.lg
  store double %i.lh, ptr %i.lb, align 8, !tbaa !14
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 40
  store double %i.li, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !14
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jt, i64 48
  %i.lk = load double, ptr %i.lc, align 8, !tbaa !140
  %i.ll = fadd double %i.kh, %i.lk
  %i.lm = load double, ptr %i.kj, align 8, !tbaa !139
  %i.ln = fneg double %i.lm
  %i.lo = fsub double %i.ln, %i.kn
  %i.lp = fadd double %i.kp, %i.ll
  %i.lq = fadd double %i.kr, %i.lo
  store double %i.lp, ptr %i.lj, align 8, !tbaa !14
  br label %.loopexit.sink.split

bb.y:                                             ; preds = %gv_calloc.exit308
  %i.lr = getelementptr inbounds nuw i8, ptr %i.jy, i64 96 ; 4 uses
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !139
  %i.lt = fneg double %i.ls
  %i.lu = load <2 x double>, ptr %1, align 8, !tbaa !14 ; 4 uses
  %i.lv = insertelement <2 x double> poison, double %i.kg, i64 0
  %i.lw = insertelement <2 x double> %i.lv, double %i.lt, i64 1
  %i.lx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lw, <2 x double> %i.lu, <2 x double> %i.ka)
  store <2 x double> %i.lx, ptr %i.jt, align 8, !tbaa !14
  %i.ly = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.lz = load double, ptr %i.ke, align 8, !tbaa !138
  %i.ma = fneg double %i.lz
  %i.mb = load double, ptr %i.lr, align 8, !tbaa !139
  %i.mc = insertelement <2 x double> poison, double %i.ma, i64 0
  %i.md = insertelement <2 x double> %i.mc, double %i.mb, i64 1
  %i.me = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.md, <2 x double> %i.lu, <2 x double> %i.ka)
  store <2 x double> %i.me, ptr %i.ly, align 8, !tbaa !14
  %i.mf = getelementptr inbounds nuw i8, ptr %i.jt, i64 32
  %i.mg = getelementptr inbounds nuw i8, ptr %i.jy, i64 112 ; 2 uses
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !140
  %i.mi = load double, ptr %i.lr, align 8, !tbaa !139
  %i.mj = insertelement <2 x double> poison, double %i.mh, i64 0
  %i.mk = insertelement <2 x double> %i.mj, double %i.mi, i64 1
  %i.ml = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mk, <2 x double> %i.lu, <2 x double> %i.ka)
  store <2 x double> %i.ml, ptr %i.mf, align 8, !tbaa !14
  %i.mm = getelementptr inbounds nuw i8, ptr %i.jt, i64 48
  %i.mn = load double, ptr %i.mg, align 8, !tbaa !140
  %i.mo = load double, ptr %i.lr, align 8, !tbaa !139
  %i.mp = fneg double %i.mo
end_hunk_0
