Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/physics_world?download=true
inline.NumInlined: 282
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 21
begin_hunk_0_@b3CollideTask:bb.a
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
  %i.em = load <2 x float>, ptr %i.ac, align 4    ; 16 uses
  %i.en = load <2 x float>, ptr %i.ad, align 4    ; 14 uses
  %i.eo = load <2 x float>, ptr %i.el, align 4    ; 8 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.av, i64 92
  %i.eq = load <2 x float>, ptr %i.ep, align 4    ; 7 uses
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %i.em, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract.i320 = extractelement <2 x float> %i.eo, i64 1
  %.sroa.32.8.vec.extract.i = extractelement <2 x float> %i.en, i64 0
  %i.er = shufflevector <2 x float> %i.em, <2 x float> %i.en, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.es = shufflevector <2 x float> %i.eo, <2 x float> %i.eq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.et = fmul <4 x float> %i.er, %i.es           ; 7 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.av, i64 100
  %i.ev = load <2 x float>, ptr %i.ae, align 4    ; 10 uses
  %i.ew = load <2 x float>, ptr %i.af, align 4    ; 8 uses
  %i.ex = load <2 x float>, ptr %i.eu, align 4    ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.av, i64 108
  %i.ez = load <2 x float>, ptr %i.ey, align 4    ; 4 uses
  %.sroa.01.0.vec.extract.i321 = extractelement <2 x float> %i.ev, i64 0
  %.sroa.0.0.vec.extract.i322 = extractelement <2 x float> %i.ex, i64 0
  %.sroa.01.4.vec.extract.i323 = extractelement <2 x float> %i.ev, i64 1 ; 4 uses
  %.sroa.0.4.vec.extract.i324 = extractelement <2 x float> %i.ex, i64 1 ; 4 uses
  %.sroa.32.8.vec.extract.i325 = extractelement <2 x float> %i.ew, i64 0 ; 3 uses
  %.sroa.3.8.vec.extract.i326 = extractelement <2 x float> %i.ez, i64 0 ; 2 uses
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
  %i.fp = fmul float %.sroa.32.8.vec.extract.i, %.sroa.01.4.vec.extract.i323
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
  %i.gb = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.gc = fmul <2 x float> %i.gb, %i.ev
  %i.gd = shufflevector <2 x float> %i.ev, <2 x float> %i.ew, <2 x i32> <i32 1, i32 2>
  %i.ge = fmul <2 x float> %i.gb, %i.gd
  %i.gf = fadd <2 x float> %i.gc, %i.fz
  %i.gg = fadd <2 x float> %i.ge, %i.ga
  %i.gh = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gi = fmul <2 x float> %i.em, %i.gh
  %i.gj = shufflevector <2 x float> %i.em, <2 x float> %i.en, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.gk = fmul <2 x float> %i.gj, %i.gh
  %i.gl = fsub <2 x float> %i.gf, %i.gi           ; 3 uses
  %i.gm = fsub <2 x float> %i.gg, %i.gk           ; 3 uses
  %i.gn = shufflevector <2 x float> %i.en, <2 x float> %i.em, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.go = shufflevector <2 x float> %i.ew, <2 x float> %i.ev, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.gp = fmul <4 x float> %i.gn, %i.go           ; 4 uses
  %6 = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %7 = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %8 = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop601 = fadd <4 x float> %7, %8
  %shift603 = fadd <4 x float> %6, %foldExtExtBinop601
  %foldExtExtBinop604 = fadd <4 x float> %i.gp, %shift603 ; 2 uses
  %i.gq = extractelement <4 x float> %foldExtExtBinop604, i64 0
  %i.gr = load <2 x float>, ptr %5, align 8       ; 2 uses
  %i.gs = load <2 x float>, ptr %.sroa.4503.0..sroa_idx, align 4 ; 2 uses
  %i.gt = load <2 x float>, ptr %4, align 8       ; 2 uses
  %i.gu = load <2 x float>, ptr %.sroa.4496.0..sroa_idx, align 4 ; 2 uses
  %i.gv = shufflevector <2 x float> %i.gs, <2 x float> %i.gr, <2 x i32> <i32 1, i32 2>
  %i.gw = shufflevector <2 x float> %i.gu, <2 x float> %i.gt, <2 x i32> <i32 1, i32 2>
  %i.gx = fsub <2 x float> %i.gv, %i.gw           ; 4 uses
  %i.gy = fsub <2 x float> %i.gr, %i.gt           ; 4 uses
  %i.gz = fsub <2 x float> %i.gs, %i.gu
  %i.ha = fmul <2 x float> %i.gj, %i.gx
  %i.hb = shufflevector <2 x float> %i.gy, <2 x float> %i.gx, <2 x i32> <i32 1, i32 2>
  %i.hc = fmul <2 x float> %i.ft, %i.hb
  %i.hd = fmul <2 x float> %i.ft, %i.gy
  %i.he = fmul <2 x float> %i.em, %i.gx
  %i.hf = fsub <2 x float> %i.ha, %i.hc
  %i.hg = fsub <2 x float> %i.hd, %i.he
  %i.hh = fmul <2 x float> %i.gb, %i.gy
  %i.hi = fmul <2 x float> %i.gb, %i.gz
  %i.hj = fsub <2 x float> %i.hf, %i.hh           ; 2 uses
  %i.hk = fsub <2 x float> %i.hg, %i.hi           ; 2 uses
  %foldExtExtBinop606 = fmul <2 x float> %i.en, %i.hj
  %shift608 = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop609 = fmul <2 x float> %i.em, %shift608
  %foldExtExtBinop611 = fsub <2 x float> %foldExtExtBinop606, %foldExtExtBinop609
  %i.hl = extractelement <2 x float> %foldExtExtBinop611, i64 0
  %i.hm = fmul <2 x float> %i.em, %i.hk
  %i.hn = fmul <2 x float> %i.gj, %i.hj
  %i.ho = fsub <2 x float> %i.hm, %i.hn
  %i.hp = fmul <2 x float> %i.ho, splat (float 2.000000e+00)
  %i.hq = fmul float %i.hl, 2.000000e+00
  %i.hr = extractelement <2 x float> %i.gy, i64 1
  %i.hs = fadd float %i.hr, %i.hq
  %i.ht = fadd <2 x float> %i.gx, %i.hp
  %i.hu = getelementptr inbounds nuw i8, ptr %i.av, i64 116
  %.sroa.0145.0.copyload = load <2 x float>, ptr %i.hu, align 4, !tbaa !142 ; 2 uses
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 124
  %.sroa.4146.0.copyload = load float, ptr %.sroa.4146.0..sroa_idx, align 4, !tbaa !142
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %.sroa.5147.0.copyload = load <2 x float>, ptr %.sroa.5147.0..sroa_idx, align 8, !tbaa !142 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !142 ; 4 uses
  br i1 %i.co, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hv = getelementptr inbounds nuw i8, ptr %.0289, i64 184
  %.sroa.0141.0.copyload142 = load <2 x float>, ptr %i.hv, align 4, !tbaa !142
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0289, i64 192
  %.sroa.5143.0.copyload144 = load float, ptr %.sroa.5143.0..sroa_idx, align 4, !tbaa !142
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sroa.0141.0 = phi <2 x float> [ %.sroa.0141.0.copyload142, %bb.o ], [ zeroinitializer, %bb.n ] ; 3 uses
  %.sroa.5143.0 = phi float [ %.sroa.5143.0.copyload144, %bb.o ], [ 0.000000e+00, %bb.n ] ; 2 uses
  br i1 %i.cr, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hw = getelementptr inbounds nuw i8, ptr %i.du, i64 184
  %.sroa.0138.0.copyload139 = load <2 x float>, ptr %i.hw, align 4, !tbaa !142
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 192
  %.sroa.5.0.copyload140 = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !142
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.sroa.0138.0 = phi <2 x float> [ %.sroa.0138.0.copyload139, %bb.q ], [ zeroinitializer, %bb.p ] ; 3 uses
  %.sroa.5.0 = phi float [ %.sroa.5.0.copyload140, %bb.q ], [ 0.000000e+00, %bb.p ] ; 2 uses
  %.sroa.05.4.vec.extract.i = extractelement <2 x float> %.sroa.0145.0.copyload, i64 1
  %i.hx = fsub float %.sroa.05.4.vec.extract.i, %i.hs ; 2 uses
  %i.hy = fmul float %i.hx, %i.hx
  %i.hz = shufflevector <2 x float> %.sroa.0145.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ia = insertelement <2 x float> %i.hz, float %.sroa.4146.0.copyload, i64 0
  %i.ib = fsub <2 x float> %i.ia, %i.ht           ; 2 uses
  %i.ic = fmul <2 x float> %i.ib, %i.ib           ; 2 uses
  %i.id = extractelement <2 x float> %i.ic, i64 1
  %i.ie = fadd float %i.id, %i.hy
  %i.if = extractelement <2 x float> %i.ic, i64 0
  %i.ig = fadd float %i.if, %i.ie                 ; 2 uses
  %i.ih = fcmp ogt float %i.fo, f0x3F7E0E2E
  %i.ii = fmul float %i.eh, %i.eh
  %i.ij = fcmp olt float %i.ig, %i.ii
  %or.cond303 = select i1 %i.ih, i1 %i.ij, i1 false
  br i1 %or.cond303, label %bb.s, label %.thread521

