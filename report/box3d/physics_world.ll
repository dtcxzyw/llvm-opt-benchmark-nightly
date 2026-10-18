Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/physics_world?download=true
inline.NumInlined: 282
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 21
begin_hunk_0_@b3CollideTask:bb.a
  %i.aa = add nsw i32 %1, -4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %.old2 = fcmp ogt float %i.u, 0.000000e+00      ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %.sroa.4503.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %.sroa.4496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 156 ; 4 uses
  %i.ah = sext i32 %0 to i64
  %i.ai = sext i32 %i.aa to i64
  br label %bb.b

._crit_edge555:                                   ; preds = %bb.ad, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph554, %bb.ad
  %indvars.iv572 = phi i64 [ %i.ah, %.lr.ph554 ], [ %indvars.iv.next573, %bb.ad ] ; 4 uses
  %i.aj = icmp slt i64 %indvars.iv572, %i.ai
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv572
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %i.am = load i32, ptr %i.al, align 4, !tbaa !82
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [216 x i8], ptr %i.j, i64 %i.an ; 4 uses
  tail call void @llvm.prefetch.p0(ptr readonly %i.ao, i32 0, i32 3, i32 1)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %i.ap, i32 0, i32 3, i32 1)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %i.aq, i32 0, i32 3, i32 1)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 192
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %i.ar, i32 0, i32 3, i32 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.as = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv572
  %i.at = load i32, ptr %i.as, align 4, !tbaa !82 ; 5 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [216 x i8], ptr %i.j, i64 %i.au ; 27 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 36
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !246
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [232 x i8], ptr %i.l, i64 %i.ay ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !247
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [232 x i8], ptr %i.l, i64 %i.bc ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %.sroa.0513.0.copyload = load float, ptr %i.bf, align 8
  %.sroa.4514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 68
  %.sroa.4514.0.copyload = load float, ptr %.sroa.4514.0..sroa_idx, align 4
  %.sroa.5515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %.sroa.5515.0.copyload = load float, ptr %.sroa.5515.0..sroa_idx, align 8
  %.sroa.6516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 76
  %.sroa.8518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 84
  %.sroa.8518.0.copyload = load float, ptr %.sroa.8518.0..sroa_idx, align 4
  %.sroa.7511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 80
  %.sroa.7511.0.copyload = load float, ptr %.sroa.7511.0..sroa_idx, align 8
  %.sroa.8512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 84
  %.sroa.8512.0.copyload = load float, ptr %.sroa.8512.0..sroa_idx, align 4
  %i.bg = fcmp uge float %.sroa.7511.0.copyload, %.sroa.4514.0.copyload
  %i.bh = fcmp uge float %.sroa.8512.0.copyload, %.sroa.5515.0.copyload
  %i.bi = load <2 x float>, ptr %.sroa.6516.0..sroa_idx, align 4
  %i.bj = load <4 x float>, ptr %i.be, align 8    ; 2 uses
  %i.bk = insertelement <4 x float> %i.bj, float %.sroa.0513.0.copyload, i64 3
  %i.bl = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> %i.bj, <4 x i32> <i32 0, i32 1, i32 poison, i32 7>
  %i.bn = insertelement <4 x float> %i.bm, float %.sroa.8518.0.copyload, i64 2
  %i.bo = fcmp ule <4 x float> %i.bk, %i.bn
  %i.bp = freeze <4 x i1> %i.bo
  %i.bq = bitcast <4 x i1> %i.bp to i4
  %i.br = icmp eq i4 %i.bq, -1
  %.fr = freeze i1 %i.bg
  %op.rdx = and i1 %i.br, %.fr
  %op.rdx598 = select i1 %op.rdx, i1 %i.bh, i1 false
  br i1 %op.rdx598, label %bb.e, label %b3AABB_Overlaps.exit.thread

b3AABB_Overlaps.exit.thread:                      ; preds = %bb.d
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 68 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !190
  %i.bu = and i32 %i.bt, -196609
  %i.bv = or disjoint i32 %i.bu, 131072
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !190
  %.val318 = load ptr, ptr %i.ab, align 8, !tbaa !244
  %i.bw = lshr i32 %i.at, 6
  %i.bx = and i32 %i.at, 63
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = zext nneg i32 %i.bw to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.val318, i64 %i.ca ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !245
  %i.cd = or i64 %i.cc, %i.bz
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !245
  br label %bb.ad

bb.e:                                             ; preds = %bb.d
  %i.ce = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !280
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [128 x i8], ptr %i.n, i64 %i.cg ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !280
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [128 x i8], ptr %i.n, i64 %i.ck ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 120
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !268
  %i.co = icmp eq i32 %i.cn, 0                    ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 120
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !268
  %i.cr = icmp eq i32 %i.cq, 0                    ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.av, i64 68 ; 6 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !190 ; 3 uses
  %i.cu = and i32 %i.ct, 65536
  %.not300 = icmp eq i32 %i.cu, 0                 ; 5 uses
  br i1 %.not300, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cv = select i1 %i.co, ptr %i.s, ptr %i.r
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !357 ; 2 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [216 x i8], ptr %i.cv, i64 %i.cy
  %i.da = select i1 %i.cr, ptr %i.s, ptr %i.r
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.db = load ptr, ptr %i.o, align 8, !tbaa !93  ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !271
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [88 x i8], ptr %i.db, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !105
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !357 ; 2 uses
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [216 x i8], ptr %i.dg, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !271
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [88 x i8], ptr %i.db, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !105
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi ptr [ %i.dp, %bb.g ], [ %i.da, %bb.f ]
  %i.dq = phi i32 [ %i.di, %bb.g ], [ %i.cx, %bb.f ]
  %.0289 = phi ptr [ %i.dk, %bb.g ], [ %i.cz, %bb.f ] ; 8 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !357 ; 2 uses
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [216 x i8], ptr %.sink, i64 %i.dt ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) %.0289, i64 28, i1 false), !tbaa.struct !285
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 4 dereferenceable(28) %i.du, i64 28, i1 false), !tbaa.struct !285
  %i.dv = getelementptr inbounds nuw i8, ptr %.0289, i64 212
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !283
  %i.dx = and i32 %i.dw, 64
  %.not = icmp eq i32 %i.dx, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 212
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !283
  %i.ea = and i32 %i.dz, 64
  %i.eb = icmp ne i32 %i.ea, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ec = phi i1 [ true, %bb.h ], [ %i.eb, %bb.i ] ; 2 uses
  %spec.select = select i1 %i.co, i32 -1, i32 %i.dq
  %i.ed = getelementptr inbounds nuw i8, ptr %i.av, i64 60
  store i32 %spec.select, ptr %i.ed, align 4, !tbaa !255
  %i.ee = select i1 %i.cr, i32 -1, i32 %i.ds
  %i.ef = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  store i32 %i.ee, ptr %i.ef, align 8, !tbaa !256
  %i.eg = select i1 %.not300, i1 %i.y, i1 false
  %i.eh = select i1 %i.eg, float %i.x, float %i.u ; 3 uses
  br i1 %i.ec, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ei = and i32 %i.ct, 4194304
  %i.ej = icmp eq i32 %i.ei, 0
  %or.cond = select i1 %i.ej, i1 %.old2, i1 false
  br i1 %or.cond, label %bb.m, label %.thread521

bb.l:                                             ; preds = %bb.j
  br i1 %.old2, label %bb.m, label %.thread521

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ek = and i32 %i.ct, 8388624
  %or.cond301.not = icmp eq i32 %i.ek, 8388624
  br i1 %or.cond301.not, label %bb.n, label %.thread521

