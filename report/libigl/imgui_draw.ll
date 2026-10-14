Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_draw?download=true
inline.NumInlined: 1179
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 238
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif:bb.a
  %wide.trip.count661 = zext nneg i32 %2 to i64
  br label %bb.n

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph612
  %i.cs = phi ptr [ %.promoted736, %.lr.ph612 ], [ %i.et, %.backedge.backedge ] ; 13 uses
  %indvars.iv647 = phi i64 [ 0, %.lr.ph612 ], [ %indvars.iv.next648, %.backedge.backedge ] ; 2 uses
  %.0432609 = phi i32 [ %i.cm, %.lr.ph612 ], [ %i.cx, %.backedge.backedge ] ; 3 uses
  %indvars.iv.next648 = add nuw nsw i64 %indvars.iv647, 1 ; 5 uses
  %i.ct = icmp eq i64 %indvars.iv.next648, %i.aj  ; 2 uses
  %i.cu = trunc nuw nsw i64 %indvars.iv.next648 to i32
  %i.cv = select i1 %i.ct, i32 0, i32 %i.cu       ; 2 uses
  %i.cw = add i32 %.0432609, %i.cn
  %i.cx = select i1 %i.ct, i32 %i.cm, i32 %i.cw   ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv647
  %i.cz = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.cz
  %i.db = load <2 x float>, ptr %i.cy, align 8, !tbaa !15
  %i.dc = load <2 x float>, ptr %i.da, align 8, !tbaa !15
  %i.dd = fadd <2 x float> %i.db, %i.dc
  %i.de = fmul <2 x float> %i.dd, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop707 = fmul <2 x float> %i.de, %i.de
  %i.df = extractelement <2 x float> %foldExtExtBinop707, i64 1
  %i.dg = extractelement <2 x float> %i.de, i64 0 ; 2 uses
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.df) ; 2 uses
  %i.di = fcmp ogt float %i.dh, f0x358637BD
  br i1 %i.di, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.backedge
  %i.dj = fdiv float 1.000000e+00, %i.dh          ; 2 uses
  %i.dk = fcmp ogt float %i.dj, 1.000000e+02
  %spec.store.select = select i1 %i.dk, float 1.000000e+02, float %i.dj
  %i.dl = insertelement <2 x float> poison, float %spec.store.select, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x float> %i.de, %i.dm
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.backedge
  %i.do = phi <2 x float> [ %i.dn, %bb.j ], [ %i.de, %.backedge ]
  %i.dp = fmul <2 x float> %i.cq, %i.do           ; 2 uses
  %i.dq = shl nuw nsw i32 %i.cv, 1
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.dr
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cz
  %i.du = load <2 x float>, ptr %i.dt, align 4, !tbaa !15 ; 2 uses
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> %i.dp, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.dw = shufflevector <2 x float> %i.dp, <2 x float> %i.du, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.dx = fadd <4 x float> %i.dv, %i.dw
  %i.dy = fsub <4 x float> %i.dv, %i.dw
  %i.dz = shufflevector <4 x float> %i.dx, <4 x float> %i.dy, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  store <4 x float> %i.dz, ptr %i.ds, align 8, !tbaa !15
  %i.ea = trunc i32 %i.cx to i16                  ; 4 uses
  store i16 %i.ea, ptr %i.cs, align 2, !tbaa !92
  %i.eb = trunc i32 %.0432609 to i16              ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !92
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cs, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  br i1 %.not446, label %bb.l, label %.thread691