bb.s:                                             ; preds = %bb.r
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ig)
  %i.ik = fsub float %i.eh, %sqrt                 ; 2 uses
  %i.il = shufflevector <2 x float> %.sroa.5147.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.im = fcmp ogt float %.sroa.5143.0, %.sroa.5.0
  %i.in = fcmp ogt <2 x float> %.sroa.0141.0, %.sroa.0138.0 ; 2 uses
  %i.io = shufflevector <2 x i1> %i.in, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %i.ip = insertelement <2 x i1> %i.io, i1 %i.im, i64 1
  %i.iq = shufflevector <2 x float> %.sroa.0141.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ir = insertelement <2 x float> %i.iq, float %.sroa.5143.0, i64 1
  %i.is = shufflevector <2 x float> %.sroa.0138.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.it = insertelement <2 x float> %i.is, float %.sroa.5.0, i64 1
  %i.iu = select <2 x i1> %i.ip, <2 x float> %i.ir, <2 x float> %i.it ; 2 uses
  %i.iv = select <2 x i1> %i.in, <2 x float> %.sroa.0141.0, <2 x float> %.sroa.0138.0 ; 2 uses
  %i.iw = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.5147.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ix = fmul <2 x float> %i.gm, %i.iw
  %i.iy = shufflevector <2 x float> %i.gm, <2 x float> %i.gl, <2 x i32> <i32 1, i32 2>
  %i.iz = shufflevector <2 x float> %.sroa.5147.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.ja = fmul <2 x float> %i.iy, %i.iz
  %i.jb = fsub <2 x float> %i.ix, %i.ja
  %i.jc = fmul <2 x float> %i.gl, %i.il           ; 2 uses
  %shift613 = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop614 = fsub <2 x float> %i.jc, %shift613
  %i.jd = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.je = fmul <2 x float> %i.gl, %i.jd
  %i.jf = fadd <2 x float> %i.je, %i.jb
  %i.jg = shufflevector <4 x float> %foldExtExtBinop604, <4 x float> poison, <2 x i32> zeroinitializer
  %i.jh = fmul <2 x float> %i.jg, %.sroa.5147.0.copyload
  %i.ji = fsub <2 x float> %i.jf, %i.jh           ; 3 uses
  %i.jj = insertelement <2 x float> %i.gm, float %i.gq, i64 0
  %i.jk = fmul <2 x float> %i.jj, %.sroa.6.0.copyload ; 2 uses
  %shift616 = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop617 = fadd <2 x float> %foldExtExtBinop614, %shift616
  %foldExtExtBinop619 = fsub <2 x float> %foldExtExtBinop617, %i.jk
  %i.jl = extractelement <2 x float> %foldExtExtBinop619, i64 0 ; 3 uses
  %i.jm = fcmp olt <2 x float> %i.ji, zeroinitializer
  %i.jn = fneg <2 x float> %i.ji
  %i.jo = select <2 x i1> %i.jm, <2 x float> %i.jn, <2 x float> %i.ji ; 3 uses
  %i.jp = fcmp olt float %i.jl, 0.000000e+00
  %i.jq = fneg float %i.jl
  %i.jr = select i1 %i.jp, float %i.jq, float %i.jl ; 2 uses
  %i.js = extractelement <2 x float> %i.iv, i64 0
  %i.jt = fmul float %i.jr, %i.js
  %shift621 = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop622 = fmul <2 x float> %i.jo, %shift621
  %i.ju = extractelement <2 x float> %foldExtExtBinop622, i64 0
  %i.jv = fadd float %i.jt, %i.ju                 ; 2 uses
  %i.jw = fmul <2 x float> %i.jo, %i.iu
  %i.jx = shufflevector <2 x float> %i.jo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jy = insertelement <2 x float> %i.jx, float %i.jr, i64 1
  %i.jz = fmul <2 x float> %i.jy, %i.iv
  %i.ka = fadd <2 x float> %i.jw, %i.jz           ; 2 uses
  %i.kb = fmul float %i.jv, %i.jv
  %i.kc = fmul <2 x float> %i.ka, %i.ka           ; 2 uses
  %i.kd = extractelement <2 x float> %i.kc, i64 1
  %i.ke = fadd float %i.kd, %i.kb
  %i.kf = extractelement <2 x float> %i.kc, i64 0
  %i.kg = fadd float %i.kf, %i.ke
  %i.kh = fmul float %i.kg, 4.000000e+00
  %i.ki = fmul float %i.ik, %i.ik
  %i.kj = fcmp uge float %i.kh, %i.ki
  br i1 %i.kj, label %.thread521, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.kk = fneg float %.sroa.0.4.vec.extract.i320
  %i.kl = shufflevector <2 x float> %i.em, <2 x float> %i.en, <4 x i32> <i32 1, i32 2, i32 1, i32 poison>
  %i.km = insertelement <4 x float> %i.kl, float %.sroa.01.4.vec.extract.i323, i64 3 ; 2 uses
  %i.kn = shufflevector <2 x float> %i.eo, <2 x float> %i.ex, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.ko = fmul <4 x float> %i.km, %i.kn
  %i.kp = shufflevector <2 x float> %i.en, <2 x float> %i.em, <4 x i32> <i32 0, i32 3, i32 2, i32 poison>
  %i.kq = insertelement <4 x float> %i.kp, float %.sroa.32.8.vec.extract.i325, i64 3
  %i.kr = shufflevector <2 x float> %i.eo, <2 x float> %i.eq, <4 x i32> <i32 1, i32 0, i32 2, i32 poison>
  %i.ks = insertelement <4 x float> %i.kr, float %.sroa.0.4.vec.extract.i324, i64 3
  %i.kt = fmul <4 x float> %i.kq, %i.ks
  %i.ku = shufflevector <2 x float> %i.em, <2 x float> %i.ev, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.kv = shufflevector <2 x float> %i.eo, <2 x float> %i.eq, <4 x i32> <i32 1, i32 2, i32 1, i32 poison> ; 2 uses
  %i.kw = insertelement <4 x float> %i.kv, float %.sroa.0.4.vec.extract.i324, i64 3
  %i.kx = fmul <4 x float> %i.ku, %i.kw
  %i.ky = shufflevector <2 x float> %i.em, <2 x float> %i.en, <4 x i32> <i32 1, i32 0, i32 2, i32 poison>
  %i.kz = insertelement <4 x float> %i.ky, float %.sroa.01.4.vec.extract.i323, i64 3
  %i.la = shufflevector <2 x float> %i.eq, <2 x float> %i.eo, <4 x i32> <i32 0, i32 3, i32 2, i32 poison>
  %i.lb = insertelement <4 x float> %i.la, float %.sroa.3.8.vec.extract.i326, i64 3
  %i.lc = fmul <4 x float> %i.kz, %i.lb
  %i.ld = shufflevector <2 x float> %i.en, <2 x float> %i.ew, <4 x i32> <i32 1, i32 1, i32 1, i32 3> ; 3 uses
  %i.le = shufflevector <2 x float> %i.eq, <2 x float> %i.eo, <4 x i32> <i32 0, i32 2, i32 0, i32 poison>
  %i.lf = insertelement <4 x float> %i.le, float %.sroa.3.8.vec.extract.i326, i64 3
  %i.lg = fmul <4 x float> %i.ld, %i.lf
  %i.lh = shufflevector <2 x float> %i.eo, <2 x float> %i.eq, <4 x i32> <i32 0, i32 2, i32 1, i32 poison>
  %i.li = insertelement <4 x float> %i.lh, float %.sroa.0.0.vec.extract.i322, i64 3
  %i.lj = fmul <4 x float> %i.ld, %i.li
  %i.lk = shufflevector <2 x float> %i.en, <2 x float> %i.em, <4 x i32> <i32 0, i32 2, i32 0, i32 poison>
  %i.ll = insertelement <4 x float> %i.lk, float %.sroa.32.8.vec.extract.i325, i64 3
  %i.lm = shufflevector <2 x float> %i.eq, <2 x float> %i.ez, <4 x i32> <i32 1, i32 1, i32 1, i32 3> ; 3 uses
  %i.ln = fmul <4 x float> %i.ll, %i.lm
  %i.lo = shufflevector <2 x float> %i.em, <2 x float> %i.en, <4 x i32> <i32 0, i32 2, i32 1, i32 poison>
  %i.lp = insertelement <4 x float> %i.lo, float %.sroa.01.0.vec.extract.i321, i64 3
  %i.lq = fmul <4 x float> %i.lp, %i.lm
  %i.lr = fmul float %.sroa.01.4.vec.extract.i, %i.kk
  %i.ls = extractelement <4 x float> %i.et, i64 0
  %i.lt = fsub float %i.lr, %i.ls
  %i.lu = fneg float %.sroa.0.4.vec.extract.i324
  %foldExtExtBinop624 = fmul <2 x float> %i.ev, %i.ez
  %foldExtExtBinop626 = fmul <2 x float> %i.ew, %i.ex
  %foldExtExtBinop628 = fsub <2 x float> %foldExtExtBinop624, %foldExtExtBinop626
  %i.lv = shufflevector <2 x float> %foldExtExtBinop628, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.lw = fmul float %.sroa.01.4.vec.extract.i323, %i.lu
  %i.lx = extractelement <4 x float> %i.fc, i64 0
  %i.ly = fsub float %i.lw, %i.lx
  %i.lz = extractelement <4 x float> %i.fc, i64 2
  %i.ma = fsub float %i.ly, %i.lz
  %i.mb = extractelement <4 x float> %i.fc, i64 3
  %i.mc = fsub float %i.mb, %i.ma                 ; 3 uses
  %i.md = fsub <4 x float> %i.kt, %i.lc           ; 2 uses
  %i.me = fsub <4 x float> %i.ko, %i.kx
  %i.mf = shufflevector <2 x float> %i.en, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mg = shufflevector <4 x float> %i.mf, <4 x float> %i.et, <4 x i32> <i32 1, i32 1, i32 6, i32 poison>
