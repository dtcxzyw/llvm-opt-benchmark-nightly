Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/huffman?download=true
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kReverseBits = internal unnamed_addr constant [256 x i8] c"\00\80@\C0 \A0`\E0\10\90P\D00\B0p\F0\08\88H\C8(\A8h\E8\18\98X\D88\B8x\F8\04\84D\C4$\A4d\E4\14\94T\D44\B4t\F4\0C\8CL\CC,\ACl\EC\1C\9C\\\DC<\BC|\FC\02\82B\C2\22\A2b\E2\12\92R\D22\B2r\F2\0A\8AJ\CA*\AAj\EA\1A\9AZ\DA:\BAz\FA\06\86F\C6&\A6f\E6\16\96V\D66\B6v\F6\0E\8EN\CE.\AEn\EE\1E\9E^\DE>\BE~\FE\01\81A\C1!\A1a\E1\11\91Q\D11\B1q\F1\09\89I\C9)\A9i\E9\19\99Y\D99\B9y\F9\05\85E\C5%\A5e\E5\15\95U\D55\B5u\F5\0D\8DM\CD-\ADm\ED\1D\9D]\DD=\BD}\FD\03\83C\C3#\A3c\E3\13\93S\D33\B3s\F3\0B\8BK\CB+\ABk\EB\1B\9B[\DB;\BB{\FB\07\87G\C7'\A7g\E7\17\97W\D77\B7w\F7\0F\8FO\CF/\AFo\EF\1F\9F_\DF?\BF\7F\FF", code_model "small", align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @BrotliBuildCodeLengthsHuffmanTable(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [18 x i32], align 16              ; 32 uses
  %i.b = alloca [6 x i32], align 16               ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !9
  %3 = zext i16 %i.d to i32
  %4 = add nsw i32 %3, -1                         ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %4, ptr %5, align 4, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !9
  %i.g = zext i16 %i.f to i32
  %i.h = add nsw i32 %4, %i.g                     ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.h, ptr %6, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !9
  %i.k = zext i16 %i.j to i32
  %i.l = add nsw i32 %i.h, %i.k                   ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.l, ptr %7, align 4, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !9
  %i.o = zext i16 %i.n to i32
  %i.p = add nsw i32 %i.l, %i.o                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.p, ptr %i.q, align 16, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.s = load i16, ptr %i.r, align 2, !tbaa !9
  %i.t = zext i16 %i.s to i32
  %i.u = add nsw i32 %i.p, %i.t
  %8 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.u, ptr %8, align 4, !tbaa !13
  store i32 17, ptr %i.b, align 16, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.w = load i8, ptr %i.v, align 1, !tbaa !10
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !13   ; 2 uses
  %i.aa = add nsw i32 %i.z, -1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !13
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ab
  store i32 17, ptr %i.ac, align 4, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !10
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !13 ; 2 uses
  %i.ai = add nsw i32 %i.ah, -1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !13
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.aj
  store i32 16, ptr %i.ak, align 4, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.am = load i8, ptr %i.al, align 1, !tbaa !10
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !13 ; 2 uses
  %i.aq = add nsw i32 %i.ap, -1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !13
  %i.ar = sext i32 %i.ap to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ar
  store i32 15, ptr %i.as, align 4, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.au = load i8, ptr %i.at, align 1, !tbaa !10
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !13 ; 2 uses
  %i.ay = add nsw i32 %i.ax, -1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !13
  %i.az = sext i32 %i.ax to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.az
  store i32 14, ptr %i.ba, align 4, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !10
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !13 ; 2 uses
  %i.bg = add nsw i32 %i.bf, -1
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !13
  %i.bh = sext i32 %i.bf to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bh
  store i32 13, ptr %i.bi, align 4, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !10
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !13 ; 2 uses
  %i.bo = add nsw i32 %i.bn, -1
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !13
  %i.bp = sext i32 %i.bn to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bp
  store i32 12, ptr %i.bq, align 4, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !10
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !13 ; 2 uses
  %i.bw = add nsw i32 %i.bv, -1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !13
  %i.bx = sext i32 %i.bv to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bx
  store i32 11, ptr %i.by, align 4, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !10
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cb ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !13 ; 2 uses
  %i.ce = add nsw i32 %i.cd, -1
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !13
  %i.cf = sext i32 %i.cd to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cf
  store i32 10, ptr %i.cg, align 4, !tbaa !13
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !10
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !13 ; 2 uses
  %i.cm = add nsw i32 %i.cl, -1
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !13
  %i.cn = sext i32 %i.cl to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cn
  store i32 9, ptr %i.co, align 4, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !10
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cr ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !13 ; 2 uses
  %i.cu = add nsw i32 %i.ct, -1
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !13
  %i.cv = sext i32 %i.ct to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cv
  store i32 8, ptr %i.cw, align 4, !tbaa !13
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !10
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cz ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !13 ; 2 uses
  %i.dc = add nsw i32 %i.db, -1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !13
  %i.dd = sext i32 %i.db to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dd
  store i32 7, ptr %i.de, align 4, !tbaa !13
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !10
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !13 ; 2 uses
  %i.dk = add nsw i32 %i.dj, -1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !13
  %i.dl = sext i32 %i.dj to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dl
  store i32 6, ptr %i.dm, align 4, !tbaa !13
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !10
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dp ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !13 ; 2 uses
  %i.ds = add nsw i32 %i.dr, -1
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !13
  %i.dt = sext i32 %i.dr to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dt
  store i32 5, ptr %i.du, align 4, !tbaa !13
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !10
  %i.dx = zext i8 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dx ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !13 ; 2 uses
  %i.ea = add nsw i32 %i.dz, -1
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !13
  %i.eb = sext i32 %i.dz to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.eb
  store i32 4, ptr %i.ec, align 4, !tbaa !13
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !10
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !13 ; 2 uses
  %i.ei = add nsw i32 %i.eh, -1
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !13
  %i.ej = sext i32 %i.eh to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ej
  store i32 3, ptr %i.ek, align 4, !tbaa !13
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.em = load i8, ptr %i.el, align 1, !tbaa !10
  %i.en = zext i8 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.en ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !13 ; 2 uses
  %i.eq = add nsw i32 %i.ep, -1
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !13
  %i.er = sext i32 %i.ep to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.er
  store i32 2, ptr %i.es, align 4, !tbaa !13
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !10
  %i.ev = zext i8 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ev ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !13 ; 2 uses
  %i.ey = add nsw i32 %i.ex, -1
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !13
  %i.ez = sext i32 %i.ex to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ez
  store i32 1, ptr %i.fa, align 4, !tbaa !13
  %i.fb = load i8, ptr %1, align 1, !tbaa !10
  %i.fc = zext i8 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fc ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !13 ; 2 uses
  %i.ff = add nsw i32 %i.fe, -1
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !13
  %i.fg = sext i32 %i.fe to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fg
  store i32 0, ptr %i.fh, align 4, !tbaa !13
  %i.fi = load i32, ptr %i.b, align 16, !tbaa !13
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %.loopexit.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.fk = load i16, ptr %i.c, align 2, !tbaa !9   ; 2 uses
  %.not8489 = icmp eq i16 %i.fk, 0
  br i1 %.not8489, label %._crit_edge, label %.lr.ph

.loopexit.loopexit:                               ; preds = %bb.a
  %i.fl = load i32, ptr %i.a, align 16, !tbaa !13
  %.sroa.22.0.insert.ext.i85 = shl i32 %i.fl, 16
  %i.fm = insertelement <4 x i32> poison, i32 %.sroa.22.0.insert.ext.i85, i64 0
  %i.fn = shufflevector <4 x i32> %i.fm, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  store <4 x i32> %i.fn, ptr %0, align 2
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %i.fn, ptr %i.fo, align 2
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i32> %i.fn, ptr %i.fp, align 2
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> %i.fn, ptr %i.fq, align 2
end_hunk_0