bb.n:                                             ; preds = %bb.m
  %i.el = getelementptr inbounds nuw i8, ptr %i.av, i64 84
  %i.em = load <2 x float>, ptr %i.ac, align 4    ; 13 uses
  %i.en = load <2 x float>, ptr %i.ad, align 4    ; 10 uses
  %i.eo = load <2 x float>, ptr %i.el, align 4    ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.av, i64 92
  %i.eq = load <2 x float>, ptr %i.ep, align 4    ; 5 uses
  %6 = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %7 = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %i.em, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract.i320 = extractelement <2 x float> %i.en, i64 0
  %8 = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.er = shufflevector <2 x float> %i.em, <2 x float> %i.en, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.es = shufflevector <2 x float> %i.eo, <2 x float> %i.eq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.et = fmul <4 x float> %i.er, %i.es           ; 7 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.av, i64 100
  %i.ev = load <2 x float>, ptr %i.ae, align 4    ; 10 uses
  %i.ew = load <2 x float>, ptr %i.af, align 4    ; 9 uses
  %i.ex = load <2 x float>, ptr %i.eu, align 4    ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.av, i64 108
  %i.ez = load <2 x float>, ptr %i.ey, align 4    ; 5 uses
  %9 = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %10 = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.4.vec.extract.i324 = extractelement <2 x float> %i.ev, i64 1 ; 2 uses
  %.sroa.32.8.vec.extract.i325 = extractelement <2 x float> %i.ew, i64 0
  %11 = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fa = shufflevector <2 x float> %i.ev, <2 x float> %i.ew, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fb = shufflevector <2 x float> %i.ex, <2 x float> %i.ez, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fc = fmul <4 x float> %i.fa, %i.fb           ; 7 uses
  %i.fd = shufflevector <4 x float> %i.et, <4 x float> %i.fc, <2 x i32> <i32 0, i32 4>
  %i.fe = shufflevector <4 x float> %i.et, <4 x float> %i.fc, <2 x i32> <i32 1, i32 5>
  %i.ff = fadd <2 x float> %i.fd, %i.fe
  %i.fg = shufflevector <4 x float> %i.et, <4 x float> %i.fc, <2 x i32> <i32 2, i32 6>
  %i.fh = fadd <2 x float> %i.ff, %i.fg
  %i.fi = shufflevector <4 x float> %i.et, <4 x float> %i.fc, <2 x i32> <i32 3, i32 7>
  %i.fj = fadd <2 x float> %i.fi, %i.fh           ; 2 uses
  %i.fk = fmul <2 x float> %i.fj, %i.fj           ; 2 uses
  %i.fl = extractelement <2 x float> %i.fk, i64 0 ; 2 uses
  %i.fm = extractelement <2 x float> %i.fk, i64 1 ; 2 uses
  %i.fn = fcmp olt float %i.fl, %i.fm
  %i.fo = select i1 %i.fn, float %i.fl, float %i.fm
  %i.fp = fmul float %.sroa.0.4.vec.extract.i320, %.sroa.0.4.vec.extract.i324
  %i.fq = fmul float %.sroa.01.4.vec.extract.i, %.sroa.32.8.vec.extract.i325
  %i.fr = shufflevector <2 x float> %i.ew, <2 x float> %i.ev, <2 x i32> <i32 0, i32 2>
  %i.fs = fmul <2 x float> %i.em, %i.fr           ; 2 uses
  %i.ft = shufflevector <2 x float> %i.en, <2 x float> %i.em, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.fu = fmul <2 x float> %i.ft, %i.ev           ; 2 uses
  %i.fv = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fw = insertelement <2 x float> %i.fv, float %i.fp, i64 0
  %i.fx = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fy = insertelement <2 x float> %i.fx, float %i.fq, i64 0
  %i.fz = fsub <2 x float> %i.fw, %i.fy
  %i.ga = fsub <2 x float> %i.fs, %i.fu
  %i.gb = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 5 uses
  %i.gc = fmul <2 x float> %i.gb, %i.ev
  %i.gd = shufflevector <2 x float> %i.ev, <2 x float> %i.ew, <2 x i32> <i32 1, i32 2>
  %i.ge = fmul <2 x float> %i.gb, %i.gd
  %i.gf = fadd <2 x float> %i.gc, %i.fz
  %i.gg = fadd <2 x float> %i.ge, %i.ga
  %i.gh = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.gi = fmul <2 x float> %i.em, %i.gh
  %i.gj = shufflevector <2 x float> %i.em, <2 x float> %i.en, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.gk = fmul <2 x float> %i.gj, %i.gh
  %i.gl = fsub <2 x float> %i.gf, %i.gi           ; 3 uses
  %i.gm = fsub <2 x float> %i.gg, %i.gk           ; 3 uses
  %i.gn = shufflevector <2 x float> %i.en, <2 x float> %i.em, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.go = shufflevector <2 x float> %i.ew, <2 x float> %i.ev, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.gp = fmul <4 x float> %i.gn, %i.go           ; 4 uses
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.gr = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.gs = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.gt = fadd <4 x float> %i.gr, %i.gs
  %shift603 = fadd <4 x float> %i.gq, %i.gt
  %foldExtExtBinop604 = fadd <4 x float> %i.gp, %shift603 ; 2 uses
  %i.gu = extractelement <4 x float> %foldExtExtBinop604, i64 0
  %i.gv = load <2 x float>, ptr %5, align 8       ; 2 uses
  %i.gw = load <2 x float>, ptr %.sroa.4503.0..sroa_idx, align 4 ; 2 uses
  %i.gx = load <2 x float>, ptr %4, align 8       ; 2 uses
  %i.gy = load <2 x float>, ptr %.sroa.4496.0..sroa_idx, align 4 ; 2 uses
  %i.gz = shufflevector <2 x float> %i.gw, <2 x float> %i.gv, <2 x i32> <i32 1, i32 2>
  %i.ha = shufflevector <2 x float> %i.gy, <2 x float> %i.gx, <2 x i32> <i32 1, i32 2>
  %i.hb = fsub <2 x float> %i.gz, %i.ha           ; 4 uses
  %i.hc = fsub <2 x float> %i.gv, %i.gx           ; 4 uses
  %i.hd = fsub <2 x float> %i.gw, %i.gy
  %i.he = fmul <2 x float> %i.gj, %i.hb
  %i.hf = shufflevector <2 x float> %i.hc, <2 x float> %i.hb, <2 x i32> <i32 1, i32 2>
  %i.hg = fmul <2 x float> %i.ft, %i.hf
  %i.hh = fmul <2 x float> %i.ft, %i.hc
  %i.hi = fmul <2 x float> %i.em, %i.hb
  %i.hj = fsub <2 x float> %i.he, %i.hg
  %i.hk = fsub <2 x float> %i.hh, %i.hi
  %i.hl = fmul <2 x float> %i.gb, %i.hc
  %i.hm = fmul <2 x float> %i.gb, %i.hd
  %i.hn = fsub <2 x float> %i.hj, %i.hl           ; 2 uses
  %i.ho = fsub <2 x float> %i.hk, %i.hm           ; 2 uses
  %foldExtExtBinop606 = fmul <2 x float> %i.en, %i.hn
  %shift608 = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop609 = fmul <2 x float> %i.em, %shift608
  %foldExtExtBinop611 = fsub <2 x float> %foldExtExtBinop606, %foldExtExtBinop609
  %i.hp = extractelement <2 x float> %foldExtExtBinop611, i64 0
  %i.hq = fmul <2 x float> %i.em, %i.ho
  %i.hr = fmul <2 x float> %i.gj, %i.hn
  %i.hs = fsub <2 x float> %i.hq, %i.hr
  %i.ht = fmul <2 x float> %i.hs, splat (float 2.000000e+00)
  %i.hu = fmul float %i.hp, 2.000000e+00
  %i.hv = extractelement <2 x float> %i.hc, i64 1
  %i.hw = fadd float %i.hv, %i.hu
  %i.hx = fadd <2 x float> %i.hb, %i.ht
  %i.hy = getelementptr inbounds nuw i8, ptr %i.av, i64 116
  %.sroa.0145.0.copyload = load <2 x float>, ptr %i.hy, align 4, !tbaa !142 ; 2 uses
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 124
  %.sroa.4146.0.copyload = load float, ptr %.sroa.4146.0..sroa_idx, align 4, !tbaa !142
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %.sroa.5147.0.copyload = load <2 x float>, ptr %.sroa.5147.0..sroa_idx, align 8, !tbaa !142 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !142 ; 4 uses
  br i1 %i.co, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hz = getelementptr inbounds nuw i8, ptr %.0289, i64 184
  %.sroa.0141.0.copyload142 = load <2 x float>, ptr %i.hz, align 4, !tbaa !142
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0289, i64 192
  %.sroa.5143.0.copyload144 = load float, ptr %.sroa.5143.0..sroa_idx, align 4, !tbaa !142
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sroa.0141.0 = phi <2 x float> [ %.sroa.0141.0.copyload142, %bb.o ], [ zeroinitializer, %bb.n ] ; 3 uses
  %.sroa.5143.0 = phi float [ %.sroa.5143.0.copyload144, %bb.o ], [ 0.000000e+00, %bb.n ] ; 2 uses
  br i1 %i.cr, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ia = getelementptr inbounds nuw i8, ptr %i.du, i64 184
  %.sroa.0138.0.copyload139 = load <2 x float>, ptr %i.ia, align 4, !tbaa !142
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 192
  %.sroa.5.0.copyload140 = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !142
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.sroa.0138.0 = phi <2 x float> [ %.sroa.0138.0.copyload139, %bb.q ], [ zeroinitializer, %bb.p ] ; 3 uses
  %.sroa.5.0 = phi float [ %.sroa.5.0.copyload140, %bb.q ], [ 0.000000e+00, %bb.p ] ; 2 uses
  %.sroa.05.4.vec.extract.i = extractelement <2 x float> %.sroa.0145.0.copyload, i64 1
  %i.ib = fsub float %.sroa.05.4.vec.extract.i, %i.hw ; 2 uses
  %i.ic = fmul float %i.ib, %i.ib
  %i.id = shufflevector <2 x float> %.sroa.0145.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ie = insertelement <2 x float> %i.id, float %.sroa.4146.0.copyload, i64 0
  %i.if = fsub <2 x float> %i.ie, %i.hx           ; 2 uses
  %i.ig = fmul <2 x float> %i.if, %i.if           ; 2 uses
  %i.ih = extractelement <2 x float> %i.ig, i64 1
  %i.ii = fadd float %i.ih, %i.ic
  %i.ij = extractelement <2 x float> %i.ig, i64 0
  %i.ik = fadd float %i.ij, %i.ii                 ; 2 uses
  %i.il = fcmp ogt float %i.fo, f0x3F7E0E2E
  %i.im = fmul float %i.eh, %i.eh
  %i.in = fcmp olt float %i.ik, %i.im
  %or.cond303 = select i1 %i.il, i1 %i.in, i1 false
  br i1 %or.cond303, label %bb.s, label %.thread521