end_hunk_0
begin_hunk_1_@b3CollideTask:bb.a
  %i.nr = extractelement <4 x float> %i.my, i64 3 ; 2 uses
  %i.ns = fmul float %i.mc, %i.nq                 ; 2 uses
  %i.nt = extractelement <4 x float> %i.mv, i64 3 ; 2 uses
  %i.nu = fmul float %i.nr, %i.nt                 ; 2 uses
  %i.nv = fmul float %i.mc, %i.nt                 ; 2 uses
  %i.nw = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float 1.000000e+00>, %i.ng
  %i.nx = fmul <4 x float> %i.ng, <float poison, float poison, float 2.000000e+00, float poison>
  %i.ny = shufflevector <4 x float> %i.nw, <4 x float> %i.nx, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.nz = fmul <4 x float> %i.np, splat (float 2.000000e+00)
  %i.oa = extractelement <4 x float> %i.nc, i64 3
  %i.ob = fsub float %i.nu, %i.ns
  %i.oc = fmul float %i.nq, %i.nq                 ; 2 uses
  %i.od = shufflevector <4 x float> %i.nc, <4 x float> %i.ni, <4 x i32> <i32 1, i32 2, i32 6, i32 poison>
  %i.oe = shufflevector <4 x float> %i.od, <4 x float> %i.na, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.of = shufflevector <4 x float> %i.na, <4 x float> %i.nm, <4 x i32> <i32 0, i32 2, i32 6, i32 poison>
  %i.og = insertelement <4 x float> %i.of, float %i.oc, i64 3 ; 2 uses
  %i.oh = fadd <4 x float> %i.oe, %i.og
  %i.oi = fsub <4 x float> %i.oe, %i.og
  %i.oj = shufflevector <4 x float> %i.oh, <4 x float> %i.oi, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ok = fmul <4 x float> %i.oj, splat (float 2.000000e+00) ; 3 uses
  %i.ol = extractelement <4 x float> %i.ok, i64 0
  %i.om = fsub float 1.000000e+00, %i.ol
  %i.on = fmul float %i.nr, %i.nq                 ; 2 uses
  %foldExtExtBinop630 = fadd <4 x float> %i.nm, %i.ni
  %i.oo = extractelement <4 x float> %foldExtExtBinop630, i64 3
  %i.op = fsub float %i.on, %i.nv
  %i.oq = fmul float %i.op, 2.000000e+00
  %i.or = fadd float %i.oa, %i.oc
  %i.os = fmul float %i.or, 2.000000e+00
  %i.ot = fsub float 1.000000e+00, %i.os
  %i.ou = fadd float %i.nu, %i.ns
  %i.ov = insertelement <2 x float> poison, float %i.oo, i64 0
  %i.ow = insertelement <2 x float> %i.ov, float %i.ou, i64 1
  %i.ox = fmul <2 x float> %i.ow, splat (float 2.000000e+00)
  %i.oy = fadd float %i.on, %i.nv
  %i.oz = fmul float %i.oy, 2.000000e+00
  %i.pa = fmul float %i.ob, 2.000000e+00
  %i.pb = extractelement <4 x float> %i.ok, i64 3
  %i.pc = fsub float 1.000000e+00, %i.pb
  %i.pd = getelementptr inbounds nuw i8, ptr %i.du, i64 28
  %i.pe = getelementptr inbounds nuw i8, ptr %.0289, i64 28
  %.sroa.084.0.copyload = load <2 x float>, ptr %i.pd, align 4 ; 2 uses
  %.sroa.285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 36
  %.sroa.285.0.copyload = load float, ptr %.sroa.285.0..sroa_idx, align 4
  %.sroa.082.0.copyload = load <2 x float>, ptr %i.pe, align 4 ; 2 uses
  %.sroa.283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0289, i64 36
  %.sroa.283.0.copyload = load float, ptr %.sroa.283.0..sroa_idx, align 4
  %foldExtExtBinop632 = fsub <2 x float> %.sroa.084.0.copyload, %.sroa.082.0.copyload
  %i.pf = extractelement <2 x float> %foldExtExtBinop632, i64 0
  %foldExtExtBinop634 = fsub <2 x float> %.sroa.084.0.copyload, %.sroa.082.0.copyload
  %i.pg = fsub float %.sroa.285.0.copyload, %.sroa.283.0.copyload
  %i.ph = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !272 ; 3 uses
  %i.pj = icmp sgt i32 %i.pi, 0
  br i1 %i.pj, label %.lr.ph543, label %._crit_edge544.thread

