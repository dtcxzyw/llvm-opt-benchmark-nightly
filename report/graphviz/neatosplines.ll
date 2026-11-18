Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/neatosplines?download=true
inline.NumInlined: 43
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@makeObstacle:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.r = load <2 x double>, ptr %i.q, align 8, !tbaa !14 ; 2 uses
  %i.s = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.u = load double, ptr %i.t, align 8, !tbaa !125
  %i.v = fmul double %i.u, 7.200000e+01
  %i.w = extractelement <2 x double> %i.r, i64 0
  %i.x = fmul double %i.w, %i.v
  %i.y = fdiv double %i.x, %i.s                   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.aa = load double, ptr %i.z, align 8, !tbaa !126
  %i.ab = fmul double %i.aa, 7.200000e+01         ; 2 uses
  %i.ac = fneg double %i.y                        ; 2 uses
  %i.ad = fmul double %i.ab, -5.000000e-01        ; 2 uses
  store double %i.ac, ptr %3, align 16, !tbaa !14
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.ad, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.y, ptr %i.ae, align 16, !tbaa !14
  %.sroa.9.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %i.ad, ptr %.sroa.9.0..sroa_idx85, align 8, !tbaa !14
  %i.af = fmul double %i.ab, 5.000000e-01
  br label %.thread.sink.split

bb.g:                                             ; preds = %gv_alloc.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !129 ; 6 uses
  %i.ai = icmp ugt i64 %i.ah, 2
  br i1 %i.ai, label %bb.h, label %.thread

