inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 236
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 242
begin_hunk_0_@f32_linear_xyz_xxx00_xxx0x_xxx0x_c:vector.ph
  store <4 x float> %i.am, ptr %i.v, align 4, !tbaa !159, !alias.scope !3973, !noalias !3981, !llvm.access.group !3890
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %wide.load.2 = load <4 x float>, ptr %i.an, align 4, !tbaa !159, !alias.scope !3969, !noalias !3979, !llvm.access.group !3890 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %wide.load28.2 = load <4 x float>, ptr %i.ao, align 4, !tbaa !159, !alias.scope !3971, !noalias !3980, !llvm.access.group !3890 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %wide.load29.2 = load <4 x float>, ptr %i.ap, align 4, !tbaa !159, !alias.scope !3973, !noalias !3981, !llvm.access.group !3890 ; 3 uses
  %i.aq = fmul nsz <4 x float> %broadcast.splat, %wide.load.2
  %i.ar = fmul nsz <4 x float> %broadcast.splat9, %wide.load28.2
  %i.as = fadd nsz <4 x float> %i.aq, %i.ar
  %i.at = fmul nsz <4 x float> %broadcast.splat11, %wide.load29.2
  %i.au = fadd nsz <4 x float> %i.as, %i.at
  store <4 x float> %i.au, ptr %i.an, align 4, !tbaa !159, !alias.scope !3969, !noalias !3979, !llvm.access.group !3890
  %i.av = fmul nsz <4 x float> %broadcast.splat13, %wide.load.2
  %i.aw = fadd nsz <4 x float> %broadcast.splat25, %i.av
  %i.ax = fmul nsz <4 x float> %broadcast.splat15, %wide.load28.2
  %i.ay = fadd nsz <4 x float> %i.aw, %i.ax
  %i.az = fmul nsz <4 x float> %broadcast.splat17, %wide.load29.2
  %i.ba = fadd nsz <4 x float> %i.ay, %i.az
  store <4 x float> %i.ba, ptr %i.ao, align 4, !tbaa !159, !alias.scope !3971, !noalias !3980, !llvm.access.group !3890
  %i.bb = fmul nsz <4 x float> %broadcast.splat19, %wide.load.2
  %i.bc = fadd nsz <4 x float> %broadcast.splat27, %i.bb
  %i.bd = fmul nsz <4 x float> %broadcast.splat21, %wide.load28.2
  %i.be = fadd nsz <4 x float> %i.bc, %i.bd
  %i.bf = fmul nsz <4 x float> %broadcast.splat23, %wide.load29.2
  %i.bg = fadd nsz <4 x float> %i.be, %i.bf
  store <4 x float> %i.bg, ptr %i.ap, align 4, !tbaa !159, !alias.scope !3973, !noalias !3981, !llvm.access.group !3890
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.3 = load <4 x float>, ptr %i.bh, align 4, !tbaa !159, !alias.scope !3969, !noalias !3979, !llvm.access.group !3890 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %wide.load28.3 = load <4 x float>, ptr %i.bi, align 4, !tbaa !159, !alias.scope !3971, !noalias !3980, !llvm.access.group !3890 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %wide.load29.3 = load <4 x float>, ptr %i.bj, align 4, !tbaa !159, !alias.scope !3973, !noalias !3981, !llvm.access.group !3890 ; 3 uses
  %i.bk = fmul nsz <4 x float> %broadcast.splat, %wide.load.3
  %i.bl = fmul nsz <4 x float> %broadcast.splat9, %wide.load28.3
  %i.bm = fadd nsz <4 x float> %i.bk, %i.bl
  %i.bn = fmul nsz <4 x float> %broadcast.splat11, %wide.load29.3
  %i.bo = fadd nsz <4 x float> %i.bm, %i.bn
  store <4 x float> %i.bo, ptr %i.bh, align 4, !tbaa !159, !alias.scope !3969, !noalias !3979, !llvm.access.group !3890
  %i.bp = fmul nsz <4 x float> %broadcast.splat13, %wide.load.3
  %i.bq = fadd nsz <4 x float> %broadcast.splat25, %i.bp
  %i.br = fmul nsz <4 x float> %broadcast.splat15, %wide.load28.3
  %i.bs = fadd nsz <4 x float> %i.bq, %i.br
  %i.bt = fmul nsz <4 x float> %broadcast.splat17, %wide.load29.3
  %i.bu = fadd nsz <4 x float> %i.bs, %i.bt
  store <4 x float> %i.bu, ptr %i.bi, align 4, !tbaa !159, !alias.scope !3971, !noalias !3980, !llvm.access.group !3890
  %i.bv = fmul nsz <4 x float> %broadcast.splat19, %wide.load.3
  %i.bw = fadd nsz <4 x float> %broadcast.splat27, %i.bv
  %i.bx = fmul nsz <4 x float> %broadcast.splat21, %wide.load28.3
  %i.by = fadd nsz <4 x float> %i.bw, %i.bx
  %i.bz = fmul nsz <4 x float> %broadcast.splat23, %wide.load29.3
  %i.ca = fadd nsz <4 x float> %i.by, %i.bz
  store <4 x float> %i.ca, ptr %i.bj, align 4, !tbaa !159, !alias.scope !3973, !noalias !3981, !llvm.access.group !3890
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %wide.load.4 = load <4 x float>, ptr %i.cb, align 4, !tbaa !159, !alias.scope !3969, !noalias !3979, !llvm.access.group !3890 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %wide.load28.4 = load <4 x float>, ptr %i.cc, align 4, !tbaa !159, !alias.scope !3971, !noalias !3980, !llvm.access.group !3890 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %wide.load29.4 = load <4 x float>, ptr %i.cd, align 4, !tbaa !159, !alias.scope !3973, !noalias !3981, !llvm.access.group !3890 ; 3 uses
  %i.ce = fmul nsz <4 x float> %broadcast.splat, %wide.load.4
  %i.cf = fmul nsz <4 x float> %broadcast.splat9, %wide.load28.4
  %i.cg = fadd nsz <4 x float> %i.ce, %i.cf
  %i.ch = fmul nsz <4 x float> %broadcast.splat11, %wide.load29.4
  %i.ci = fadd nsz <4 x float> %i.cg, %i.ch
  store <4 x float> %i.ci, ptr %i.cb, align 4, !tbaa !159, !alias.scope !3969, !noalias !3979, !llvm.access.group !3890
  %i.cj = fmul nsz <4 x float> %broadcast.splat13, %wide.load.4
  %i.ck = fadd nsz <4 x float> %broadcast.splat25, %i.cj
  %i.cl = fmul nsz <4 x float> %broadcast.splat15, %wide.load28.4
  %i.cm = fadd nsz <4 x float> %i.ck, %i.cl
  %i.cn = fmul nsz <4 x float> %broadcast.splat17, %wide.load29.4
  %i.co = fadd nsz <4 x float> %i.cm, %i.cn
  store <4 x float> %i.co, ptr %i.cc, align 4, !tbaa !159, !alias.scope !3971, !noalias !3980, !llvm.access.group !3890
  %i.cp = fmul nsz <4 x float> %broadcast.splat19, %wide.load.4
  %i.cq = fadd nsz <4 x float> %broadcast.splat27, %i.cp
  %i.cr = fmul nsz <4 x float> %broadcast.splat21, %wide.load28.4
  %i.cs = fadd nsz <4 x float> %i.cq, %i.cr
  %i.ct = fmul nsz <4 x float> %broadcast.splat23, %wide.load29.4
  %i.cu = fadd nsz <4 x float> %i.cs, %i.ct
  store <4 x float> %i.cu, ptr %i.cd, align 4, !tbaa !159, !alias.scope !3973, !noalias !3981, !llvm.access.group !3890
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.load.5 = load <4 x float>, ptr %i.cv, align 4, !tbaa !159, !alias.scope !3969, !noalias !3979, !llvm.access.group !3890 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %wide.load28.5 = load <4 x float>, ptr %i.cw, align 4, !tbaa !159, !alias.scope !3971, !noalias !3980, !llvm.access.group !3890 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %wide.load29.5 = load <4 x float>, ptr %i.cx, align 4, !tbaa !159, !alias.scope !3973, !noalias !3981, !llvm.access.group !3890 ; 3 uses
  %i.cy = fmul nsz <4 x float> %broadcast.splat, %wide.load.5
  %i.cz = fmul nsz <4 x float> %broadcast.splat9, %wide.load28.5
  %i.da = fadd nsz <4 x float> %i.cy, %i.cz
  %i.db = fmul nsz <4 x float> %broadcast.splat11, %wide.load29.5
  %i.dc = fadd nsz <4 x float> %i.da, %i.db
  store <4 x float> %i.dc, ptr %i.cv, align 4, !tbaa !159, !alias.scope !3969, !noalias !3979, !llvm.access.group !3890
  %i.dd = fmul nsz <4 x float> %broadcast.splat13, %wide.load.5
  %i.de = fadd nsz <4 x float> %broadcast.splat25, %i.dd
  %i.df = fmul nsz <4 x float> %broadcast.splat15, %wide.load28.5
  %i.dg = fadd nsz <4 x float> %i.de, %i.df
  %i.dh = fmul nsz <4 x float> %broadcast.splat17, %wide.load29.5
  %i.di = fadd nsz <4 x float> %i.dg, %i.dh
  store <4 x float> %i.di, ptr %i.cw, align 4, !tbaa !159, !alias.scope !3971, !noalias !3980, !llvm.access.group !3890
  %i.dj = fmul nsz <4 x float> %broadcast.splat19, %wide.load.5
  %i.dk = fadd nsz <4 x float> %broadcast.splat27, %i.dj
  %i.dl = fmul nsz <4 x float> %broadcast.splat21, %wide.load28.5
  %i.dm = fadd nsz <4 x float> %i.dk, %i.dl
  %i.dn = fmul nsz <4 x float> %broadcast.splat23, %wide.load29.5
  %i.do = fadd nsz <4 x float> %i.dm, %i.dn
  store <4 x float> %i.do, ptr %i.cx, align 4, !tbaa !159, !alias.scope !3973, !noalias !3981, !llvm.access.group !3890
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %wide.load.6 = load <4 x float>, ptr %i.dp, align 4, !tbaa !159, !alias.scope !3969, !noalias !3979, !llvm.access.group !3890 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %wide.load28.6 = load <4 x float>, ptr %i.dq, align 4, !tbaa !159, !alias.scope !3971, !noalias !3980, !llvm.access.group !3890 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %wide.load29.6 = load <4 x float>, ptr %i.dr, align 4, !tbaa !159, !alias.scope !3973, !noalias !3981, !llvm.access.group !3890 ; 3 uses
  %i.ds = fmul nsz <4 x float> %broadcast.splat, %wide.load.6
  %i.dt = fmul nsz <4 x float> %broadcast.splat9, %wide.load28.6
  %i.du = fadd nsz <4 x float> %i.ds, %i.dt
  %i.dv = fmul nsz <4 x float> %broadcast.splat11, %wide.load29.6
  %i.dw = fadd nsz <4 x float> %i.du, %i.dv
  store <4 x float> %i.dw, ptr %i.dp, align 4, !tbaa !159, !alias.scope !3969, !noalias !3979, !llvm.access.group !3890
  %i.dx = fmul nsz <4 x float> %broadcast.splat13, %wide.load.6
  %i.dy = fadd nsz <4 x float> %broadcast.splat25, %i.dx
  %i.dz = fmul nsz <4 x float> %broadcast.splat15, %wide.load28.6
  %i.ea = fadd nsz <4 x float> %i.dy, %i.dz
  %i.eb = fmul nsz <4 x float> %broadcast.splat17, %wide.load29.6
  %i.ec = fadd nsz <4 x float> %i.ea, %i.eb
  store <4 x float> %i.ec, ptr %i.dq, align 4, !tbaa !159, !alias.scope !3971, !noalias !3980, !llvm.access.group !3890
  %i.ed = fmul nsz <4 x float> %broadcast.splat19, %wide.load.6
  %i.ee = fadd nsz <4 x float> %broadcast.splat27, %i.ed
  %i.ef = fmul nsz <4 x float> %broadcast.splat21, %wide.load28.6
  %i.eg = fadd nsz <4 x float> %i.ee, %i.ef
  %i.eh = fmul nsz <4 x float> %broadcast.splat23, %wide.load29.6
  %i.ei = fadd nsz <4 x float> %i.eg, %i.eh
  store <4 x float> %i.ei, ptr %i.dr, align 4, !tbaa !159, !alias.scope !3973, !noalias !3981, !llvm.access.group !3890
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %wide.load.7 = load <4 x float>, ptr %i.ej, align 4, !tbaa !159, !alias.scope !3969, !noalias !3979, !llvm.access.group !3890 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %wide.load28.7 = load <4 x float>, ptr %i.ek, align 4, !tbaa !159, !alias.scope !3971, !noalias !3980, !llvm.access.group !3890 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %wide.load29.7 = load <4 x float>, ptr %i.el, align 4, !tbaa !159, !alias.scope !3973, !noalias !3981, !llvm.access.group !3890 ; 3 uses
  %i.em = fmul nsz <4 x float> %broadcast.splat, %wide.load.7
  %i.en = fmul nsz <4 x float> %broadcast.splat9, %wide.load28.7
  %i.eo = fadd nsz <4 x float> %i.em, %i.en
  %i.ep = fmul nsz <4 x float> %broadcast.splat11, %wide.load29.7
  %i.eq = fadd nsz <4 x float> %i.eo, %i.ep
  store <4 x float> %i.eq, ptr %i.ej, align 4, !tbaa !159, !alias.scope !3969, !noalias !3979, !llvm.access.group !3890
  %i.er = fmul nsz <4 x float> %broadcast.splat13, %wide.load.7
  %i.es = fadd nsz <4 x float> %broadcast.splat25, %i.er
  %i.et = fmul nsz <4 x float> %broadcast.splat15, %wide.load28.7
  %i.eu = fadd nsz <4 x float> %i.es, %i.et
  %i.ev = fmul nsz <4 x float> %broadcast.splat17, %wide.load29.7
  %i.ew = fadd nsz <4 x float> %i.eu, %i.ev
  store <4 x float> %i.ew, ptr %i.ek, align 4, !tbaa !159, !alias.scope !3971, !noalias !3980, !llvm.access.group !3890
  %i.ex = fmul nsz <4 x float> %broadcast.splat19, %wide.load.7
  %i.ey = fadd nsz <4 x float> %broadcast.splat27, %i.ex
  %i.ez = fmul nsz <4 x float> %broadcast.splat21, %wide.load28.7
  %i.fa = fadd nsz <4 x float> %i.ey, %i.ez
  %i.fb = fmul nsz <4 x float> %broadcast.splat23, %wide.load29.7
  %i.fc = fadd nsz <4 x float> %i.fa, %i.fb
  store <4 x float> %i.fc, ptr %i.el, align 4, !tbaa !159, !alias.scope !3973, !noalias !3981, !llvm.access.group !3890
  %i.fd = load ptr, ptr %1, align 16, !tbaa !35, !alias.scope !3966, !noalias !3975
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.fd(ptr noundef %0, ptr noundef nonnull %i.fe, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #12, !inline_history !3893
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @f32_linear_xyz_x000x_0x00x_00x0x_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3985)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3987)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3989)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !22, !alias.scope !3982, !noalias !3991 ; 6 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.21.0.copyload.i = load float, ptr %.sroa.21.0..sroa_idx.i, align 4, !noalias !3994
  %broadcast.splatinsert16 = insertelement <4 x float> poison, float %.sroa.21.0.copyload.i, i64 0
  %broadcast.splat17 = shufflevector <4 x float> %broadcast.splatinsert16, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %.sroa.20.0.copyload.i = load float, ptr %.sroa.20.0..sroa_idx.i, align 4, !noalias !3994
  %broadcast.splatinsert14 = insertelement <4 x float> poison, float %.sroa.20.0.copyload.i, i64 0
  %broadcast.splat15 = shufflevector <4 x float> %broadcast.splatinsert14, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.19.0.copyload.i = load float, ptr %.sroa.19.0..sroa_idx.i, align 4, !noalias !3994
  %broadcast.splatinsert12 = insertelement <4 x float> poison, float %.sroa.19.0.copyload.i, i64 0
  %broadcast.splat13 = shufflevector <4 x float> %broadcast.splatinsert12, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.13.0.copyload.i = load float, ptr %.sroa.13.0..sroa_idx.i, align 4, !noalias !3994
  %broadcast.splatinsert10 = insertelement <4 x float> poison, float %.sroa.13.0.copyload.i, i64 0
  %broadcast.splat11 = shufflevector <4 x float> %broadcast.splatinsert10, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4, !noalias !3994
  %broadcast.splatinsert8 = insertelement <4 x float> poison, float %.sroa.8.0.copyload.i, i64 0
  %broadcast.splat9 = shufflevector <4 x float> %broadcast.splatinsert8, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.0.0.copyload.i = load float, ptr %i.b, align 4, !noalias !3994
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.0.0.copyload.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x float>, ptr %2, align 4, !tbaa !159, !alias.scope !3985, !noalias !3995, !llvm.access.group !3890
  %wide.load18 = load <4 x float>, ptr %3, align 4, !tbaa !159, !alias.scope !3987, !noalias !3996, !llvm.access.group !3890
  %wide.load19 = load <4 x float>, ptr %4, align 4, !tbaa !159, !alias.scope !3989, !noalias !3997, !llvm.access.group !3890
  %i.c = fmul nsz <4 x float> %broadcast.splat, %wide.load
  %i.d = fadd nsz <4 x float> %broadcast.splat13, %i.c
  store <4 x float> %i.d, ptr %2, align 4, !tbaa !159, !alias.scope !3985, !noalias !3995, !llvm.access.group !3890
  %i.e = fmul nsz <4 x float> %broadcast.splat9, %wide.load18
  %i.f = fadd nsz <4 x float> %broadcast.splat15, %i.e
  store <4 x float> %i.f, ptr %3, align 4, !tbaa !159, !alias.scope !3987, !noalias !3996, !llvm.access.group !3890
  %i.g = fmul nsz <4 x float> %broadcast.splat11, %wide.load19
  %i.h = fadd nsz <4 x float> %broadcast.splat17, %i.g
  store <4 x float> %i.h, ptr %4, align 4, !tbaa !159, !alias.scope !3989, !noalias !3997, !llvm.access.group !3890
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.i, align 4, !tbaa !159, !alias.scope !3985, !noalias !3995, !llvm.access.group !3890
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %wide.load18.1 = load <4 x float>, ptr %i.j, align 4, !tbaa !159, !alias.scope !3987, !noalias !3996, !llvm.access.group !3890
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %wide.load19.1 = load <4 x float>, ptr %i.k, align 4, !tbaa !159, !alias.scope !3989, !noalias !3997, !llvm.access.group !3890
  %i.l = fmul nsz <4 x float> %broadcast.splat, %wide.load.1
  %i.m = fadd nsz <4 x float> %broadcast.splat13, %i.l
  store <4 x float> %i.m, ptr %i.i, align 4, !tbaa !159, !alias.scope !3985, !noalias !3995, !llvm.access.group !3890
  %i.n = fmul nsz <4 x float> %broadcast.splat9, %wide.load18.1
  %i.o = fadd nsz <4 x float> %broadcast.splat15, %i.n
  store <4 x float> %i.o, ptr %i.j, align 4, !tbaa !159, !alias.scope !3987, !noalias !3996, !llvm.access.group !3890
  %i.p = fmul nsz <4 x float> %broadcast.splat11, %wide.load19.1
  %i.q = fadd nsz <4 x float> %broadcast.splat17, %i.p
  store <4 x float> %i.q, ptr %i.k, align 4, !tbaa !159, !alias.scope !3989, !noalias !3997, !llvm.access.group !3890
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %wide.load.2 = load <4 x float>, ptr %i.r, align 4, !tbaa !159, !alias.scope !3985, !noalias !3995, !llvm.access.group !3890
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %wide.load18.2 = load <4 x float>, ptr %i.s, align 4, !tbaa !159, !alias.scope !3987, !noalias !3996, !llvm.access.group !3890
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %wide.load19.2 = load <4 x float>, ptr %i.t, align 4, !tbaa !159, !alias.scope !3989, !noalias !3997, !llvm.access.group !3890
  %i.u = fmul nsz <4 x float> %broadcast.splat, %wide.load.2
  %i.v = fadd nsz <4 x float> %broadcast.splat13, %i.u
  store <4 x float> %i.v, ptr %i.r, align 4, !tbaa !159, !alias.scope !3985, !noalias !3995, !llvm.access.group !3890
  %i.w = fmul nsz <4 x float> %broadcast.splat9, %wide.load18.2
  %i.x = fadd nsz <4 x float> %broadcast.splat15, %i.w
  store <4 x float> %i.x, ptr %i.s, align 4, !tbaa !159, !alias.scope !3987, !noalias !3996, !llvm.access.group !3890
  %i.y = fmul nsz <4 x float> %broadcast.splat11, %wide.load19.2
  %i.z = fadd nsz <4 x float> %broadcast.splat17, %i.y
  store <4 x float> %i.z, ptr %i.t, align 4, !tbaa !159, !alias.scope !3989, !noalias !3997, !llvm.access.group !3890
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.3 = load <4 x float>, ptr %i.aa, align 4, !tbaa !159, !alias.scope !3985, !noalias !3995, !llvm.access.group !3890
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %wide.load18.3 = load <4 x float>, ptr %i.ab, align 4, !tbaa !159, !alias.scope !3987, !noalias !3996, !llvm.access.group !3890
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %wide.load19.3 = load <4 x float>, ptr %i.ac, align 4, !tbaa !159, !alias.scope !3989, !noalias !3997, !llvm.access.group !3890
  %i.ad = fmul nsz <4 x float> %broadcast.splat, %wide.load.3
  %i.ae = fadd nsz <4 x float> %broadcast.splat13, %i.ad
  store <4 x float> %i.ae, ptr %i.aa, align 4, !tbaa !159, !alias.scope !3985, !noalias !3995, !llvm.access.group !3890
  %i.af = fmul nsz <4 x float> %broadcast.splat9, %wide.load18.3
  %i.ag = fadd nsz <4 x float> %broadcast.splat15, %i.af
  store <4 x float> %i.ag, ptr %i.ab, align 4, !tbaa !159, !alias.scope !3987, !noalias !3996, !llvm.access.group !3890
  %i.ah = fmul nsz <4 x float> %broadcast.splat11, %wide.load19.3
  %i.ai = fadd nsz <4 x float> %broadcast.splat17, %i.ah
  store <4 x float> %i.ai, ptr %i.ac, align 4, !tbaa !159, !alias.scope !3989, !noalias !3997, !llvm.access.group !3890
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %wide.load.4 = load <4 x float>, ptr %i.aj, align 4, !tbaa !159, !alias.scope !3985, !noalias !3995, !llvm.access.group !3890
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %wide.load18.4 = load <4 x float>, ptr %i.ak, align 4, !tbaa !159, !alias.scope !3987, !noalias !3996, !llvm.access.group !3890
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %wide.load19.4 = load <4 x float>, ptr %i.al, align 4, !tbaa !159, !alias.scope !3989, !noalias !3997, !llvm.access.group !3890
  %i.am = fmul nsz <4 x float> %broadcast.splat, %wide.load.4
  %i.an = fadd nsz <4 x float> %broadcast.splat13, %i.am
  store <4 x float> %i.an, ptr %i.aj, align 4, !tbaa !159, !alias.scope !3985, !noalias !3995, !llvm.access.group !3890
  %i.ao = fmul nsz <4 x float> %broadcast.splat9, %wide.load18.4
  %i.ap = fadd nsz <4 x float> %broadcast.splat15, %i.ao
  store <4 x float> %i.ap, ptr %i.ak, align 4, !tbaa !159, !alias.scope !3987, !noalias !3996, !llvm.access.group !3890
  %i.aq = fmul nsz <4 x float> %broadcast.splat11, %wide.load19.4
  %i.ar = fadd nsz <4 x float> %broadcast.splat17, %i.aq
  store <4 x float> %i.ar, ptr %i.al, align 4, !tbaa !159, !alias.scope !3989, !noalias !3997, !llvm.access.group !3890
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.load.5 = load <4 x float>, ptr %i.as, align 4, !tbaa !159, !alias.scope !3985, !noalias !3995, !llvm.access.group !3890
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %wide.load18.5 = load <4 x float>, ptr %i.at, align 4, !tbaa !159, !alias.scope !3987, !noalias !3996, !llvm.access.group !3890
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %wide.load19.5 = load <4 x float>, ptr %i.au, align 4, !tbaa !159, !alias.scope !3989, !noalias !3997, !llvm.access.group !3890
  %i.av = fmul nsz <4 x float> %broadcast.splat, %wide.load.5
  %i.aw = fadd nsz <4 x float> %broadcast.splat13, %i.av
  store <4 x float> %i.aw, ptr %i.as, align 4, !tbaa !159, !alias.scope !3985, !noalias !3995, !llvm.access.group !3890
  %i.ax = fmul nsz <4 x float> %broadcast.splat9, %wide.load18.5
  %i.ay = fadd nsz <4 x float> %broadcast.splat15, %i.ax
  store <4 x float> %i.ay, ptr %i.at, align 4, !tbaa !159, !alias.scope !3987, !noalias !3996, !llvm.access.group !3890
  %i.az = fmul nsz <4 x float> %broadcast.splat11, %wide.load19.5
  %i.ba = fadd nsz <4 x float> %broadcast.splat17, %i.az
  store <4 x float> %i.ba, ptr %i.au, align 4, !tbaa !159, !alias.scope !3989, !noalias !3997, !llvm.access.group !3890
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %wide.load.6 = load <4 x float>, ptr %i.bb, align 4, !tbaa !159, !alias.scope !3985, !noalias !3995, !llvm.access.group !3890
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %wide.load18.6 = load <4 x float>, ptr %i.bc, align 4, !tbaa !159, !alias.scope !3987, !noalias !3996, !llvm.access.group !3890
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %wide.load19.6 = load <4 x float>, ptr %i.bd, align 4, !tbaa !159, !alias.scope !3989, !noalias !3997, !llvm.access.group !3890
  %i.be = fmul nsz <4 x float> %broadcast.splat, %wide.load.6
  %i.bf = fadd nsz <4 x float> %broadcast.splat13, %i.be
  store <4 x float> %i.bf, ptr %i.bb, align 4, !tbaa !159, !alias.scope !3985, !noalias !3995, !llvm.access.group !3890
  %i.bg = fmul nsz <4 x float> %broadcast.splat9, %wide.load18.6
  %i.bh = fadd nsz <4 x float> %broadcast.splat15, %i.bg
  store <4 x float> %i.bh, ptr %i.bc, align 4, !tbaa !159, !alias.scope !3987, !noalias !3996, !llvm.access.group !3890
  %i.bi = fmul nsz <4 x float> %broadcast.splat11, %wide.load19.6
  %i.bj = fadd nsz <4 x float> %broadcast.splat17, %i.bi
  store <4 x float> %i.bj, ptr %i.bd, align 4, !tbaa !159, !alias.scope !3989, !noalias !3997, !llvm.access.group !3890
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %wide.load.7 = load <4 x float>, ptr %i.bk, align 4, !tbaa !159, !alias.scope !3985, !noalias !3995, !llvm.access.group !3890
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %wide.load18.7 = load <4 x float>, ptr %i.bl, align 4, !tbaa !159, !alias.scope !3987, !noalias !3996, !llvm.access.group !3890
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %wide.load19.7 = load <4 x float>, ptr %i.bm, align 4, !tbaa !159, !alias.scope !3989, !noalias !3997, !llvm.access.group !3890
  %i.bn = fmul nsz <4 x float> %broadcast.splat, %wide.load.7
  %i.bo = fadd nsz <4 x float> %broadcast.splat13, %i.bn
  store <4 x float> %i.bo, ptr %i.bk, align 4, !tbaa !159, !alias.scope !3985, !noalias !3995, !llvm.access.group !3890
  %i.bp = fmul nsz <4 x float> %broadcast.splat9, %wide.load18.7
  %i.bq = fadd nsz <4 x float> %broadcast.splat15, %i.bp
  store <4 x float> %i.bq, ptr %i.bl, align 4, !tbaa !159, !alias.scope !3987, !noalias !3996, !llvm.access.group !3890
  %i.br = fmul nsz <4 x float> %broadcast.splat11, %wide.load19.7
  %i.bs = fadd nsz <4 x float> %broadcast.splat17, %i.br
  store <4 x float> %i.bs, ptr %i.bm, align 4, !tbaa !159, !alias.scope !3989, !noalias !3997, !llvm.access.group !3890
  %i.bt = load ptr, ptr %1, align 16, !tbaa !35, !alias.scope !3982, !noalias !3991
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.bt(ptr noundef %0, ptr noundef nonnull %i.bu, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #12, !inline_history !3893
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @f32_linear_xyz_x0000_0x000_00x00_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4005)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !22, !alias.scope !3998, !noalias !4007 ; 3 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.13.0.copyload.i = load float, ptr %.sroa.13.0..sroa_idx.i, align 4, !noalias !4010
  %broadcast.splatinsert10 = insertelement <4 x float> poison, float %.sroa.13.0.copyload.i, i64 0
  %broadcast.splat11 = shufflevector <4 x float> %broadcast.splatinsert10, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4, !noalias !4010
  %broadcast.splatinsert8 = insertelement <4 x float> poison, float %.sroa.8.0.copyload.i, i64 0
  %broadcast.splat9 = shufflevector <4 x float> %broadcast.splatinsert8, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.0.0.copyload.i = load float, ptr %i.b, align 4, !noalias !4010
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.0.0.copyload.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x float>, ptr %2, align 4, !tbaa !159, !alias.scope !4001, !noalias !4011, !llvm.access.group !3890
  %wide.load12 = load <4 x float>, ptr %3, align 4, !tbaa !159, !alias.scope !4003, !noalias !4012, !llvm.access.group !3890
  %wide.load13 = load <4 x float>, ptr %4, align 4, !tbaa !159, !alias.scope !4005, !noalias !4013, !llvm.access.group !3890
  %i.c = fmul nsz <4 x float> %broadcast.splat, %wide.load
  store <4 x float> %i.c, ptr %2, align 4, !tbaa !159, !alias.scope !4001, !noalias !4011, !llvm.access.group !3890
  %i.d = fmul nsz <4 x float> %broadcast.splat9, %wide.load12
  store <4 x float> %i.d, ptr %3, align 4, !tbaa !159, !alias.scope !4003, !noalias !4012, !llvm.access.group !3890
  %i.e = fmul nsz <4 x float> %broadcast.splat11, %wide.load13
  store <4 x float> %i.e, ptr %4, align 4, !tbaa !159, !alias.scope !4005, !noalias !4013, !llvm.access.group !3890
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.f, align 4, !tbaa !159, !alias.scope !4001, !noalias !4011, !llvm.access.group !3890
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %wide.load12.1 = load <4 x float>, ptr %i.g, align 4, !tbaa !159, !alias.scope !4003, !noalias !4012, !llvm.access.group !3890
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %wide.load13.1 = load <4 x float>, ptr %i.h, align 4, !tbaa !159, !alias.scope !4005, !noalias !4013, !llvm.access.group !3890
  %i.i = fmul nsz <4 x float> %broadcast.splat, %wide.load.1
  store <4 x float> %i.i, ptr %i.f, align 4, !tbaa !159, !alias.scope !4001, !noalias !4011, !llvm.access.group !3890
  %i.j = fmul nsz <4 x float> %broadcast.splat9, %wide.load12.1
  store <4 x float> %i.j, ptr %i.g, align 4, !tbaa !159, !alias.scope !4003, !noalias !4012, !llvm.access.group !3890
  %i.k = fmul nsz <4 x float> %broadcast.splat11, %wide.load13.1
  store <4 x float> %i.k, ptr %i.h, align 4, !tbaa !159, !alias.scope !4005, !noalias !4013, !llvm.access.group !3890
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %wide.load.2 = load <4 x float>, ptr %i.l, align 4, !tbaa !159, !alias.scope !4001, !noalias !4011, !llvm.access.group !3890
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %wide.load12.2 = load <4 x float>, ptr %i.m, align 4, !tbaa !159, !alias.scope !4003, !noalias !4012, !llvm.access.group !3890
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %wide.load13.2 = load <4 x float>, ptr %i.n, align 4, !tbaa !159, !alias.scope !4005, !noalias !4013, !llvm.access.group !3890
  %i.o = fmul nsz <4 x float> %broadcast.splat, %wide.load.2
  store <4 x float> %i.o, ptr %i.l, align 4, !tbaa !159, !alias.scope !4001, !noalias !4011, !llvm.access.group !3890
  %i.p = fmul nsz <4 x float> %broadcast.splat9, %wide.load12.2
  store <4 x float> %i.p, ptr %i.m, align 4, !tbaa !159, !alias.scope !4003, !noalias !4012, !llvm.access.group !3890
  %i.q = fmul nsz <4 x float> %broadcast.splat11, %wide.load13.2
  store <4 x float> %i.q, ptr %i.n, align 4, !tbaa !159, !alias.scope !4005, !noalias !4013, !llvm.access.group !3890
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.3 = load <4 x float>, ptr %i.r, align 4, !tbaa !159, !alias.scope !4001, !noalias !4011, !llvm.access.group !3890
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %wide.load12.3 = load <4 x float>, ptr %i.s, align 4, !tbaa !159, !alias.scope !4003, !noalias !4012, !llvm.access.group !3890
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %wide.load13.3 = load <4 x float>, ptr %i.t, align 4, !tbaa !159, !alias.scope !4005, !noalias !4013, !llvm.access.group !3890
  %i.u = fmul nsz <4 x float> %broadcast.splat, %wide.load.3
  store <4 x float> %i.u, ptr %i.r, align 4, !tbaa !159, !alias.scope !4001, !noalias !4011, !llvm.access.group !3890
  %i.v = fmul nsz <4 x float> %broadcast.splat9, %wide.load12.3
  store <4 x float> %i.v, ptr %i.s, align 4, !tbaa !159, !alias.scope !4003, !noalias !4012, !llvm.access.group !3890
  %i.w = fmul nsz <4 x float> %broadcast.splat11, %wide.load13.3
  store <4 x float> %i.w, ptr %i.t, align 4, !tbaa !159, !alias.scope !4005, !noalias !4013, !llvm.access.group !3890
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %wide.load.4 = load <4 x float>, ptr %i.x, align 4, !tbaa !159, !alias.scope !4001, !noalias !4011, !llvm.access.group !3890
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %wide.load12.4 = load <4 x float>, ptr %i.y, align 4, !tbaa !159, !alias.scope !4003, !noalias !4012, !llvm.access.group !3890
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %wide.load13.4 = load <4 x float>, ptr %i.z, align 4, !tbaa !159, !alias.scope !4005, !noalias !4013, !llvm.access.group !3890
  %i.aa = fmul nsz <4 x float> %broadcast.splat, %wide.load.4
  store <4 x float> %i.aa, ptr %i.x, align 4, !tbaa !159, !alias.scope !4001, !noalias !4011, !llvm.access.group !3890
  %i.ab = fmul nsz <4 x float> %broadcast.splat9, %wide.load12.4
  store <4 x float> %i.ab, ptr %i.y, align 4, !tbaa !159, !alias.scope !4003, !noalias !4012, !llvm.access.group !3890
  %i.ac = fmul nsz <4 x float> %broadcast.splat11, %wide.load13.4
  store <4 x float> %i.ac, ptr %i.z, align 4, !tbaa !159, !alias.scope !4005, !noalias !4013, !llvm.access.group !3890
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.load.5 = load <4 x float>, ptr %i.ad, align 4, !tbaa !159, !alias.scope !4001, !noalias !4011, !llvm.access.group !3890
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %wide.load12.5 = load <4 x float>, ptr %i.ae, align 4, !tbaa !159, !alias.scope !4003, !noalias !4012, !llvm.access.group !3890
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %wide.load13.5 = load <4 x float>, ptr %i.af, align 4, !tbaa !159, !alias.scope !4005, !noalias !4013, !llvm.access.group !3890
  %i.ag = fmul nsz <4 x float> %broadcast.splat, %wide.load.5
  store <4 x float> %i.ag, ptr %i.ad, align 4, !tbaa !159, !alias.scope !4001, !noalias !4011, !llvm.access.group !3890
  %i.ah = fmul nsz <4 x float> %broadcast.splat9, %wide.load12.5
  store <4 x float> %i.ah, ptr %i.ae, align 4, !tbaa !159, !alias.scope !4003, !noalias !4012, !llvm.access.group !3890
  %i.ai = fmul nsz <4 x float> %broadcast.splat11, %wide.load13.5
  store <4 x float> %i.ai, ptr %i.af, align 4, !tbaa !159, !alias.scope !4005, !noalias !4013, !llvm.access.group !3890
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %wide.load.6 = load <4 x float>, ptr %i.aj, align 4, !tbaa !159, !alias.scope !4001, !noalias !4011, !llvm.access.group !3890
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %wide.load12.6 = load <4 x float>, ptr %i.ak, align 4, !tbaa !159, !alias.scope !4003, !noalias !4012, !llvm.access.group !3890
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %wide.load13.6 = load <4 x float>, ptr %i.al, align 4, !tbaa !159, !alias.scope !4005, !noalias !4013, !llvm.access.group !3890
  %i.am = fmul nsz <4 x float> %broadcast.splat, %wide.load.6
  store <4 x float> %i.am, ptr %i.aj, align 4, !tbaa !159, !alias.scope !4001, !noalias !4011, !llvm.access.group !3890
  %i.an = fmul nsz <4 x float> %broadcast.splat9, %wide.load12.6
  store <4 x float> %i.an, ptr %i.ak, align 4, !tbaa !159, !alias.scope !4003, !noalias !4012, !llvm.access.group !3890
  %i.ao = fmul nsz <4 x float> %broadcast.splat11, %wide.load13.6
  store <4 x float> %i.ao, ptr %i.al, align 4, !tbaa !159, !alias.scope !4005, !noalias !4013, !llvm.access.group !3890
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %wide.load.7 = load <4 x float>, ptr %i.ap, align 4, !tbaa !159, !alias.scope !4001, !noalias !4011, !llvm.access.group !3890
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %wide.load12.7 = load <4 x float>, ptr %i.aq, align 4, !tbaa !159, !alias.scope !4003, !noalias !4012, !llvm.access.group !3890
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %wide.load13.7 = load <4 x float>, ptr %i.ar, align 4, !tbaa !159, !alias.scope !4005, !noalias !4013, !llvm.access.group !3890
  %i.as = fmul nsz <4 x float> %broadcast.splat, %wide.load.7
  store <4 x float> %i.as, ptr %i.ap, align 4, !tbaa !159, !alias.scope !4001, !noalias !4011, !llvm.access.group !3890
  %i.at = fmul nsz <4 x float> %broadcast.splat9, %wide.load12.7
  store <4 x float> %i.at, ptr %i.aq, align 4, !tbaa !159, !alias.scope !4003, !noalias !4012, !llvm.access.group !3890
  %i.au = fmul nsz <4 x float> %broadcast.splat11, %wide.load13.7
  store <4 x float> %i.au, ptr %i.ar, align 4, !tbaa !159, !alias.scope !4005, !noalias !4013, !llvm.access.group !3890
  %i.av = load ptr, ptr %1, align 16, !tbaa !35, !alias.scope !3998, !noalias !4007
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.av(ptr noundef %0, ptr noundef nonnull %i.aw, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #12, !inline_history !3893
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @f32_linear_xyz_10x0x_1xx0x_1x00x_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4021)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !22, !alias.scope !4014, !noalias !4023 ; 7 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.21.0.copyload.i = load float, ptr %.sroa.21.0..sroa_idx.i, align 4, !noalias !4026
  %broadcast.splatinsert18 = insertelement <4 x float> poison, float %.sroa.21.0.copyload.i, i64 0
  %broadcast.splat19 = shufflevector <4 x float> %broadcast.splatinsert18, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %.sroa.20.0.copyload.i = load float, ptr %.sroa.20.0..sroa_idx.i, align 4, !noalias !4026
  %broadcast.splatinsert16 = insertelement <4 x float> poison, float %.sroa.20.0.copyload.i, i64 0
  %broadcast.splat17 = shufflevector <4 x float> %broadcast.splatinsert16, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.19.0.copyload.i = load float, ptr %.sroa.19.0..sroa_idx.i, align 4, !noalias !4026
  %broadcast.splatinsert14 = insertelement <4 x float> poison, float %.sroa.19.0.copyload.i, i64 0
  %broadcast.splat15 = shufflevector <4 x float> %broadcast.splatinsert14, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %.sroa.12.0.copyload.i = load float, ptr %.sroa.12.0..sroa_idx.i, align 4, !noalias !4026
  %broadcast.splatinsert12 = insertelement <4 x float> poison, float %.sroa.12.0.copyload.i, i64 0
  %broadcast.splat13 = shufflevector <4 x float> %broadcast.splatinsert12, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.9.0.copyload.i = load float, ptr %.sroa.9.0..sroa_idx.i, align 4, !noalias !4026
  %broadcast.splatinsert10 = insertelement <4 x float> poison, float %.sroa.9.0.copyload.i, i64 0
  %broadcast.splat11 = shufflevector <4 x float> %broadcast.splatinsert10, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4, !noalias !4026
  %broadcast.splatinsert8 = insertelement <4 x float> poison, float %.sroa.8.0.copyload.i, i64 0
  %broadcast.splat9 = shufflevector <4 x float> %broadcast.splatinsert8, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !4026
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.5.0.copyload.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x float>, ptr %2, align 4, !tbaa !159, !alias.scope !4017, !noalias !4027, !llvm.access.group !3890 ; 3 uses
  %wide.load20 = load <4 x float>, ptr %3, align 4, !tbaa !159, !alias.scope !4019, !noalias !4028, !llvm.access.group !3890 ; 2 uses
  %wide.load21 = load <4 x float>, ptr %4, align 4, !tbaa !159, !alias.scope !4021, !noalias !4029, !llvm.access.group !3890 ; 2 uses
  %i.c = fadd nsz <4 x float> %broadcast.splat15, %wide.load
  %i.d = fmul nsz <4 x float> %broadcast.splat, %wide.load21
  %i.e = fadd nsz <4 x float> %i.c, %i.d
  store <4 x float> %i.e, ptr %2, align 4, !tbaa !159, !alias.scope !4017, !noalias !4027, !llvm.access.group !3890
  %i.f = fadd nsz <4 x float> %broadcast.splat17, %wide.load
  %i.g = fmul nsz <4 x float> %broadcast.splat9, %wide.load20
  %i.h = fadd nsz <4 x float> %i.f, %i.g
  %i.i = fmul nsz <4 x float> %broadcast.splat11, %wide.load21
  %i.j = fadd nsz <4 x float> %i.h, %i.i
  store <4 x float> %i.j, ptr %3, align 4, !tbaa !159, !alias.scope !4019, !noalias !4028, !llvm.access.group !3890
  %i.k = fadd nsz <4 x float> %broadcast.splat19, %wide.load
  %i.l = fmul nsz <4 x float> %broadcast.splat13, %wide.load20
  %i.m = fadd nsz <4 x float> %i.k, %i.l
  store <4 x float> %i.m, ptr %4, align 4, !tbaa !159, !alias.scope !4021, !noalias !4029, !llvm.access.group !3890
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.n, align 4, !tbaa !159, !alias.scope !4017, !noalias !4027, !llvm.access.group !3890 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %wide.load20.1 = load <4 x float>, ptr %i.o, align 4, !tbaa !159, !alias.scope !4019, !noalias !4028, !llvm.access.group !3890 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %wide.load21.1 = load <4 x float>, ptr %i.p, align 4, !tbaa !159, !alias.scope !4021, !noalias !4029, !llvm.access.group !3890 ; 2 uses
  %i.q = fadd nsz <4 x float> %broadcast.splat15, %wide.load.1
  %i.r = fmul nsz <4 x float> %broadcast.splat, %wide.load21.1
  %i.s = fadd nsz <4 x float> %i.q, %i.r
  store <4 x float> %i.s, ptr %i.n, align 4, !tbaa !159, !alias.scope !4017, !noalias !4027, !llvm.access.group !3890
  %i.t = fadd nsz <4 x float> %broadcast.splat17, %wide.load.1
  %i.u = fmul nsz <4 x float> %broadcast.splat9, %wide.load20.1
  %i.v = fadd nsz <4 x float> %i.t, %i.u
  %i.w = fmul nsz <4 x float> %broadcast.splat11, %wide.load21.1
  %i.x = fadd nsz <4 x float> %i.v, %i.w
  store <4 x float> %i.x, ptr %i.o, align 4, !tbaa !159, !alias.scope !4019, !noalias !4028, !llvm.access.group !3890
  %i.y = fadd nsz <4 x float> %broadcast.splat19, %wide.load.1
  %i.z = fmul nsz <4 x float> %broadcast.splat13, %wide.load20.1
  %i.aa = fadd nsz <4 x float> %i.y, %i.z
  store <4 x float> %i.aa, ptr %i.p, align 4, !tbaa !159, !alias.scope !4021, !noalias !4029, !llvm.access.group !3890
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %wide.load.2 = load <4 x float>, ptr %i.ab, align 4, !tbaa !159, !alias.scope !4017, !noalias !4027, !llvm.access.group !3890 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %wide.load20.2 = load <4 x float>, ptr %i.ac, align 4, !tbaa !159, !alias.scope !4019, !noalias !4028, !llvm.access.group !3890 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %wide.load21.2 = load <4 x float>, ptr %i.ad, align 4, !tbaa !159, !alias.scope !4021, !noalias !4029, !llvm.access.group !3890 ; 2 uses
  %i.ae = fadd nsz <4 x float> %broadcast.splat15, %wide.load.2
  %i.af = fmul nsz <4 x float> %broadcast.splat, %wide.load21.2
  %i.ag = fadd nsz <4 x float> %i.ae, %i.af
  store <4 x float> %i.ag, ptr %i.ab, align 4, !tbaa !159, !alias.scope !4017, !noalias !4027, !llvm.access.group !3890
  %i.ah = fadd nsz <4 x float> %broadcast.splat17, %wide.load.2
  %i.ai = fmul nsz <4 x float> %broadcast.splat9, %wide.load20.2
  %i.aj = fadd nsz <4 x float> %i.ah, %i.ai
  %i.ak = fmul nsz <4 x float> %broadcast.splat11, %wide.load21.2
  %i.al = fadd nsz <4 x float> %i.aj, %i.ak
  store <4 x float> %i.al, ptr %i.ac, align 4, !tbaa !159, !alias.scope !4019, !noalias !4028, !llvm.access.group !3890
  %i.am = fadd nsz <4 x float> %broadcast.splat19, %wide.load.2
  %i.an = fmul nsz <4 x float> %broadcast.splat13, %wide.load20.2
  %i.ao = fadd nsz <4 x float> %i.am, %i.an
  store <4 x float> %i.ao, ptr %i.ad, align 4, !tbaa !159, !alias.scope !4021, !noalias !4029, !llvm.access.group !3890
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.3 = load <4 x float>, ptr %i.ap, align 4, !tbaa !159, !alias.scope !4017, !noalias !4027, !llvm.access.group !3890 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %wide.load20.3 = load <4 x float>, ptr %i.aq, align 4, !tbaa !159, !alias.scope !4019, !noalias !4028, !llvm.access.group !3890 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %wide.load21.3 = load <4 x float>, ptr %i.ar, align 4, !tbaa !159, !alias.scope !4021, !noalias !4029, !llvm.access.group !3890 ; 2 uses
  %i.as = fadd nsz <4 x float> %broadcast.splat15, %wide.load.3
  %i.at = fmul nsz <4 x float> %broadcast.splat, %wide.load21.3
  %i.au = fadd nsz <4 x float> %i.as, %i.at
  store <4 x float> %i.au, ptr %i.ap, align 4, !tbaa !159, !alias.scope !4017, !noalias !4027, !llvm.access.group !3890
  %i.av = fadd nsz <4 x float> %broadcast.splat17, %wide.load.3
  %i.aw = fmul nsz <4 x float> %broadcast.splat9, %wide.load20.3
  %i.ax = fadd nsz <4 x float> %i.av, %i.aw
  %i.ay = fmul nsz <4 x float> %broadcast.splat11, %wide.load21.3
  %i.az = fadd nsz <4 x float> %i.ax, %i.ay
  store <4 x float> %i.az, ptr %i.aq, align 4, !tbaa !159, !alias.scope !4019, !noalias !4028, !llvm.access.group !3890
  %i.ba = fadd nsz <4 x float> %broadcast.splat19, %wide.load.3
  %i.bb = fmul nsz <4 x float> %broadcast.splat13, %wide.load20.3
  %i.bc = fadd nsz <4 x float> %i.ba, %i.bb
  store <4 x float> %i.bc, ptr %i.ar, align 4, !tbaa !159, !alias.scope !4021, !noalias !4029, !llvm.access.group !3890
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %wide.load.4 = load <4 x float>, ptr %i.bd, align 4, !tbaa !159, !alias.scope !4017, !noalias !4027, !llvm.access.group !3890 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %wide.load20.4 = load <4 x float>, ptr %i.be, align 4, !tbaa !159, !alias.scope !4019, !noalias !4028, !llvm.access.group !3890 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %wide.load21.4 = load <4 x float>, ptr %i.bf, align 4, !tbaa !159, !alias.scope !4021, !noalias !4029, !llvm.access.group !3890 ; 2 uses
  %i.bg = fadd nsz <4 x float> %broadcast.splat15, %wide.load.4
  %i.bh = fmul nsz <4 x float> %broadcast.splat, %wide.load21.4
  %i.bi = fadd nsz <4 x float> %i.bg, %i.bh
  store <4 x float> %i.bi, ptr %i.bd, align 4, !tbaa !159, !alias.scope !4017, !noalias !4027, !llvm.access.group !3890
  %i.bj = fadd nsz <4 x float> %broadcast.splat17, %wide.load.4
  %i.bk = fmul nsz <4 x float> %broadcast.splat9, %wide.load20.4
  %i.bl = fadd nsz <4 x float> %i.bj, %i.bk
  %i.bm = fmul nsz <4 x float> %broadcast.splat11, %wide.load21.4
  %i.bn = fadd nsz <4 x float> %i.bl, %i.bm
  store <4 x float> %i.bn, ptr %i.be, align 4, !tbaa !159, !alias.scope !4019, !noalias !4028, !llvm.access.group !3890
  %i.bo = fadd nsz <4 x float> %broadcast.splat19, %wide.load.4
  %i.bp = fmul nsz <4 x float> %broadcast.splat13, %wide.load20.4
  %i.bq = fadd nsz <4 x float> %i.bo, %i.bp
  store <4 x float> %i.bq, ptr %i.bf, align 4, !tbaa !159, !alias.scope !4021, !noalias !4029, !llvm.access.group !3890
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.load.5 = load <4 x float>, ptr %i.br, align 4, !tbaa !159, !alias.scope !4017, !noalias !4027, !llvm.access.group !3890 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %wide.load20.5 = load <4 x float>, ptr %i.bs, align 4, !tbaa !159, !alias.scope !4019, !noalias !4028, !llvm.access.group !3890 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %wide.load21.5 = load <4 x float>, ptr %i.bt, align 4, !tbaa !159, !alias.scope !4021, !noalias !4029, !llvm.access.group !3890 ; 2 uses
  %i.bu = fadd nsz <4 x float> %broadcast.splat15, %wide.load.5
  %i.bv = fmul nsz <4 x float> %broadcast.splat, %wide.load21.5
  %i.bw = fadd nsz <4 x float> %i.bu, %i.bv
  store <4 x float> %i.bw, ptr %i.br, align 4, !tbaa !159, !alias.scope !4017, !noalias !4027, !llvm.access.group !3890
  %i.bx = fadd nsz <4 x float> %broadcast.splat17, %wide.load.5
  %i.by = fmul nsz <4 x float> %broadcast.splat9, %wide.load20.5
  %i.bz = fadd nsz <4 x float> %i.bx, %i.by
  %i.ca = fmul nsz <4 x float> %broadcast.splat11, %wide.load21.5
  %i.cb = fadd nsz <4 x float> %i.bz, %i.ca
  store <4 x float> %i.cb, ptr %i.bs, align 4, !tbaa !159, !alias.scope !4019, !noalias !4028, !llvm.access.group !3890
  %i.cc = fadd nsz <4 x float> %broadcast.splat19, %wide.load.5
  %i.cd = fmul nsz <4 x float> %broadcast.splat13, %wide.load20.5
  %i.ce = fadd nsz <4 x float> %i.cc, %i.cd
  store <4 x float> %i.ce, ptr %i.bt, align 4, !tbaa !159, !alias.scope !4021, !noalias !4029, !llvm.access.group !3890
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %wide.load.6 = load <4 x float>, ptr %i.cf, align 4, !tbaa !159, !alias.scope !4017, !noalias !4027, !llvm.access.group !3890 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %wide.load20.6 = load <4 x float>, ptr %i.cg, align 4, !tbaa !159, !alias.scope !4019, !noalias !4028, !llvm.access.group !3890 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %wide.load21.6 = load <4 x float>, ptr %i.ch, align 4, !tbaa !159, !alias.scope !4021, !noalias !4029, !llvm.access.group !3890 ; 2 uses
  %i.ci = fadd nsz <4 x float> %broadcast.splat15, %wide.load.6
  %i.cj = fmul nsz <4 x float> %broadcast.splat, %wide.load21.6
  %i.ck = fadd nsz <4 x float> %i.ci, %i.cj
  store <4 x float> %i.ck, ptr %i.cf, align 4, !tbaa !159, !alias.scope !4017, !noalias !4027, !llvm.access.group !3890
  %i.cl = fadd nsz <4 x float> %broadcast.splat17, %wide.load.6
  %i.cm = fmul nsz <4 x float> %broadcast.splat9, %wide.load20.6
  %i.cn = fadd nsz <4 x float> %i.cl, %i.cm
  %i.co = fmul nsz <4 x float> %broadcast.splat11, %wide.load21.6
  %i.cp = fadd nsz <4 x float> %i.cn, %i.co
  store <4 x float> %i.cp, ptr %i.cg, align 4, !tbaa !159, !alias.scope !4019, !noalias !4028, !llvm.access.group !3890
  %i.cq = fadd nsz <4 x float> %broadcast.splat19, %wide.load.6
  %i.cr = fmul nsz <4 x float> %broadcast.splat13, %wide.load20.6
  %i.cs = fadd nsz <4 x float> %i.cq, %i.cr
  store <4 x float> %i.cs, ptr %i.ch, align 4, !tbaa !159, !alias.scope !4021, !noalias !4029, !llvm.access.group !3890
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %wide.load.7 = load <4 x float>, ptr %i.ct, align 4, !tbaa !159, !alias.scope !4017, !noalias !4027, !llvm.access.group !3890 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %wide.load20.7 = load <4 x float>, ptr %i.cu, align 4, !tbaa !159, !alias.scope !4019, !noalias !4028, !llvm.access.group !3890 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %wide.load21.7 = load <4 x float>, ptr %i.cv, align 4, !tbaa !159, !alias.scope !4021, !noalias !4029, !llvm.access.group !3890 ; 2 uses
  %i.cw = fadd nsz <4 x float> %broadcast.splat15, %wide.load.7
  %i.cx = fmul nsz <4 x float> %broadcast.splat, %wide.load21.7
  %i.cy = fadd nsz <4 x float> %i.cw, %i.cx
  store <4 x float> %i.cy, ptr %i.ct, align 4, !tbaa !159, !alias.scope !4017, !noalias !4027, !llvm.access.group !3890
  %i.cz = fadd nsz <4 x float> %broadcast.splat17, %wide.load.7
  %i.da = fmul nsz <4 x float> %broadcast.splat9, %wide.load20.7
  %i.db = fadd nsz <4 x float> %i.cz, %i.da
  %i.dc = fmul nsz <4 x float> %broadcast.splat11, %wide.load21.7
  %i.dd = fadd nsz <4 x float> %i.db, %i.dc
  store <4 x float> %i.dd, ptr %i.cu, align 4, !tbaa !159, !alias.scope !4019, !noalias !4028, !llvm.access.group !3890
  %i.de = fadd nsz <4 x float> %broadcast.splat19, %wide.load.7
  %i.df = fmul nsz <4 x float> %broadcast.splat13, %wide.load20.7
  %i.dg = fadd nsz <4 x float> %i.de, %i.df
  store <4 x float> %i.dg, ptr %i.cv, align 4, !tbaa !159, !alias.scope !4021, !noalias !4029, !llvm.access.group !3890
  %i.dh = load ptr, ptr %1, align 16, !tbaa !35, !alias.scope !4014, !noalias !4023
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.dh(ptr noundef %0, ptr noundef nonnull %i.di, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #12, !inline_history !3893
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @f32_linear_w_000x0_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
linear_F32.exit:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4030)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4033)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !22, !alias.scope !4030, !noalias !4035
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %.sroa.18.0.copyload.i = load float, ptr %.sroa.18.0..sroa_idx.i, align 4, !tbaa !22, !noalias !4040
  %i.c = load <4 x float>, ptr %5, align 4, !tbaa !159, !alias.scope !4033, !noalias !4041
  %i.d = insertelement <4 x float> poison, float %.sroa.18.0.copyload.i, i64 0
  %i.e = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.f = fmul nsz <4 x float> %i.e, %i.c
  store <4 x float> %i.f, ptr %5, align 4, !tbaa !159, !alias.scope !4033, !noalias !4041
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = load <4 x float>, ptr %i.g, align 4, !tbaa !159, !alias.scope !4033, !noalias !4041
  %i.i = fmul nsz <4 x float> %i.e, %i.h
  store <4 x float> %i.i, ptr %i.g, align 4, !tbaa !159, !alias.scope !4033, !noalias !4041
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.k = load <4 x float>, ptr %i.j, align 4, !tbaa !159, !alias.scope !4033, !noalias !4041
  %i.l = fmul nsz <4 x float> %i.e, %i.k
  store <4 x float> %i.l, ptr %i.j, align 4, !tbaa !159, !alias.scope !4033, !noalias !4041
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.n = load <4 x float>, ptr %i.m, align 4, !tbaa !159, !alias.scope !4033, !noalias !4041
  %i.o = fmul nsz <4 x float> %i.e, %i.n
  store <4 x float> %i.o, ptr %i.m, align 4, !tbaa !159, !alias.scope !4033, !noalias !4041
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.q = load <4 x float>, ptr %i.p, align 4, !tbaa !159, !alias.scope !4033, !noalias !4041
  %i.r = fmul nsz <4 x float> %i.e, %i.q
  store <4 x float> %i.r, ptr %i.p, align 4, !tbaa !159, !alias.scope !4033, !noalias !4041
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.t = load <4 x float>, ptr %i.s, align 4, !tbaa !159, !alias.scope !4033, !noalias !4041
  %i.u = fmul nsz <4 x float> %i.e, %i.t
  store <4 x float> %i.u, ptr %i.s, align 4, !tbaa !159, !alias.scope !4033, !noalias !4041
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.w = load <4 x float>, ptr %i.v, align 4, !tbaa !159, !alias.scope !4033, !noalias !4041
  %i.x = fmul nsz <4 x float> %i.e, %i.w
  store <4 x float> %i.x, ptr %i.v, align 4, !tbaa !159, !alias.scope !4033, !noalias !4041
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.z = load <4 x float>, ptr %i.y, align 4, !tbaa !159, !alias.scope !4033, !noalias !4041
  %i.aa = fmul nsz <4 x float> %i.e, %i.z
  store <4 x float> %i.aa, ptr %i.y, align 4, !tbaa !159, !alias.scope !4033, !noalias !4041
  %i.ab = load ptr, ptr %1, align 16, !tbaa !35, !alias.scope !4030, !noalias !4035
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.ab(ptr noundef %0, ptr noundef nonnull %i.ac, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5) #12, !inline_history !3893
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @f32_linear_xw_x000x_000x0_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4042)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4047)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !22, !alias.scope !4042, !noalias !4049 ; 3 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.19.0.copyload.i = load float, ptr %.sroa.19.0..sroa_idx.i, align 4, !noalias !4053
  %broadcast.splatinsert10 = insertelement <4 x float> poison, float %.sroa.19.0.copyload.i, i64 0
  %broadcast.splat11 = shufflevector <4 x float> %broadcast.splatinsert10, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %.sroa.18.0.copyload.i = load float, ptr %.sroa.18.0..sroa_idx.i, align 4, !tbaa !22, !noalias !4053
  %broadcast.splatinsert8 = insertelement <4 x float> poison, float %.sroa.18.0.copyload.i, i64 0
  %broadcast.splat9 = shufflevector <4 x float> %broadcast.splatinsert8, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.0.0.copyload.i = load float, ptr %i.b, align 4, !noalias !4053
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.0.0.copyload.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x float>, ptr %2, align 4, !tbaa !159, !alias.scope !4045, !noalias !4054, !llvm.access.group !3890
  %wide.load12 = load <4 x float>, ptr %5, align 4, !tbaa !159, !alias.scope !4047, !noalias !4055, !llvm.access.group !3890
  %i.c = fmul nsz <4 x float> %broadcast.splat, %wide.load
  %i.d = fadd nsz <4 x float> %broadcast.splat11, %i.c
  store <4 x float> %i.d, ptr %2, align 4, !tbaa !159, !alias.scope !4045, !noalias !4054, !llvm.access.group !3890
  %i.e = fmul nsz <4 x float> %broadcast.splat9, %wide.load12
  store <4 x float> %i.e, ptr %5, align 4, !tbaa !159, !alias.scope !4047, !noalias !4055, !llvm.access.group !3890
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.f, align 4, !tbaa !159, !alias.scope !4045, !noalias !4054, !llvm.access.group !3890
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %wide.load12.1 = load <4 x float>, ptr %i.g, align 4, !tbaa !159, !alias.scope !4047, !noalias !4055, !llvm.access.group !3890
  %i.h = fmul nsz <4 x float> %broadcast.splat, %wide.load.1
  %i.i = fadd nsz <4 x float> %broadcast.splat11, %i.h
  store <4 x float> %i.i, ptr %i.f, align 4, !tbaa !159, !alias.scope !4045, !noalias !4054, !llvm.access.group !3890
  %i.j = fmul nsz <4 x float> %broadcast.splat9, %wide.load12.1
  store <4 x float> %i.j, ptr %i.g, align 4, !tbaa !159, !alias.scope !4047, !noalias !4055, !llvm.access.group !3890
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %wide.load.2 = load <4 x float>, ptr %i.k, align 4, !tbaa !159, !alias.scope !4045, !noalias !4054, !llvm.access.group !3890
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %wide.load12.2 = load <4 x float>, ptr %i.l, align 4, !tbaa !159, !alias.scope !4047, !noalias !4055, !llvm.access.group !3890
  %i.m = fmul nsz <4 x float> %broadcast.splat, %wide.load.2
  %i.n = fadd nsz <4 x float> %broadcast.splat11, %i.m
  store <4 x float> %i.n, ptr %i.k, align 4, !tbaa !159, !alias.scope !4045, !noalias !4054, !llvm.access.group !3890
  %i.o = fmul nsz <4 x float> %broadcast.splat9, %wide.load12.2
  store <4 x float> %i.o, ptr %i.l, align 4, !tbaa !159, !alias.scope !4047, !noalias !4055, !llvm.access.group !3890
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.3 = load <4 x float>, ptr %i.p, align 4, !tbaa !159, !alias.scope !4045, !noalias !4054, !llvm.access.group !3890
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %wide.load12.3 = load <4 x float>, ptr %i.q, align 4, !tbaa !159, !alias.scope !4047, !noalias !4055, !llvm.access.group !3890
  %i.r = fmul nsz <4 x float> %broadcast.splat, %wide.load.3
  %i.s = fadd nsz <4 x float> %broadcast.splat11, %i.r
  store <4 x float> %i.s, ptr %i.p, align 4, !tbaa !159, !alias.scope !4045, !noalias !4054, !llvm.access.group !3890
  %i.t = fmul nsz <4 x float> %broadcast.splat9, %wide.load12.3
  store <4 x float> %i.t, ptr %i.q, align 4, !tbaa !159, !alias.scope !4047, !noalias !4055, !llvm.access.group !3890
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %wide.load.4 = load <4 x float>, ptr %i.u, align 4, !tbaa !159, !alias.scope !4045, !noalias !4054, !llvm.access.group !3890
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %wide.load12.4 = load <4 x float>, ptr %i.v, align 4, !tbaa !159, !alias.scope !4047, !noalias !4055, !llvm.access.group !3890
  %i.w = fmul nsz <4 x float> %broadcast.splat, %wide.load.4
  %i.x = fadd nsz <4 x float> %broadcast.splat11, %i.w
  store <4 x float> %i.x, ptr %i.u, align 4, !tbaa !159, !alias.scope !4045, !noalias !4054, !llvm.access.group !3890
  %i.y = fmul nsz <4 x float> %broadcast.splat9, %wide.load12.4
  store <4 x float> %i.y, ptr %i.v, align 4, !tbaa !159, !alias.scope !4047, !noalias !4055, !llvm.access.group !3890
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.load.5 = load <4 x float>, ptr %i.z, align 4, !tbaa !159, !alias.scope !4045, !noalias !4054, !llvm.access.group !3890
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %wide.load12.5 = load <4 x float>, ptr %i.aa, align 4, !tbaa !159, !alias.scope !4047, !noalias !4055, !llvm.access.group !3890
  %i.ab = fmul nsz <4 x float> %broadcast.splat, %wide.load.5
  %i.ac = fadd nsz <4 x float> %broadcast.splat11, %i.ab
  store <4 x float> %i.ac, ptr %i.z, align 4, !tbaa !159, !alias.scope !4045, !noalias !4054, !llvm.access.group !3890
  %i.ad = fmul nsz <4 x float> %broadcast.splat9, %wide.load12.5
  store <4 x float> %i.ad, ptr %i.aa, align 4, !tbaa !159, !alias.scope !4047, !noalias !4055, !llvm.access.group !3890
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %wide.load.6 = load <4 x float>, ptr %i.ae, align 4, !tbaa !159, !alias.scope !4045, !noalias !4054, !llvm.access.group !3890
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %wide.load12.6 = load <4 x float>, ptr %i.af, align 4, !tbaa !159, !alias.scope !4047, !noalias !4055, !llvm.access.group !3890
  %i.ag = fmul nsz <4 x float> %broadcast.splat, %wide.load.6
  %i.ah = fadd nsz <4 x float> %broadcast.splat11, %i.ag
  store <4 x float> %i.ah, ptr %i.ae, align 4, !tbaa !159, !alias.scope !4045, !noalias !4054, !llvm.access.group !3890
  %i.ai = fmul nsz <4 x float> %broadcast.splat9, %wide.load12.6
  store <4 x float> %i.ai, ptr %i.af, align 4, !tbaa !159, !alias.scope !4047, !noalias !4055, !llvm.access.group !3890
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %wide.load.7 = load <4 x float>, ptr %i.aj, align 4, !tbaa !159, !alias.scope !4045, !noalias !4054, !llvm.access.group !3890
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %wide.load12.7 = load <4 x float>, ptr %i.ak, align 4, !tbaa !159, !alias.scope !4047, !noalias !4055, !llvm.access.group !3890
  %i.al = fmul nsz <4 x float> %broadcast.splat, %wide.load.7
  %i.am = fadd nsz <4 x float> %broadcast.splat11, %i.al
  store <4 x float> %i.am, ptr %i.aj, align 4, !tbaa !159, !alias.scope !4045, !noalias !4054, !llvm.access.group !3890
  %i.an = fmul nsz <4 x float> %broadcast.splat9, %wide.load12.7
  store <4 x float> %i.an, ptr %i.ak, align 4, !tbaa !159, !alias.scope !4047, !noalias !4055, !llvm.access.group !3890
  %i.ao = load ptr, ptr %1, align 16, !tbaa !35, !alias.scope !4042, !noalias !4049
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.ao(ptr noundef %0, ptr noundef nonnull %i.ap, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5) #12, !inline_history !3893
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @f32_linear_xw_xxx00_000x0_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4065)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !22, !alias.scope !4056, !noalias !4067 ; 4 uses
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %.sroa.18.0.copyload.i = load float, ptr %.sroa.18.0..sroa_idx.i, align 4, !tbaa !22, !noalias !4069
  %broadcast.splatinsert12 = insertelement <4 x float> poison, float %.sroa.18.0.copyload.i, i64 0
  %broadcast.splat13 = shufflevector <4 x float> %broadcast.splatinsert12, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !4069
  %broadcast.splatinsert10 = insertelement <4 x float> poison, float %.sroa.5.0.copyload.i, i64 0
  %broadcast.splat11 = shufflevector <4 x float> %broadcast.splatinsert10, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !4069
  %broadcast.splatinsert8 = insertelement <4 x float> poison, float %.sroa.4.0.copyload.i, i64 0
  %broadcast.splat9 = shufflevector <4 x float> %broadcast.splatinsert8, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.0.0.copyload.i = load float, ptr %i.b, align 4, !noalias !4069
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.0.0.copyload.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x float>, ptr %2, align 4, !tbaa !159, !alias.scope !4059, !noalias !4070, !llvm.access.group !3890
  %wide.load14 = load <4 x float>, ptr %3, align 4, !tbaa !159, !alias.scope !4061, !noalias !4071, !llvm.access.group !3890
  %wide.load15 = load <4 x float>, ptr %4, align 4, !tbaa !159, !alias.scope !4063, !noalias !4072, !llvm.access.group !3890
  %wide.load16 = load <4 x float>, ptr %5, align 4, !tbaa !159, !alias.scope !4065, !noalias !4073, !llvm.access.group !3890
  %i.c = fmul nsz <4 x float> %broadcast.splat, %wide.load
  %i.d = fmul nsz <4 x float> %broadcast.splat9, %wide.load14
  %i.e = fadd nsz <4 x float> %i.c, %i.d
  %i.f = fmul nsz <4 x float> %broadcast.splat11, %wide.load15
  %i.g = fadd nsz <4 x float> %i.e, %i.f
  store <4 x float> %i.g, ptr %2, align 4, !tbaa !159, !alias.scope !4059, !noalias !4070, !llvm.access.group !3890
  %i.h = fmul nsz <4 x float> %broadcast.splat13, %wide.load16
  store <4 x float> %i.h, ptr %5, align 4, !tbaa !159, !alias.scope !4065, !noalias !4073, !llvm.access.group !3890
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.i, align 4, !tbaa !159, !alias.scope !4059, !noalias !4070, !llvm.access.group !3890
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load14.1 = load <4 x float>, ptr %i.j, align 4, !tbaa !159, !alias.scope !4061, !noalias !4071, !llvm.access.group !3890
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.load15.1 = load <4 x float>, ptr %i.k, align 4, !tbaa !159, !alias.scope !4063, !noalias !4072, !llvm.access.group !3890
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %wide.load16.1 = load <4 x float>, ptr %i.l, align 4, !tbaa !159, !alias.scope !4065, !noalias !4073, !llvm.access.group !3890
  %i.m = fmul nsz <4 x float> %broadcast.splat, %wide.load.1
  %i.n = fmul nsz <4 x float> %broadcast.splat9, %wide.load14.1
  %i.o = fadd nsz <4 x float> %i.m, %i.n
  %i.p = fmul nsz <4 x float> %broadcast.splat11, %wide.load15.1
  %i.q = fadd nsz <4 x float> %i.o, %i.p
  store <4 x float> %i.q, ptr %i.i, align 4, !tbaa !159, !alias.scope !4059, !noalias !4070, !llvm.access.group !3890
  %i.r = fmul nsz <4 x float> %broadcast.splat13, %wide.load16.1
  store <4 x float> %i.r, ptr %i.l, align 4, !tbaa !159, !alias.scope !4065, !noalias !4073, !llvm.access.group !3890
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %wide.load.2 = load <4 x float>, ptr %i.s, align 4, !tbaa !159, !alias.scope !4059, !noalias !4070, !llvm.access.group !3890
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  %wide.load14.2 = load <4 x float>, ptr %i.t, align 4, !tbaa !159, !alias.scope !4061, !noalias !4071, !llvm.access.group !3890
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  %wide.load15.2 = load <4 x float>, ptr %i.u, align 4, !tbaa !159, !alias.scope !4063, !noalias !4072, !llvm.access.group !3890
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %wide.load16.2 = load <4 x float>, ptr %i.v, align 4, !tbaa !159, !alias.scope !4065, !noalias !4073, !llvm.access.group !3890
  %i.w = fmul nsz <4 x float> %broadcast.splat, %wide.load.2
  %i.x = fmul nsz <4 x float> %broadcast.splat9, %wide.load14.2
  %i.y = fadd nsz <4 x float> %i.w, %i.x
  %i.z = fmul nsz <4 x float> %broadcast.splat11, %wide.load15.2
  %i.aa = fadd nsz <4 x float> %i.y, %i.z
  store <4 x float> %i.aa, ptr %i.s, align 4, !tbaa !159, !alias.scope !4059, !noalias !4070, !llvm.access.group !3890
  %i.ab = fmul nsz <4 x float> %broadcast.splat13, %wide.load16.2
  store <4 x float> %i.ab, ptr %i.v, align 4, !tbaa !159, !alias.scope !4065, !noalias !4073, !llvm.access.group !3890
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.3 = load <4 x float>, ptr %i.ac, align 4, !tbaa !159, !alias.scope !4059, !noalias !4070, !llvm.access.group !3890
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 48
  %wide.load14.3 = load <4 x float>, ptr %i.ad, align 4, !tbaa !159, !alias.scope !4061, !noalias !4071, !llvm.access.group !3890
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 48
  %wide.load15.3 = load <4 x float>, ptr %i.ae, align 4, !tbaa !159, !alias.scope !4063, !noalias !4072, !llvm.access.group !3890
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %wide.load16.3 = load <4 x float>, ptr %i.af, align 4, !tbaa !159, !alias.scope !4065, !noalias !4073, !llvm.access.group !3890
  %i.ag = fmul nsz <4 x float> %broadcast.splat, %wide.load.3
  %i.ah = fmul nsz <4 x float> %broadcast.splat9, %wide.load14.3
  %i.ai = fadd nsz <4 x float> %i.ag, %i.ah
  %i.aj = fmul nsz <4 x float> %broadcast.splat11, %wide.load15.3
  %i.ak = fadd nsz <4 x float> %i.ai, %i.aj
  store <4 x float> %i.ak, ptr %i.ac, align 4, !tbaa !159, !alias.scope !4059, !noalias !4070, !llvm.access.group !3890
  %i.al = fmul nsz <4 x float> %broadcast.splat13, %wide.load16.3
  store <4 x float> %i.al, ptr %i.af, align 4, !tbaa !159, !alias.scope !4065, !noalias !4073, !llvm.access.group !3890
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %wide.load.4 = load <4 x float>, ptr %i.am, align 4, !tbaa !159, !alias.scope !4059, !noalias !4070, !llvm.access.group !3890
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  %wide.load14.4 = load <4 x float>, ptr %i.an, align 4, !tbaa !159, !alias.scope !4061, !noalias !4071, !llvm.access.group !3890
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 64
  %wide.load15.4 = load <4 x float>, ptr %i.ao, align 4, !tbaa !159, !alias.scope !4063, !noalias !4072, !llvm.access.group !3890
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %wide.load16.4 = load <4 x float>, ptr %i.ap, align 4, !tbaa !159, !alias.scope !4065, !noalias !4073, !llvm.access.group !3890
  %i.aq = fmul nsz <4 x float> %broadcast.splat, %wide.load.4
  %i.ar = fmul nsz <4 x float> %broadcast.splat9, %wide.load14.4
  %i.as = fadd nsz <4 x float> %i.aq, %i.ar
  %i.at = fmul nsz <4 x float> %broadcast.splat11, %wide.load15.4
  %i.au = fadd nsz <4 x float> %i.as, %i.at
  store <4 x float> %i.au, ptr %i.am, align 4, !tbaa !159, !alias.scope !4059, !noalias !4070, !llvm.access.group !3890
  %i.av = fmul nsz <4 x float> %broadcast.splat13, %wide.load16.4
  store <4 x float> %i.av, ptr %i.ap, align 4, !tbaa !159, !alias.scope !4065, !noalias !4073, !llvm.access.group !3890
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.load.5 = load <4 x float>, ptr %i.aw, align 4, !tbaa !159, !alias.scope !4059, !noalias !4070, !llvm.access.group !3890
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 80
  %wide.load14.5 = load <4 x float>, ptr %i.ax, align 4, !tbaa !159, !alias.scope !4061, !noalias !4071, !llvm.access.group !3890
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 80
  %wide.load15.5 = load <4 x float>, ptr %i.ay, align 4, !tbaa !159, !alias.scope !4063, !noalias !4072, !llvm.access.group !3890
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %wide.load16.5 = load <4 x float>, ptr %i.az, align 4, !tbaa !159, !alias.scope !4065, !noalias !4073, !llvm.access.group !3890
  %i.ba = fmul nsz <4 x float> %broadcast.splat, %wide.load.5
  %i.bb = fmul nsz <4 x float> %broadcast.splat9, %wide.load14.5
  %i.bc = fadd nsz <4 x float> %i.ba, %i.bb
  %i.bd = fmul nsz <4 x float> %broadcast.splat11, %wide.load15.5
  %i.be = fadd nsz <4 x float> %i.bc, %i.bd
  store <4 x float> %i.be, ptr %i.aw, align 4, !tbaa !159, !alias.scope !4059, !noalias !4070, !llvm.access.group !3890
  %i.bf = fmul nsz <4 x float> %broadcast.splat13, %wide.load16.5
  store <4 x float> %i.bf, ptr %i.az, align 4, !tbaa !159, !alias.scope !4065, !noalias !4073, !llvm.access.group !3890
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %wide.load.6 = load <4 x float>, ptr %i.bg, align 4, !tbaa !159, !alias.scope !4059, !noalias !4070, !llvm.access.group !3890
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 96
  %wide.load14.6 = load <4 x float>, ptr %i.bh, align 4, !tbaa !159, !alias.scope !4061, !noalias !4071, !llvm.access.group !3890
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 96
  %wide.load15.6 = load <4 x float>, ptr %i.bi, align 4, !tbaa !159, !alias.scope !4063, !noalias !4072, !llvm.access.group !3890
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %wide.load16.6 = load <4 x float>, ptr %i.bj, align 4, !tbaa !159, !alias.scope !4065, !noalias !4073, !llvm.access.group !3890
  %i.bk = fmul nsz <4 x float> %broadcast.splat, %wide.load.6
  %i.bl = fmul nsz <4 x float> %broadcast.splat9, %wide.load14.6
  %i.bm = fadd nsz <4 x float> %i.bk, %i.bl
  %i.bn = fmul nsz <4 x float> %broadcast.splat11, %wide.load15.6
  %i.bo = fadd nsz <4 x float> %i.bm, %i.bn
  store <4 x float> %i.bo, ptr %i.bg, align 4, !tbaa !159, !alias.scope !4059, !noalias !4070, !llvm.access.group !3890
  %i.bp = fmul nsz <4 x float> %broadcast.splat13, %wide.load16.6
  store <4 x float> %i.bp, ptr %i.bj, align 4, !tbaa !159, !alias.scope !4065, !noalias !4073, !llvm.access.group !3890
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %wide.load.7 = load <4 x float>, ptr %i.bq, align 4, !tbaa !159, !alias.scope !4059, !noalias !4070, !llvm.access.group !3890
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 112
  %wide.load14.7 = load <4 x float>, ptr %i.br, align 4, !tbaa !159, !alias.scope !4061, !noalias !4071, !llvm.access.group !3890
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 112
  %wide.load15.7 = load <4 x float>, ptr %i.bs, align 4, !tbaa !159, !alias.scope !4063, !noalias !4072, !llvm.access.group !3890
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %wide.load16.7 = load <4 x float>, ptr %i.bt, align 4, !tbaa !159, !alias.scope !4065, !noalias !4073, !llvm.access.group !3890
  %i.bu = fmul nsz <4 x float> %broadcast.splat, %wide.load.7
  %i.bv = fmul nsz <4 x float> %broadcast.splat9, %wide.load14.7
  %i.bw = fadd nsz <4 x float> %i.bu, %i.bv
  %i.bx = fmul nsz <4 x float> %broadcast.splat11, %wide.load15.7
  %i.by = fadd nsz <4 x float> %i.bw, %i.bx
  store <4 x float> %i.by, ptr %i.bq, align 4, !tbaa !159, !alias.scope !4059, !noalias !4070, !llvm.access.group !3890
  %i.bz = fmul nsz <4 x float> %broadcast.splat13, %wide.load16.7
  store <4 x float> %i.bz, ptr %i.bt, align 4, !tbaa !159, !alias.scope !4065, !noalias !4073, !llvm.access.group !3890
  %i.ca = load ptr, ptr %1, align 16, !tbaa !35, !alias.scope !4056, !noalias !4067
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.ca(ptr noundef %0, ptr noundef nonnull %i.cb, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #12, !inline_history !3893
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @f32_linear_xyzw_xxx0x_xxx0x_xxx0x_000x0_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4083)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !22, !alias.scope !4074, !noalias !4085 ; 13 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.21.0.copyload.i = load float, ptr %.sroa.21.0..sroa_idx.i, align 4, !noalias !4087
  %broadcast.splatinsert30 = insertelement <4 x float> poison, float %.sroa.21.0.copyload.i, i64 0
  %broadcast.splat31 = shufflevector <4 x float> %broadcast.splatinsert30, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %.sroa.20.0.copyload.i = load float, ptr %.sroa.20.0..sroa_idx.i, align 4, !noalias !4087
  %broadcast.splatinsert28 = insertelement <4 x float> poison, float %.sroa.20.0.copyload.i, i64 0
  %broadcast.splat29 = shufflevector <4 x float> %broadcast.splatinsert28, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.19.0.copyload.i = load float, ptr %.sroa.19.0..sroa_idx.i, align 4, !noalias !4087
  %broadcast.splatinsert26 = insertelement <4 x float> poison, float %.sroa.19.0.copyload.i, i64 0
  %broadcast.splat27 = shufflevector <4 x float> %broadcast.splatinsert26, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %.sroa.18.0.copyload.i = load float, ptr %.sroa.18.0..sroa_idx.i, align 4, !tbaa !22, !noalias !4087
  %broadcast.splatinsert24 = insertelement <4 x float> poison, float %.sroa.18.0.copyload.i, i64 0
  %broadcast.splat25 = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.13.0.copyload.i = load float, ptr %.sroa.13.0..sroa_idx.i, align 4, !noalias !4087
  %broadcast.splatinsert22 = insertelement <4 x float> poison, float %.sroa.13.0.copyload.i, i64 0
  %broadcast.splat23 = shufflevector <4 x float> %broadcast.splatinsert22, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %.sroa.12.0.copyload.i = load float, ptr %.sroa.12.0..sroa_idx.i, align 4, !noalias !4087
  %broadcast.splatinsert20 = insertelement <4 x float> poison, float %.sroa.12.0.copyload.i, i64 0
  %broadcast.splat21 = shufflevector <4 x float> %broadcast.splatinsert20, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.11.0.copyload.i = load float, ptr %.sroa.11.0..sroa_idx.i, align 4, !noalias !4087
  %broadcast.splatinsert18 = insertelement <4 x float> poison, float %.sroa.11.0.copyload.i, i64 0