._crit_edge544.thread:                            ; preds = %bb.t
  %i.pk = load i32, ptr %i.ag, align 4, !tbaa !242
  %i.pl = add nsw i32 %i.pk, 1
  store i32 %i.pl, ptr %i.ag, align 4, !tbaa !242
  br label %.loopexit

.lr.ph543:                                        ; preds = %bb.t
  %i.pm = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !273
  %wide.trip.count560 = zext nneg i32 %i.pi to i64
  %i.po = insertelement <2 x float> poison, float %i.pa, i64 0
  %i.pp = insertelement <2 x float> %i.po, float %i.pc, i64 1
  %i.pq = insertelement <2 x float> poison, float %i.ot, i64 0
  %i.pr = insertelement <2 x float> %i.pq, float %i.oq, i64 1
  %i.ps = shufflevector <4 x float> %i.ok, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.pt = insertelement <4 x float> %i.ps, float %i.om, i64 2
  %i.pu = insertelement <4 x float> %i.pt, float %i.oz, i64 3
  %shift639 = shufflevector <2 x float> %foldExtExtBinop634, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  br label %bb.u

._crit_edge544:                                   ; preds = %._crit_edge
  %i.pv = load i32, ptr %i.ag, align 4, !tbaa !242
  %i.pw = add nsw i32 %i.pv, 1
  store i32 %i.pw, ptr %i.ag, align 4, !tbaa !242
  %i.px = tail call i32 @llvm.umin.i32(i32 %i.pi, i32 7)
  %i.py = zext nneg i32 %i.px to i64
  %i.pz = getelementptr [4 x i8], ptr %i.f, i64 %i.py
  %i.qa = getelementptr i8, ptr %i.pz, i64 3748   ; 2 uses
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !82
  %i.qc = add nsw i32 %i.qb, 1
  store i32 %i.qc, ptr %i.qa, align 4, !tbaa !82
  br label %.loopexit