bb.s:                                             ; preds = %bb.r
  %i.io = tail call float @sqrtf(float noundef %i.ik) #21
  %i.ip = fsub float %i.eh, %i.io                 ; 2 uses
  %i.iq = shufflevector <2 x float> %.sroa.5147.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ir = fcmp ogt float %.sroa.5143.0, %.sroa.5.0
  %i.is = fcmp ogt <2 x float> %.sroa.0141.0, %.sroa.0138.0 ; 2 uses
  %i.it = shufflevector <2 x i1> %i.is, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %i.iu = insertelement <2 x i1> %i.it, i1 %i.ir, i64 1
  %i.iv = shufflevector <2 x float> %.sroa.0141.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.iw = insertelement <2 x float> %i.iv, float %.sroa.5143.0, i64 1
  %i.ix = shufflevector <2 x float> %.sroa.0138.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.iy = insertelement <2 x float> %i.ix, float %.sroa.5.0, i64 1
  %i.iz = select <2 x i1> %i.iu, <2 x float> %i.iw, <2 x float> %i.iy ; 2 uses
  %i.ja = select <2 x i1> %i.is, <2 x float> %.sroa.0141.0, <2 x float> %.sroa.0138.0 ; 2 uses
  %i.jb = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.5147.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.jc = fmul <2 x float> %i.gm, %i.jb
  %i.jd = shufflevector <2 x float> %i.gm, <2 x float> %i.gl, <2 x i32> <i32 1, i32 2>
  %i.je = shufflevector <2 x float> %.sroa.5147.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.jf = fmul <2 x float> %i.jd, %i.je
  %i.jg = fsub <2 x float> %i.jc, %i.jf
  %i.jh = fmul <2 x float> %i.gl, %i.iq           ; 2 uses
  %shift613 = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop614 = fsub <2 x float> %i.jh, %shift613
  %i.ji = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jj = fmul <2 x float> %i.gl, %i.ji
  %i.jk = fadd <2 x float> %i.jj, %i.jg
  %i.jl = shufflevector <4 x float> %foldExtExtBinop604, <4 x float> poison, <2 x i32> zeroinitializer
  %i.jm = fmul <2 x float> %i.jl, %.sroa.5147.0.copyload
  %i.jn = fsub <2 x float> %i.jk, %i.jm           ; 3 uses
  %i.jo = insertelement <2 x float> %i.gm, float %i.gu, i64 0
  %i.jp = fmul <2 x float> %i.jo, %.sroa.6.0.copyload ; 2 uses
  %shift616 = shufflevector <2 x float> %i.jp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop617 = fadd <2 x float> %foldExtExtBinop614, %shift616
  %foldExtExtBinop619 = fsub <2 x float> %foldExtExtBinop617, %i.jp
  %i.jq = extractelement <2 x float> %foldExtExtBinop619, i64 0 ; 3 uses
  %i.jr = fcmp olt <2 x float> %i.jn, zeroinitializer
  %i.js = fneg <2 x float> %i.jn
  %i.jt = select <2 x i1> %i.jr, <2 x float> %i.js, <2 x float> %i.jn ; 3 uses
  %i.ju = fcmp olt float %i.jq, 0.000000e+00
  %i.jv = fneg float %i.jq
  %i.jw = select i1 %i.ju, float %i.jv, float %i.jq ; 2 uses
  %i.jx = extractelement <2 x float> %i.ja, i64 0
  %i.jy = fmul float %i.jw, %i.jx
  %shift621 = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop622 = fmul <2 x float> %i.jt, %shift621
  %i.jz = extractelement <2 x float> %foldExtExtBinop622, i64 0
  %i.ka = fadd float %i.jy, %i.jz                 ; 2 uses
  %i.kb = fmul <2 x float> %i.jt, %i.iz
  %i.kc = shufflevector <2 x float> %i.jt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kd = insertelement <2 x float> %i.kc, float %i.jw, i64 1
  %i.ke = fmul <2 x float> %i.kd, %i.ja
  %i.kf = fadd <2 x float> %i.kb, %i.ke           ; 2 uses
  %i.kg = fmul float %i.ka, %i.ka
  %i.kh = fmul <2 x float> %i.kf, %i.kf           ; 2 uses
  %i.ki = extractelement <2 x float> %i.kh, i64 1
  %i.kj = fadd float %i.ki, %i.kg
  %i.kk = extractelement <2 x float> %i.kh, i64 0
  %i.kl = fadd float %i.kk, %i.kj
  %i.km = fmul float %i.kl, 4.000000e+00
  %i.kn = fmul float %i.ip, %i.ip
  %i.ko = fcmp uge float %i.km, %i.kn
  br i1 %i.ko, label %.thread521, label %bb.t