bb.l:                                             ; preds = %bb.k
  %i.ef = trunc i32 %i.cx to i16
  %i.eg = insertelement <2 x i16> poison, i16 %i.ef, i64 0
  %i.eh = trunc i32 %.0432609 to i16
  %i.ei = insertelement <2 x i16> %i.eg, i16 %i.eh, i64 1
  %i.ej = shufflevector <2 x i16> %i.ei, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ek = add i16 %i.eb, 2                        ; 2 uses
  store i16 %i.ek, ptr %i.ed, align 2, !tbaa !92
  %i.el = getelementptr inbounds nuw i8, ptr %i.cs, i64 6
  store i16 %i.ek, ptr %i.el, align 2, !tbaa !92
  %i.em = add <4 x i16> %i.ej, <i16 2, i16 0, i16 1, i16 1> ; 2 uses
  store <4 x i16> %i.em, ptr %i.ee, align 2, !tbaa !92
  %i.en = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i16 %i.eb, ptr %i.en, align 2, !tbaa !92
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cs, i64 18
  store i16 %i.eb, ptr %i.eo, align 2, !tbaa !92
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  store i16 %i.ea, ptr %i.ep, align 2, !tbaa !92
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cs, i64 22
  %i.er = extractelement <4 x i16> %i.em, i64 2
  store i16 %i.er, ptr %i.eq, align 2, !tbaa !92
  %i.es = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  store ptr %i.es, ptr %i.co, align 8, !tbaa !88
  %exitcond651.not = icmp eq i64 %indvars.iv.next648, %wide.trip.count650
  br i1 %exitcond651.not, label %.lr.ph618, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.l, %.thread691
  %i.et = phi ptr [ %i.es, %bb.l ], [ %i.ey, %.thread691 ]
  br label %.backedge, !llvm.loop !287

.thread691:                                       ; preds = %bb.k
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cs, i64 10
  %i.ev = add i16 %i.eb, 1                        ; 2 uses
  store i16 %i.ev, ptr %i.ed, align 2, !tbaa !92
  %i.ew = add i16 %i.ea, 1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cs, i64 6
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !92
  store i16 %i.ev, ptr %i.ee, align 2, !tbaa !92
  store i16 %i.ea, ptr %i.eu, align 2, !tbaa !92
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cs, i64 12 ; 2 uses
  store ptr %i.ey, ptr %i.co, align 8, !tbaa !88
  %exitcond651.not693 = icmp eq i64 %indvars.iv.next648, %wide.trip.count650
  br i1 %exitcond651.not693, label %.lr.ph616, label %.backedge.backedge

.lr.ph616:                                        ; preds = %.thread691
  %i.ez = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 504
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !293
  %i.fc = zext nneg i32 %i.q to i64
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.fc ; 2 uses
  %i.fe = load <2 x i32>, ptr %i.fd, align 4, !tbaa !15 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load <2 x i32>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !15 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %xtraiter = and i64 %i.aj, 1
  %.promoted = load ptr, ptr %i.fg, align 8, !tbaa !86
  %unroll_iter = and i64 %i.aj, 2147483646
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph616
  %indvars.iv652 = phi i64 [ 0, %.lr.ph616 ], [ %indvars.iv.next653.1, %bb.m ] ; 3 uses
  %i.fh = phi ptr [ %.promoted, %.lr.ph616 ], [ %i.gc, %bb.m ] ; 13 uses
  %niter = phi i64 [ 0, %.lr.ph616 ], [ %niter.next.1, %bb.m ]
  %.idx = shl nuw nsw i64 %indvars.iv652, 4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !15
  store i64 %i.fj, ptr %i.fh, align 4, !tbaa !15
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store <2 x i32> %i.fe, ptr %i.fk, align 4, !tbaa !15
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store i32 %3, ptr %i.fl, align 4, !tbaa !94
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 20
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !15
  store i64 %i.fo, ptr %i.fn, align 4, !tbaa !15
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fh, i64 28
  store <2 x i32> %i.ff, ptr %i.fp, align 4, !tbaa !15
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fh, i64 36
  store i32 %3, ptr %i.fq, align 4, !tbaa !94
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  %indvars.iv.next653 = shl i64 %indvars.iv652, 4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next653 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !15
  store i64 %i.fu, ptr %i.fr, align 4, !tbaa !15
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  store <2 x i32> %i.fe, ptr %i.fv, align 4, !tbaa !15
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  store i32 %3, ptr %i.fw, align 4, !tbaa !94
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fh, i64 60
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !15
  store i64 %i.fz, ptr %i.fy, align 4, !tbaa !15
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fh, i64 68
  store <2 x i32> %i.ff, ptr %i.ga, align 4, !tbaa !15
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fh, i64 76
  store i32 %3, ptr %i.gb, align 4, !tbaa !94
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fh, i64 80 ; 9 uses
  %indvars.iv.next653.1 = add nuw nsw i64 %indvars.iv652, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit607_crit_edge.unr-lcssa, label %bb.m, !llvm.loop !288

