Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/wc_mlkem_poly?download=true
inline.NumInlined: 49
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@mlkem_decompress_5:vector.memcheck
  %i.j = getelementptr i8, ptr %1, i64 %i.c       ; 5 uses
  %next.gep9 = getelementptr i8, ptr %i.j, i64 35
  %i.k = load i8, ptr %next.gep, align 1, !tbaa !13, !alias.scope !89
  %i.l = load i8, ptr %next.gep3, align 1, !tbaa !13, !alias.scope !89
  %i.m = load i8, ptr %next.gep4, align 1, !tbaa !13, !alias.scope !89
  %i.n = load i8, ptr %next.gep5, align 1, !tbaa !13, !alias.scope !89
  %i.o = load i8, ptr %next.gep6, align 1, !tbaa !13, !alias.scope !89
  %i.p = load i8, ptr %next.gep7, align 1, !tbaa !13, !alias.scope !89
  %i.q = load i8, ptr %next.gep8, align 1, !tbaa !13, !alias.scope !89
  %i.r = load i8, ptr %next.gep9, align 1, !tbaa !13, !alias.scope !89
  %i.s = insertelement <8 x i8> poison, i8 %i.k, i64 0
  %i.t = insertelement <8 x i8> %i.s, i8 %i.l, i64 1
  %i.u = insertelement <8 x i8> %i.t, i8 %i.m, i64 2
  %i.v = insertelement <8 x i8> %i.u, i8 %i.n, i64 3
  %i.w = insertelement <8 x i8> %i.v, i8 %i.o, i64 4
  %i.x = insertelement <8 x i8> %i.w, i8 %i.p, i64 5
  %i.y = insertelement <8 x i8> %i.x, i8 %i.q, i64 6
  %i.z = insertelement <8 x i8> %i.y, i8 %i.r, i64 7 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.ab = getelementptr i8, ptr %i.d, i64 6
  %i.ac = getelementptr i8, ptr %i.e, i64 11
  %i.ad = getelementptr i8, ptr %i.f, i64 16
  %i.ae = getelementptr i8, ptr %i.g, i64 21
  %i.af = getelementptr i8, ptr %i.h, i64 26
  %i.ag = getelementptr i8, ptr %i.i, i64 31
  %i.ah = getelementptr i8, ptr %i.j, i64 36
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !13, !alias.scope !89
  %i.aj = load i8, ptr %i.ab, align 1, !tbaa !13, !alias.scope !89
  %i.ak = load i8, ptr %i.ac, align 1, !tbaa !13, !alias.scope !89
  %i.al = load i8, ptr %i.ad, align 1, !tbaa !13, !alias.scope !89
  %i.am = load i8, ptr %i.ae, align 1, !tbaa !13, !alias.scope !89
  %i.an = load i8, ptr %i.af, align 1, !tbaa !13, !alias.scope !89
  %i.ao = load i8, ptr %i.ag, align 1, !tbaa !13, !alias.scope !89
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !13, !alias.scope !89
  %i.aq = insertelement <8 x i8> poison, i8 %i.ai, i64 0
  %i.ar = insertelement <8 x i8> %i.aq, i8 %i.aj, i64 1
  %i.as = insertelement <8 x i8> %i.ar, i8 %i.ak, i64 2
  %i.at = insertelement <8 x i8> %i.as, i8 %i.al, i64 3
  %i.au = insertelement <8 x i8> %i.at, i8 %i.am, i64 4
  %i.av = insertelement <8 x i8> %i.au, i8 %i.an, i64 5
  %i.aw = insertelement <8 x i8> %i.av, i8 %i.ao, i64 6
  %i.ax = insertelement <8 x i8> %i.aw, i8 %i.ap, i64 7 ; 3 uses
  %i.ay = tail call <8 x i8> @llvm.fshl.v8i8(<8 x i8> %i.ax, <8 x i8> %i.z, <8 x i8> splat (i8 3))
  %i.az = lshr <8 x i8> %i.ax, splat (i8 2)
  %i.ba = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.bb = getelementptr i8, ptr %i.d, i64 7
  %i.bc = getelementptr i8, ptr %i.e, i64 12
  %i.bd = getelementptr i8, ptr %i.f, i64 17
  %i.be = getelementptr i8, ptr %i.g, i64 22
  %i.bf = getelementptr i8, ptr %i.h, i64 27
  %i.bg = getelementptr i8, ptr %i.i, i64 32
  %i.bh = getelementptr i8, ptr %i.j, i64 37
  %i.bi = load i8, ptr %i.ba, align 1, !tbaa !13, !alias.scope !89
  %i.bj = load i8, ptr %i.bb, align 1, !tbaa !13, !alias.scope !89
  %i.bk = load i8, ptr %i.bc, align 1, !tbaa !13, !alias.scope !89
  %i.bl = load i8, ptr %i.bd, align 1, !tbaa !13, !alias.scope !89
  %i.bm = load i8, ptr %i.be, align 1, !tbaa !13, !alias.scope !89
  %i.bn = load i8, ptr %i.bf, align 1, !tbaa !13, !alias.scope !89
  %i.bo = load i8, ptr %i.bg, align 1, !tbaa !13, !alias.scope !89
  %i.bp = load i8, ptr %i.bh, align 1, !tbaa !13, !alias.scope !89
  %i.bq = insertelement <8 x i8> poison, i8 %i.bi, i64 0
  %i.br = insertelement <8 x i8> %i.bq, i8 %i.bj, i64 1
  %i.bs = insertelement <8 x i8> %i.br, i8 %i.bk, i64 2
  %i.bt = insertelement <8 x i8> %i.bs, i8 %i.bl, i64 3
  %i.bu = insertelement <8 x i8> %i.bt, i8 %i.bm, i64 4
  %i.bv = insertelement <8 x i8> %i.bu, i8 %i.bn, i64 5
  %i.bw = insertelement <8 x i8> %i.bv, i8 %i.bo, i64 6
  %i.bx = insertelement <8 x i8> %i.bw, i8 %i.bp, i64 7 ; 2 uses
  %i.by = tail call <8 x i8> @llvm.fshl.v8i8(<8 x i8> %i.bx, <8 x i8> %i.ax, <8 x i8> splat (i8 1))
  %i.bz = getelementptr inbounds nuw i8, ptr %next.gep, i64 3
  %i.ca = getelementptr i8, ptr %i.d, i64 8
  %i.cb = getelementptr i8, ptr %i.e, i64 13
  %i.cc = getelementptr i8, ptr %i.f, i64 18
  %i.cd = getelementptr i8, ptr %i.g, i64 23
  %i.ce = getelementptr i8, ptr %i.h, i64 28
  %i.cf = getelementptr i8, ptr %i.i, i64 33
  %i.cg = getelementptr i8, ptr %i.j, i64 38
  %i.ch = load i8, ptr %i.bz, align 1, !tbaa !13, !alias.scope !89
  %i.ci = load i8, ptr %i.ca, align 1, !tbaa !13, !alias.scope !89
  %i.cj = load i8, ptr %i.cb, align 1, !tbaa !13, !alias.scope !89
  %i.ck = load i8, ptr %i.cc, align 1, !tbaa !13, !alias.scope !89
  %i.cl = load i8, ptr %i.cd, align 1, !tbaa !13, !alias.scope !89
  %i.cm = load i8, ptr %i.ce, align 1, !tbaa !13, !alias.scope !89
  %i.cn = load i8, ptr %i.cf, align 1, !tbaa !13, !alias.scope !89
  %i.co = load i8, ptr %i.cg, align 1, !tbaa !13, !alias.scope !89
  %i.cp = insertelement <8 x i8> poison, i8 %i.ch, i64 0
  %i.cq = insertelement <8 x i8> %i.cp, i8 %i.ci, i64 1
  %i.cr = insertelement <8 x i8> %i.cq, i8 %i.cj, i64 2
  %i.cs = insertelement <8 x i8> %i.cr, i8 %i.ck, i64 3
  %i.ct = insertelement <8 x i8> %i.cs, i8 %i.cl, i64 4
  %i.cu = insertelement <8 x i8> %i.ct, i8 %i.cm, i64 5
  %i.cv = insertelement <8 x i8> %i.cu, i8 %i.cn, i64 6
  %i.cw = insertelement <8 x i8> %i.cv, i8 %i.co, i64 7 ; 3 uses
  %i.cx = tail call <8 x i8> @llvm.fshl.v8i8(<8 x i8> %i.cw, <8 x i8> %i.bx, <8 x i8> splat (i8 4))
  %i.cy = lshr <8 x i8> %i.cw, splat (i8 1)
  %i.cz = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.da = getelementptr i8, ptr %i.d, i64 9
  %i.db = getelementptr i8, ptr %i.e, i64 14
  %i.dc = getelementptr i8, ptr %i.f, i64 19
  %i.dd = getelementptr i8, ptr %i.g, i64 24
  %i.de = getelementptr i8, ptr %i.h, i64 29
  %i.df = getelementptr i8, ptr %i.i, i64 34
  %i.dg = getelementptr i8, ptr %i.j, i64 39
  %i.dh = load i8, ptr %i.cz, align 1, !tbaa !13, !alias.scope !89
  %i.di = load i8, ptr %i.da, align 1, !tbaa !13, !alias.scope !89
  %i.dj = load i8, ptr %i.db, align 1, !tbaa !13, !alias.scope !89
  %i.dk = load i8, ptr %i.dc, align 1, !tbaa !13, !alias.scope !89
  %i.dl = load i8, ptr %i.dd, align 1, !tbaa !13, !alias.scope !89
  %i.dm = load i8, ptr %i.de, align 1, !tbaa !13, !alias.scope !89
  %i.dn = load i8, ptr %i.df, align 1, !tbaa !13, !alias.scope !89
  %i.do = load i8, ptr %i.dg, align 1, !tbaa !13, !alias.scope !89
  %i.dp = insertelement <8 x i8> poison, i8 %i.dh, i64 0
  %i.dq = insertelement <8 x i8> %i.dp, i8 %i.di, i64 1
  %i.dr = insertelement <8 x i8> %i.dq, i8 %i.dj, i64 2
  %i.ds = insertelement <8 x i8> %i.dr, i8 %i.dk, i64 3
  %i.dt = insertelement <8 x i8> %i.ds, i8 %i.dl, i64 4
  %i.du = insertelement <8 x i8> %i.dt, i8 %i.dm, i64 5
  %i.dv = insertelement <8 x i8> %i.du, i8 %i.dn, i64 6
  %i.dw = insertelement <8 x i8> %i.dv, i8 %i.do, i64 7 ; 2 uses
  %i.dx = tail call <8 x i8> @llvm.fshl.v8i8(<8 x i8> %i.dw, <8 x i8> %i.cw, <8 x i8> splat (i8 2))
  %i.dy = lshr <8 x i8> %i.dw, splat (i8 3)
  %i.dz = and <8 x i8> %i.z, splat (i8 31)
  %i.ea = zext nneg <8 x i8> %i.dz to <8 x i32>
  %i.eb = mul nuw nsw <8 x i32> %i.ea, splat (i32 3329)
  %.idx = shl nuw i64 %index, 4
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.ed = and <8 x i8> %i.ay, splat (i8 31)
  %i.ee = zext nneg <8 x i8> %i.ed to <8 x i32>
  %i.ef = mul nuw nsw <8 x i32> %i.ee, splat (i32 3329)
  %i.eg = and <8 x i8> %i.az, splat (i8 31)
  %i.eh = zext nneg <8 x i8> %i.eg to <8 x i32>
  %i.ei = mul nuw nsw <8 x i32> %i.eh, splat (i32 3329)
  %i.ej = and <8 x i8> %i.by, splat (i8 31)
  %i.ek = zext nneg <8 x i8> %i.ej to <8 x i32>
  %i.el = mul nuw nsw <8 x i32> %i.ek, splat (i32 3329)
  %i.em = and <8 x i8> %i.cx, splat (i8 31)
  %i.en = zext nneg <8 x i8> %i.em to <8 x i32>
  %i.eo = mul nuw nsw <8 x i32> %i.en, splat (i32 3329)
  %i.ep = and <8 x i8> %i.cy, splat (i8 31)
  %i.eq = zext nneg <8 x i8> %i.ep to <8 x i32>
  %i.er = mul nuw nsw <8 x i32> %i.eq, splat (i32 3329)
  %i.es = and <8 x i8> %i.dx, splat (i8 31)
  %i.et = zext nneg <8 x i8> %i.es to <8 x i32>
  %i.eu = mul nuw nsw <8 x i32> %i.et, splat (i32 3329)
  %i.ev = zext nneg <8 x i8> %i.dy to <8 x i32>
  %i.ew = mul nuw nsw <8 x i32> %i.ev, splat (i32 3329)
  %i.ex = shufflevector <8 x i32> %i.eb, <8 x i32> %i.ef, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ey = add nuw nsw <16 x i32> %i.ex, splat (i32 16)
  %i.ez = lshr <16 x i32> %i.ey, splat (i32 5)
  %i.fa = trunc nuw nsw <16 x i32> %i.ez to <16 x i16>
  %i.fb = shufflevector <8 x i32> %i.ei, <8 x i32> %i.el, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fc = add nuw nsw <16 x i32> %i.fb, splat (i32 16)
  %i.fd = lshr <16 x i32> %i.fc, splat (i32 5)
  %i.fe = trunc nuw nsw <16 x i32> %i.fd to <16 x i16>
  %i.ff = shufflevector <8 x i32> %i.eo, <8 x i32> %i.er, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fg = add nuw nsw <16 x i32> %i.ff, splat (i32 16)
  %i.fh = lshr <16 x i32> %i.fg, splat (i32 5)
  %i.fi = trunc nuw nsw <16 x i32> %i.fh to <16 x i16>
  %i.fj = shufflevector <8 x i32> %i.eu, <8 x i32> %i.ew, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fk = add nuw nsw <16 x i32> %i.fj, splat (i32 16)
  %i.fl = lshr <16 x i32> %i.fk, splat (i32 5)
  %i.fm = trunc nuw nsw <16 x i32> %i.fl to <16 x i16>
  %i.fn = shufflevector <16 x i16> %i.fa, <16 x i16> %i.fe, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fo = shufflevector <16 x i16> %i.fi, <16 x i16> %i.fm, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x i16> %i.fn, <32 x i16> %i.fo, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec, ptr %i.ec, align 2, !tbaa !10, !alias.scope !90, !noalias !89
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fp = icmp eq i64 %index.next, 32
  br i1 %i.fp, label %mlkem_decompress_5_c.exit, label %vector.body, !llvm.loop !87

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ 0, %vector.memcheck ] ; 3 uses
  %.040.i = phi ptr [ %i.gf, %scalar.ph ], [ %1, %vector.memcheck ] ; 6 uses
  %i.fq = load i8, ptr %.040.i, align 1, !tbaa !13 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.040.i, i64 1
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !13  ; 3 uses
  %i.ft = tail call i8 @llvm.fshl.i8(i8 %i.fs, i8 %i.fq, i8 3)
  %i.fu = lshr i8 %i.fs, 2
  %i.fv = getelementptr inbounds nuw i8, ptr %.040.i, i64 2
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !13  ; 2 uses
  %i.fx = tail call i8 @llvm.fshl.i8(i8 %i.fw, i8 %i.fs, i8 1)
  %i.fy = getelementptr inbounds nuw i8, ptr %.040.i, i64 3
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !13  ; 3 uses
  %i.ga = tail call i8 @llvm.fshl.i8(i8 %i.fz, i8 %i.fw, i8 4)
  %i.gb = lshr i8 %i.fz, 1
  %i.gc = getelementptr inbounds nuw i8, ptr %.040.i, i64 4
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !13  ; 2 uses
  %i.ge = tail call i8 @llvm.fshl.i8(i8 %i.gd, i8 %i.fz, i8 2)
  %i.gf = getelementptr inbounds nuw i8, ptr %.040.i, i64 5
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  %i.gh = lshr i8 %i.gd, 3
  %i.gi = insertelement <8 x i8> poison, i8 %i.fq, i64 0
  %i.gj = insertelement <8 x i8> %i.gi, i8 %i.ft, i64 1
  %i.gk = insertelement <8 x i8> %i.gj, i8 %i.fu, i64 2
  %i.gl = insertelement <8 x i8> %i.gk, i8 %i.fx, i64 3
  %i.gm = insertelement <8 x i8> %i.gl, i8 %i.ga, i64 4
  %i.gn = insertelement <8 x i8> %i.gm, i8 %i.gb, i64 5
  %i.go = insertelement <8 x i8> %i.gn, i8 %i.ge, i64 6
  %i.gp = insertelement <8 x i8> %i.go, i8 %i.gh, i64 7
  %i.gq = and <8 x i8> %i.gp, <i8 31, i8 31, i8 31, i8 31, i8 31, i8 31, i8 31, i8 -1>
  %i.gr = zext <8 x i8> %i.gq to <8 x i32>
  %i.gs = mul nuw nsw <8 x i32> %i.gr, splat (i32 3329)
  %i.gt = add nuw nsw <8 x i32> %i.gs, splat (i32 16)
  %i.gu = lshr <8 x i32> %i.gt, splat (i32 5)
  %i.gv = trunc nuw <8 x i32> %i.gu to <8 x i16>
  store <8 x i16> %i.gv, ptr %i.gg, align 2, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8
  %i.gw = icmp samesign ult i64 %indvars.iv.i, 248
  br i1 %i.gw, label %scalar.ph, label %mlkem_decompress_5_c.exit, !llvm.loop !88