bb.t:                                             ; preds = %bb.s
  %12 = extractelement <2 x float> %i.eo, i64 1
  %i.kp = fneg float %12
  %13 = shufflevector <2 x float> %i.em, <2 x float> %i.en, <2 x i32> <i32 0, i32 2>
  %14 = shufflevector <2 x float> %i.eq, <2 x float> %i.eo, <2 x i32> <i32 0, i32 3>
  %15 = fmul <2 x float> %13, %14
  %16 = shufflevector <2 x float> %i.en, <2 x float> %i.em, <2 x i32> <i32 0, i32 3>
  %17 = shufflevector <2 x float> %i.eo, <2 x float> %i.eq, <2 x i32> <i32 0, i32 2>
  %18 = fmul <2 x float> %16, %17
  %19 = fmul <2 x float> %6, %i.eo                ; 2 uses
  %shift624 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop625 = fsub <2 x float> %19, %shift624
  %20 = fmul <2 x float> %i.gb, %7
  %21 = fmul <2 x float> %i.en, %8                ; 2 uses
  %shift627 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop628 = fsub <2 x float> %foldExtExtBinop625, %shift627
  %22 = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %23 = fmul <2 x float> %6, %22
  %foldExtExtBinop630 = fadd <2 x float> %21, %foldExtExtBinop628 ; 4 uses
  %24 = shufflevector <2 x float> %foldExtExtBinop630, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %25 = shufflevector <2 x float> %foldExtExtBinop630, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %26 = extractelement <2 x float> %foldExtExtBinop630, i64 0
  %27 = fmul float %.sroa.01.4.vec.extract.i, %i.kp
  %28 = extractelement <4 x float> %i.et, i64 0
  %29 = fsub float %27, %28
  %30 = extractelement <4 x float> %i.et, i64 2
  %31 = fsub float %29, %30
  %32 = extractelement <4 x float> %i.et, i64 3
  %33 = fsub float %32, %31                       ; 2 uses
  %34 = extractelement <2 x float> %i.ex, i64 1
  %35 = fneg float %34
  %36 = shufflevector <2 x float> %i.ev, <2 x float> %i.ew, <2 x i32> <i32 0, i32 2>
  %37 = shufflevector <2 x float> %i.ez, <2 x float> %i.ex, <2 x i32> <i32 0, i32 3>
  %38 = fmul <2 x float> %36, %37
  %39 = shufflevector <2 x float> %i.ew, <2 x float> %i.ev, <2 x i32> <i32 0, i32 3>
  %40 = shufflevector <2 x float> %i.ex, <2 x float> %i.ez, <2 x i32> <i32 0, i32 2>
  %41 = fmul <2 x float> %39, %40
  %42 = fmul <2 x float> %9, %i.ex                ; 2 uses
  %shift632 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop633 = fsub <2 x float> %42, %shift632
  %foldExtExtBinop624 = fmul <2 x float> %i.gh, %10
  %foldExtExtBinop626 = fmul <2 x float> %i.ew, %11 ; 2 uses
  %shift635 = shufflevector <2 x float> %foldExtExtBinop626, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop628.a = fsub <2 x float> %foldExtExtBinop633, %shift635
  %43 = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %44 = fmul <2 x float> %9, %43
  %foldExtExtBinop638 = fadd <2 x float> %foldExtExtBinop626, %foldExtExtBinop628.a ; 4 uses
  %45 = shufflevector <2 x float> %foldExtExtBinop638, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %46 = shufflevector <2 x float> %foldExtExtBinop638, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.kq = extractelement <2 x float> %foldExtExtBinop638, i64 0
  %47 = fmul float %.sroa.0.4.vec.extract.i324, %35
  %i.kr = extractelement <4 x float> %i.fc, i64 0
  %i.ks = fsub float %47, %i.kr
  %48 = extractelement <4 x float> %i.fc, i64 2
  %49 = fsub float %i.ks, %48
  %50 = extractelement <4 x float> %i.fc, i64 3
  %51 = fsub float %50, %49                       ; 2 uses
  %52 = getelementptr inbounds nuw i8, ptr %i.du, i64 28
  %53 = getelementptr inbounds nuw i8, ptr %.0289, i64 28
  %.sroa.084.0.copyload = load <2 x float>, ptr %52, align 4
  %.sroa.285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 36
  %.sroa.285.0.copyload = load float, ptr %.sroa.285.0..sroa_idx, align 4
  %.sroa.082.0.copyload = load <2 x float>, ptr %53, align 4
  %.sroa.283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0289, i64 36
  %.sroa.283.0.copyload = load float, ptr %.sroa.283.0..sroa_idx, align 4
  %54 = fsub <2 x float> %15, %18
  %55 = fsub <2 x float> %54, %20
  %56 = fadd <2 x float> %23, %55                 ; 4 uses
  %57 = fsub <2 x float> %38, %41
  %58 = fsub <2 x float> %57, %foldExtExtBinop624
  %59 = fadd <2 x float> %44, %58                 ; 4 uses
  %60 = shufflevector <2 x float> %foldExtExtBinop630, <2 x float> poison, <2 x i32> zeroinitializer
  %61 = fmul <2 x float> %60, %56                 ; 4 uses
  %62 = insertelement <2 x float> poison, float %33, i64 0
  %63 = shufflevector <2 x float> %62, <2 x float> poison, <2 x i32> zeroinitializer
  %64 = shufflevector <2 x float> %56, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %65 = fmul <2 x float> %63, %64                 ; 4 uses
  %foldExtExtBinop640 = fadd <2 x float> %61, %65
  %66 = fsub <2 x float> %61, %65
  %67 = fadd <2 x float> %61, %65
  %68 = shufflevector <2 x float> %56, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 1>
  %69 = shufflevector <4 x float> %68, <4 x float> %25, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %70 = shufflevector <2 x float> %56, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1>
  %71 = shufflevector <4 x float> %70, <4 x float> %24, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.kt = fmul <4 x float> %69, %71               ; 3 uses
  %72 = fmul float %26, %33                       ; 2 uses
  %i.ku = insertelement <4 x float> poison, float %72, i64 0
  %73 = shufflevector <4 x float> %i.ku, <4 x float> %i.kt, <4 x i32> <i32 0, i32 6, i32 7, i32 5>
  %i.kv = fadd <4 x float> %i.kt, %73
  %74 = fmul <4 x float> %i.kv, splat (float 2.000000e+00) ; 3 uses
  %75 = shufflevector <2 x float> %61, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %76 = shufflevector <4 x float> %75, <4 x float> %i.kt, <4 x i32> <i32 1, i32 poison, i32 4, i32 poison>
  %77 = shufflevector <4 x float> %76, <4 x float> <float poison, float 1.000000e+00, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %78 = shufflevector <2 x float> %65, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %79 = shufflevector <4 x float> %78, <4 x float> %74, <4 x i32> <i32 1, i32 6, i32 poison, i32 7>
  %80 = insertelement <4 x float> %79, float %72, i64 2
  %i.kw = fsub <4 x float> %77, %80               ; 4 uses
  %81 = shufflevector <4 x float> %74, <4 x float> %i.kw, <2 x i32> <i32 1, i32 4> ; 2 uses
  %82 = fsub <2 x float> <float 1.000000e+00, float poison>, %81
  %83 = fmul <2 x float> %81, <float poison, float 2.000000e+00>
  %84 = shufflevector <4 x float> %i.kw, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %85 = shufflevector <2 x float> %foldExtExtBinop638, <2 x float> poison, <2 x i32> zeroinitializer
  %86 = fmul <2 x float> %85, %59                 ; 4 uses
  %87 = insertelement <2 x float> poison, float %51, i64 0
  %88 = shufflevector <2 x float> %87, <2 x float> poison, <2 x i32> zeroinitializer
  %89 = shufflevector <2 x float> %59, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %90 = fmul <2 x float> %88, %89                 ; 4 uses
  %foldExtExtBinop642 = fadd <2 x float> %86, %90
  %91 = fsub <2 x float> %86, %90
  %92 = fadd <2 x float> %86, %90
  %93 = shufflevector <2 x float> %59, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 1>
  %94 = shufflevector <4 x float> %93, <4 x float> %46, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %95 = shufflevector <2 x float> %59, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1>
  %96 = shufflevector <4 x float> %95, <4 x float> %45, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %97 = fmul <4 x float> %94, %96                 ; 3 uses
  %i.kx = fmul float %i.kq, %51                   ; 2 uses
  %98 = insertelement <4 x float> poison, float %i.kx, i64 0
  %99 = shufflevector <4 x float> %98, <4 x float> %97, <4 x i32> <i32 0, i32 6, i32 7, i32 5>
  %100 = fadd <4 x float> %97, %99
  %101 = fmul <4 x float> %100, splat (float 2.000000e+00) ; 3 uses
  %102 = shufflevector <2 x float> %86, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %103 = shufflevector <4 x float> %102, <4 x float> %97, <4 x i32> <i32 1, i32 poison, i32 4, i32 poison>
  %104 = shufflevector <4 x float> %103, <4 x float> <float poison, float 1.000000e+00, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %105 = shufflevector <2 x float> %90, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %106 = shufflevector <4 x float> %105, <4 x float> %101, <4 x i32> <i32 1, i32 6, i32 poison, i32 7>
  %107 = insertelement <4 x float> %106, float %i.kx, i64 2
  %108 = fsub <4 x float> %104, %107              ; 4 uses
  %109 = shufflevector <4 x float> %101, <4 x float> %108, <2 x i32> <i32 1, i32 4> ; 2 uses
  %110 = fsub <2 x float> <float 1.000000e+00, float poison>, %109
  %111 = fmul <2 x float> %109, <float poison, float 2.000000e+00>
  %112 = shufflevector <4 x float> %108, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %113 = shufflevector <2 x float> %.sroa.084.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %114 = insertelement <4 x float> %113, float -0.000000e+00, i64 3
  %115 = insertelement <4 x float> %114, float %.sroa.285.0.copyload, i64 2
  %116 = shufflevector <2 x float> %.sroa.082.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %117 = insertelement <4 x float> %116, float 0.000000e+00, i64 3
  %118 = insertelement <4 x float> %117, float %.sroa.283.0.copyload, i64 2
  %119 = fsub <4 x float> %115, %118
  %i.ky = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !272 ; 3 uses
  %i.la = icmp sgt i32 %i.kz, 0
  br i1 %i.la, label %.lr.ph543, label %._crit_edge544.thread

._crit_edge544.thread:                            ; preds = %bb.t
  %i.lb = load i32, ptr %i.ag, align 4, !tbaa !242
  %i.lc = add nsw i32 %i.lb, 1
  store i32 %i.lc, ptr %i.ag, align 4, !tbaa !242
  br label %.loopexit

.lr.ph543:                                        ; preds = %bb.t
  %i.ld = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !273
  %wide.trip.count560 = zext nneg i32 %i.kz to i64
  %120 = shufflevector <2 x float> %91, <2 x float> %92, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %121 = fmul <4 x float> %120, <float 2.000000e+00, float 2.000000e+00, float poison, float poison>
  %122 = shufflevector <2 x float> %66, <2 x float> %67, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %123 = fmul <4 x float> %122, <float 2.000000e+00, float 2.000000e+00, float poison, float poison>
  %124 = shufflevector <2 x float> %112, <2 x float> %foldExtExtBinop642, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %125 = fmul <4 x float> %124, <float 2.000000e+00, float 2.000000e+00, float poison, float poison>
  %126 = shufflevector <2 x float> %110, <2 x float> %111, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %127 = shufflevector <2 x float> %84, <2 x float> %foldExtExtBinop640, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %128 = fmul <4 x float> %127, <float 2.000000e+00, float 2.000000e+00, float poison, float poison>
  %129 = shufflevector <2 x float> %82, <2 x float> %83, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.lf = insertelement <4 x float> %74, float -0.000000e+00, i64 3
  %i.lg = insertelement <4 x float> %101, float -0.000000e+00, i64 3
  %130 = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %i.kw, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %131 = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.kw, <4 x i32> <i32 poison, i32 poison, i32 7, i32 3>
  %132 = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %108, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %133 = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %108, <4 x i32> <i32 poison, i32 poison, i32 7, i32 3>
  %134 = shufflevector <4 x float> %i.lf, <4 x float> %129, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %135 = shufflevector <4 x float> %130, <4 x float> %128, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %136 = shufflevector <4 x float> %123, <4 x float> %131, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %137 = shufflevector <4 x float> %i.lg, <4 x float> %126, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %138 = shufflevector <4 x float> %132, <4 x float> %125, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %139 = shufflevector <4 x float> %121, <4 x float> %133, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.u