bb.u:                                             ; preds = %.lr.ph543, %._crit_edge
  %indvars.iv557 = phi i64 [ 0, %.lr.ph543 ], [ %indvars.iv.next558, %._crit_edge ] ; 2 uses
  %i.qd = getelementptr inbounds nuw [268 x i8], ptr %i.pn, i64 %indvars.iv557 ; 4 uses
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qd, i64 232
  %.sroa.469.0.copyload = load float, ptr %.sroa.469.0..sroa_idx, align 4, !tbaa !142
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 264
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !275 ; 2 uses
  %i.qg = icmp sgt i32 %i.qf, 0
  br i1 %i.qg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.u
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qd, i64 224
  %.sroa.068.0.copyload = load <2 x float>, ptr %i.qh, align 4, !tbaa !142 ; 2 uses
  %.sroa.01.0.vec.extract.i438 = extractelement <2 x float> %.sroa.068.0.copyload, i64 0
  %wide.trip.count = zext nneg i32 %i.qf to i64
  %shift642 = shufflevector <2 x float> %.sroa.068.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  br label %bb.v

._crit_edge:                                      ; preds = %bb.v, %bb.u
  %indvars.iv.next558 = add nuw nsw i64 %indvars.iv557, 1 ; 2 uses
  %exitcond561.not = icmp eq i64 %indvars.iv.next558, %wide.trip.count560
  br i1 %exitcond561.not, label %._crit_edge544, label %bb.u, !llvm.loop !645