bb.n:                                             ; preds = %.lr.ph618, %bb.n
  %indvars.iv657 = phi i64 [ 0, %.lr.ph618 ], [ %indvars.iv.next658, %bb.n ] ; 3 uses
  %i.gd = phi ptr [ %.promoted619, %.lr.ph618 ], [ %i.gs, %bb.n ] ; 10 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv657
  %i.gf = load i64, ptr %i.ge, align 4, !tbaa !15
  store i64 %i.gf, ptr %i.gd, align 4, !tbaa !15
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i64 %i.e, ptr %i.gg, align 4, !tbaa !15
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store i32 %3, ptr %i.gh, align 4, !tbaa !94
  %.idx689 = shl nuw nsw i64 %indvars.iv657, 4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx689 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 20
  %i.gk = load i64, ptr %i.gi, align 8, !tbaa !15
  store i64 %i.gk, ptr %i.gj, align 4, !tbaa !15
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gd, i64 28
  store i64 %i.e, ptr %i.gl, align 4, !tbaa !15
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gd, i64 36
  store i32 %i.n, ptr %i.gm, align 4, !tbaa !94
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !15
  store i64 %i.gp, ptr %i.go, align 4, !tbaa !15
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gd, i64 48
  store i64 %i.e, ptr %i.gq, align 4, !tbaa !15
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gd, i64 56
  store i32 %i.n, ptr %i.gr, align 4, !tbaa !94
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gd, i64 60 ; 2 uses
  %indvars.iv.next658 = add nuw nsw i64 %indvars.iv657, 1 ; 2 uses
  %exitcond662.not = icmp eq i64 %indvars.iv.next658, %wide.trip.count661
  br i1 %exitcond662.not, label %..loopexit606_crit_edge, label %bb.n, !llvm.loop !289

bb.o:                                             ; preds = %bb.h
  %i.gt = fsub float %i.p, %i.i
  %i.gu = fmul float %i.gt, 5.000000e-01          ; 4 uses
  %i.gv = fadd float %i.i, %i.gu                  ; 2 uses
  %i.gw = load <2 x float>, ptr %i.ai, align 16, !tbaa !15
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gy = load <2 x float>, ptr %1, align 4, !tbaa !15 ; 3 uses
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ha = insertelement <4 x float> poison, float %i.gv, i64 0
  %i.hb = insertelement <4 x float> %i.ha, float %i.gu, i64 1
  %i.hc = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.hd = fmul <4 x float> %i.hc, %i.gx           ; 5 uses
  %i.he = fadd <4 x float> %i.hd, %i.gz           ; 2 uses
  %i.hf = shufflevector <4 x float> %i.he, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.hf, ptr %i.ak, align 8, !tbaa !15
  %i.hg = shufflevector <4 x float> %i.he, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store <2 x float> %i.hg, ptr %i.hh, align 8, !tbaa !15
  %shift = shufflevector <4 x float> %i.hd, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop709 = fsub <4 x float> %i.gz, %shift
  %.sroa.0.0.vec.insert.i547 = shufflevector <4 x float> %foldExtExtBinop709, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %6 = shufflevector <4 x float> %i.hd, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %7 = fsub <2 x float> %i.gy, %6
  %.sroa.0.4.vec.insert.i548 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i547, <2 x float> %7, <2 x i32> <i32 0, i32 3>
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i548, ptr %i.hi, align 8, !tbaa !15
  %foldExtExtBinop711 = fsub <4 x float> %i.gz, %i.hd
  %.sroa.0.0.vec.insert.i551 = shufflevector <4 x float> %foldExtExtBinop711, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %8 = shufflevector <4 x float> %i.hd, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %9 = fsub <2 x float> %i.gy, %8
  %.sroa.0.4.vec.insert.i552 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i551, <2 x float> %9, <2 x i32> <i32 0, i32 3>
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store <2 x float> %.sroa.0.4.vec.insert.i552, ptr %i.hj, align 8, !tbaa !15
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bh
  %i.hl = load <2 x float>, ptr %i.bi, align 8, !tbaa !15
  %i.hm = insertelement <2 x float> poison, float %i.gv, i64 0
  %i.hn = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ho = fmul <2 x float> %i.hn, %i.hl
  %i.hp = load <2 x float>, ptr %i.hk, align 4, !tbaa !15 ; 4 uses
  %i.hq = fadd <2 x float> %i.ho, %i.hp
  %i.hr = shl nuw nsw i32 %i.f, 2
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.hs ; 4 uses
  store <2 x float> %i.hq, ptr %i.ht, align 8, !tbaa !15
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hw = load <2 x float>, ptr %i.bi, align 8, !tbaa !15 ; 2 uses
  %i.hx = insertelement <2 x float> poison, float %i.gu, i64 0
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hz = fmul <2 x float> %i.hy, %i.hw           ; 2 uses
  %i.ia = fadd <2 x float> %i.hp, %i.hz
  store <2 x float> %i.ia, ptr %i.hu, align 8, !tbaa !15
  %i.ib = fsub <2 x float> %i.hp, %i.hz
  store <2 x float> %i.ib, ptr %i.hv, align 8, !tbaa !15
  %i.ic = fmul <2 x float> %i.hn, %i.hw
  %i.id = fsub <2 x float> %i.hp, %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  store <2 x float> %i.id, ptr %i.ie, align 8, !tbaa !15
  br label %.lr.ph624

