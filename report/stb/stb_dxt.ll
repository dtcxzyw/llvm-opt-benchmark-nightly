Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_dxt?download=true
inline.NumInlined: 20
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@stb__RefineBlock:bb.a
  %i.kr = insertelement <2 x i32> %i.kq, i32 %i.ko, i64 1
  %i.ks = sitofp <2 x i32> %i.kr to <2 x float>
  %i.kt = fmul <2 x float> %i.je, %i.ks           ; 3 uses
  %i.ku = fcmp olt <2 x float> %i.kt, zeroinitializer
  %i.kv = fcmp ogt <2 x float> %i.kt, splat (float 1.000000e+00)
  %i.kw = select <2 x i1> %i.kv, <2 x float> splat (float 1.000000e+00), <2 x float> %i.kt
  %i.kx = select <2 x i1> %i.ku, <2 x float> zeroinitializer, <2 x float> %i.kw ; 2 uses
  %i.ky = fmul <2 x float> %i.kx, splat (float 3.100000e+01)
  %i.kz = fptoui <2 x float> %i.ky to <2 x i16>   ; 3 uses
  %i.la = extractelement <2 x i16> %i.kz, i64 0
  %i.lb = zext i16 %i.la to i64
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr @stb__midpoints5, i64 %i.lb
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !14
  %i.le = extractelement <2 x i16> %i.jl, i64 1
  %i.lf = zext i16 %i.le to i64
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr @stb__midpoints5, i64 %i.lf
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !14
  %i.li = insertelement <2 x float> poison, float %i.jp, i64 0
  %i.lj = insertelement <2 x float> %i.li, float %i.lh, i64 1
  %i.lk = fcmp ogt <2 x float> %i.jj, %i.lj
  %i.ll = zext <2 x i1> %i.lk to <2 x i16>
  %i.lm = add <2 x i16> %i.ll, %i.jl
  %i.ln = shl <2 x i16> %i.lm, splat (i16 11)
  %i.lo = extractelement <2 x i16> %i.kf, i64 1
  %i.lp = zext i16 %i.lo to i64
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr @stb__midpoints6, i64 %i.lp
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !14
  %i.ls = insertelement <2 x float> poison, float %i.kj, i64 0
  %i.lt = insertelement <2 x float> %i.ls, float %i.lr, i64 1
  %i.lu = fcmp ogt <2 x float> %i.kd, %i.lt
  %i.lv = zext <2 x i1> %i.lu to <2 x i16>
  %i.lw = add <2 x i16> %i.lv, %i.kf
  %i.lx = shl <2 x i16> %i.lw, splat (i16 5)
  %i.ly = or <2 x i16> %i.lx, %i.ln
  %i.lz = extractelement <2 x i16> %i.kz, i64 1
  %i.ma = zext i16 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr @stb__midpoints5, i64 %i.ma
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !14
  %i.md = insertelement <2 x float> poison, float %i.ld, i64 0
  %i.me = insertelement <2 x float> %i.md, float %i.mc, i64 1
  %i.mf = fcmp ogt <2 x float> %i.kx, %i.me
  %i.mg = zext <2 x i1> %i.mf to <2 x i16>
  %i.mh = add <2 x i16> %i.mg, %i.kz
  %i.mi = or <2 x i16> %i.ly, %i.mh
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.preheader
  %i.mj = phi <2 x i16> [ %i.hd, %.preheader.preheader ], [ %i.mi, %bb.b ] ; 2 uses
  %i.mk = extractelement <2 x i16> %i.mj, i64 1   ; 2 uses
  store i16 %i.mk, ptr %2, align 2, !tbaa !12
  %i.ml = extractelement <2 x i16> %i.mj, i64 0   ; 2 uses
  store i16 %i.ml, ptr %1, align 2, !tbaa !12
  %i.mm = icmp ne i16 %i.a, %i.mk
  %i.mn = icmp ne i16 %i.b, %i.ml
  %i.mo = select i1 %i.mm, i1 true, i1 %i.mn
  %i.mp = zext i1 %i.mo to i32
  ret i32 %i.mp
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stb__CompressColorBlock(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i16, align 2                      ; 8 uses
  %i.b = alloca i16, align 2                      ; 8 uses
  %i.c = alloca [16 x i8], align 16               ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.d = and i32 %2, 2
  %.not = icmp eq i32 %i.d, 0
  %i.e = load i32, ptr %1, align 4                ; 18 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9
  %.not44 = icmp eq i32 %i.g, %i.e
  %i.h = lshr i32 %i.e, 8
  %i.i = lshr i32 %i.e, 16
  br i1 %.not44, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  %.not44.1 = icmp eq i32 %i.k, %i.e
  br i1 %.not44.1, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !9
  %.not44.2 = icmp eq i32 %i.m, %i.e
  br i1 %.not44.2, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i32, ptr %i.n, align 4, !tbaa !9
  %.not44.3 = icmp eq i32 %i.o, %i.e
  br i1 %.not44.3, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !9
  %.not44.4 = icmp eq i32 %i.q, %i.e
  br i1 %.not44.4, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 4, !tbaa !9
  %.not44.5 = icmp eq i32 %i.s, %i.e
  br i1 %.not44.5, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !9
  %.not44.6 = icmp eq i32 %i.u, %i.e
  br i1 %.not44.6, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !9
  %.not44.7 = icmp eq i32 %i.w, %i.e
  br i1 %.not44.7, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !9
  %.not44.8 = icmp eq i32 %i.y, %i.e
  br i1 %.not44.8, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !9
  %.not44.9 = icmp eq i32 %i.aa, %i.e
  br i1 %.not44.9, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !9
  %.not44.10 = icmp eq i32 %i.ac, %i.e
  br i1 %.not44.10, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !9
  %.not44.11 = icmp eq i32 %i.ae, %i.e
  br i1 %.not44.11, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !9
  %.not44.12 = icmp eq i32 %i.ag, %i.e
  br i1 %.not44.12, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !9
  %.not44.13 = icmp eq i32 %i.ai, %i.e
  br i1 %.not44.13, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !9
  %.not44.14 = icmp eq i32 %i.ak, %i.e
  br i1 %.not44.14, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.al = and i32 %i.e, 255
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr @stb__OMatch5, i64 %i.am ; 2 uses
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !8
  %i.ap = zext i8 %i.ao to i16
  %i.aq = shl i16 %i.ap, 11
  %i.ar = and i32 %i.h, 255
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @stb__OMatch6, i64 %i.as ; 2 uses
  %i.au = load i8, ptr %i.at, align 2, !tbaa !8
  %i.av = zext i8 %i.au to i16
  %i.aw = shl nuw nsw i16 %i.av, 5
  %i.ax = or i16 %i.aw, %i.aq
  %i.ay = and i32 %i.i, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr @stb__OMatch5, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !8
  %i.bc = zext i8 %i.bb to i16
  %i.bd = or i16 %i.ax, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !8
  %i.bg = zext i8 %i.bf to i16
  %i.bh = shl i16 %i.bg, 11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !8
  %i.bk = zext i8 %i.bj to i16
  %i.bl = shl nuw nsw i16 %i.bk, 5
  %i.bm = or i16 %i.bl, %i.bh
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !8
  %i.bp = zext i8 %i.bo to i16
  %i.bq = or i16 %i.bm, %i.bp
  br label %.thread56

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  call void @stb__OptimizeColorsBlock(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.br = load i16, ptr %i.a, align 2, !tbaa !12  ; 4 uses
  %i.bs = load i16, ptr %i.b, align 2, !tbaa !12  ; 4 uses
  %.not45 = icmp eq i16 %i.br, %i.bs
  br i1 %.not45, label %.peel.begin, label %bb.q

bb.q:                                             ; preds = %.thread
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 0, ptr %i.bv, align 1, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  store i8 0, ptr %i.bz, align 1, !tbaa !8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  %i.cf = lshr i16 %i.bs, 5
  %i.cg = lshr i16 %i.bs, 11
  %i.ch = and i16 %i.cf, 63
  %i.ci = lshr i16 %i.br, 11
  %i.cj = lshr i16 %i.br, 5
  %i.ck = insertelement <4 x i16> poison, i16 %i.br, i64 0
  %i.cl = insertelement <4 x i16> %i.ck, i16 %i.cj, i64 1
  %i.cm = insertelement <4 x i16> %i.cl, i16 %i.ci, i64 2
  %i.cn = insertelement <4 x i16> %i.cm, i16 %i.bs, i64 3
  %i.co = and <4 x i16> %i.cn, <i16 31, i16 63, i16 -1, i16 31>
  %i.cp = mul nuw nsw <4 x i16> %i.co, <i16 33, i16 65, i16 33, i16 33> ; 4 uses
  %i.cq = extractelement <4 x i16> %i.cp, i64 1
  %i.cr = extractelement <4 x i16> %i.cp, i64 2
  %i.cs = extractelement <4 x i16> %i.cp, i64 3
  %i.ct = extractelement <4 x i16> %i.cp, i64 0
  %i.cu = mul nuw nsw i16 %i.cg, 33
  %i.cv = mul nuw nsw i16 %i.ch, 65
  %i.cw = lshr i16 %i.cr, 2                       ; 3 uses
  %i.cx = lshr i16 %i.cq, 4                       ; 3 uses
  %i.cy = trunc nuw i16 %i.cw to i8
  store i8 %i.cy, ptr %i.c, align 16, !tbaa !8
  %i.cz = trunc nuw i16 %i.cx to i8
  store i8 %i.cz, ptr %i.bt, align 1, !tbaa !8
  %i.da = lshr i16 %i.ct, 2                       ; 3 uses
  %i.db = lshr i16 %i.cu, 2                       ; 3 uses
  %i.dc = lshr i16 %i.cv, 4                       ; 3 uses
  %i.dd = lshr i16 %i.cs, 2                       ; 3 uses
  %i.de = trunc nuw i16 %i.da to i8
  store i8 %i.de, ptr %i.bu, align 2, !tbaa !8
  %i.df = trunc nuw i16 %i.db to i8
  store i8 %i.df, ptr %i.bw, align 4, !tbaa !8
  %i.dg = trunc nuw i16 %i.dc to i8
  store i8 %i.dg, ptr %i.bx, align 1, !tbaa !8
  %i.dh = trunc nuw i16 %i.dd to i8
  store i8 %i.dh, ptr %i.by, align 2, !tbaa !8
  %i.di = shl nuw nsw i16 %i.cw, 1
  %.lhs.trunc.i.i = add nuw nsw i16 %i.di, %i.db
  %i.dj = udiv i16 %.lhs.trunc.i.i, 3
  %i.dk = trunc nuw i16 %i.dj to i8
  store i8 %i.dk, ptr %i.ca, align 8, !tbaa !8
  %i.dl = shl nuw nsw i16 %i.cx, 1
  %.lhs.trunc9.i.i = add nuw nsw i16 %i.dl, %i.dc
  %i.dm = udiv i16 %.lhs.trunc9.i.i, 3
  %i.dn = trunc nuw i16 %i.dm to i8
  store i8 %i.dn, ptr %i.cb, align 1, !tbaa !8
  %i.do = insertelement <4 x i16> poison, i16 %i.dd, i64 0
  %i.dp = insertelement <4 x i16> %i.do, i16 %i.dc, i64 1
  %i.dq = insertelement <4 x i16> %i.dp, i16 %i.db, i64 2
  %i.dr = insertelement <4 x i16> %i.dq, i16 %i.da, i64 3
  %i.ds = shl nuw nsw <4 x i16> %i.dr, splat (i16 1)
  %i.dt = insertelement <4 x i16> poison, i16 %i.da, i64 0
  %i.du = insertelement <4 x i16> %i.dt, i16 %i.cx, i64 1
  %i.dv = insertelement <4 x i16> %i.du, i16 %i.cw, i64 2
  %i.dw = insertelement <4 x i16> %i.dv, i16 %i.dd, i64 3
  %i.dx = add nuw nsw <4 x i16> %i.ds, %i.dw
  %i.dy = udiv <4 x i16> %i.dx, splat (i16 3)     ; 4 uses
  %i.dz = bitcast <4 x i16> %i.dy to <8 x i8>
  %i.ea = extractelement <8 x i8> %i.dz, i64 6
  store i8 %i.ea, ptr %i.cc, align 2, !tbaa !8
  %i.eb = bitcast <4 x i16> %i.dy to <8 x i8>
  %i.ec = extractelement <8 x i8> %i.eb, i64 4
  store i8 %i.ec, ptr %i.cd, align 4, !tbaa !8
  %i.ed = bitcast <4 x i16> %i.dy to <8 x i8>
  %i.ee = extractelement <8 x i8> %i.ed, i64 2
  store i8 %i.ee, ptr %i.ce, align 1, !tbaa !8
  %i.ef = bitcast <4 x i16> %i.dy to <8 x i8>
  %i.eg = extractelement <8 x i8> %i.ef, i64 0
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  store i8 %i.eg, ptr %i.eh, align 2, !tbaa !8
  %i.ei = call i32 @stb__MatchColorsBlock(ptr noundef nonnull %1, ptr noundef nonnull %i.c)
  br label %.peel.begin

.peel.begin:                                      ; preds = %.thread, %bb.q
  %.0 = phi i32 [ %i.ei, %bb.q ], [ 0, %.thread ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 5 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 6 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 7 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 9 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 10 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 13 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 14 ; 2 uses
  %i.ew = call i32 @stb__RefineBlock(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.0)
  %.not46.peel = icmp eq i32 %i.ew, 0
  %.pre.pre.peel = load i16, ptr %i.a, align 2, !tbaa !12 ; 7 uses
  %.pre67.pre.peel = load i16, ptr %i.b, align 2, !tbaa !12 ; 7 uses
  br i1 %.not46.peel, label %.thread56, label %bb.r

bb.r:                                             ; preds = %.peel.begin
  %.not47.peel = icmp eq i16 %.pre.pre.peel, %.pre67.pre.peel
  br i1 %.not47.peel, label %.thread56, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ex = lshr i16 %.pre.pre.peel, 11
  %i.ey = lshr i16 %.pre.pre.peel, 5
  %i.ez = and i16 %i.ey, 63
  %i.fa = and i16 %.pre.pre.peel, 31
  %i.fb = mul nuw nsw i16 %i.ex, 33
  %i.fc = lshr i16 %i.fb, 2                       ; 3 uses
  %i.fd = trunc nuw i16 %i.fc to i8
  store i8 %i.fd, ptr %i.c, align 16, !tbaa !8
  %i.fe = mul nuw nsw i16 %i.ez, 65
  %i.ff = lshr i16 %i.fe, 4                       ; 3 uses
  %i.fg = trunc nuw i16 %i.ff to i8
  store i8 %i.fg, ptr %i.ej, align 1, !tbaa !8
  %narrow.i.i48.peel = mul nuw nsw i16 %i.fa, 33
  %i.fh = lshr i16 %narrow.i.i48.peel, 2          ; 3 uses
  %i.fi = trunc nuw i16 %i.fh to i8
  store i8 %i.fi, ptr %i.ek, align 2, !tbaa !8
  store i8 0, ptr %i.el, align 1, !tbaa !8
  %i.fj = lshr i16 %.pre67.pre.peel, 11
  %i.fk = lshr i16 %.pre67.pre.peel, 5
  %i.fl = and i16 %i.fk, 63
  %i.fm = and i16 %.pre67.pre.peel, 31
  %i.fn = mul nuw nsw i16 %i.fj, 33
  %i.fo = lshr i16 %i.fn, 2                       ; 3 uses
  %i.fp = trunc nuw i16 %i.fo to i8
  store i8 %i.fp, ptr %i.em, align 4, !tbaa !8
  %i.fq = mul nuw nsw i16 %i.fl, 65
  %i.fr = lshr i16 %i.fq, 4                       ; 3 uses
  %i.fs = trunc nuw i16 %i.fr to i8
  store i8 %i.fs, ptr %i.en, align 1, !tbaa !8
  %narrow.i9.i49.peel = mul nuw nsw i16 %i.fm, 33
  %i.ft = lshr i16 %narrow.i9.i49.peel, 2         ; 3 uses
  %i.fu = trunc nuw i16 %i.ft to i8
  store i8 %i.fu, ptr %i.eo, align 2, !tbaa !8
  store i8 0, ptr %i.ep, align 1, !tbaa !8
  %i.fv = shl nuw nsw i16 %i.fc, 1
  %.lhs.trunc.i.i50.peel = add nuw nsw i16 %i.fv, %i.fo
  %i.fw = udiv i16 %.lhs.trunc.i.i50.peel, 3
  %i.fx = trunc nuw i16 %i.fw to i8
  store i8 %i.fx, ptr %i.eq, align 8, !tbaa !8
  %i.fy = shl nuw nsw i16 %i.ff, 1
  %.lhs.trunc9.i.i51.peel = add nuw nsw i16 %i.fy, %i.fr
  %i.fz = udiv i16 %.lhs.trunc9.i.i51.peel, 3
  %i.ga = trunc nuw i16 %i.fz to i8
  store i8 %i.ga, ptr %i.er, align 1, !tbaa !8
  %i.gb = shl nuw nsw i16 %i.fh, 1
  %.lhs.trunc11.i.i52.peel = add nuw nsw i16 %i.gb, %i.ft
  %i.gc = udiv i16 %.lhs.trunc11.i.i52.peel, 3
  %i.gd = trunc nuw i16 %i.gc to i8
  store i8 %i.gd, ptr %i.es, align 2, !tbaa !8
  %i.ge = shl nuw nsw i16 %i.fo, 1
  %.lhs.trunc.i10.i53.peel = add nuw nsw i16 %i.ge, %i.fc
  %i.gf = udiv i16 %.lhs.trunc.i10.i53.peel, 3
  %i.gg = trunc nuw i16 %i.gf to i8
  store i8 %i.gg, ptr %i.et, align 4, !tbaa !8
  %i.gh = shl nuw nsw i16 %i.fr, 1
  %.lhs.trunc9.i11.i54.peel = add nuw nsw i16 %i.gh, %i.ff
  %i.gi = udiv i16 %.lhs.trunc9.i11.i54.peel, 3
  %i.gj = trunc nuw i16 %i.gi to i8
  store i8 %i.gj, ptr %i.eu, align 1, !tbaa !8
  %i.gk = shl nuw nsw i16 %i.ft, 1
  %.lhs.trunc11.i12.i55.peel = add nuw nsw i16 %i.gk, %i.fh
  %i.gl = udiv i16 %.lhs.trunc11.i12.i55.peel, 3
  %i.gm = trunc nuw i16 %i.gl to i8
  store i8 %i.gm, ptr %i.ev, align 2, !tbaa !8
  %i.gn = call i32 @stb__MatchColorsBlock(ptr noundef nonnull %1, ptr noundef nonnull %i.c) ; 4 uses
  %i.go = icmp eq i32 %i.gn, %.0
  %brmerge.peel = or i1 %i.go, %.not
  br i1 %brmerge.peel, label %.thread56, label %.peel.newph

.peel.newph:                                      ; preds = %bb.s
  %i.gp = call i32 @stb__RefineBlock(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.gn)
  %.not46 = icmp eq i32 %i.gp, 0
  %.pre.pre = load i16, ptr %i.a, align 2, !tbaa !12 ; 7 uses
  %.pre67.pre = load i16, ptr %i.b, align 2, !tbaa !12 ; 7 uses
  br i1 %.not46, label %.thread56, label %bb.t

bb.t:                                             ; preds = %.peel.newph
  %.not47 = icmp eq i16 %.pre.pre, %.pre67.pre
  br i1 %.not47, label %.thread56, label %bb.u

bb.u:                                             ; preds = %bb.t
end_hunk_0