bb.v:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %i.qi = getelementptr inbounds nuw [56 x i8], ptr %i.qd, i64 %indvars.iv ; 7 uses
  %.sroa.055.0.copyload = load <2 x float>, ptr %i.qi, align 4 ; 2 uses
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %.sroa.256.0.copyload = load float, ptr %.sroa.256.0..sroa_idx, align 4
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 12
  %.sroa.047.0.copyload = load <2 x float>, ptr %i.qj, align 4 ; 4 uses
  %.sroa.248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qi, i64 20
  %.sroa.248.0.copyload = load float, ptr %.sroa.248.0..sroa_idx, align 4 ; 2 uses
  %i.qk = shufflevector <2 x float> %.sroa.047.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ql = shufflevector <2 x float> %.sroa.055.0.copyload, <2 x float> %.sroa.047.0.copyload, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.qm = fmul <4 x float> %i.ny, %i.ql
  %i.qn = shufflevector <2 x float> %.sroa.055.0.copyload, <2 x float> %.sroa.047.0.copyload, <4 x i32> <i32 1, i32 0, i32 1, i32 3>
  %i.qo = fmul <4 x float> %i.nz, %i.qn
  %i.qp = fadd <4 x float> %i.qm, %i.qo
  %i.qq = insertelement <4 x float> poison, float %.sroa.256.0.copyload, i64 0
  %i.qr = insertelement <4 x float> %i.qq, float %.sroa.248.0.copyload, i64 1
  %i.qs = shufflevector <4 x float> %i.qr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.qt = fmul <4 x float> %i.pu, %i.qs
  %i.qu = fadd <4 x float> %i.qt, %i.qp           ; 3 uses
  %shift636 = shufflevector <4 x float> %i.qu, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop637 = fsub <4 x float> %shift636, %i.qu
  %i.qv = extractelement <4 x float> %foldExtExtBinop637, i64 0
  %i.qw = fmul <2 x float> %i.pr, %i.qk
  %i.qx = fmul <2 x float> %i.ox, %.sroa.047.0.copyload
  %i.qy = fadd <2 x float> %i.qw, %i.qx
  %i.qz = insertelement <2 x float> poison, float %.sroa.248.0.copyload, i64 0
  %i.ra = shufflevector <2 x float> %i.qz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rb = fmul <2 x float> %i.pp, %i.ra
  %i.rc = fadd <2 x float> %i.rb, %i.qy
  %i.rd = shufflevector <4 x float> %i.qu, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.re = fsub <2 x float> %i.rc, %i.rd           ; 2 uses
  %i.rf = fadd float %i.pf, %i.qv
  %foldExtExtBinop640 = fadd <2 x float> %shift639, %i.re
  %i.rg = extractelement <2 x float> %i.re, i64 1
  %i.rh = fadd float %i.pg, %i.rg
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qi, i64 28
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !651
  %i.rk = fmul float %.sroa.01.0.vec.extract.i438, %i.rf
  %foldExtExtBinop643 = fmul <2 x float> %shift642, %foldExtExtBinop640
  %i.rl = extractelement <2 x float> %foldExtExtBinop643, i64 0
  %i.rm = fadd float %i.rk, %i.rl
  %i.rn = fmul float %.sroa.469.0.copyload, %i.rh
  %i.ro = fadd float %i.rn, %i.rm
  %i.rp = fadd float %i.rj, %i.ro
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  store float %i.rp, ptr %i.rq, align 4, !tbaa !277
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qi, i64 52
  store i8 1, ptr %i.rr, align 4, !tbaa !278
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.v, !llvm.loop !646