.lr.ph624:                                        ; preds = %bb.o, %.thread598
  %i.if = phi float [ %i.bl, %.thread598 ], [ %i.gu, %bb.o ] ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !57 ; 3 uses
  %i.ii = fadd float %i.i, %i.if
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.promoted625 = load ptr, ptr %i.ij, align 8, !tbaa !88
  %wide.trip.count666 = zext nneg i32 %i.g to i64
  %i.ik = insertelement <4 x float> poison, float %i.ii, i64 0
  %i.il = insertelement <4 x float> %i.ik, float %i.if, i64 1
  %i.im = shufflevector <4 x float> %i.il, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br label %bb.p

.lr.ph628:                                        ; preds = %bb.r
  store ptr %i.kt, ptr %i.ij, align 8, !tbaa !88
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted629 = load ptr, ptr %i.in, align 8, !tbaa !86
  %wide.trip.count672 = zext nneg i32 %2 to i64
  br label %bb.s

bb.p:                                             ; preds = %.lr.ph624, %bb.r
  %indvars.iv663 = phi i64 [ 0, %.lr.ph624 ], [ %indvars.iv.next664, %bb.r ] ; 2 uses
  %i.io = phi ptr [ %.promoted625, %.lr.ph624 ], [ %i.kt, %bb.r ] ; 9 uses
  %.0423621 = phi i32 [ %i.ih, %.lr.ph624 ], [ %spec.select, %bb.r ] ; 3 uses
  %indvars.iv.next664 = add nuw nsw i64 %indvars.iv663, 1 ; 4 uses
  %i.ip = icmp eq i64 %indvars.iv.next664, %i.aj  ; 2 uses
  %i.iq = trunc nuw nsw i64 %indvars.iv.next664 to i32
  %i.ir = select i1 %i.ip, i32 0, i32 %i.iq       ; 2 uses
  %i.is = add i32 %.0423621, 4
  %spec.select = select i1 %i.ip, i32 %i.ih, i32 %i.is ; 3 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv663
  %i.iu = zext nneg i32 %i.ir to i64              ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.iu
  %i.iw = load <2 x float>, ptr %i.it, align 8, !tbaa !15
  %i.ix = load <2 x float>, ptr %i.iv, align 8, !tbaa !15
  %i.iy = fadd <2 x float> %i.iw, %i.ix
  %i.iz = fmul <2 x float> %i.iy, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop715 = fmul <2 x float> %i.iz, %i.iz
  %i.ja = extractelement <2 x float> %foldExtExtBinop715, i64 1
  %i.jb = extractelement <2 x float> %i.iz, i64 0 ; 2 uses
  %i.jc = tail call float @llvm.fmuladd.f32(float %i.jb, float %i.jb, float %i.ja) ; 2 uses
  %i.jd = fcmp ogt float %i.jc, f0x358637BD
  br i1 %i.jd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.je = fdiv float 1.000000e+00, %i.jc          ; 2 uses
  %i.jf = fcmp ogt float %i.je, 1.000000e+02
  %spec.store.select6 = select i1 %i.jf, float 1.000000e+02, float %i.je
  %i.jg = insertelement <2 x float> poison, float %spec.store.select6, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ji = fmul <2 x float> %i.iz, %i.jh
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.jj = phi <2 x float> [ %i.ji, %bb.q ], [ %i.iz, %bb.p ]
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.jl = fmul <4 x float> %i.im, %i.jk           ; 2 uses
  %i.jm = shl nuw nsw i32 %i.ir, 2
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.jn ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.iu
  %i.jq = load <2 x float>, ptr %i.jp, align 4, !tbaa !15
  %i.jr = shufflevector <2 x float> %i.jq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.js = fadd <4 x float> %i.jl, %i.jr
  store <4 x float> %i.js, ptr %i.jo, align 8, !tbaa !15
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.ju = fsub <4 x float> %i.jr, %i.jl
  %i.jv = shufflevector <4 x float> %i.ju, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x float> %i.jv, ptr %i.jt, align 8, !tbaa !15
  %i.jw = trunc i32 %spec.select to i16
  %i.jx = insertelement <2 x i16> poison, i16 %i.jw, i64 0
  %i.jy = trunc i32 %.0423621 to i16
  %i.jz = insertelement <2 x i16> %i.jx, i16 %i.jy, i64 1
  %i.ka = shufflevector <2 x i16> %i.jz, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.kb = trunc i32 %spec.select to i16           ; 3 uses
  %i.kc = trunc i32 %.0423621 to i16              ; 3 uses
  %i.kd = add <4 x i16> %i.ka, <i16 1, i16 1, i16 2, i16 2> ; 3 uses
  %i.ke = shufflevector <4 x i16> %i.kd, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 2, i32 3, i32 0, i32 0, i32 1>
  %i.kf = add i16 %i.kb, 1
  store <8 x i16> %i.ke, ptr %i.io, align 2, !tbaa !92
  %i.kg = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  store i16 %i.kc, ptr %i.kg, align 2, !tbaa !92
  %i.kh = getelementptr inbounds nuw i8, ptr %i.io, i64 18
  store i16 %i.kc, ptr %i.kh, align 2, !tbaa !92
  %i.ki = getelementptr inbounds nuw i8, ptr %i.io, i64 20
  store i16 %i.kb, ptr %i.ki, align 2, !tbaa !92
  %i.kj = getelementptr inbounds nuw i8, ptr %i.io, i64 22
  store i16 %i.kf, ptr %i.kj, align 2, !tbaa !92
  %i.kk = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.kl = extractelement <4 x i16> %i.kd, i64 3   ; 2 uses
  store i16 %i.kl, ptr %i.kk, align 2, !tbaa !92
  %i.km = getelementptr inbounds nuw i8, ptr %i.io, i64 26
  %i.kn = shufflevector <4 x i16> %i.kd, <4 x i16> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.ko = insertelement <4 x i16> %i.kn, i16 %i.kc, i64 1
  %i.kp = insertelement <4 x i16> %i.ko, i16 %i.kb, i64 3
  %i.kq = add <4 x i16> %i.kp, <i16 0, i16 3, i16 poison, i16 3>
  %i.kr = shufflevector <4 x i16> %i.kq, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  store <4 x i16> %i.kr, ptr %i.km, align 2, !tbaa !92
  %i.ks = getelementptr inbounds nuw i8, ptr %i.io, i64 34
  store i16 %i.kl, ptr %i.ks, align 2, !tbaa !92
  %i.kt = getelementptr inbounds nuw i8, ptr %i.io, i64 36 ; 2 uses
  %exitcond667.not = icmp eq i64 %indvars.iv.next664, %wide.trip.count666
  br i1 %exitcond667.not, label %.lr.ph628, label %bb.p, !llvm.loop !290