.thread.sink.split:                               ; preds = %bb.f, %bb.e
  %.sroa.15.0.copyload.sink = phi double [ %.sroa.15.0.copyload, %bb.e ], [ %i.y, %bb.f ]
  %.sroa.21.0.copyload.sink357 = phi double [ %.sroa.21.0.copyload, %bb.e ], [ %i.af, %bb.f ] ; 2 uses
  %.sroa.0135.0.copyload.sink = phi double [ %i.p, %bb.e ], [ %i.ac, %bb.f ]
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32
  store double %.sroa.15.0.copyload.sink, ptr %i.aj, align 16, !tbaa !14
  %.sroa.21.16..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store double %.sroa.21.0.copyload.sink357, ptr %.sroa.21.16..sroa_idx, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 48
  store double %.sroa.0135.0.copyload.sink, ptr %i.ak, align 16, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 56
  store double %.sroa.21.0.copyload.sink357, ptr %i.al, align 8, !tbaa !14
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.g
  %.0269.ph = phi ptr [ null, %bb.g ], [ %3, %.thread.sink.split ]
  %.0267.ph = phi i64 [ 8, %bb.g ], [ 4, %.thread.sink.split ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.0267.ph, ptr %i.am, align 8, !tbaa !52
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr @N_penwidth, align 8, !tbaa !131
  %i.ao = tail call double @late_double(ptr noundef nonnull %0, ptr noundef %i.an, double noundef 1.000000e+00, double noundef 0.000000e+00) #19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8
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
  %5 = getelementptr i8, ptr %.0269351, i64 %i.ea
  %i.eb = getelementptr i8, ptr %i.bh, i64 %i.ea  ; 2 uses
  %i.ec = getelementptr i8, ptr %i.bh, i64 8      ; 2 uses
  %6 = getelementptr i8, ptr %.0269351, i64 8
  %7 = getelementptr i8, ptr %.0269351, i64 %i.dz
  %8 = getelementptr i8, ptr %i.dq, i64 48
  %bound0.a = icmp ult ptr %.0269351, %i.eb
  %bound1.a = icmp ult ptr %i.bh, %5
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %bound0379 = icmp ult ptr %i.dr, %i.eb
  %bound1380 = icmp ult ptr %i.bh, %i.ds
  %found.conflict381 = and i1 %bound0379, %bound1380
  %conflict.rdx = or i1 %found.conflict.a, %found.conflict381
  %bound0382 = icmp ult ptr %i.ec, %7
  %bound1383 = icmp ult ptr %6, %i.bn
  %found.conflict384 = and i1 %bound0382, %bound1383
  %conflict.rdx385 = or i1 %conflict.rdx, %found.conflict384
  %bound0386 = icmp ult ptr %i.ec, %8
  %bound1387 = icmp ult ptr %i.ds, %i.bn
  %found.conflict388 = and i1 %bound0386, %bound1387
  %conflict.rdx389 = or i1 %conflict.rdx385, %found.conflict388
  br i1 %conflict.rdx389, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0267353, 2305843009213693950 ; 3 uses
  %i.ed = shufflevector <2 x double> %i.bg, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %.0269351, i64 %index
  %wide.vec = load <4 x double>, ptr %i.ee, align 8, !tbaa !14
  %i.ef = load double, ptr %i.dr, align 8, !tbaa !56, !alias.scope !135, !noalias !136
  %broadcast.splatinsert393 = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.eg = xor i64 %index, -1
  %i.eh = getelementptr [16 x i8], ptr %i.bn, i64 %i.eg
  %i.ei = load double, ptr %i.ds, align 8, !tbaa !57, !alias.scope !137
  %broadcast.splatinsert395 = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.ej = getelementptr inbounds i8, ptr %i.eh, i64 -16
  %i.ek = shufflevector <4 x double> %wide.vec, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.el = fmul <4 x double> %i.ed, %i.ek
  %i.em = shufflevector <2 x double> %broadcast.splatinsert393, <2 x double> %broadcast.splatinsert395, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %interleaved.vec = fadd <4 x double> %i.el, %i.em
  store <4 x double> %interleaved.vec, ptr %i.ej, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !122

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
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %.0269351, i64 %.0270325.us.ph
  %i.ep = xor i64 %.0270325.us.ph, -1
  %i.eq = getelementptr [16 x i8], ptr %i.bn, i64 %i.ep
  %i.er = load <2 x double>, ptr %i.eo, align 8, !tbaa !14
  %i.es = fmul <2 x double> %i.bg, %i.er
  %i.et = load <2 x double>, ptr %i.dr, align 8, !tbaa !14
  %i.eu = fadd <2 x double> %i.es, %i.et
  store <2 x double> %i.eu, ptr %i.eq, align 8, !tbaa !14
  %i.ev = or disjoint i64 %.0270325.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0270325.us.unr = phi i64 [ %.0270325.us.ph, %scalar.ph.preheader ], [ %i.ev, %scalar.ph.prol ]
  %i.ew = icmp eq i64 %.0267353, %.neg
  br i1 %i.ew, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0270325.us = phi i64 [ %i.fm, %scalar.ph ], [ %.0270325.us.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %.0269351, i64 %.0270325.us
  %i.ey = xor i64 %.0270325.us, -1
  %i.ez = getelementptr [16 x i8], ptr %i.bn, i64 %i.ey
  %i.fa = load <2 x double>, ptr %i.ex, align 8, !tbaa !14
  %i.fb = fmul <2 x double> %i.bg, %i.fa
  %i.fc = load <2 x double>, ptr %i.dr, align 8, !tbaa !14
  %i.fd = fadd <2 x double> %i.fb, %i.fc
  store <2 x double> %i.fd, ptr %i.ez, align 8, !tbaa !14
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %.0269351, i64 %.0270325.us
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = sub i64 -2, %.0270325.us
  %i.fh = getelementptr [16 x i8], ptr %i.bn, i64 %i.fg
  %i.fi = load <2 x double>, ptr %i.ff, align 8, !tbaa !14
  %i.fj = fmul <2 x double> %i.bg, %i.fi
  %i.fk = load <2 x double>, ptr %i.dr, align 8, !tbaa !14
  %i.fl = fadd <2 x double> %i.fj, %i.fk
  store <2 x double> %i.fl, ptr %i.fh, align 8, !tbaa !14
  %i.fm = add nuw nsw i64 %.0270325.us, 2         ; 2 uses
  %exitcond331.not.1 = icmp eq i64 %i.fm, %.0267353
  br i1 %exitcond331.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !123

gv_calloc.exit.split:                             ; preds = %gv_calloc.exit
  %i.fn = uitofp nneg i64 %.0267353 to double
  %i.fo = load ptr, ptr %i.f, align 8, !tbaa !26  ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 120
  %i.fq = load <2 x double>, ptr %i.fp, align 8, !tbaa !14
  %i.fr = fmul <2 x double> %i.fq, splat (double 7.200000e+01)
  %i.fs = load i8, ptr %i.bo, align 8, !tbaa !134, !range !38, !noundef !55
  %i.ft = trunc nuw i8 %i.fs to i1
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fv = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.fw = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.m

bb.m:                                             ; preds = %gv_calloc.exit.split, %bb.o
  %.0270325 = phi i64 [ 0, %gv_calloc.exit.split ], [ %i.ig, %bb.o ] ; 3 uses
  br i1 %i.ft, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fx = load <2 x double>, ptr %1, align 8, !tbaa !14
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.fy = phi <2 x double> [ %i.fx, %bb.n ], [ zeroinitializer, %bb.m ]
  %i.fz = fadd <2 x double> %i.fr, %i.fy
  %i.ga = uitofp nneg i64 %.0270325 to double
  %i.gb = insertelement <2 x double> poison, double %i.ga, i64 0
  %i.gc = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gd = fadd nnan <2 x double> %i.gc, <double -5.000000e-01, double 5.000000e-01>
  %i.ge = fmul nnan <2 x double> %i.gd, splat (double f0x401921FB54442D18)
  %i.gf = fdiv <2 x double> %i.ge, %i.fw          ; 2 uses
  %i.gg = extractelement <2 x double> %i.gf, i64 0 ; 2 uses
  %i.gh = call double @cos(double noundef %i.gg) #19
  %i.gi = fmul <2 x double> %i.fz, <double 5.000000e-01, double 1.000000e+00> ; 3 uses
  %i.gj = insertelement <2 x double> <double poison, double 5.000000e-01>, double %i.gh, i64 0
  %i.gk = fmul <2 x double> %i.gj, %i.gi          ; 3 uses
  %i.gl = call double @sin(double noundef %i.gg) #19
  %i.gm = extractelement <2 x double> %i.gf, i64 1 ; 2 uses
  %i.gn = call double @cos(double noundef %i.gm) #19
  %i.go = extractelement <2 x double> %i.gi, i64 0
  %i.gp = fmul double %i.go, %i.gn                ; 2 uses
  %i.gq = call double @sin(double noundef %i.gm) #19
  %i.gr = extractelement <2 x double> %i.gk, i64 0 ; 2 uses
  %i.gs = insertelement <2 x double> %i.gk, double %i.gp, i64 1 ; 3 uses
  %i.gt = fneg <2 x double> %i.gs
  %i.gu = fmul <2 x double> %i.gs, %i.gt
  %i.gv = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gv, <2 x double> %i.gv, <2 x double> %i.gu) ; 2 uses
  %i.gx = extractelement <2 x double> %i.gw, i64 0
  %i.gy = call double @sqrt(double noundef %i.gx) #19
  %i.gz = extractelement <2 x double> %i.gw, i64 1
  %i.ha = call double @sqrt(double noundef %i.gz) #19
  %i.hb = xor i64 %.0270325, -1
  %i.hc = getelementptr [16 x i8], ptr %i.bn, i64 %i.hb
  %i.hd = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.he = fmul <2 x double> %i.hd, %i.gs          ; 2 uses
  %i.hf = fneg <2 x double> %i.he
  %i.hg = insertelement <2 x double> poison, double %i.gy, i64 0
  %i.hh = insertelement <2 x double> %i.hg, double %i.ha, i64 1
  %i.hi = fmul <2 x double> %i.gv, %i.hh
  %i.hj = insertelement <2 x double> poison, double %i.gl, i64 0
  %i.hk = insertelement <2 x double> %i.hj, double %i.gq, i64 1
  %i.hl = fmul <2 x double> %i.hd, %i.hk          ; 3 uses
  %i.hm = fcmp oge <2 x double> %i.hl, zeroinitializer
  %i.hn = select <2 x i1> %i.hm, <2 x double> %i.hf, <2 x double> %i.he
  %i.ho = fdiv <2 x double> %i.hn, %i.hi          ; 2 uses
  %i.hp = extractelement <2 x double> %i.ho, i64 1 ; 2 uses
  %i.hq = fneg double %i.hp
  %i.hr = extractelement <2 x double> %i.hl, i64 0 ; 2 uses
  %i.hs = fneg double %i.hr
  %i.ht = extractelement <2 x double> %i.ho, i64 0 ; 3 uses
  %i.hu = call double @llvm.fmuladd.f64(double %i.ht, double %i.gr, double %i.hs)
  %i.hv = call double @llvm.fmuladd.f64(double %i.hq, double %i.gp, double %i.hu)
  %i.hw = extractelement <2 x double> %i.hl, i64 1
  %i.hx = fadd double %i.hw, %i.hv
  %i.hy = fsub double %i.ht, %i.hp
  %i.hz = fdiv double %i.hx, %i.hy                ; 2 uses
  %i.ia = fsub double %i.hz, %i.gr
  %i.ib = call double @llvm.fmuladd.f64(double %i.ht, double %i.ia, double %i.hr)
  %i.ic = load <2 x double>, ptr %i.fu, align 8, !tbaa !14
  %i.id = insertelement <2 x double> poison, double %i.hz, i64 0
  %i.ie = insertelement <2 x double> %i.id, double %i.ib, i64 1
  %i.if = fadd <2 x double> %i.ie, %i.ic
  store <2 x double> %i.if, ptr %i.hc, align 8, !tbaa !14
  %i.ig = add nuw nsw i64 %.0270325, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ig, %.0267353
  br i1 %exitcond.not, label %.loopexit, label %bb.m, !llvm.loop !117

bb.p:                                             ; preds = %bb.a
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !26 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !124
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load <4 x double>, ptr %i.il, align 8, !tbaa !14 ; 4 uses
  %i.in = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef range(i64 8, 73) 16) #16 ; 5 uses
  %i.io = icmp eq ptr %i.in, null
  br i1 %i.io, label %bb.q, label %gv_alloc.exit291

bb.q:                                             ; preds = %bb.p
  %i.ip = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.iq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ip, ptr noundef nonnull @.str.6, i64 noundef 16) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_alloc.exit291:                                 ; preds = %bb.p
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store i64 4, ptr %i.ir, align 8, !tbaa !52
  %i.is = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 4, i64 noundef 16) #16 ; 10 uses
  %i.it = icmp eq ptr %i.is, null
  br i1 %i.it, label %bb.r, label %gv_calloc.exit292

bb.r:                                             ; preds = %gv_alloc.exit291
  %i.iu = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.iv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iu, ptr noundef nonnull @.str.6, i64 noundef 64) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit292:                                ; preds = %gv_alloc.exit291
  store ptr %i.is, ptr %i.in, align 8, !tbaa !53
end_hunk_0