._crit_edge544:                                   ; preds = %._crit_edge
  %i.lh = load i32, ptr %i.ag, align 4, !tbaa !242
  %i.li = add nsw i32 %i.lh, 1
  store i32 %i.li, ptr %i.ag, align 4, !tbaa !242
  %i.lj = tail call i32 @llvm.umin.i32(i32 %i.kz, i32 7)
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = getelementptr [4 x i8], ptr %i.f, i64 %i.lk
  %i.lm = getelementptr i8, ptr %i.ll, i64 3748   ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !82
  %i.lo = add nsw i32 %i.ln, 1
  store i32 %i.lo, ptr %i.lm, align 4, !tbaa !82
  br label %.loopexit

bb.u:                                             ; preds = %.lr.ph543, %._crit_edge
  %indvars.iv557 = phi i64 [ 0, %.lr.ph543 ], [ %indvars.iv.next558, %._crit_edge ] ; 2 uses
  %i.lp = getelementptr inbounds nuw [268 x i8], ptr %i.le, i64 %indvars.iv557 ; 4 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 264
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !275 ; 2 uses
  %i.ls = icmp sgt i32 %i.lr, 0
  br i1 %i.ls, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.u
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lp, i64 232
  %.sroa.469.0.copyload = load float, ptr %.sroa.469.0..sroa_idx, align 4, !tbaa !142
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 224
  %.sroa.068.0.copyload = load <2 x float>, ptr %i.lt, align 4, !tbaa !142
  %wide.trip.count = zext nneg i32 %i.lr to i64
  %140 = shufflevector <2 x float> %.sroa.068.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %141 = insertelement <4 x float> %140, float %.sroa.469.0.copyload, i64 2
  br label %bb.v

._crit_edge:                                      ; preds = %bb.v, %bb.u
  %indvars.iv.next558 = add nuw nsw i64 %indvars.iv557, 1 ; 2 uses
  %exitcond561.not = icmp eq i64 %indvars.iv.next558, %wide.trip.count560
  br i1 %exitcond561.not, label %._crit_edge544, label %bb.u, !llvm.loop !645

bb.v:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %i.lu = getelementptr inbounds nuw [56 x i8], ptr %i.lp, i64 %indvars.iv ; 7 uses
  %.sroa.055.0.copyload = load <2 x float>, ptr %i.lu, align 4 ; 2 uses
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %.sroa.256.0.copyload = load float, ptr %.sroa.256.0..sroa_idx, align 4
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 12
  %.sroa.047.0.copyload = load <2 x float>, ptr %i.lv, align 4 ; 2 uses
  %.sroa.248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lu, i64 20
  %.sroa.248.0.copyload = load float, ptr %.sroa.248.0..sroa_idx, align 4
  %142 = getelementptr inbounds nuw i8, ptr %i.lu, i64 28
  %143 = shufflevector <2 x float> %.sroa.055.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %144 = insertelement <4 x float> %143, float 1.000000e+00, i64 3
  %i.lw = fmul <4 x float> %134, %144
  %145 = shufflevector <2 x float> %.sroa.055.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.lx = insertelement <4 x float> %145, float 1.000000e+00, i64 3
  %i.ly = fmul <4 x float> %135, %i.lx
  %i.lz = fadd <4 x float> %i.lw, %i.ly
  %146 = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.256.0.copyload, i64 0
  %147 = shufflevector <4 x float> %146, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %148 = fmul <4 x float> %147, %136
  %149 = fadd <4 x float> %148, %i.lz
  %150 = shufflevector <2 x float> %.sroa.047.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %151 = insertelement <4 x float> %150, float 1.000000e+00, i64 3
  %152 = fmul <4 x float> %137, %151
  %153 = shufflevector <2 x float> %.sroa.047.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %154 = insertelement <4 x float> %153, float 1.000000e+00, i64 3
  %155 = fmul <4 x float> %138, %154
  %156 = fadd <4 x float> %152, %155
  %157 = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %.sroa.248.0.copyload, i64 0
  %158 = shufflevector <4 x float> %157, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %159 = fmul <4 x float> %158, %139
  %160 = fadd <4 x float> %159, %156
  %161 = fsub <4 x float> %160, %149
  %162 = fadd <4 x float> %161, %119
  %i.ma = load float, ptr %142, align 4, !tbaa !651
  %163 = insertelement <4 x float> %141, float %i.ma, i64 3
  %164 = fmul <4 x float> %163, %162
  %165 = tail call float @llvm.vector.reduce.fadd.v4f32(float -0.000000e+00, <4 x float> %164)
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  store float %165, ptr %i.mb, align 4, !tbaa !277
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lu, i64 52
  store i8 1, ptr %i.mc, align 4, !tbaa !278
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.v, !llvm.loop !646