end_hunk_0
begin_hunk_1_@f32_linear_xyzw_x0x0x_xxx0x_xx00x_000x0_c:vector.ph
  %i.aj = fmul nsz <4 x float> %broadcast.splat21, %wide.load30.1
  store <4 x float> %i.aj, ptr %i.u, align 4, !tbaa !159, !alias.scope !4101, !noalias !4109, !llvm.access.group !3890
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %wide.load.2 = load <4 x float>, ptr %i.ak, align 4, !tbaa !159, !alias.scope !4095, !noalias !4106, !llvm.access.group !3890 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %wide.load28.2 = load <4 x float>, ptr %i.al, align 4, !tbaa !159, !alias.scope !4097, !noalias !4107, !llvm.access.group !3890 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %wide.load29.2 = load <4 x float>, ptr %i.am, align 4, !tbaa !159, !alias.scope !4099, !noalias !4108, !llvm.access.group !3890 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %wide.load30.2 = load <4 x float>, ptr %i.an, align 4, !tbaa !159, !alias.scope !4101, !noalias !4109, !llvm.access.group !3890
  %i.ao = fmul nsz <4 x float> %broadcast.splat, %wide.load.2
  %i.ap = fadd nsz <4 x float> %broadcast.splat23, %i.ao
  %i.aq = fmul nsz <4 x float> %broadcast.splat9, %wide.load29.2
  %i.ar = fadd nsz <4 x float> %i.ap, %i.aq
  store <4 x float> %i.ar, ptr %i.ak, align 4, !tbaa !159, !alias.scope !4095, !noalias !4106, !llvm.access.group !3890
  %i.as = fmul nsz <4 x float> %broadcast.splat11, %wide.load.2
  %i.at = fadd nsz <4 x float> %broadcast.splat25, %i.as
  %i.au = fmul nsz <4 x float> %broadcast.splat13, %wide.load28.2
  %i.av = fadd nsz <4 x float> %i.at, %i.au
  %i.aw = fmul nsz <4 x float> %broadcast.splat15, %wide.load29.2
  %i.ax = fadd nsz <4 x float> %i.av, %i.aw
  store <4 x float> %i.ax, ptr %i.al, align 4, !tbaa !159, !alias.scope !4097, !noalias !4107, !llvm.access.group !3890
  %i.ay = fmul nsz <4 x float> %broadcast.splat17, %wide.load.2
  %i.az = fadd nsz <4 x float> %broadcast.splat27, %i.ay
  %i.ba = fmul nsz <4 x float> %broadcast.splat19, %wide.load28.2
  %i.bb = fadd nsz <4 x float> %i.az, %i.ba
  store <4 x float> %i.bb, ptr %i.am, align 4, !tbaa !159, !alias.scope !4099, !noalias !4108, !llvm.access.group !3890
  %i.bc = fmul nsz <4 x float> %broadcast.splat21, %wide.load30.2
  store <4 x float> %i.bc, ptr %i.an, align 4, !tbaa !159, !alias.scope !4101, !noalias !4109, !llvm.access.group !3890
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.3 = load <4 x float>, ptr %i.bd, align 4, !tbaa !159, !alias.scope !4095, !noalias !4106, !llvm.access.group !3890 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %wide.load28.3 = load <4 x float>, ptr %i.be, align 4, !tbaa !159, !alias.scope !4097, !noalias !4107, !llvm.access.group !3890 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %wide.load29.3 = load <4 x float>, ptr %i.bf, align 4, !tbaa !159, !alias.scope !4099, !noalias !4108, !llvm.access.group !3890 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %wide.load30.3 = load <4 x float>, ptr %i.bg, align 4, !tbaa !159, !alias.scope !4101, !noalias !4109, !llvm.access.group !3890
  %i.bh = fmul nsz <4 x float> %broadcast.splat, %wide.load.3
  %i.bi = fadd nsz <4 x float> %broadcast.splat23, %i.bh
  %i.bj = fmul nsz <4 x float> %broadcast.splat9, %wide.load29.3
  %i.bk = fadd nsz <4 x float> %i.bi, %i.bj
  store <4 x float> %i.bk, ptr %i.bd, align 4, !tbaa !159, !alias.scope !4095, !noalias !4106, !llvm.access.group !3890
  %i.bl = fmul nsz <4 x float> %broadcast.splat11, %wide.load.3
  %i.bm = fadd nsz <4 x float> %broadcast.splat25, %i.bl
  %i.bn = fmul nsz <4 x float> %broadcast.splat13, %wide.load28.3
  %i.bo = fadd nsz <4 x float> %i.bm, %i.bn
  %i.bp = fmul nsz <4 x float> %broadcast.splat15, %wide.load29.3
  %i.bq = fadd nsz <4 x float> %i.bo, %i.bp
  store <4 x float> %i.bq, ptr %i.be, align 4, !tbaa !159, !alias.scope !4097, !noalias !4107, !llvm.access.group !3890
  %i.br = fmul nsz <4 x float> %broadcast.splat17, %wide.load.3
  %i.bs = fadd nsz <4 x float> %broadcast.splat27, %i.br
  %i.bt = fmul nsz <4 x float> %broadcast.splat19, %wide.load28.3
  %i.bu = fadd nsz <4 x float> %i.bs, %i.bt
  store <4 x float> %i.bu, ptr %i.bf, align 4, !tbaa !159, !alias.scope !4099, !noalias !4108, !llvm.access.group !3890
  %i.bv = fmul nsz <4 x float> %broadcast.splat21, %wide.load30.3
  store <4 x float> %i.bv, ptr %i.bg, align 4, !tbaa !159, !alias.scope !4101, !noalias !4109, !llvm.access.group !3890
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %wide.load.4 = load <4 x float>, ptr %i.bw, align 4, !tbaa !159, !alias.scope !4095, !noalias !4106, !llvm.access.group !3890 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %wide.load28.4 = load <4 x float>, ptr %i.bx, align 4, !tbaa !159, !alias.scope !4097, !noalias !4107, !llvm.access.group !3890 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %wide.load29.4 = load <4 x float>, ptr %i.by, align 4, !tbaa !159, !alias.scope !4099, !noalias !4108, !llvm.access.group !3890 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %wide.load30.4 = load <4 x float>, ptr %i.bz, align 4, !tbaa !159, !alias.scope !4101, !noalias !4109, !llvm.access.group !3890
  %i.ca = fmul nsz <4 x float> %broadcast.splat, %wide.load.4
  %i.cb = fadd nsz <4 x float> %broadcast.splat23, %i.ca
  %i.cc = fmul nsz <4 x float> %broadcast.splat9, %wide.load29.4
  %i.cd = fadd nsz <4 x float> %i.cb, %i.cc
  store <4 x float> %i.cd, ptr %i.bw, align 4, !tbaa !159, !alias.scope !4095, !noalias !4106, !llvm.access.group !3890
  %i.ce = fmul nsz <4 x float> %broadcast.splat11, %wide.load.4
  %i.cf = fadd nsz <4 x float> %broadcast.splat25, %i.ce
  %i.cg = fmul nsz <4 x float> %broadcast.splat13, %wide.load28.4
  %i.ch = fadd nsz <4 x float> %i.cf, %i.cg
  %i.ci = fmul nsz <4 x float> %broadcast.splat15, %wide.load29.4
  %i.cj = fadd nsz <4 x float> %i.ch, %i.ci
  store <4 x float> %i.cj, ptr %i.bx, align 4, !tbaa !159, !alias.scope !4097, !noalias !4107, !llvm.access.group !3890
  %i.ck = fmul nsz <4 x float> %broadcast.splat17, %wide.load.4
  %i.cl = fadd nsz <4 x float> %broadcast.splat27, %i.ck
  %i.cm = fmul nsz <4 x float> %broadcast.splat19, %wide.load28.4
  %i.cn = fadd nsz <4 x float> %i.cl, %i.cm
  store <4 x float> %i.cn, ptr %i.by, align 4, !tbaa !159, !alias.scope !4099, !noalias !4108, !llvm.access.group !3890
  %i.co = fmul nsz <4 x float> %broadcast.splat21, %wide.load30.4
  store <4 x float> %i.co, ptr %i.bz, align 4, !tbaa !159, !alias.scope !4101, !noalias !4109, !llvm.access.group !3890
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.load.5 = load <4 x float>, ptr %i.cp, align 4, !tbaa !159, !alias.scope !4095, !noalias !4106, !llvm.access.group !3890 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %wide.load28.5 = load <4 x float>, ptr %i.cq, align 4, !tbaa !159, !alias.scope !4097, !noalias !4107, !llvm.access.group !3890 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %wide.load29.5 = load <4 x float>, ptr %i.cr, align 4, !tbaa !159, !alias.scope !4099, !noalias !4108, !llvm.access.group !3890 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %wide.load30.5 = load <4 x float>, ptr %i.cs, align 4, !tbaa !159, !alias.scope !4101, !noalias !4109, !llvm.access.group !3890
  %i.ct = fmul nsz <4 x float> %broadcast.splat, %wide.load.5
  %i.cu = fadd nsz <4 x float> %broadcast.splat23, %i.ct
  %i.cv = fmul nsz <4 x float> %broadcast.splat9, %wide.load29.5
  %i.cw = fadd nsz <4 x float> %i.cu, %i.cv
  store <4 x float> %i.cw, ptr %i.cp, align 4, !tbaa !159, !alias.scope !4095, !noalias !4106, !llvm.access.group !3890
  %i.cx = fmul nsz <4 x float> %broadcast.splat11, %wide.load.5
  %i.cy = fadd nsz <4 x float> %broadcast.splat25, %i.cx
  %i.cz = fmul nsz <4 x float> %broadcast.splat13, %wide.load28.5
  %i.da = fadd nsz <4 x float> %i.cy, %i.cz
  %i.db = fmul nsz <4 x float> %broadcast.splat15, %wide.load29.5
  %i.dc = fadd nsz <4 x float> %i.da, %i.db
  store <4 x float> %i.dc, ptr %i.cq, align 4, !tbaa !159, !alias.scope !4097, !noalias !4107, !llvm.access.group !3890
  %i.dd = fmul nsz <4 x float> %broadcast.splat17, %wide.load.5
  %i.de = fadd nsz <4 x float> %broadcast.splat27, %i.dd
  %i.df = fmul nsz <4 x float> %broadcast.splat19, %wide.load28.5
  %i.dg = fadd nsz <4 x float> %i.de, %i.df
  store <4 x float> %i.dg, ptr %i.cr, align 4, !tbaa !159, !alias.scope !4099, !noalias !4108, !llvm.access.group !3890
  %i.dh = fmul nsz <4 x float> %broadcast.splat21, %wide.load30.5
  store <4 x float> %i.dh, ptr %i.cs, align 4, !tbaa !159, !alias.scope !4101, !noalias !4109, !llvm.access.group !3890
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %wide.load.6 = load <4 x float>, ptr %i.di, align 4, !tbaa !159, !alias.scope !4095, !noalias !4106, !llvm.access.group !3890 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %wide.load28.6 = load <4 x float>, ptr %i.dj, align 4, !tbaa !159, !alias.scope !4097, !noalias !4107, !llvm.access.group !3890 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %wide.load29.6 = load <4 x float>, ptr %i.dk, align 4, !tbaa !159, !alias.scope !4099, !noalias !4108, !llvm.access.group !3890 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %wide.load30.6 = load <4 x float>, ptr %i.dl, align 4, !tbaa !159, !alias.scope !4101, !noalias !4109, !llvm.access.group !3890
  %i.dm = fmul nsz <4 x float> %broadcast.splat, %wide.load.6
  %i.dn = fadd nsz <4 x float> %broadcast.splat23, %i.dm
  %i.do = fmul nsz <4 x float> %broadcast.splat9, %wide.load29.6
  %i.dp = fadd nsz <4 x float> %i.dn, %i.do
  store <4 x float> %i.dp, ptr %i.di, align 4, !tbaa !159, !alias.scope !4095, !noalias !4106, !llvm.access.group !3890
  %i.dq = fmul nsz <4 x float> %broadcast.splat11, %wide.load.6
  %i.dr = fadd nsz <4 x float> %broadcast.splat25, %i.dq
  %i.ds = fmul nsz <4 x float> %broadcast.splat13, %wide.load28.6
  %i.dt = fadd nsz <4 x float> %i.dr, %i.ds
  %i.du = fmul nsz <4 x float> %broadcast.splat15, %wide.load29.6
  %i.dv = fadd nsz <4 x float> %i.dt, %i.du
  store <4 x float> %i.dv, ptr %i.dj, align 4, !tbaa !159, !alias.scope !4097, !noalias !4107, !llvm.access.group !3890
  %i.dw = fmul nsz <4 x float> %broadcast.splat17, %wide.load.6
  %i.dx = fadd nsz <4 x float> %broadcast.splat27, %i.dw
  %i.dy = fmul nsz <4 x float> %broadcast.splat19, %wide.load28.6
  %i.dz = fadd nsz <4 x float> %i.dx, %i.dy
  store <4 x float> %i.dz, ptr %i.dk, align 4, !tbaa !159, !alias.scope !4099, !noalias !4108, !llvm.access.group !3890
  %i.ea = fmul nsz <4 x float> %broadcast.splat21, %wide.load30.6
  store <4 x float> %i.ea, ptr %i.dl, align 4, !tbaa !159, !alias.scope !4101, !noalias !4109, !llvm.access.group !3890
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %wide.load.7 = load <4 x float>, ptr %i.eb, align 4, !tbaa !159, !alias.scope !4095, !noalias !4106, !llvm.access.group !3890 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %wide.load28.7 = load <4 x float>, ptr %i.ec, align 4, !tbaa !159, !alias.scope !4097, !noalias !4107, !llvm.access.group !3890 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %wide.load29.7 = load <4 x float>, ptr %i.ed, align 4, !tbaa !159, !alias.scope !4099, !noalias !4108, !llvm.access.group !3890 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %wide.load30.7 = load <4 x float>, ptr %i.ee, align 4, !tbaa !159, !alias.scope !4101, !noalias !4109, !llvm.access.group !3890
  %i.ef = fmul nsz <4 x float> %broadcast.splat, %wide.load.7
  %i.eg = fadd nsz <4 x float> %broadcast.splat23, %i.ef
  %i.eh = fmul nsz <4 x float> %broadcast.splat9, %wide.load29.7
  %i.ei = fadd nsz <4 x float> %i.eg, %i.eh
  store <4 x float> %i.ei, ptr %i.eb, align 4, !tbaa !159, !alias.scope !4095, !noalias !4106, !llvm.access.group !3890
  %i.ej = fmul nsz <4 x float> %broadcast.splat11, %wide.load.7
  %i.ek = fadd nsz <4 x float> %broadcast.splat25, %i.ej
  %i.el = fmul nsz <4 x float> %broadcast.splat13, %wide.load28.7
  %i.em = fadd nsz <4 x float> %i.ek, %i.el
  %i.en = fmul nsz <4 x float> %broadcast.splat15, %wide.load29.7
  %i.eo = fadd nsz <4 x float> %i.em, %i.en
  store <4 x float> %i.eo, ptr %i.ec, align 4, !tbaa !159, !alias.scope !4097, !noalias !4107, !llvm.access.group !3890
  %i.ep = fmul nsz <4 x float> %broadcast.splat17, %wide.load.7
  %i.eq = fadd nsz <4 x float> %broadcast.splat27, %i.ep
  %i.er = fmul nsz <4 x float> %broadcast.splat19, %wide.load28.7
  %i.es = fadd nsz <4 x float> %i.eq, %i.er
  store <4 x float> %i.es, ptr %i.ed, align 4, !tbaa !159, !alias.scope !4099, !noalias !4108, !llvm.access.group !3890
  %i.et = fmul nsz <4 x float> %broadcast.splat21, %wide.load30.7
  store <4 x float> %i.et, ptr %i.ee, align 4, !tbaa !159, !alias.scope !4101, !noalias !4109, !llvm.access.group !3890
  %i.eu = load ptr, ptr %1, align 16, !tbaa !35, !alias.scope !4092, !noalias !4103
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.eu(ptr noundef %0, ptr noundef nonnull %i.ev, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #12, !inline_history !3893
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @f32_linear_xyzw_x0000_0x000_00x00_000x0_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4119)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !22, !alias.scope !4110, !noalias !4121 ; 4 uses
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %.sroa.18.0.copyload.i = load float, ptr %.sroa.18.0..sroa_idx.i, align 4, !tbaa !22, !noalias !4123
  %broadcast.splatinsert12 = insertelement <4 x float> poison, float %.sroa.18.0.copyload.i, i64 0
  %broadcast.splat13 = shufflevector <4 x float> %broadcast.splatinsert12, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.13.0.copyload.i = load float, ptr %.sroa.13.0..sroa_idx.i, align 4, !noalias !4123
  %broadcast.splatinsert10 = insertelement <4 x float> poison, float %.sroa.13.0.copyload.i, i64 0
  %broadcast.splat11 = shufflevector <4 x float> %broadcast.splatinsert10, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4, !noalias !4123
  %broadcast.splatinsert8 = insertelement <4 x float> poison, float %.sroa.8.0.copyload.i, i64 0
  %broadcast.splat9 = shufflevector <4 x float> %broadcast.splatinsert8, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.0.0.copyload.i = load float, ptr %i.b, align 4, !noalias !4123
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.0.0.copyload.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x float>, ptr %2, align 4, !tbaa !159, !alias.scope !4113, !noalias !4124, !llvm.access.group !3890
  %wide.load14 = load <4 x float>, ptr %3, align 4, !tbaa !159, !alias.scope !4115, !noalias !4125, !llvm.access.group !3890
  %wide.load15 = load <4 x float>, ptr %4, align 4, !tbaa !159, !alias.scope !4117, !noalias !4126, !llvm.access.group !3890
  %wide.load16 = load <4 x float>, ptr %5, align 4, !tbaa !159, !alias.scope !4119, !noalias !4127, !llvm.access.group !3890
  %i.c = fmul nsz <4 x float> %broadcast.splat, %wide.load
  store <4 x float> %i.c, ptr %2, align 4, !tbaa !159, !alias.scope !4113, !noalias !4124, !llvm.access.group !3890
  %i.d = fmul nsz <4 x float> %broadcast.splat9, %wide.load14
  store <4 x float> %i.d, ptr %3, align 4, !tbaa !159, !alias.scope !4115, !noalias !4125, !llvm.access.group !3890
  %i.e = fmul nsz <4 x float> %broadcast.splat11, %wide.load15
  store <4 x float> %i.e, ptr %4, align 4, !tbaa !159, !alias.scope !4117, !noalias !4126, !llvm.access.group !3890
  %i.f = fmul nsz <4 x float> %broadcast.splat13, %wide.load16
  store <4 x float> %i.f, ptr %5, align 4, !tbaa !159, !alias.scope !4119, !noalias !4127, !llvm.access.group !3890
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.g, align 4, !tbaa !159, !alias.scope !4113, !noalias !4124, !llvm.access.group !3890
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %wide.load14.1 = load <4 x float>, ptr %i.h, align 4, !tbaa !159, !alias.scope !4115, !noalias !4125, !llvm.access.group !3890
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %wide.load15.1 = load <4 x float>, ptr %i.i, align 4, !tbaa !159, !alias.scope !4117, !noalias !4126, !llvm.access.group !3890
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %wide.load16.1 = load <4 x float>, ptr %i.j, align 4, !tbaa !159, !alias.scope !4119, !noalias !4127, !llvm.access.group !3890
  %i.k = fmul nsz <4 x float> %broadcast.splat, %wide.load.1
  store <4 x float> %i.k, ptr %i.g, align 4, !tbaa !159, !alias.scope !4113, !noalias !4124, !llvm.access.group !3890
  %i.l = fmul nsz <4 x float> %broadcast.splat9, %wide.load14.1
  store <4 x float> %i.l, ptr %i.h, align 4, !tbaa !159, !alias.scope !4115, !noalias !4125, !llvm.access.group !3890
  %i.m = fmul nsz <4 x float> %broadcast.splat11, %wide.load15.1
  store <4 x float> %i.m, ptr %i.i, align 4, !tbaa !159, !alias.scope !4117, !noalias !4126, !llvm.access.group !3890
  %i.n = fmul nsz <4 x float> %broadcast.splat13, %wide.load16.1
  store <4 x float> %i.n, ptr %i.j, align 4, !tbaa !159, !alias.scope !4119, !noalias !4127, !llvm.access.group !3890
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %wide.load.2 = load <4 x float>, ptr %i.o, align 4, !tbaa !159, !alias.scope !4113, !noalias !4124, !llvm.access.group !3890
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %wide.load14.2 = load <4 x float>, ptr %i.p, align 4, !tbaa !159, !alias.scope !4115, !noalias !4125, !llvm.access.group !3890
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %wide.load15.2 = load <4 x float>, ptr %i.q, align 4, !tbaa !159, !alias.scope !4117, !noalias !4126, !llvm.access.group !3890
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %wide.load16.2 = load <4 x float>, ptr %i.r, align 4, !tbaa !159, !alias.scope !4119, !noalias !4127, !llvm.access.group !3890
  %i.s = fmul nsz <4 x float> %broadcast.splat, %wide.load.2
  store <4 x float> %i.s, ptr %i.o, align 4, !tbaa !159, !alias.scope !4113, !noalias !4124, !llvm.access.group !3890
  %i.t = fmul nsz <4 x float> %broadcast.splat9, %wide.load14.2
  store <4 x float> %i.t, ptr %i.p, align 4, !tbaa !159, !alias.scope !4115, !noalias !4125, !llvm.access.group !3890
  %i.u = fmul nsz <4 x float> %broadcast.splat11, %wide.load15.2
  store <4 x float> %i.u, ptr %i.q, align 4, !tbaa !159, !alias.scope !4117, !noalias !4126, !llvm.access.group !3890
  %i.v = fmul nsz <4 x float> %broadcast.splat13, %wide.load16.2
  store <4 x float> %i.v, ptr %i.r, align 4, !tbaa !159, !alias.scope !4119, !noalias !4127, !llvm.access.group !3890
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.3 = load <4 x float>, ptr %i.w, align 4, !tbaa !159, !alias.scope !4113, !noalias !4124, !llvm.access.group !3890
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %wide.load14.3 = load <4 x float>, ptr %i.x, align 4, !tbaa !159, !alias.scope !4115, !noalias !4125, !llvm.access.group !3890
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %wide.load15.3 = load <4 x float>, ptr %i.y, align 4, !tbaa !159, !alias.scope !4117, !noalias !4126, !llvm.access.group !3890
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %wide.load16.3 = load <4 x float>, ptr %i.z, align 4, !tbaa !159, !alias.scope !4119, !noalias !4127, !llvm.access.group !3890
  %i.aa = fmul nsz <4 x float> %broadcast.splat, %wide.load.3
  store <4 x float> %i.aa, ptr %i.w, align 4, !tbaa !159, !alias.scope !4113, !noalias !4124, !llvm.access.group !3890
  %i.ab = fmul nsz <4 x float> %broadcast.splat9, %wide.load14.3
  store <4 x float> %i.ab, ptr %i.x, align 4, !tbaa !159, !alias.scope !4115, !noalias !4125, !llvm.access.group !3890
  %i.ac = fmul nsz <4 x float> %broadcast.splat11, %wide.load15.3
  store <4 x float> %i.ac, ptr %i.y, align 4, !tbaa !159, !alias.scope !4117, !noalias !4126, !llvm.access.group !3890
  %i.ad = fmul nsz <4 x float> %broadcast.splat13, %wide.load16.3
  store <4 x float> %i.ad, ptr %i.z, align 4, !tbaa !159, !alias.scope !4119, !noalias !4127, !llvm.access.group !3890
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %wide.load.4 = load <4 x float>, ptr %i.ae, align 4, !tbaa !159, !alias.scope !4113, !noalias !4124, !llvm.access.group !3890
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %wide.load14.4 = load <4 x float>, ptr %i.af, align 4, !tbaa !159, !alias.scope !4115, !noalias !4125, !llvm.access.group !3890
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %wide.load15.4 = load <4 x float>, ptr %i.ag, align 4, !tbaa !159, !alias.scope !4117, !noalias !4126, !llvm.access.group !3890
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %wide.load16.4 = load <4 x float>, ptr %i.ah, align 4, !tbaa !159, !alias.scope !4119, !noalias !4127, !llvm.access.group !3890
  %i.ai = fmul nsz <4 x float> %broadcast.splat, %wide.load.4
  store <4 x float> %i.ai, ptr %i.ae, align 4, !tbaa !159, !alias.scope !4113, !noalias !4124, !llvm.access.group !3890
  %i.aj = fmul nsz <4 x float> %broadcast.splat9, %wide.load14.4
  store <4 x float> %i.aj, ptr %i.af, align 4, !tbaa !159, !alias.scope !4115, !noalias !4125, !llvm.access.group !3890
  %i.ak = fmul nsz <4 x float> %broadcast.splat11, %wide.load15.4
  store <4 x float> %i.ak, ptr %i.ag, align 4, !tbaa !159, !alias.scope !4117, !noalias !4126, !llvm.access.group !3890
  %i.al = fmul nsz <4 x float> %broadcast.splat13, %wide.load16.4
  store <4 x float> %i.al, ptr %i.ah, align 4, !tbaa !159, !alias.scope !4119, !noalias !4127, !llvm.access.group !3890
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.load.5 = load <4 x float>, ptr %i.am, align 4, !tbaa !159, !alias.scope !4113, !noalias !4124, !llvm.access.group !3890
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %wide.load14.5 = load <4 x float>, ptr %i.an, align 4, !tbaa !159, !alias.scope !4115, !noalias !4125, !llvm.access.group !3890
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %wide.load15.5 = load <4 x float>, ptr %i.ao, align 4, !tbaa !159, !alias.scope !4117, !noalias !4126, !llvm.access.group !3890
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %wide.load16.5 = load <4 x float>, ptr %i.ap, align 4, !tbaa !159, !alias.scope !4119, !noalias !4127, !llvm.access.group !3890
  %i.aq = fmul nsz <4 x float> %broadcast.splat, %wide.load.5
  store <4 x float> %i.aq, ptr %i.am, align 4, !tbaa !159, !alias.scope !4113, !noalias !4124, !llvm.access.group !3890
  %i.ar = fmul nsz <4 x float> %broadcast.splat9, %wide.load14.5
  store <4 x float> %i.ar, ptr %i.an, align 4, !tbaa !159, !alias.scope !4115, !noalias !4125, !llvm.access.group !3890
  %i.as = fmul nsz <4 x float> %broadcast.splat11, %wide.load15.5
  store <4 x float> %i.as, ptr %i.ao, align 4, !tbaa !159, !alias.scope !4117, !noalias !4126, !llvm.access.group !3890
  %i.at = fmul nsz <4 x float> %broadcast.splat13, %wide.load16.5
  store <4 x float> %i.at, ptr %i.ap, align 4, !tbaa !159, !alias.scope !4119, !noalias !4127, !llvm.access.group !3890
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %wide.load.6 = load <4 x float>, ptr %i.au, align 4, !tbaa !159, !alias.scope !4113, !noalias !4124, !llvm.access.group !3890
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %wide.load14.6 = load <4 x float>, ptr %i.av, align 4, !tbaa !159, !alias.scope !4115, !noalias !4125, !llvm.access.group !3890
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %wide.load15.6 = load <4 x float>, ptr %i.aw, align 4, !tbaa !159, !alias.scope !4117, !noalias !4126, !llvm.access.group !3890
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %wide.load16.6 = load <4 x float>, ptr %i.ax, align 4, !tbaa !159, !alias.scope !4119, !noalias !4127, !llvm.access.group !3890
  %i.ay = fmul nsz <4 x float> %broadcast.splat, %wide.load.6
  store <4 x float> %i.ay, ptr %i.au, align 4, !tbaa !159, !alias.scope !4113, !noalias !4124, !llvm.access.group !3890
  %i.az = fmul nsz <4 x float> %broadcast.splat9, %wide.load14.6
  store <4 x float> %i.az, ptr %i.av, align 4, !tbaa !159, !alias.scope !4115, !noalias !4125, !llvm.access.group !3890
  %i.ba = fmul nsz <4 x float> %broadcast.splat11, %wide.load15.6
  store <4 x float> %i.ba, ptr %i.aw, align 4, !tbaa !159, !alias.scope !4117, !noalias !4126, !llvm.access.group !3890
  %i.bb = fmul nsz <4 x float> %broadcast.splat13, %wide.load16.6
  store <4 x float> %i.bb, ptr %i.ax, align 4, !tbaa !159, !alias.scope !4119, !noalias !4127, !llvm.access.group !3890
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %wide.load.7 = load <4 x float>, ptr %i.bc, align 4, !tbaa !159, !alias.scope !4113, !noalias !4124, !llvm.access.group !3890
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %wide.load14.7 = load <4 x float>, ptr %i.bd, align 4, !tbaa !159, !alias.scope !4115, !noalias !4125, !llvm.access.group !3890
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %wide.load15.7 = load <4 x float>, ptr %i.be, align 4, !tbaa !159, !alias.scope !4117, !noalias !4126, !llvm.access.group !3890
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %wide.load16.7 = load <4 x float>, ptr %i.bf, align 4, !tbaa !159, !alias.scope !4119, !noalias !4127, !llvm.access.group !3890
  %i.bg = fmul nsz <4 x float> %broadcast.splat, %wide.load.7
  store <4 x float> %i.bg, ptr %i.bc, align 4, !tbaa !159, !alias.scope !4113, !noalias !4124, !llvm.access.group !3890
  %i.bh = fmul nsz <4 x float> %broadcast.splat9, %wide.load14.7
  store <4 x float> %i.bh, ptr %i.bd, align 4, !tbaa !159, !alias.scope !4115, !noalias !4125, !llvm.access.group !3890
  %i.bi = fmul nsz <4 x float> %broadcast.splat11, %wide.load15.7
  store <4 x float> %i.bi, ptr %i.be, align 4, !tbaa !159, !alias.scope !4117, !noalias !4126, !llvm.access.group !3890
  %i.bj = fmul nsz <4 x float> %broadcast.splat13, %wide.load16.7
  store <4 x float> %i.bj, ptr %i.bf, align 4, !tbaa !159, !alias.scope !4119, !noalias !4127, !llvm.access.group !3890
  %i.bk = load ptr, ptr %1, align 16, !tbaa !35, !alias.scope !4110, !noalias !4121
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.bk(ptr noundef %0, ptr noundef nonnull %i.bl, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #12, !inline_history !3893
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @f32_dither_x_0_16x16_c(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) #0 {
dither_F32.exit:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4133)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !22, !alias.scope !4131, !noalias !4135
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = load i32, ptr %i.c, align 4, !tbaa !33, !alias.scope !4128, !noalias !4139
  %i.e = shl i32 %i.d, 5
  %i.f = and i32 %i.e, 480
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.g ; 8 uses
  %i.i = load <4 x float>, ptr %i.h, align 4, !tbaa !159, !noalias !4140
  %i.j = load <4 x float>, ptr %2, align 4, !tbaa !159, !alias.scope !4133, !noalias !4141
  %i.k = fadd nsz <4 x float> %i.i, %i.j
  store <4 x float> %i.k, ptr %2, align 4, !tbaa !159, !alias.scope !4133, !noalias !4141
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = load <4 x float>, ptr %i.l, align 4, !tbaa !159, !noalias !4140
  %i.o = load <4 x float>, ptr %i.m, align 4, !tbaa !159, !alias.scope !4133, !noalias !4141
  %i.p = fadd nsz <4 x float> %i.n, %i.o
  store <4 x float> %i.p, ptr %i.m, align 4, !tbaa !159, !alias.scope !4133, !noalias !4141
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.s = load <4 x float>, ptr %i.q, align 4, !tbaa !159, !noalias !4140
  %i.t = load <4 x float>, ptr %i.r, align 4, !tbaa !159, !alias.scope !4133, !noalias !4141
  %i.u = fadd nsz <4 x float> %i.s, %i.t
  store <4 x float> %i.u, ptr %i.r, align 4, !tbaa !159, !alias.scope !4133, !noalias !4141
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.x = load <4 x float>, ptr %i.v, align 4, !tbaa !159, !noalias !4140
  %i.y = load <4 x float>, ptr %i.w, align 4, !tbaa !159, !alias.scope !4133, !noalias !4141
  %i.z = fadd nsz <4 x float> %i.x, %i.y
  store <4 x float> %i.z, ptr %i.w, align 4, !tbaa !159, !alias.scope !4133, !noalias !4141
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ac = load <4 x float>, ptr %i.aa, align 4, !tbaa !159, !noalias !4140
  %i.ad = load <4 x float>, ptr %i.ab, align 4, !tbaa !159, !alias.scope !4133, !noalias !4141
  %i.ae = fadd nsz <4 x float> %i.ac, %i.ad
  store <4 x float> %i.ae, ptr %i.ab, align 4, !tbaa !159, !alias.scope !4133, !noalias !4141
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ah = load <4 x float>, ptr %i.af, align 4, !tbaa !159, !noalias !4140
  %i.ai = load <4 x float>, ptr %i.ag, align 4, !tbaa !159, !alias.scope !4133, !noalias !4141
  %i.aj = fadd nsz <4 x float> %i.ah, %i.ai
  store <4 x float> %i.aj, ptr %i.ag, align 4, !tbaa !159, !alias.scope !4133, !noalias !4141
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.am = load <4 x float>, ptr %i.ak, align 4, !tbaa !159, !noalias !4140
  %i.an = load <4 x float>, ptr %i.al, align 4, !tbaa !159, !alias.scope !4133, !noalias !4141
  %i.ao = fadd nsz <4 x float> %i.am, %i.an
  store <4 x float> %i.ao, ptr %i.al, align 4, !tbaa !159, !alias.scope !4133, !noalias !4141
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ar = load <4 x float>, ptr %i.ap, align 4, !tbaa !159, !noalias !4140
  %i.as = load <4 x float>, ptr %i.aq, align 4, !tbaa !159, !alias.scope !4133, !noalias !4141
  %i.at = fadd nsz <4 x float> %i.ar, %i.as
  store <4 x float> %i.at, ptr %i.aq, align 4, !tbaa !159, !alias.scope !4133, !noalias !4141
  %i.au = load ptr, ptr %1, align 16, !tbaa !35, !alias.scope !4131, !noalias !4135
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void %i.au(ptr noundef %0, ptr noundef nonnull %i.av, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #12, !inline_history !4142
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @setup_dither_F32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 1, !tbaa !4143  ; 2 uses
  %i.e = zext nneg i8 %i.d to i32                 ; 2 uses
  %i.f = shl nuw i32 1, %i.e                      ; 8 uses
  %i.g = icmp sgt i32 %i.f, 31
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = tail call ptr @av_refstruct_ref(ptr noundef %i.i) #12
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.j, ptr %i.k, align 16, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @ff_op_priv_unref, ptr %i.l, align 16, !tbaa !173
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.n = tail call i32 @ff_sws_dither_height(ptr noundef nonnull %i.m) #12 ; 4 uses
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 7
  %i.q = tail call noalias ptr @av_malloc(i64 noundef %i.p) #12 ; 5 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.q, ptr %i.s, align 16, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr @ff_op_priv_free, ptr %i.t, align 16, !tbaa !173
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.lr.ph50.split.us, label %.loopexit

.lr.ph50.split.us:                                ; preds = %bb.d
  %.not51 = icmp eq i8 %i.d, 31
  br i1 %.not51, label %.preheader.us.preheader, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph50.split.us
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %smax = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1)
  %i.w = sext i32 %i.f to i64
  %wide.trip.count62 = zext nneg i32 %i.n to i64
  %.pre.pre = load ptr, ptr %i.v, align 8, !tbaa !22 ; 2 uses
  %.pre.pre79 = ptrtoaddr ptr %.pre.pre to i64
  %wide.trip.count = zext nneg i32 %smax to i64   ; 3 uses
  %min.iters.check = icmp slt i32 %i.f, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 2 uses
  %i.x = icmp eq i64 %n.vec, 8
  %i.y = icmp eq i64 %n.vec, 16
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.z = icmp slt i32 %i.f, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod83 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us.us