.thread521:                                       ; preds = %bb.s, %bb.r, %bb.m, %bb.l, %bb.k
  %i.rs = getelementptr inbounds nuw i8, ptr %i.av, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.rs, ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !267
  %i.rt = getelementptr inbounds nuw i8, ptr %i.av, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.rt, ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !267
  %i.ru = getelementptr inbounds nuw i8, ptr %i.av, i64 116
  %.sroa.6494.0.copyload = load <2 x float>, ptr %i.ae, align 4 ; 4 uses
  %.sroa.7.0.copyload = load <2 x float>, ptr %i.af, align 4 ; 4 uses
  %.sroa.6487.0.copyload = load <2 x float>, ptr %i.ac, align 4 ; 10 uses
  %.sroa.8489.0.copyload = load <2 x float>, ptr %i.ad, align 4 ; 6 uses
  %i.rv = shufflevector <2 x float> %.sroa.8489.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rw = shufflevector <2 x float> %.sroa.6487.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rx = fmul <2 x float> %.sroa.6494.0.copyload, %i.rw ; 2 uses
  %shift645 = shufflevector <2 x float> %i.rx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop646 = fsub <2 x float> %i.rx, %shift645
  %i.ry = shufflevector <2 x float> %.sroa.6494.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 1, i32 2, i32 2, i32 0>
  %i.rz = shufflevector <2 x float> %.sroa.8489.0.copyload, <2 x float> %.sroa.6487.0.copyload, <4 x i32> <i32 0, i32 3, i32 2, i32 0>
  %i.sa = fmul <4 x float> %i.ry, %i.rz           ; 2 uses
  %i.sb = shufflevector <4 x float> %i.sa, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.sc = shufflevector <4 x float> %i.sa, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.sd = fsub <2 x float> %i.sb, %i.sc
  %i.se = shufflevector <2 x float> %.sroa.8489.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.sf = fmul <2 x float> %.sroa.6494.0.copyload, %i.se
  %i.sg = fadd <2 x float> %i.sf, %i.sd
  %i.sh = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.si = fmul <2 x float> %i.sh, %.sroa.6487.0.copyload
  %i.sj = fsub <2 x float> %i.sg, %i.si
  %i.sk = fmul <2 x float> %.sroa.7.0.copyload, %i.rv ; 2 uses
  %foldExtExtBinop648 = fadd <2 x float> %foldExtExtBinop646, %i.sk
  %i.sl = shufflevector <2 x float> %i.sk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.251.8.vec.insert.i450 = fsub <2 x float> %foldExtExtBinop648, %i.sl
  %i.sm = shufflevector <2 x float> %.sroa.6494.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sn = shufflevector <2 x float> %.sroa.6487.0.copyload, <2 x float> %.sroa.8489.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.so = fmul <4 x float> %i.sm, %i.sn           ; 4 uses
  %9 = shufflevector <4 x float> %i.so, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %10 = shufflevector <4 x float> %i.so, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %11 = shufflevector <4 x float> %i.so, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %12 = shufflevector <4 x float> %i.so, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %13 = fadd <2 x float> %11, %12
  %14 = fadd <2 x float> %10, %13
  %15 = fadd <2 x float> %9, %14
  %.sroa.251.12.vec.insert.i451 = shufflevector <2 x float> %.sroa.251.8.vec.insert.i450, <2 x float> %15, <2 x i32> <i32 0, i32 2>
  %i.sp = load <2 x float>, ptr %5, align 8
  %i.sq = load <2 x float>, ptr %.sroa.4503.0..sroa_idx, align 4
  %i.sr = load <2 x float>, ptr %4, align 8
  %i.ss = load <2 x float>, ptr %.sroa.4496.0..sroa_idx, align 4
  %i.st = fsub <2 x float> %i.sp, %i.sr           ; 4 uses
  %i.su = fsub <2 x float> %i.sq, %i.ss           ; 4 uses
  %i.sv = fmul <2 x float> %i.su, %.sroa.6487.0.copyload
  %i.sw = shufflevector <2 x float> %.sroa.8489.0.copyload, <2 x float> %.sroa.6487.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.sx = fmul <2 x float> %i.st, %i.sw
  %i.sy = shufflevector <2 x float> %.sroa.6487.0.copyload, <2 x float> %.sroa.8489.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.sz = fmul <2 x float> %i.st, %i.sy
  %i.ta = shufflevector <2 x float> %i.su, <2 x float> %i.st, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.tb = fmul <2 x float> %i.ta, %.sroa.6487.0.copyload
  %i.tc = fsub <2 x float> %i.sv, %i.sz
  %i.td = fsub <2 x float> %i.sx, %i.tb
  %i.te = fmul <2 x float> %i.ta, %i.se
  %i.tf = fmul <2 x float> %i.su, %i.se
  %i.tg = fsub <2 x float> %i.tc, %i.te           ; 2 uses
  %i.th = fsub <2 x float> %i.td, %i.tf           ; 2 uses
  %i.ti = fmul <2 x float> %i.sy, %i.tg
  %i.tj = fmul <2 x float> %i.sw, %i.th
  %i.tk = fsub <2 x float> %i.ti, %i.tj
  %foldExtExtBinop662 = fmul <2 x float> %.sroa.6487.0.copyload, %i.th
  %foldExtExtBinop664 = fmul <2 x float> %.sroa.6487.0.copyload, %i.tg
  %shift666 = shufflevector <2 x float> %foldExtExtBinop664, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop667 = fsub <2 x float> %foldExtExtBinop662, %shift666
  %i.tl = extractelement <2 x float> %foldExtExtBinop667, i64 0
  %i.tm = fmul <2 x float> %i.tk, splat (float 2.000000e+00)
  %i.tn = fadd <2 x float> %i.st, %i.tm
  %i.to = fmul float %i.tl, 2.000000e+00
  %i.tp = extractelement <2 x float> %i.su, i64 1
  %i.tq = fadd float %i.tp, %i.to
  store <2 x float> %i.tn, ptr %i.ru, align 4, !tbaa !142
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 124
  store float %i.tq, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !142
  %.sroa.5.0..sroa_idx465 = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  store <2 x float> %i.sj, ptr %.sroa.5.0..sroa_idx465, align 8, !tbaa !142
  %.sroa.6.0..sroa_idx466 = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  store <2 x float> %.sroa.251.12.vec.insert.i451, ptr %.sroa.6.0..sroa_idx466, align 8, !tbaa !142
  %i.tr = load i32, ptr %i.cs, align 4, !tbaa !190
  %i.ts = or i32 %i.tr, 8388608
  store i32 %i.ts, ptr %i.cs, align 4, !tbaa !190
  %i.tt = getelementptr inbounds nuw i8, ptr %.0289, i64 68
  %i.tu = getelementptr inbounds nuw i8, ptr %i.du, i64 68
  %.sroa.015.0.copyload = load <2 x float>, ptr %i.tt, align 4
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0289, i64 76
  %.sroa.216.0.copyload = load float, ptr %.sroa.216.0..sroa_idx, align 4
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.tu, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 76
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4
  %i.tv = tail call zeroext i1 @b3UpdateContact(ptr noundef %i.b, i32 noundef %2, ptr noundef nonnull %i.av, ptr noundef nonnull %i.az, <2 x float> %.sroa.015.0.copyload, float %.sroa.216.0.copyload, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull %i.bd, <2 x float> %.sroa.0.0.copyload, float %.sroa.2.0.copyload, ptr noundef nonnull byval(%struct.b3Transform) align 8 %5, i1 noundef zeroext %i.ec, ptr noundef byval(%struct.b3Arena) align 8 %i.f) #21 ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.av, i64 80 ; 3 uses
  %i.tx = load i32, ptr %i.tw, align 8, !tbaa !272 ; 2 uses
  %i.ty = icmp sgt i32 %i.tx, 0
  br i1 %i.ty, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.thread521
  %i.tz = tail call i32 @llvm.umin.i32(i32 %i.tx, i32 7)
  %i.ua = zext nneg i32 %i.tz to i64
  %i.ub = getelementptr [4 x i8], ptr %i.f, i64 %i.ua
  %i.uc = getelementptr i8, ptr %i.ub, i64 3748   ; 2 uses
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !82
  %i.ue = add nsw i32 %i.ud, 1
  store i32 %i.ue, ptr %i.uc, align 4, !tbaa !82
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread521
  %.not304 = xor i1 %i.tv, true
  %brmerge = or i1 %.not300, %.not304
  br i1 %brmerge, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.uf = load i32, ptr %i.cs, align 4, !tbaa !190
  %i.ug = and i32 %i.uf, 4194304
  %.not299 = icmp eq i32 %i.ug, 0
  br i1 %.not299, label %.thread524, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.uh = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !252
  %i.uj = sext i32 %i.ui to i64
  %i.uk = getelementptr [112 x i8], ptr %i.b, i64 %i.uj
  %i.ul = getelementptr i8, ptr %i.uk, i64 1192
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !239
  %i.un = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.uo = load i32, ptr %i.un, align 8, !tbaa !250
  %i.up = sext i32 %i.uo to i64
  %i.uq = getelementptr inbounds [12 x i8], ptr %i.um, i64 %i.up
  %i.ur = load i32, ptr %i.tw, align 8, !tbaa !272
  %i.us = trunc i32 %i.ur to i16
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  store i16 %i.us, ptr %i.ut, align 4, !tbaa !652
  br label %.thread524