bb.s:                                             ; preds = %.lr.ph628, %bb.s
  %indvars.iv668 = phi i64 [ 0, %.lr.ph628 ], [ %indvars.iv.next669, %bb.s ] ; 2 uses
  %i.ku = phi ptr [ %.promoted629, %.lr.ph628 ], [ %i.lo, %bb.s ] ; 13 uses
  %.idx690 = shl nuw nsw i64 %indvars.iv668, 5
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx690 ; 4 uses
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !15
  store i64 %i.kw, ptr %i.ku, align 4, !tbaa !15
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  store i64 %i.e, ptr %i.kx, align 4, !tbaa !15
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  store i32 %i.n, ptr %i.ky, align 4, !tbaa !94
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %i.ku, i64 20
  %i.lb = load i64, ptr %i.kz, align 8, !tbaa !15
  store i64 %i.lb, ptr %i.la, align 4, !tbaa !15
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ku, i64 28
  store i64 %i.e, ptr %i.lc, align 4, !tbaa !15
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ku, i64 36
  store i32 %3, ptr %i.ld, align 4, !tbaa !94
  %i.le = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ku, i64 40
  %i.lg = load i64, ptr %i.le, align 8, !tbaa !15
  store i64 %i.lg, ptr %i.lf, align 4, !tbaa !15
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ku, i64 48
  store i64 %i.e, ptr %i.lh, align 4, !tbaa !15
  %i.li = getelementptr inbounds nuw i8, ptr %i.ku, i64 56
  store i32 %3, ptr %i.li, align 4, !tbaa !94
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kv, i64 24
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ku, i64 60
  %i.ll = load i64, ptr %i.lj, align 8, !tbaa !15
  store i64 %i.ll, ptr %i.lk, align 4, !tbaa !15
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ku, i64 68
  store i64 %i.e, ptr %i.lm, align 4, !tbaa !15
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ku, i64 76
  store i32 %i.n, ptr %i.ln, align 4, !tbaa !94
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ku, i64 80 ; 2 uses
  %indvars.iv.next669 = add nuw nsw i64 %indvars.iv668, 1 ; 2 uses
  %exitcond673.not = icmp eq i64 %indvars.iv.next669, %wide.trip.count672
  br i1 %exitcond673.not, label %..loopexit604_crit_edge, label %bb.s, !llvm.loop !291

..loopexit604_crit_edge:                          ; preds = %bb.s
  store ptr %i.lo, ptr %i.in, align 8, !tbaa !86
  br label %.loopexit604

..loopexit606_crit_edge:                          ; preds = %bb.n
  store ptr %i.gs, ptr %i.cr, align 8, !tbaa !86
  br label %.loopexit604

..loopexit607_crit_edge.unr-lcssa:                ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %..loopexit607_crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit607_crit_edge.unr-lcssa
  %lcmp.mod729 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod729)
  %.idx.epil = shl nuw nsw i64 %indvars.iv.next653.1, 4
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.epil ; 2 uses
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !15
  store i64 %i.lq, ptr %i.gc, align 4, !tbaa !15
  %i.lr = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store <2 x i32> %i.fe, ptr %i.lr, align 4, !tbaa !15
  %i.ls = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store i32 %3, ptr %i.ls, align 4, !tbaa !94
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.gc, i64 20
  %i.lv = load i64, ptr %i.lt, align 16, !tbaa !15
  store i64 %i.lv, ptr %i.lu, align 4, !tbaa !15
end_hunk_0