.thread521:                                       ; preds = %bb.s, %bb.r, %bb.m, %bb.l, %bb.k
  %i.md = getelementptr inbounds nuw i8, ptr %i.av, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.md, ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !267
  %i.me = getelementptr inbounds nuw i8, ptr %i.av, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.me, ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !267
  %i.mf = getelementptr inbounds nuw i8, ptr %i.av, i64 116
  %.sroa.6494.0.copyload = load <2 x float>, ptr %i.ae, align 4 ; 4 uses
  %.sroa.7.0.copyload = load <2 x float>, ptr %i.af, align 4 ; 4 uses
  %.sroa.6487.0.copyload = load <2 x float>, ptr %i.ac, align 4 ; 10 uses
  %.sroa.8489.0.copyload = load <2 x float>, ptr %i.ad, align 4 ; 6 uses
  %i.mg = shufflevector <2 x float> %.sroa.8489.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mh = shufflevector <2 x float> %.sroa.6487.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mi = fmul <2 x float> %.sroa.6494.0.copyload, %i.mh ; 2 uses
  %shift645 = shufflevector <2 x float> %i.mi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop646 = fsub <2 x float> %i.mi, %shift645
  %i.mj = shufflevector <2 x float> %.sroa.6494.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 1, i32 2, i32 2, i32 0>
  %i.mk = shufflevector <2 x float> %.sroa.8489.0.copyload, <2 x float> %.sroa.6487.0.copyload, <4 x i32> <i32 0, i32 3, i32 2, i32 0>
  %i.ml = fmul <4 x float> %i.mj, %i.mk           ; 2 uses
  %i.mm = shufflevector <4 x float> %i.ml, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.mn = shufflevector <4 x float> %i.ml, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.mo = fsub <2 x float> %i.mm, %i.mn
  %i.mp = shufflevector <2 x float> %.sroa.8489.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.mq = fmul <2 x float> %.sroa.6494.0.copyload, %i.mp
  %i.mr = fadd <2 x float> %i.mq, %i.mo
  %i.ms = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mt = fmul <2 x float> %i.ms, %.sroa.6487.0.copyload
  %i.mu = fsub <2 x float> %i.mr, %i.mt
  %i.mv = fmul <2 x float> %.sroa.7.0.copyload, %i.mg ; 2 uses
  %foldExtExtBinop648 = fadd <2 x float> %foldExtExtBinop646, %i.mv
  %shift650 = shufflevector <2 x float> %i.mv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop651 = fsub <2 x float> %foldExtExtBinop648, %shift650
  %i.mw = shufflevector <2 x float> %.sroa.6494.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mx = shufflevector <2 x float> %.sroa.6487.0.copyload, <2 x float> %.sroa.8489.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.my = fmul <4 x float> %i.mw, %i.mx           ; 4 uses
  %i.mz = shufflevector <4 x float> %i.my, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.na = shufflevector <4 x float> %i.my, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.nb = shufflevector <4 x float> %i.my, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.nc = shufflevector <4 x float> %i.my, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.nd = fadd <2 x float> %i.nb, %i.nc
  %i.ne = fadd <2 x float> %i.na, %i.nd
  %i.nf = fadd <2 x float> %i.mz, %i.ne
  %.sroa.251.12.vec.insert.i451 = shufflevector <2 x float> %foldExtExtBinop651, <2 x float> %i.nf, <2 x i32> <i32 0, i32 2>
  %i.ng = load <2 x float>, ptr %5, align 8
  %i.nh = load <2 x float>, ptr %.sroa.4503.0..sroa_idx, align 4
  %i.ni = load <2 x float>, ptr %4, align 8
  %i.nj = load <2 x float>, ptr %.sroa.4496.0..sroa_idx, align 4
  %i.nk = fsub <2 x float> %i.ng, %i.ni           ; 4 uses
  %i.nl = fsub <2 x float> %i.nh, %i.nj           ; 4 uses
  %i.nm = fmul <2 x float> %i.nl, %.sroa.6487.0.copyload
  %i.nn = shufflevector <2 x float> %.sroa.8489.0.copyload, <2 x float> %.sroa.6487.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.no = fmul <2 x float> %i.nk, %i.nn
  %i.np = shufflevector <2 x float> %.sroa.6487.0.copyload, <2 x float> %.sroa.8489.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.nq = fmul <2 x float> %i.nk, %i.np
  %i.nr = shufflevector <2 x float> %i.nl, <2 x float> %i.nk, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ns = fmul <2 x float> %i.nr, %.sroa.6487.0.copyload
  %i.nt = fsub <2 x float> %i.nm, %i.nq
  %i.nu = fsub <2 x float> %i.no, %i.ns
  %i.nv = fmul <2 x float> %i.nr, %i.mp
  %i.nw = fmul <2 x float> %i.nl, %i.mp
  %i.nx = fsub <2 x float> %i.nt, %i.nv           ; 2 uses
  %i.ny = fsub <2 x float> %i.nu, %i.nw           ; 2 uses
  %i.nz = fmul <2 x float> %i.np, %i.nx
  %i.oa = fmul <2 x float> %i.nn, %i.ny
  %i.ob = fsub <2 x float> %i.nz, %i.oa
  %foldExtExtBinop662 = fmul <2 x float> %.sroa.6487.0.copyload, %i.ny
  %foldExtExtBinop664 = fmul <2 x float> %.sroa.6487.0.copyload, %i.nx
  %shift666 = shufflevector <2 x float> %foldExtExtBinop664, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop667 = fsub <2 x float> %foldExtExtBinop662, %shift666
  %i.oc = extractelement <2 x float> %foldExtExtBinop667, i64 0
  %i.od = fmul <2 x float> %i.ob, splat (float 2.000000e+00)
  %i.oe = fadd <2 x float> %i.nk, %i.od
  %i.of = fmul float %i.oc, 2.000000e+00
  %i.og = extractelement <2 x float> %i.nl, i64 1
  %i.oh = fadd float %i.og, %i.of
  store <2 x float> %i.oe, ptr %i.mf, align 4, !tbaa !142
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 124
  store float %i.oh, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !142
  %.sroa.5.0..sroa_idx465 = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  store <2 x float> %i.mu, ptr %.sroa.5.0..sroa_idx465, align 8, !tbaa !142
  %.sroa.6.0..sroa_idx466 = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  store <2 x float> %.sroa.251.12.vec.insert.i451, ptr %.sroa.6.0..sroa_idx466, align 8, !tbaa !142
  %i.oi = load i32, ptr %i.cs, align 4, !tbaa !190
  %i.oj = or i32 %i.oi, 8388608
  store i32 %i.oj, ptr %i.cs, align 4, !tbaa !190
  %i.ok = getelementptr inbounds nuw i8, ptr %.0289, i64 68
  %i.ol = getelementptr inbounds nuw i8, ptr %i.du, i64 68
  %.sroa.015.0.copyload = load <2 x float>, ptr %i.ok, align 4
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0289, i64 76
  %.sroa.216.0.copyload = load float, ptr %.sroa.216.0..sroa_idx, align 4
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.ol, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 76
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4
  %i.om = tail call zeroext i1 @b3UpdateContact(ptr noundef %i.b, i32 noundef %2, ptr noundef nonnull %i.av, ptr noundef nonnull %i.az, <2 x float> %.sroa.015.0.copyload, float %.sroa.216.0.copyload, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull %i.bd, <2 x float> %.sroa.0.0.copyload, float %.sroa.2.0.copyload, ptr noundef nonnull byval(%struct.b3Transform) align 8 %5, i1 noundef zeroext %i.ec, ptr noundef byval(%struct.b3Arena) align 8 %i.f) #21 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.av, i64 80 ; 3 uses
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !272 ; 2 uses
  %i.op = icmp sgt i32 %i.oo, 0
  br i1 %i.op, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.thread521
  %i.oq = tail call i32 @llvm.umin.i32(i32 %i.oo, i32 7)
  %i.or = zext nneg i32 %i.oq to i64
  %i.os = getelementptr [4 x i8], ptr %i.f, i64 %i.or
  %i.ot = getelementptr i8, ptr %i.os, i64 3748   ; 2 uses
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !82
  %i.ov = add nsw i32 %i.ou, 1
  store i32 %i.ov, ptr %i.ot, align 4, !tbaa !82
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread521
  %.not304 = xor i1 %i.om, true
  %brmerge = or i1 %.not300, %.not304
  br i1 %brmerge, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ow = load i32, ptr %i.cs, align 4, !tbaa !190
  %i.ox = and i32 %i.ow, 4194304
  %.not299 = icmp eq i32 %i.ox, 0
  br i1 %.not299, label %.thread524, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.oy = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !252
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr [112 x i8], ptr %i.b, i64 %i.pa
  %i.pc = getelementptr i8, ptr %i.pb, i64 1192
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !239
  %i.pe = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.pf = load i32, ptr %i.pe, align 8, !tbaa !250
  %i.pg = sext i32 %i.pf to i64
  %i.ph = getelementptr inbounds [12 x i8], ptr %i.pd, i64 %i.pg
  %i.pi = load i32, ptr %i.on, align 8, !tbaa !272
  %i.pj = trunc i32 %i.pi to i16
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  store i16 %i.pj, ptr %i.pk, align 4, !tbaa !652
  br label %.thread524

bb.aa:                                            ; preds = %bb.x
  %or.cond305 = and i1 %.not300, %i.om
  br i1 %or.cond305, label %.sink.split, label %.thread524

.thread524:                                       ; preds = %bb.y, %bb.z, %bb.aa
  %brmerge306 = or i1 %.not300, %i.om
  br i1 %brmerge306, label %bb.ab, label %.sink.split

.sink.split:                                      ; preds = %.thread524, %bb.aa
  %.sink597 = phi i32 [ 262144, %bb.aa ], [ 524288, %.thread524 ]
  %i.pl = load i32, ptr %i.cs, align 4, !tbaa !190
  %i.pm = or i32 %i.pl, %.sink597
  store i32 %i.pm, ptr %i.cs, align 4, !tbaa !190
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !244
  %i.pn = lshr i32 %i.at, 6
  %i.po = and i32 %i.at, 63
  %i.pp = zext nneg i32 %i.po to i64
  %i.pq = shl nuw i64 1, %i.pp
  %i.pr = zext nneg i32 %i.pn to i64
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.pr ; 2 uses
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !245
  %i.pu = or i64 %i.pt, %i.pq
  store i64 %i.pu, ptr %i.ps, align 8, !tbaa !245
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %.thread524
  %i.pv = load i32, ptr %i.on, align 8, !tbaa !272 ; 2 uses
  %i.pw = icmp sgt i32 %i.pv, 0
  br i1 %i.pw, label %.lr.ph551, label %.loopexit

.lr.ph551:                                        ; preds = %bb.ab
  %i.px = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !273
  %wide.trip.count570 = zext nneg i32 %i.pv to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph551, %._crit_edge548
  %indvars.iv567 = phi i64 [ 0, %.lr.ph551 ], [ %indvars.iv.next568, %._crit_edge548 ] ; 2 uses
  %i.pz = getelementptr inbounds nuw [268 x i8], ptr %i.py, i64 %indvars.iv567 ; 6 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 264
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !275 ; 3 uses
  %i.qc = icmp sgt i32 %i.qb, 0
  br i1 %i.qc, label %.lr.ph547.preheader, label %._crit_edge548

.lr.ph547.preheader:                              ; preds = %bb.ac
  %wide.trip.count565 = zext nneg i32 %i.qb to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count565, 3      ; 3 uses
  %i.qd = icmp ult i32 %i.qb, 4
  br i1 %i.qd, label %.lr.ph547.epil.preheader, label %.lr.ph547.preheader.new

.lr.ph547.preheader.new:                          ; preds = %.lr.ph547.preheader
  %unroll_iter = and i64 %wide.trip.count565, 2147483644
  br label %.lr.ph547

._crit_edge548.loopexit.unr-lcssa:                ; preds = %.lr.ph547
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge548, label %.lr.ph547.epil.preheader

.lr.ph547.epil.preheader:                         ; preds = %._crit_edge548.loopexit.unr-lcssa, %.lr.ph547.preheader
  %indvars.iv562.epil.init = phi i64 [ 0, %.lr.ph547.preheader ], [ %indvars.iv.next563.3, %._crit_edge548.loopexit.unr-lcssa ]
  %lcmp.mod669 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod669)
  br label %.lr.ph547.epil

.lr.ph547.epil:                                   ; preds = %.lr.ph547.epil, %.lr.ph547.epil.preheader
  %indvars.iv562.epil = phi i64 [ %indvars.iv562.epil.init, %.lr.ph547.epil.preheader ], [ %indvars.iv.next563.epil, %.lr.ph547.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph547.epil.preheader ], [ %epil.iter.next, %.lr.ph547.epil ]
  %i.qe = getelementptr inbounds nuw [56 x i8], ptr %i.pz, i64 %indvars.iv562.epil ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 24
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !277
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 28
  store float %i.qg, ptr %i.qh, align 4, !tbaa !651
  %indvars.iv.next563.epil = add nuw nsw i64 %indvars.iv562.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge548, label %.lr.ph547.epil, !llvm.loop !647