.preheader.us.preheader:                          ; preds = %.lr.ph50.split.us
  %i.aa = sext i32 %i.f to i64
  %wide.trip.count72 = zext nneg i32 %i.n to i64
  br label %.preheader.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.us.us
  %indvars.iv59 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next60, %._crit_edge.us.us ] ; 4 uses
  %.idx = shl nuw nsw i64 %indvars.iv59, 7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx ; 13 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv59 to i32
  %i.ad = shl i32 %i.ac, %i.e
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.pre.pre, i64 %i.ae ; 11 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us.us
  br i1 %i.z, label %scalar.ph.epil.preheader, label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph.us.us
  %i.af = shl nuw nsw i64 %indvars.iv59, 7
  %i.ag = shl nsw i64 %i.ae, 2
  %i.ah = add i64 %i.af, %i.r
  %i.ai = add i64 %i.ag, %.pre.pre79
  %i.aj = sub i64 %i.ai, %i.ah
  %diff.check = icmp ugt i64 %i.aj, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %i.ak = getelementptr i8, ptr %invariant.gep, i64 16
  %wide.load = load <4 x float>, ptr %invariant.gep, align 4, !tbaa !22
  %wide.load80 = load <4 x float>, ptr %i.ak, align 4, !tbaa !22
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <4 x float> %wide.load, ptr %i.ab, align 4, !tbaa !159
  store <4 x float> %wide.load80, ptr %i.al, align 4, !tbaa !159
  br i1 %i.x, label %..preheader_crit_edge.us.us.preheader, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %i.am = getelementptr i8, ptr %invariant.gep, i64 32
  %i.an = getelementptr i8, ptr %invariant.gep, i64 48
  %wide.load.1 = load <4 x float>, ptr %i.am, align 4, !tbaa !22
  %wide.load80.1 = load <4 x float>, ptr %i.an, align 4, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store <4 x float> %wide.load.1, ptr %i.ao, align 4, !tbaa !159
  store <4 x float> %wide.load80.1, ptr %i.ap, align 4, !tbaa !159
  br i1 %i.y, label %..preheader_crit_edge.us.us.preheader, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.aq = getelementptr i8, ptr %invariant.gep, i64 64
  %i.ar = getelementptr i8, ptr %invariant.gep, i64 80
  %wide.load.2 = load <4 x float>, ptr %i.aq, align 4, !tbaa !22
  %wide.load80.2 = load <4 x float>, ptr %i.ar, align 4, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  store <4 x float> %wide.load.2, ptr %i.as, align 4, !tbaa !159
  store <4 x float> %wide.load80.2, ptr %i.at, align 4, !tbaa !159
  br label %..preheader_crit_edge.us.us.preheader

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
end_hunk_1