mlkem_decompress_5_c.exit:                        ; preds = %vector.body, %scalar.ph
  ret void
}

; Function Attrs: nounwind uwtable
define void @mlkem_from_msg(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i ; 8 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13
  %i.c = and i8 %i.b, 1
  %i.d = zext nneg i8 %i.c to i16
  %i.e = sub nsw i16 0, %i.d
  %i.f = tail call signext i16 @wc_mlkem_opt_blocker() #8
  %i.g = xor i16 %i.f, %i.e
  %i.h = and i16 %i.g, 1665
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i ; 8 uses
  store i16 %i.h, ptr %i.i, align 2, !tbaa !10
  %i.j = load i8, ptr %i.a, align 1, !tbaa !13
  %i.k = lshr i8 %i.j, 1
  %i.l = and i8 %i.k, 1
  %i.m = zext nneg i8 %i.l to i16
  %i.n = sub nsw i16 0, %i.m
  %i.o = tail call signext i16 @wc_mlkem_opt_blocker() #8
  %i.p = xor i16 %i.o, %i.n
  %i.q = and i16 %i.p, 1665
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i16 %i.q, ptr %i.r, align 2, !tbaa !10
  %i.s = load i8, ptr %i.a, align 1, !tbaa !13
  %i.t = lshr i8 %i.s, 2
  %i.u = and i8 %i.t, 1
  %i.v = zext nneg i8 %i.u to i16
  %i.w = sub nsw i16 0, %i.v
  %i.x = tail call signext i16 @wc_mlkem_opt_blocker() #8
  %i.y = xor i16 %i.x, %i.w
  %i.z = and i16 %i.y, 1665
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !10
  %i.ab = load i8, ptr %i.a, align 1, !tbaa !13
  %i.ac = lshr i8 %i.ab, 3
  %i.ad = and i8 %i.ac, 1
  %i.ae = zext nneg i8 %i.ad to i16
  %i.af = sub nsw i16 0, %i.ae
  %i.ag = tail call signext i16 @wc_mlkem_opt_blocker() #8
  %i.ah = xor i16 %i.ag, %i.af
  %i.ai = and i16 %i.ah, 1665
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !10
  %i.ak = load i8, ptr %i.a, align 1, !tbaa !13
  %i.al = lshr i8 %i.ak, 4
  %i.am = and i8 %i.al, 1
  %i.an = zext nneg i8 %i.am to i16
  %i.ao = sub nsw i16 0, %i.an
  %i.ap = tail call signext i16 @wc_mlkem_opt_blocker() #8
  %i.aq = xor i16 %i.ap, %i.ao
  %i.ar = and i16 %i.aq, 1665
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !10
  %i.at = load i8, ptr %i.a, align 1, !tbaa !13
  %i.au = lshr i8 %i.at, 5
  %i.av = and i8 %i.au, 1
  %i.aw = zext nneg i8 %i.av to i16
  %i.ax = sub nsw i16 0, %i.aw
  %i.ay = tail call signext i16 @wc_mlkem_opt_blocker() #8
  %i.az = xor i16 %i.ay, %i.ax
  %i.ba = and i16 %i.az, 1665
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !10
  %i.bc = load i8, ptr %i.a, align 1, !tbaa !13
  %i.bd = lshr i8 %i.bc, 6
  %i.be = and i8 %i.bd, 1
  %i.bf = zext nneg i8 %i.be to i16
  %i.bg = sub nsw i16 0, %i.bf
  %i.bh = tail call signext i16 @wc_mlkem_opt_blocker() #8
  %i.bi = xor i16 %i.bh, %i.bg
  %i.bj = and i16 %i.bi, 1665
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !10
  %i.bl = load i8, ptr %i.a, align 1, !tbaa !13
  %i.bm = ashr i8 %i.bl, 7
  %i.bn = tail call signext i16 @wc_mlkem_opt_blocker() #8
  %i.bo = sext i8 %i.bm to i16
  %i.bp = xor i16 %i.bn, %i.bo
  %i.bq = and i16 %i.bp, 1665
  %i.br = getelementptr inbounds nuw i8, ptr %i.i, i64 14
  store i16 %i.bq, ptr %i.br, align 2, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %mlkem_from_msg_c.exit, label %bb.b, !llvm.loop !91

mlkem_from_msg_c.exit:                            ; preds = %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @mlkem_to_msg(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
vector.memcheck:
  tail call fastcc void @mlkem_csubq_c(ptr noundef %1)
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = getelementptr i8, ptr %1, i64 512
  %bound0 = icmp ult ptr %0, %i.b
  %bound1 = icmp ult ptr %1, %i.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 9 uses
  store <8 x i8> zeroinitializer, ptr %i.c, align 1, !tbaa !13, !alias.scope !97, !noalias !98
  %i.d = shl nuw nsw i64 %index, 4
  %i.e = shl i64 %index, 4
  %i.f = shl i64 %index, 4
  %i.g = shl i64 %index, 4
  %i.h = shl i64 %index, 4
  %i.i = shl i64 %index, 4
  %i.j = shl i64 %index, 4
  %i.k = shl i64 %index, 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.e ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.h ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.i ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.j ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.k ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  %i.aa = load i16, ptr %i.l, align 2, !tbaa !10, !alias.scope !98
  %i.ab = load i16, ptr %i.n, align 2, !tbaa !10, !alias.scope !98
  %i.ac = load i16, ptr %i.p, align 2, !tbaa !10, !alias.scope !98
  %i.ad = load i16, ptr %i.r, align 2, !tbaa !10, !alias.scope !98
  %i.ae = load i16, ptr %i.t, align 2, !tbaa !10, !alias.scope !98
  %i.af = load i16, ptr %i.v, align 2, !tbaa !10, !alias.scope !98
  %i.ag = load i16, ptr %i.x, align 2, !tbaa !10, !alias.scope !98
  %i.ah = load i16, ptr %i.z, align 2, !tbaa !10, !alias.scope !98
  %i.ai = insertelement <8 x i16> poison, i16 %i.aa, i64 0
  %i.aj = insertelement <8 x i16> %i.ai, i16 %i.ab, i64 1
  %i.ak = insertelement <8 x i16> %i.aj, i16 %i.ac, i64 2
  %i.al = insertelement <8 x i16> %i.ak, i16 %i.ad, i64 3
  %i.am = insertelement <8 x i16> %i.al, i16 %i.ae, i64 4
  %i.an = insertelement <8 x i16> %i.am, i16 %i.af, i64 5
  %i.ao = insertelement <8 x i16> %i.an, i16 %i.ag, i64 6
  %i.ap = insertelement <8 x i16> %i.ao, i16 %i.ah, i64 7
  %i.aq = zext <8 x i16> %i.ap to <8 x i32>
  %i.ar = mul <8 x i32> %i.aq, splat (i32 1290168)
  %i.as = add <8 x i32> %i.ar, splat (i32 1073419776)
  %i.at = lshr <8 x i32> %i.as, splat (i32 31)    ; 2 uses
  %i.au = trunc nuw nsw <8 x i32> %i.at to <8 x i8>
  store <8 x i8> %i.au, ptr %i.c, align 1, !tbaa !13, !alias.scope !97, !noalias !98
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 18
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 34
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 50
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 66
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 82
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 98
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 114
  %i.bd = load i16, ptr %i.av, align 2, !tbaa !10, !alias.scope !98
  %i.be = load i16, ptr %i.aw, align 2, !tbaa !10, !alias.scope !98
  %i.bf = load i16, ptr %i.ax, align 2, !tbaa !10, !alias.scope !98
  %i.bg = load i16, ptr %i.ay, align 2, !tbaa !10, !alias.scope !98
  %i.bh = load i16, ptr %i.az, align 2, !tbaa !10, !alias.scope !98
  %i.bi = load i16, ptr %i.ba, align 2, !tbaa !10, !alias.scope !98
  %i.bj = load i16, ptr %i.bb, align 2, !tbaa !10, !alias.scope !98
  %i.bk = load i16, ptr %i.bc, align 2, !tbaa !10, !alias.scope !98
  %i.bl = insertelement <8 x i16> poison, i16 %i.bd, i64 0
  %i.bm = insertelement <8 x i16> %i.bl, i16 %i.be, i64 1
  %i.bn = insertelement <8 x i16> %i.bm, i16 %i.bf, i64 2
  %i.bo = insertelement <8 x i16> %i.bn, i16 %i.bg, i64 3
  %i.bp = insertelement <8 x i16> %i.bo, i16 %i.bh, i64 4
  %i.bq = insertelement <8 x i16> %i.bp, i16 %i.bi, i64 5
  %i.br = insertelement <8 x i16> %i.bq, i16 %i.bj, i64 6
  %i.bs = insertelement <8 x i16> %i.br, i16 %i.bk, i64 7
  %i.bt = zext <8 x i16> %i.bs to <8 x i32>
  %i.bu = mul <8 x i32> %i.bt, splat (i32 1290168)
  %i.bv = add <8 x i32> %i.bu, splat (i32 1073419776)
  %i.bw = lshr <8 x i32> %i.bv, splat (i32 30)
  %i.bx = and <8 x i32> %i.bw, splat (i32 2)
  %i.by = or disjoint <8 x i32> %i.bx, %i.at      ; 2 uses
  %i.bz = trunc nuw nsw <8 x i32> %i.by to <8 x i8>
  store <8 x i8> %i.bz, ptr %i.c, align 1, !tbaa !13, !alias.scope !97, !noalias !98
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.cc = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.cd = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 68
end_hunk_0