._crit_edge548:                                   ; preds = %._crit_edge548.loopexit.unr-lcssa, %.lr.ph547.epil, %bb.ac
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond571.not = icmp eq i64 %indvars.iv.next568, %wide.trip.count570
  br i1 %exitcond571.not, label %.loopexit, label %bb.ac, !llvm.loop !648

.lr.ph547:                                        ; preds = %.lr.ph547, %.lr.ph547.preheader.new
  %indvars.iv562 = phi i64 [ 0, %.lr.ph547.preheader.new ], [ %indvars.iv.next563.3, %.lr.ph547 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph547.preheader.new ], [ %niter.next.3, %.lr.ph547 ]
  %i.qi = getelementptr inbounds nuw [56 x i8], ptr %i.pz, i64 %indvars.iv562 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !277
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 28
  store float %i.qk, ptr %i.ql, align 4, !tbaa !651
  %i.qm = getelementptr inbounds nuw [56 x i8], ptr %i.pz, i64 %indvars.iv562 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 80
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !277
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 84
  store float %i.qo, ptr %i.qp, align 4, !tbaa !651
  %i.qq = getelementptr inbounds nuw [56 x i8], ptr %i.pz, i64 %indvars.iv562 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 136
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !277
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qq, i64 140
  store float %i.qs, ptr %i.qt, align 4, !tbaa !651
  %i.qu = getelementptr inbounds nuw [56 x i8], ptr %i.pz, i64 %indvars.iv562 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 192
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !277
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qu, i64 196
  store float %i.qw, ptr %i.qx, align 4, !tbaa !651
  %indvars.iv.next563.3 = add nuw nsw i64 %indvars.iv562, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge548.loopexit.unr-lcssa, label %.lr.ph547, !llvm.loop !649

.loopexit:                                        ; preds = %._crit_edge548, %._crit_edge544.thread, %bb.ab, %._crit_edge544
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit, %b3AABB_Overlaps.exit.thread
  %indvars.iv.next573 = add nsw i64 %indvars.iv572, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next573 to i32
  %exitcond575.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond575.not, label %._crit_edge555, label %bb.b, !llvm.loop !650
}