bb.aa:                                            ; preds = %bb.x
  %or.cond305 = and i1 %.not300, %i.tv
  br i1 %or.cond305, label %.sink.split, label %.thread524

.thread524:                                       ; preds = %bb.y, %bb.z, %bb.aa
  %brmerge306 = or i1 %.not300, %i.tv
  br i1 %brmerge306, label %bb.ab, label %.sink.split

.sink.split:                                      ; preds = %.thread524, %bb.aa
  %.sink597 = phi i32 [ 262144, %bb.aa ], [ 524288, %.thread524 ]
  %i.uu = load i32, ptr %i.cs, align 4, !tbaa !190
  %i.uv = or i32 %i.uu, %.sink597
  store i32 %i.uv, ptr %i.cs, align 4, !tbaa !190
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !244
  %i.uw = lshr i32 %i.at, 6
  %i.ux = and i32 %i.at, 63
  %i.uy = zext nneg i32 %i.ux to i64
  %i.uz = shl nuw i64 1, %i.uy
  %i.va = zext nneg i32 %i.uw to i64
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.va ; 2 uses
  %i.vc = load i64, ptr %i.vb, align 8, !tbaa !245
  %i.vd = or i64 %i.vc, %i.uz
  store i64 %i.vd, ptr %i.vb, align 8, !tbaa !245
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %.thread524
  %i.ve = load i32, ptr %i.tw, align 8, !tbaa !272 ; 2 uses
  %i.vf = icmp sgt i32 %i.ve, 0
  br i1 %i.vf, label %.lr.ph551, label %.loopexit

.lr.ph551:                                        ; preds = %bb.ab
  %i.vg = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !273
  %wide.trip.count570 = zext nneg i32 %i.ve to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph551, %._crit_edge548
  %indvars.iv567 = phi i64 [ 0, %.lr.ph551 ], [ %indvars.iv.next568, %._crit_edge548 ] ; 2 uses
  %i.vi = getelementptr inbounds nuw [268 x i8], ptr %i.vh, i64 %indvars.iv567 ; 6 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 264
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !275 ; 3 uses
  %i.vl = icmp sgt i32 %i.vk, 0
  br i1 %i.vl, label %.lr.ph547.preheader, label %._crit_edge548

.lr.ph547.preheader:                              ; preds = %bb.ac
  %wide.trip.count565 = zext nneg i32 %i.vk to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count565, 3      ; 3 uses
  %i.vm = icmp ult i32 %i.vk, 4
  br i1 %i.vm, label %.lr.ph547.epil.preheader, label %.lr.ph547.preheader.new

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
  %i.vn = getelementptr inbounds nuw [56 x i8], ptr %i.vi, i64 %indvars.iv562.epil ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 24
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !277
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vn, i64 28
  store float %i.vp, ptr %i.vq, align 4, !tbaa !651
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
  %i.vr = getelementptr inbounds nuw [56 x i8], ptr %i.vi, i64 %indvars.iv562 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 24
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !277
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vr, i64 28
  store float %i.vt, ptr %i.vu, align 4, !tbaa !651
  %i.vv = getelementptr inbounds nuw [56 x i8], ptr %i.vi, i64 %indvars.iv562 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 80
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !277
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vv, i64 84
  store float %i.vx, ptr %i.vy, align 4, !tbaa !651
  %i.vz = getelementptr inbounds nuw [56 x i8], ptr %i.vi, i64 %indvars.iv562 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 136
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !277
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vz, i64 140
  store float %i.wb, ptr %i.wc, align 4, !tbaa !651
  %i.wd = getelementptr inbounds nuw [56 x i8], ptr %i.vi, i64 %indvars.iv562 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 192
  %i.wf = load float, ptr %i.we, align 4, !tbaa !277
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wd, i64 196
  store float %i.wf, ptr %i.wg, align 4, !tbaa !651
  %indvars.iv.next563.3 = add nuw nsw i64 %indvars.iv562, 4 ; 2 uses
end_hunk_1