declare void @b3StackFree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @b3InPlaceUnion(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @b3ArenaSync(ptr noundef) local_unnamed_addr #2

declare void @b3DestroyContact(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @b3LinkContact(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @b3AddContactToGraph(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @b3UnlinkContact(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @b3RemoveContactFromGraph(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @b3UpdateContact(ptr noundef, i32 noundef, ptr noundef, ptr noundef, <2 x float>, float, ptr noundef byval(%struct.b3Transform) align 8, ptr noundef, <2 x float>, float, ptr noundef byval(%struct.b3Transform) align 8, i1 noundef zeroext, ptr noundef byval(%struct.b3Arena) align 8) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #18

declare void @b3GetBodyTransformQuick(ptr dead_on_unwind writable sret(%struct.b3Transform) align 4, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @b3OverlapShape(ptr noundef, ptr noundef byval(%struct.b3Transform) align 8, ptr noundef) local_unnamed_addr #2

declare i32 @b3CollideMover(ptr noundef, i32 noundef, ptr noundef, ptr noundef byval(%struct.b3Transform) align 8, ptr noundef) local_unnamed_addr #2

declare void @b3RayCastShape(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef, ptr noundef byval(%struct.b3Transform) align 8, ptr noundef) local_unnamed_addr #2

declare void @b3ShapeCastShape(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef, ptr noundef byval(%struct.b3Transform) align 8, ptr noundef) local_unnamed_addr #2

declare { ptr, i64 } @b3MakeShapeProxy(ptr noundef) local_unnamed_addr #2

declare void @b3ShapeDistance(ptr dead_on_unwind writable sret(%struct.b3DistanceOutput) align 4, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @b3WakeBody(ptr noundef, ptr noundef) local_unnamed_addr #2

declare { <2 x float>, float } @b3GetShapeCentroid(ptr noundef) local_unnamed_addr #2

declare float @b3GetShapeProjectedArea(ptr noundef, <2 x float>, float) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !79}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"b3Stack", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !5, i64 24, !6, i64 792}
!12 = !{!"p1 int", !9, i64 0}
!13 = !{!"b3DynamicArray_int", !12, i64 0, !6, i64 8, !6, i64 12}
!14 = !{!"p1 _ZTS12b3MoveResult", !9, i64 0}
!15 = !{!"p1 _ZTS10b3MovePair", !9, i64 0}
!16 = !{!"b3AtomicInt", !6, i64 0}
!17 = !{!"p1 _ZTS9b3SetItem", !9, i64 0}
!18 = !{!"b3HashSet", !17, i64 0, !6, i64 8, !6, i64 12}
!19 = !{!"b3BroadPhase", !5, i64 0, !5, i64 240, !13, i64 288, !14, i64 304, !15, i64 312, !6, i64 320, !16, i64 324, !18, i64 328}
!20 = !{!"b3ConstraintGraph", !5, i64 0}
!21 = !{!"p1 _ZTS16b3BlockAllocator", !9, i64 0}
!22 = !{!"b3DynamicArray_b3BlockAllocator", !21, i64 0, !6, i64 8, !6, i64 12}
!23 = !{!"p1 _ZTS7b3Mutex", !9, i64 0}
!24 = !{!"b3IdPool", !13, i64 0, !6, i64 16}
!25 = !{!"p1 _ZTS6b3Body", !9, i64 0}
!26 = !{!"b3DynamicArray_b3Body", !25, i64 0, !6, i64 8, !6, i64 12}
!27 = !{!"p1 _ZTS11b3SolverSet", !9, i64 0}
!28 = !{!"b3DynamicArray_b3SolverSet", !27, i64 0, !6, i64 8, !6, i64 12}
!29 = !{!"p1 _ZTS7b3Joint", !9, i64 0}
!30 = !{!"b3DynamicArray_b3Joint", !29, i64 0, !6, i64 8, !6, i64 12}
!31 = !{!"p1 _ZTS9b3Contact", !9, i64 0}
!32 = !{!"b3DynamicArray_b3Contact", !31, i64 0, !6, i64 8, !6, i64 12}
!33 = !{!"p1 _ZTS8b3Island", !9, i64 0}
!34 = !{!"b3DynamicArray_b3Island", !33, i64 0, !6, i64 8, !6, i64 12}
!35 = !{!"p1 _ZTS7b3Shape", !9, i64 0}
!36 = !{!"b3DynamicArray_b3Shape", !35, i64 0, !6, i64 8, !6, i64 12}
!37 = !{!"p1 _ZTS11b3NameEntry", !9, i64 0}
!38 = !{!"b3DynamicArray_b3NameEntry", !37, i64 0, !6, i64 8, !6, i64 12}
!39 = !{!"b3NameCache", !38, i64 0, !9, i64 16}
!40 = !{!"p1 _ZTS8b3Sensor", !9, i64 0}
!41 = !{!"b3DynamicArray_b3Sensor", !40, i64 0, !6, i64 8, !6, i64 12}
!42 = !{!"p1 _ZTS13b3TaskContext", !9, i64 0}
!43 = !{!"b3DynamicArray_b3TaskContext", !42, i64 0, !6, i64 8, !6, i64 12}
!44 = !{!"p1 _ZTS19b3SensorTaskContext", !9, i64 0}
!45 = !{!"b3DynamicArray_b3SensorTaskContext", !44, i64 0, !6, i64 8, !6, i64 12}
!46 = !{!"p1 _ZTS15b3BodyMoveEvent", !9, i64 0}
!47 = !{!"b3DynamicArray_b3BodyMoveEvent", !46, i64 0, !6, i64 8, !6, i64 12}
!48 = !{!"p1 _ZTS23b3SensorBeginTouchEvent", !9, i64 0}
!49 = !{!"b3DynamicArray_b3SensorBeginTouchEvent", !48, i64 0, !6, i64 8, !6, i64 12}
!50 = !{!"p1 _ZTS24b3ContactBeginTouchEvent", !9, i64 0}
!51 = !{!"b3DynamicArray_b3ContactBeginTouchEvent", !50, i64 0, !6, i64 8, !6, i64 12}
!52 = !{!"p1 _ZTS17b3ContactHitEvent", !9, i64 0}
!53 = !{!"b3DynamicArray_b3ContactHitEvent", !52, i64 0, !6, i64 8, !6, i64 12}
!54 = !{!"p1 _ZTS12b3JointEvent", !9, i64 0}
!55 = !{!"b3DynamicArray_b3JointEvent", !54, i64 0, !6, i64 8, !6, i64 12}
!56 = !{!"p1 long", !9, i64 0}
!57 = !{!"b3BitSet", !56, i64 0, !6, i64 8, !6, i64 12}
!58 = !{!"long", !5, i64 0}
!59 = !{!"float", !5, i64 0}
!60 = !{!"b3Vec3", !59, i64 0, !59, i64 4, !59, i64 8}
!61 = !{!"short", !5, i64 0}
!62 = !{!"b3Profile", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !59, i64 36, !59, i64 40, !59, i64 44, !59, i64 48, !59, i64 52, !59, i64 56, !59, i64 60, !59, i64 64, !59, i64 68, !59, i64 72, !59, i64 76, !59, i64 80, !59, i64 84, !59, i64 88}
!63 = !{!"b3Capacity", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!64 = !{!"p1 _ZTS11b3Scheduler", !9, i64 0}
!65 = !{!"p1 _ZTS11b3Recording", !9, i64 0}
!66 = !{!"_Bool", !5, i64 0}
!67 = !{!"b3World", !11, i64 0, !19, i64 800, !20, i64 1144, !22, i64 3832, !23, i64 3848, !24, i64 3856, !26, i64 3880, !24, i64 3896, !28, i64 3920, !24, i64 3936, !30, i64 3960, !24, i64 3976, !32, i64 4000, !24, i64 4016, !34, i64 4040, !24, i64 4056, !36, i64 4080, !9, i64 4096, !39, i64 4104, !41, i64 4128, !43, i64 4144, !45, i64 4160, !47, i64 4176, !49, i64 4192, !51, i64 4208, !5, i64 4224, !5, i64 4256, !6, i64 4288, !53, i64 4296, !55, i64 4312, !57, i64 4328, !57, i64 4344, !57, i64 4360, !57, i64 4376, !9, i64 4392, !9, i64 4400, !9, i64 4408, !58, i64 4416, !6, i64 4424, !60, i64 4428, !59, i64 4440, !59, i64 4444, !59, i64 4448, !59, i64 4452, !59, i64 4456, !59, i64 4460, !59, i64 4464, !9, i64 4472, !9, i64 4480, !61, i64 4488, !62, i64 4492, !6, i64 4584, !6, i64 4588, !5, i64 4592, !63, i64 4624, !9, i64 4648, !9, i64 4656, !9, i64 4664, !9, i64 4672, !6, i64 4680, !9, i64 4688, !9, i64 4696, !9, i64 4704, !9, i64 4712, !64, i64 4720, !9, i64 4728, !65, i64 4736, !59, i64 4744, !59, i64 4748, !6, i64 4752, !6, i64 4756, !61, i64 4760, !66, i64 4762, !66, i64 4763, !66, i64 4764, !66, i64 4765, !66, i64 4766, !66, i64 4767}
!68 = !{!67, !9, i64 4096}
!69 = !{!"p1 short", !9, i64 0}
!70 = !{!"", !9, i64 0, !69, i64 8, !69, i64 16, !58, i64 24}
!71 = !{!70, !9, i64 0}
!72 = !{!"p1 _ZTS10b3HullData", !9, i64 0}
!73 = !{!"", !72, i64 0, !6, i64 8}
!74 = !{!73, !6, i64 8}
!75 = !{!73, !72, i64 0}
!76 = !{!67, !66, i64 4763}
!77 = !{i8 0, i8 2}
!78 = !{}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.isvectorized", i32 1}
!81 = !{!"llvm.loop.unroll.runtime.disable"}
!82 = !{!6, !6, i64 0}
!83 = !{!67, !61, i64 4488}
!84 = !{!67, !61, i64 4760}
!85 = !{!10, !10, i64 0}
!86 = !{!5, !5, i64 0}
!87 = !{!67, !6, i64 3844}
!88 = !{!67, !21, i64 3832}
!89 = !{!67, !23, i64 3848}
!90 = !{!67, !6, i64 3892}
!91 = !{!67, !25, i64 3880}
!92 = !{!67, !6, i64 3932}
!93 = !{!67, !27, i64 3920}
!94 = !{!67, !6, i64 3928}
!95 = !{!"p1 _ZTS9b3BodySim", !9, i64 0}
!96 = !{!"b3DynamicArray_b3BodySim", !95, i64 0, !6, i64 8, !6, i64 12}
!97 = !{!"p1 _ZTS11b3BodyState", !9, i64 0}
!98 = !{!"b3DynamicArray_b3BodyState", !97, i64 0, !6, i64 8, !6, i64 12}
!99 = !{!"p1 _ZTS10b3JointSim", !9, i64 0}
!100 = !{!"b3DynamicArray_b3JointSim", !99, i64 0, !6, i64 8, !6, i64 12}
!101 = !{!"p1 _ZTS11b3IslandSim", !9, i64 0}
!102 = !{!"b3DynamicArray_b3IslandSim", !101, i64 0, !6, i64 8, !6, i64 12}
!103 = !{!"b3SolverSet", !96, i64 0, !98, i64 16, !100, i64 32, !13, i64 48, !102, i64 64, !6, i64 80}
!104 = !{!103, !6, i64 12}
!105 = !{!103, !95, i64 0}
!106 = !{!103, !6, i64 28}
!107 = !{!103, !97, i64 16}
!108 = !{!103, !6, i64 60}
!109 = !{!103, !12, i64 48}
!110 = !{!67, !6, i64 4092}
!111 = !{!67, !35, i64 4080}
!112 = !{!9, !9, i64 0}
!113 = !{!67, !6, i64 4012}
!114 = !{!67, !31, i64 4000}
!115 = !{!67, !6, i64 3972}
!116 = !{!67, !29, i64 3960}
!117 = !{!67, !6, i64 4052}
!118 = !{!67, !33, i64 4040}
!119 = !{!67, !6, i64 4140}
!120 = !{!67, !40, i64 4128}
!121 = !{!67, !6, i64 4188}
!122 = !{!67, !46, i64 4176}
!123 = !{!67, !6, i64 4204}
!124 = !{!67, !48, i64 4192}
!125 = !{!"p1 _ZTS21b3SensorEndTouchEvent", !9, i64 0}
!126 = !{!"b3DynamicArray_b3SensorEndTouchEvent", !125, i64 0, !6, i64 8, !6, i64 12}
!127 = !{!126, !6, i64 12}
!128 = !{!126, !125, i64 0}
!129 = !{!67, !6, i64 4220}
!130 = !{!67, !50, i64 4208}
!131 = !{!"p1 _ZTS22b3ContactEndTouchEvent", !9, i64 0}
!132 = !{!"b3DynamicArray_b3ContactEndTouchEvent", !131, i64 0, !6, i64 8, !6, i64 12}
!133 = !{!132, !6, i64 12}
!134 = !{!132, !131, i64 0}
!135 = !{!67, !6, i64 4308}
!136 = !{!67, !52, i64 4296}
!137 = !{!67, !6, i64 4324}
!138 = !{!67, !54, i64 4312}
!139 = !{!67, !6, i64 4288}
!140 = !{!67, !6, i64 4752}
!141 = !{!67, !6, i64 4756}
!142 = !{!59, !59, i64 0}
!143 = !{i64 0, i64 4, !142, i64 4, i64 4, !142, i64 8, i64 4, !142}
!144 = !{!67, !59, i64 4464}
!145 = !{!67, !66, i64 4762}
!146 = !{!67, !66, i64 4764}
!147 = !{!67, !66, i64 4765}
!148 = !{!67, !66, i64 4766}
!149 = !{!67, !9, i64 4712}
!150 = !{!67, !9, i64 4728}
!151 = !{!67, !6, i64 4680}
!152 = !{!67, !9, i64 4696}
!153 = !{!67, !64, i64 4720}
!154 = !{!56, !56, i64 0}
!155 = !{!67, !9, i64 4408}
!156 = !{!67, !6, i64 4156}
!157 = !{!67, !42, i64 4144}
!158 = !{!67, !6, i64 4152}
!159 = !{!67, !6, i64 4172}
!160 = !{!67, !44, i64 4160}
!161 = !{!67, !6, i64 4168}
!162 = !{!"p1 _ZTS18b3ArenaSharedState", !9, i64 0}
!163 = !{!"b3Arena", !10, i64 0, !6, i64 8, !6, i64 12, !162, i64 16}
!164 = !{!"p1 _ZTS11b3SensorHit", !9, i64 0}
!165 = !{!"b3DynamicArray_b3SensorHit", !164, i64 0, !6, i64 8, !6, i64 12}
!166 = !{!"b3TaskContext", !163, i64 0, !165, i64 24, !57, i64 40, !57, i64 56, !57, i64 72, !66, i64 88, !57, i64 96, !57, i64 112, !59, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !5, i64 160, !6, i64 1696, !5, i64 1700, !6, i64 3748, !5, i64 3752, !5, i64 3784}
!167 = !{!166, !6, i64 36}
!168 = !{!166, !164, i64 24}
!169 = !{!67, !6, i64 4136}
!170 = !{!67, !6, i64 4088}
!171 = !{!"p1 _ZTS9b3Visitor", !9, i64 0}
!172 = !{!"b3DynamicArray_b3Visitor", !171, i64 0, !6, i64 8, !6, i64 12}
end_hunk_0
