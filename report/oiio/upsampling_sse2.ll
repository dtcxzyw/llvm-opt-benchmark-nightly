inline.NumInlined: 53
inline.NumDeleted: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@WebPUpsamplers = external local_unnamed_addr global [0 x ptr], align 8
@WebPYUV444Converters = external local_unnamed_addr global [0 x ptr], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @WebPInitUpsamplersSSE2() local_unnamed_addr #0 {
bb.a:
  store ptr @UpsampleRgbaLinePair_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPUpsamplers, i64 8), align 8, !tbaa !7
  store ptr @UpsampleBgraLinePair_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPUpsamplers, i64 24), align 8, !tbaa !7
  store ptr @UpsampleRgbaLinePair_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPUpsamplers, i64 56), align 8, !tbaa !7
  store ptr @UpsampleBgraLinePair_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPUpsamplers, i64 64), align 8, !tbaa !7
  store ptr @UpsampleRgbLinePair_SSE2, ptr @WebPUpsamplers, align 8, !tbaa !7
  store ptr @UpsampleBgrLinePair_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPUpsamplers, i64 16), align 8, !tbaa !7
  store ptr @UpsampleArgbLinePair_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPUpsamplers, i64 32), align 8, !tbaa !7
  store ptr @UpsampleArgbLinePair_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPUpsamplers, i64 72), align 8, !tbaa !7
  store ptr @UpsampleRgb565LinePair_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPUpsamplers, i64 48), align 8, !tbaa !7
  store ptr @UpsampleRgba4444LinePair_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPUpsamplers, i64 40), align 8, !tbaa !7
  store ptr @UpsampleRgba4444LinePair_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPUpsamplers, i64 80), align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UpsampleRgbaLinePair_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef readonly captures(none) %2, ptr noalias noundef readonly captures(none) %3, ptr noalias noundef readonly captures(none) %4, ptr noalias noundef readonly captures(none) %5, ptr noalias noundef initializes((0, 4)) %6, ptr noalias noundef %7, i32 noundef %8) #1 {
bb.a:
  %i.a = alloca [463 x i8], align 16              ; 4 uses
  %i.b = alloca [17 x i8], align 16               ; 7 uses
  %i.c = alloca [17 x i8], align 16               ; 7 uses
  %i.d = alloca [17 x i8], align 16               ; 7 uses
  %i.e = alloca [17 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(463) %i.a, i8 0, i64 463, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -16
  %i.i = inttoptr i64 %i.h to ptr                 ; 22 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 5 uses
  %i.k = load i8, ptr %2, align 1, !tbaa !9
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = load i8, ptr %4, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = add nuw nsw i32 %i.n, %i.l
  %i.p = lshr i32 %i.o, 1
  %i.q = add nuw nsw i32 %i.p, 1                  ; 2 uses
  %i.r = load i8, ptr %3, align 1, !tbaa !9
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = load i8, ptr %5, align 1, !tbaa !9
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = add nuw nsw i32 %i.u, %i.s
  %i.w = lshr i32 %i.v, 1
  %i.x = add nuw nsw i32 %i.w, 1                  ; 2 uses
  %i.y = add nuw nsw i32 %i.q, %i.l
  %i.z = lshr i32 %i.y, 1                         ; 2 uses
  %i.aa = add nuw nsw i32 %i.x, %i.s
  %i.ab = lshr i32 %i.aa, 1                       ; 2 uses
  %i.ac = load i8, ptr %0, align 1, !tbaa !9
  %i.ad = zext i8 %i.ac to i32
  %i.ae = mul nuw nsw i32 %i.ad, 19077
  %i.af = lshr i32 %i.ae, 8                       ; 3 uses
  %i.ag = mul nuw nsw i32 %i.ab, 26149
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = add nuw nsw i32 %i.ah, %i.af            ; 2 uses
  %i.aj = add nsw i32 %i.ai, -14234               ; 2 uses
  %9 = icmp ult i32 %i.aj, 16384
  %i.ak = lshr i32 %i.aj, 6
  %i.al = icmp samesign ult i32 %i.ai, 14234
  %i.am = select i1 %i.al, i32 0, i32 255
  %i.an = select i1 %9, i32 %i.ak, i32 %i.am
  %i.ao = trunc i32 %i.an to i8
  store i8 %i.ao, ptr %6, align 1, !tbaa !9
  %i.ap = mul nuw nsw i32 %i.z, 6419
  %i.aq = lshr i32 %i.ap, 8
  %i.ar = mul nuw nsw i32 %i.ab, 13320
  %i.as = lshr i32 %i.ar, 8
  %i.at = add nuw nsw i32 %i.aq, %i.as
  %i.au = sub nsw i32 %i.af, %i.at                ; 2 uses
  %i.av = add nsw i32 %i.au, 8708                 ; 2 uses
  %10 = icmp ult i32 %i.av, 16384
  %i.aw = lshr i32 %i.av, 6
  %i.ax = icmp slt i32 %i.au, -8708
  %i.ay = select i1 %i.ax, i32 0, i32 255
  %i.az = select i1 %10, i32 %i.aw, i32 %i.ay
  %i.ba = trunc i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !9
  %i.bc = mul nuw nsw i32 %i.z, 33050
  %i.bd = lshr i32 %i.bc, 8
  %i.be = add nuw nsw i32 %i.bd, %i.af            ; 2 uses
  %i.bf = add nsw i32 %i.be, -17685               ; 2 uses
  %11 = icmp ult i32 %i.bf, 16384
  %i.bg = lshr i32 %i.bf, 6
  %i.bh = icmp samesign ult i32 %i.be, 17685
  %i.bi = select i1 %i.bh, i32 0, i32 255
  %i.bj = select i1 %11, i32 %i.bg, i32 %i.bi
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 3
  store i8 -1, ptr %i.bm, align 1, !tbaa !9
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bn = add nuw nsw i32 %i.q, %i.n
  %i.bo = lshr i32 %i.bn, 1                       ; 2 uses
  %i.bp = add nuw nsw i32 %i.x, %i.u
  %i.bq = lshr i32 %i.bp, 1                       ; 2 uses
  %i.br = load i8, ptr %1, align 1, !tbaa !9
  %i.bs = zext i8 %i.br to i32
  %i.bt = mul nuw nsw i32 %i.bs, 19077
  %i.bu = lshr i32 %i.bt, 8                       ; 3 uses
  %i.bv = mul nuw nsw i32 %i.bq, 26149
  %i.bw = lshr i32 %i.bv, 8
  %i.bx = add nuw nsw i32 %i.bu, %i.bw            ; 2 uses
  %i.by = add nsw i32 %i.bx, -14234               ; 2 uses
  %12 = icmp ult i32 %i.by, 16384
  %i.bz = lshr i32 %i.by, 6
  %i.ca = icmp samesign ult i32 %i.bx, 14234
  %i.cb = select i1 %i.ca, i32 0, i32 255
  %i.cc = select i1 %12, i32 %i.bz, i32 %i.cb
  %i.cd = trunc i32 %i.cc to i8
  store i8 %i.cd, ptr %7, align 1, !tbaa !9
  %i.ce = mul nuw nsw i32 %i.bo, 6419
  %i.cf = lshr i32 %i.ce, 8
  %i.cg = mul nuw nsw i32 %i.bq, 13320
  %i.ch = lshr i32 %i.cg, 8
  %i.ci = add nuw nsw i32 %i.ch, %i.cf
  %i.cj = sub nsw i32 %i.bu, %i.ci                ; 2 uses
  %i.ck = add nsw i32 %i.cj, 8708                 ; 2 uses
  %13 = icmp ult i32 %i.ck, 16384
  %i.cl = lshr i32 %i.ck, 6
  %i.cm = icmp slt i32 %i.cj, -8708
  %i.cn = select i1 %i.cm, i32 0, i32 255
  %i.co = select i1 %13, i32 %i.cl, i32 %i.cn
  %i.cp = trunc i32 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !9
  %i.cr = mul nuw nsw i32 %i.bo, 33050
  %i.cs = lshr i32 %i.cr, 8
  %i.ct = add nuw nsw i32 %i.bu, %i.cs            ; 2 uses
  %i.cu = add nsw i32 %i.ct, -17685               ; 2 uses
  %14 = icmp ult i32 %i.cu, 16384
  %i.cv = lshr i32 %i.cu, 6
  %i.cw = icmp samesign ult i32 %i.ct, 17685
  %i.cx = select i1 %i.cw, i32 0, i32 255
  %i.cy = select i1 %14, i32 %i.cv, i32 %i.cx
  %i.cz = trunc i32 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !9
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 3
  store i8 -1, ptr %i.db, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not259267 = icmp slt i32 %8, 34
  br i1 %.not259267, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.df = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv274 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next275, %bb.f ] ; 4 uses
  %indvars.iv272 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next273, %bb.f ] ; 5 uses
  %indvars.iv = phi i64 [ 33, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv272 ; 2 uses
  %i.dj = load <2 x i64>, ptr %i.di, align 1, !tbaa !9 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dl = load <2 x i64>, ptr %i.dk, align 1, !tbaa !9 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv272 ; 2 uses
  %i.dn = load <2 x i64>, ptr %i.dm, align 1, !tbaa !9 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %i.dp = load <2 x i64>, ptr %i.do, align 1, !tbaa !9 ; 2 uses
  %i.dq = bitcast <2 x i64> %i.dj to <16 x i8>    ; 2 uses
  %i.dr = bitcast <2 x i64> %i.dp to <16 x i8>    ; 2 uses
  %i.ds = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dq, <16 x i8> %i.dr) ; 4 uses
  %i.dt = bitcast <2 x i64> %i.dl to <16 x i8>    ; 2 uses
  %i.du = bitcast <2 x i64> %i.dn to <16 x i8>    ; 2 uses
  %i.dv = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dt, <16 x i8> %i.du) ; 4 uses
  %.inner = xor <16 x i8> %i.dv, %i.ds
  %i.dw = bitcast <16 x i8> %.inner to <2 x i64>  ; 3 uses
  %i.dx = xor <2 x i64> %i.dp, %i.dj              ; 2 uses
  %i.dy = xor <2 x i64> %i.dn, %i.dl              ; 2 uses
  %i.dz = or <2 x i64> %i.dx, %i.dy
  %i.ea = or <2 x i64> %i.dz, %i.dw
  %i.eb = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ds, <16 x i8> %i.dv)
  %i.ec = bitcast <2 x i64> %i.ea to <16 x i8>
  %i.ed = and <16 x i8> %i.ec, splat (i8 1)
  %i.ee = sub <16 x i8> %i.eb, %i.ed              ; 4 uses
  %i.ef = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ee, <16 x i8> %i.dv)
  %i.eg = and <2 x i64> %i.dy, %i.dw
  %.inner284 = xor <16 x i8> %i.ee, %i.dv
  %i.eh = bitcast <2 x i64> %i.eg to <16 x i8>
  %i.ei = or <16 x i8> %.inner284, %i.eh
  %i.ej = and <16 x i8> %i.ei, splat (i8 1)
  %i.ek = sub <16 x i8> %i.ef, %i.ej              ; 2 uses
  %i.el = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ee, <16 x i8> %i.ds)
  %i.em = and <2 x i64> %i.dx, %i.dw
  %.inner286 = xor <16 x i8> %i.ee, %i.ds
  %i.en = bitcast <2 x i64> %i.em to <16 x i8>
  %i.eo = or <16 x i8> %.inner286, %i.en
  %i.ep = and <16 x i8> %i.eo, splat (i8 1)
  %i.eq = sub <16 x i8> %i.el, %i.ep              ; 2 uses
  %i.er = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dq, <16 x i8> %i.ek) ; 2 uses
  %i.es = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dt, <16 x i8> %i.eq) ; 2 uses
  %i.et = shufflevector <16 x i8> %i.er, <16 x i8> %i.es, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.eu = shufflevector <16 x i8> %i.er, <16 x i8> %i.es, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.et, ptr %i.i, align 16, !tbaa !9
  store <16 x i8> %i.eu, ptr %i.dc, align 16, !tbaa !9
  %i.ev = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.du, <16 x i8> %i.eq) ; 2 uses
  %i.ew = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dr, <16 x i8> %i.ek) ; 2 uses
  %i.ex = shufflevector <16 x i8> %i.ev, <16 x i8> %i.ew, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ey = shufflevector <16 x i8> %i.ev, <16 x i8> %i.ew, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.ex, ptr %i.dd, align 16, !tbaa !9
  store <16 x i8> %i.ey, ptr %i.de, align 16, !tbaa !9
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv272 ; 2 uses
  %i.fa = load <2 x i64>, ptr %i.ez, align 1, !tbaa !9 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.fc = load <2 x i64>, ptr %i.fb, align 1, !tbaa !9 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv272 ; 2 uses
  %i.fe = load <2 x i64>, ptr %i.fd, align 1, !tbaa !9 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  %i.fg = load <2 x i64>, ptr %i.ff, align 1, !tbaa !9 ; 2 uses
  %i.fh = bitcast <2 x i64> %i.fa to <16 x i8>    ; 2 uses
  %i.fi = bitcast <2 x i64> %i.fg to <16 x i8>    ; 2 uses
  %i.fj = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fh, <16 x i8> %i.fi) ; 4 uses
  %i.fk = bitcast <2 x i64> %i.fc to <16 x i8>    ; 2 uses
  %i.fl = bitcast <2 x i64> %i.fe to <16 x i8>    ; 2 uses
  %i.fm = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fk, <16 x i8> %i.fl) ; 4 uses
  %.inner288 = xor <16 x i8> %i.fm, %i.fj
  %i.fn = bitcast <16 x i8> %.inner288 to <2 x i64> ; 3 uses
  %i.fo = xor <2 x i64> %i.fg, %i.fa              ; 2 uses
  %i.fp = xor <2 x i64> %i.fe, %i.fc              ; 2 uses
  %i.fq = or <2 x i64> %i.fo, %i.fp
  %i.fr = or <2 x i64> %i.fq, %i.fn
  %i.fs = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fj, <16 x i8> %i.fm)
  %i.ft = bitcast <2 x i64> %i.fr to <16 x i8>
  %i.fu = and <16 x i8> %i.ft, splat (i8 1)
  %i.fv = sub <16 x i8> %i.fs, %i.fu              ; 4 uses
  %i.fw = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fv, <16 x i8> %i.fm)
  %i.fx = and <2 x i64> %i.fp, %i.fn
  %.inner290 = xor <16 x i8> %i.fv, %i.fm
  %i.fy = bitcast <2 x i64> %i.fx to <16 x i8>
  %i.fz = or <16 x i8> %.inner290, %i.fy
  %i.ga = and <16 x i8> %i.fz, splat (i8 1)
  %i.gb = sub <16 x i8> %i.fw, %i.ga              ; 2 uses
  %i.gc = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fv, <16 x i8> %i.fj)
  %i.gd = and <2 x i64> %i.fo, %i.fn
  %.inner292 = xor <16 x i8> %i.fv, %i.fj
  %i.ge = bitcast <2 x i64> %i.gd to <16 x i8>
  %i.gf = or <16 x i8> %.inner292, %i.ge
  %i.gg = and <16 x i8> %i.gf, splat (i8 1)
  %i.gh = sub <16 x i8> %i.gc, %i.gg              ; 2 uses
  %i.gi = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fh, <16 x i8> %i.gb) ; 2 uses
  %i.gj = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fk, <16 x i8> %i.gh) ; 2 uses
  %i.gk = shufflevector <16 x i8> %i.gi, <16 x i8> %i.gj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gl = shufflevector <16 x i8> %i.gi, <16 x i8> %i.gj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.gk, ptr %i.j, align 16, !tbaa !9
  store <16 x i8> %i.gl, ptr %i.df, align 16, !tbaa !9
  %i.gm = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fl, <16 x i8> %i.gh) ; 2 uses
  %i.gn = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fi, <16 x i8> %i.gb) ; 2 uses
  %i.go = shufflevector <16 x i8> %i.gm, <16 x i8> %i.gn, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gp = shufflevector <16 x i8> %i.gm, <16 x i8> %i.gn, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.go, ptr %i.dg, align 16, !tbaa !9
  store <16 x i8> %i.gp, ptr %i.dh, align 16, !tbaa !9
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv274
  %i.gr = shl nsw i64 %indvars.iv274, 2           ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 %i.gr
  call void @VP8YuvToRgba32_SSE2(ptr noundef nonnull %i.gq, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gs) #8
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv274
  %i.gu = getelementptr inbounds nuw i8, ptr %7, i64 %i.gr
  call void @VP8YuvToRgba32_SSE2(ptr noundef nonnull %i.gt, ptr noundef nonnull %i.dd, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.gu) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %i.gv = trunc i64 %indvars.iv to i32
  %i.gw = add i32 %i.gv, 33
  %.not259 = icmp sgt i32 %i.gw, %8
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 32
  br i1 %.not259, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !10

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.gx = trunc nuw nsw i64 %indvars.iv to i32
  %i.gy = and i64 %indvars.iv.next273, 4294967280
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.0255.lcssa = phi i32 [ 1, %bb.c ], [ %i.gx, %._crit_edge.loopexit ] ; 5 uses
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.gy, %._crit_edge.loopexit ] ; 4 uses
  %i.gz = icmp sgt i32 %8, 1
  br i1 %i.gz, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ha = add nuw nsw i32 %8, 1
  %i.hb = lshr i32 %i.ha, 1
  %i.hc = lshr i32 %.0255.lcssa, 1
  %i.hd = sub nsw i32 %i.hb, %i.hc                ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.i, i64 384 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 %.0.lcssa
  %i.hh = sext i32 %i.hd to i64                   ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 1 %i.hg, i64 %i.hh, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.hi, i64 %i.hh, i1 false)
  %i.hj = getelementptr inbounds i8, ptr %i.b, i64 %i.hh
  %i.hk = add nsw i32 %i.hd, -1
  %i.hl = sext i32 %i.hk to i64                   ; 4 uses
  %i.hm = getelementptr inbounds i8, ptr %i.b, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !9
  %i.ho = sub nsw i32 17, %i.hd
  %i.hp = sext i32 %i.ho to i64                   ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hj, i8 %i.hn, i64 %i.hp, i1 false)
  %i.hq = getelementptr inbounds i8, ptr %i.c, i64 %i.hh
  %i.hr = getelementptr inbounds i8, ptr %i.c, i64 %i.hl
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hq, i8 %i.hs, i64 %i.hp, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.ht = load <2 x i64>, ptr %i.b, align 16, !tbaa !9, !alias.scope !12, !noalias !19 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.hv = load <2 x i64>, ptr %i.hu, align 1, !tbaa !9, !alias.scope !12, !noalias !19 ; 2 uses
  %i.hw = load <2 x i64>, ptr %i.c, align 16, !tbaa !9, !alias.scope !15, !noalias !20 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.hy = load <2 x i64>, ptr %i.hx, align 1, !tbaa !9, !alias.scope !15, !noalias !20 ; 2 uses
  %i.hz = bitcast <2 x i64> %i.ht to <16 x i8>    ; 2 uses
  %i.ia = bitcast <2 x i64> %i.hy to <16 x i8>    ; 2 uses
  %i.ib = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.hz, <16 x i8> %i.ia) ; 4 uses
  %i.ic = bitcast <2 x i64> %i.hv to <16 x i8>    ; 2 uses
  %i.id = bitcast <2 x i64> %i.hw to <16 x i8>    ; 2 uses
  %i.ie = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ic, <16 x i8> %i.id) ; 4 uses
  %.inner294 = xor <16 x i8> %i.ie, %i.ib
  %i.if = bitcast <16 x i8> %.inner294 to <2 x i64> ; 3 uses
  %i.ig = xor <2 x i64> %i.hy, %i.ht              ; 2 uses
  %i.ih = xor <2 x i64> %i.hw, %i.hv              ; 2 uses
  %i.ii = or <2 x i64> %i.ig, %i.ih
  %i.ij = or <2 x i64> %i.ii, %i.if
  %i.ik = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ib, <16 x i8> %i.ie)
  %i.il = bitcast <2 x i64> %i.ij to <16 x i8>
  %i.im = and <16 x i8> %i.il, splat (i8 1)
  %i.in = sub <16 x i8> %i.ik, %i.im              ; 4 uses
  %i.io = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.in, <16 x i8> %i.ie)
  %i.ip = and <2 x i64> %i.ih, %i.if
  %.inner296 = xor <16 x i8> %i.in, %i.ie
  %i.iq = bitcast <2 x i64> %i.ip to <16 x i8>
  %i.ir = or <16 x i8> %.inner296, %i.iq
  %i.is = and <16 x i8> %i.ir, splat (i8 1)
  %i.it = sub <16 x i8> %i.io, %i.is              ; 2 uses
  %i.iu = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.in, <16 x i8> %i.ib)
  %i.iv = and <2 x i64> %i.ig, %i.if
  %.inner298 = xor <16 x i8> %i.in, %i.ib
  %i.iw = bitcast <2 x i64> %i.iv to <16 x i8>
  %i.ix = or <16 x i8> %.inner298, %i.iw
  %i.iy = and <16 x i8> %i.ix, splat (i8 1)
  %i.iz = sub <16 x i8> %i.iu, %i.iy              ; 2 uses
  %i.ja = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.hz, <16 x i8> %i.it) ; 2 uses
  %i.jb = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ic, <16 x i8> %i.iz) ; 2 uses
  %i.jc = shufflevector <16 x i8> %i.ja, <16 x i8> %i.jb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.jd = shufflevector <16 x i8> %i.ja, <16 x i8> %i.jb, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.jc, ptr %i.i, align 16, !tbaa !9, !alias.scope !17, !noalias !21
  %i.je = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <16 x i8> %i.jd, ptr %i.je, align 16, !tbaa !9, !alias.scope !17, !noalias !21
  %i.jf = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.id, <16 x i8> %i.iz) ; 2 uses
  %i.jg = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ia, <16 x i8> %i.it) ; 2 uses
  %i.jh = shufflevector <16 x i8> %i.jf, <16 x i8> %i.jg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ji = shufflevector <16 x i8> %i.jf, <16 x i8> %i.jg, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.jj = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  store <16 x i8> %i.jh, ptr %i.jj, align 16, !tbaa !9, !alias.scope !17, !noalias !21
  %i.jk = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store <16 x i8> %i.ji, ptr %i.jk, align 16, !tbaa !9, !alias.scope !17, !noalias !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 1 %i.jl, i64 %i.hh, i1 false)
  %i.jm = getelementptr inbounds nuw i8, ptr %5, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.e, ptr nonnull align 1 %i.jm, i64 %i.hh, i1 false)
  %i.jn = getelementptr inbounds i8, ptr %i.d, i64 %i.hh
  %i.jo = getelementptr inbounds i8, ptr %i.d, i64 %i.hl
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jn, i8 %i.jp, i64 %i.hp, i1 false)
  %i.jq = getelementptr inbounds i8, ptr %i.e, i64 %i.hh
  %i.jr = getelementptr inbounds i8, ptr %i.e, i64 %i.hl
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jq, i8 %i.js, i64 %i.hp, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.jt = load <2 x i64>, ptr %i.d, align 16, !tbaa !9, !alias.scope !22, !noalias !29 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.jv = load <2 x i64>, ptr %i.ju, align 1, !tbaa !9, !alias.scope !22, !noalias !29 ; 2 uses
  %i.jw = load <2 x i64>, ptr %i.e, align 16, !tbaa !9, !alias.scope !25, !noalias !30 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.jy = load <2 x i64>, ptr %i.jx, align 1, !tbaa !9, !alias.scope !25, !noalias !30 ; 2 uses
  %i.jz = bitcast <2 x i64> %i.jt to <16 x i8>    ; 2 uses
  %i.ka = bitcast <2 x i64> %i.jy to <16 x i8>    ; 2 uses
  %i.kb = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.jz, <16 x i8> %i.ka) ; 4 uses
  %i.kc = bitcast <2 x i64> %i.jv to <16 x i8>    ; 2 uses
  %i.kd = bitcast <2 x i64> %i.jw to <16 x i8>    ; 2 uses
  %i.ke = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kc, <16 x i8> %i.kd) ; 4 uses
  %.inner300 = xor <16 x i8> %i.ke, %i.kb
  %i.kf = bitcast <16 x i8> %.inner300 to <2 x i64> ; 3 uses
  %i.kg = xor <2 x i64> %i.jy, %i.jt              ; 2 uses
  %i.kh = xor <2 x i64> %i.jw, %i.jv              ; 2 uses
  %i.ki = or <2 x i64> %i.kg, %i.kh
  %i.kj = or <2 x i64> %i.ki, %i.kf
  %i.kk = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kb, <16 x i8> %i.ke)
  %i.kl = bitcast <2 x i64> %i.kj to <16 x i8>
  %i.km = and <16 x i8> %i.kl, splat (i8 1)
  %i.kn = sub <16 x i8> %i.kk, %i.km              ; 4 uses
  %i.ko = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kn, <16 x i8> %i.ke)
  %i.kp = and <2 x i64> %i.kh, %i.kf
  %.inner302 = xor <16 x i8> %i.kn, %i.ke
  %i.kq = bitcast <2 x i64> %i.kp to <16 x i8>
  %i.kr = or <16 x i8> %.inner302, %i.kq
  %i.ks = and <16 x i8> %i.kr, splat (i8 1)
  %i.kt = sub <16 x i8> %i.ko, %i.ks              ; 2 uses
  %i.ku = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kn, <16 x i8> %i.kb)
  %i.kv = and <2 x i64> %i.kg, %i.kf
  %.inner304 = xor <16 x i8> %i.kn, %i.kb
  %i.kw = bitcast <2 x i64> %i.kv to <16 x i8>
  %i.kx = or <16 x i8> %.inner304, %i.kw
  %i.ky = and <16 x i8> %i.kx, splat (i8 1)
  %i.kz = sub <16 x i8> %i.ku, %i.ky              ; 2 uses
  %i.la = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.jz, <16 x i8> %i.kt) ; 2 uses
  %i.lb = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kc, <16 x i8> %i.kz) ; 2 uses
  %i.lc = shufflevector <16 x i8> %i.la, <16 x i8> %i.lb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ld = shufflevector <16 x i8> %i.la, <16 x i8> %i.lb, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.lc, ptr %i.j, align 16, !tbaa !9, !alias.scope !27, !noalias !31
  %i.le = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store <16 x i8> %i.ld, ptr %i.le, align 16, !tbaa !9, !alias.scope !27, !noalias !31
  %i.lf = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kd, <16 x i8> %i.kz) ; 2 uses
  %i.lg = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ka, <16 x i8> %i.kt) ; 2 uses
  %i.lh = shufflevector <16 x i8> %i.lf, <16 x i8> %i.lg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.li = shufflevector <16 x i8> %i.lf, <16 x i8> %i.lg, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.lj = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  store <16 x i8> %i.lh, ptr %i.lj, align 16, !tbaa !9, !alias.scope !27, !noalias !31
  %i.lk = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store <16 x i8> %i.li, ptr %i.lk, align 16, !tbaa !9, !alias.scope !27, !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.ll = zext nneg i32 %.0255.lcssa to i64       ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 %i.ll
  %i.ln = sub nsw i32 %8, %.0255.lcssa            ; 3 uses
  %i.lo = sext i32 %i.ln to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.hf, ptr nonnull align 1 %i.lm, i64 %i.lo, i1 false)
  br i1 %.not, label %.thread261, label %bb.h

.thread261:                                       ; preds = %bb.g
  call void @VP8YuvToRgba32_SSE2(ptr noundef nonnull %i.hf, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.he) #8
  %i.lp = shl nsw i32 %.0255.lcssa, 2
  %i.lq = zext nneg i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %6, i64 %i.lq
  %i.ls = shl nsw i32 %i.ln, 2
  %i.lt = sext i32 %i.ls to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lr, ptr nonnull align 16 %i.he, i64 %i.lt, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.lu = getelementptr inbounds nuw i8, ptr %i.i, i64 416 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 %i.ll
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.lu, ptr nonnull align 1 %i.lw, i64 %i.lo, i1 false)
  call void @VP8YuvToRgba32_SSE2(ptr noundef nonnull %i.hf, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.he) #8
  call void @VP8YuvToRgba32_SSE2(ptr noundef nonnull %i.lu, ptr noundef nonnull %i.jj, ptr noundef nonnull %i.lj, ptr noundef nonnull %i.lv) #8
  %i.lx = shl nsw i32 %.0255.lcssa, 2
  %i.ly = zext nneg i32 %i.lx to i64              ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %6, i64 %i.ly
  %i.ma = shl nsw i32 %i.ln, 2
  %i.mb = sext i32 %i.ma to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lz, ptr nonnull align 16 %i.he, i64 %i.mb, i1 false)
  %i.mc = getelementptr inbounds nuw i8, ptr %7, i64 %i.ly
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mc, ptr nonnull align 16 %i.lv, i64 %i.mb, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %.thread261, %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UpsampleBgraLinePair_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef readonly captures(none) %2, ptr noalias noundef readonly captures(none) %3, ptr noalias noundef readonly captures(none) %4, ptr noalias noundef readonly captures(none) %5, ptr noalias noundef initializes((0, 4)) %6, ptr noalias noundef %7, i32 noundef %8) #1 {
bb.a:
  %i.a = alloca [463 x i8], align 16              ; 4 uses
  %i.b = alloca [17 x i8], align 16               ; 7 uses
  %i.c = alloca [17 x i8], align 16               ; 7 uses
  %i.d = alloca [17 x i8], align 16               ; 7 uses
  %i.e = alloca [17 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(463) %i.a, i8 0, i64 463, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -16
  %i.i = inttoptr i64 %i.h to ptr                 ; 22 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 5 uses
  %i.k = load i8, ptr %2, align 1, !tbaa !9
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = load i8, ptr %4, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = add nuw nsw i32 %i.n, %i.l
  %i.p = lshr i32 %i.o, 1
  %i.q = add nuw nsw i32 %i.p, 1                  ; 2 uses
  %i.r = load i8, ptr %3, align 1, !tbaa !9
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = load i8, ptr %5, align 1, !tbaa !9
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = add nuw nsw i32 %i.u, %i.s
  %i.w = lshr i32 %i.v, 1
  %i.x = add nuw nsw i32 %i.w, 1                  ; 2 uses
  %i.y = add nuw nsw i32 %i.q, %i.l
  %i.z = lshr i32 %i.y, 1                         ; 2 uses
  %i.aa = add nuw nsw i32 %i.x, %i.s
  %i.ab = lshr i32 %i.aa, 1                       ; 2 uses
  %i.ac = load i8, ptr %0, align 1, !tbaa !9
  %i.ad = zext i8 %i.ac to i32
  %i.ae = mul nuw nsw i32 %i.ad, 19077
  %i.af = lshr i32 %i.ae, 8                       ; 3 uses
  %i.ag = mul nuw nsw i32 %i.z, 33050
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = add nuw nsw i32 %i.ah, %i.af            ; 2 uses
  %i.aj = add nsw i32 %i.ai, -17685               ; 2 uses
  %9 = icmp ult i32 %i.aj, 16384
  %i.ak = lshr i32 %i.aj, 6
  %i.al = icmp samesign ult i32 %i.ai, 17685
  %i.am = select i1 %i.al, i32 0, i32 255
  %i.an = select i1 %9, i32 %i.ak, i32 %i.am
  %i.ao = trunc i32 %i.an to i8
  store i8 %i.ao, ptr %6, align 1, !tbaa !9
  %i.ap = mul nuw nsw i32 %i.z, 6419
  %i.aq = lshr i32 %i.ap, 8
  %i.ar = mul nuw nsw i32 %i.ab, 13320
  %i.as = lshr i32 %i.ar, 8
  %i.at = add nuw nsw i32 %i.aq, %i.as
  %i.au = sub nsw i32 %i.af, %i.at                ; 2 uses
  %i.av = add nsw i32 %i.au, 8708                 ; 2 uses
  %10 = icmp ult i32 %i.av, 16384
  %i.aw = lshr i32 %i.av, 6
  %i.ax = icmp slt i32 %i.au, -8708
  %i.ay = select i1 %i.ax, i32 0, i32 255
  %i.az = select i1 %10, i32 %i.aw, i32 %i.ay
  %i.ba = trunc i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !9
  %i.bc = mul nuw nsw i32 %i.ab, 26149
  %i.bd = lshr i32 %i.bc, 8
  %i.be = add nuw nsw i32 %i.bd, %i.af            ; 2 uses
  %i.bf = add nsw i32 %i.be, -14234               ; 2 uses
  %11 = icmp ult i32 %i.bf, 16384
  %i.bg = lshr i32 %i.bf, 6
  %i.bh = icmp samesign ult i32 %i.be, 14234
  %i.bi = select i1 %i.bh, i32 0, i32 255
  %i.bj = select i1 %11, i32 %i.bg, i32 %i.bi
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 3
  store i8 -1, ptr %i.bm, align 1, !tbaa !9
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bn = add nuw nsw i32 %i.q, %i.n
  %i.bo = lshr i32 %i.bn, 1                       ; 2 uses
  %i.bp = add nuw nsw i32 %i.x, %i.u
  %i.bq = lshr i32 %i.bp, 1                       ; 2 uses
  %i.br = load i8, ptr %1, align 1, !tbaa !9
  %i.bs = zext i8 %i.br to i32
  %i.bt = mul nuw nsw i32 %i.bs, 19077
  %i.bu = lshr i32 %i.bt, 8                       ; 3 uses
  %i.bv = mul nuw nsw i32 %i.bo, 33050
  %i.bw = lshr i32 %i.bv, 8
  %i.bx = add nuw nsw i32 %i.bu, %i.bw            ; 2 uses
  %i.by = add nsw i32 %i.bx, -17685               ; 2 uses
  %12 = icmp ult i32 %i.by, 16384
  %i.bz = lshr i32 %i.by, 6
  %i.ca = icmp samesign ult i32 %i.bx, 17685
  %i.cb = select i1 %i.ca, i32 0, i32 255
  %i.cc = select i1 %12, i32 %i.bz, i32 %i.cb
  %i.cd = trunc i32 %i.cc to i8
  store i8 %i.cd, ptr %7, align 1, !tbaa !9
  %i.ce = mul nuw nsw i32 %i.bo, 6419
  %i.cf = lshr i32 %i.ce, 8
  %i.cg = mul nuw nsw i32 %i.bq, 13320
  %i.ch = lshr i32 %i.cg, 8
  %i.ci = add nuw nsw i32 %i.ch, %i.cf
  %i.cj = sub nsw i32 %i.bu, %i.ci                ; 2 uses
  %i.ck = add nsw i32 %i.cj, 8708                 ; 2 uses
  %13 = icmp ult i32 %i.ck, 16384
  %i.cl = lshr i32 %i.ck, 6
  %i.cm = icmp slt i32 %i.cj, -8708
  %i.cn = select i1 %i.cm, i32 0, i32 255
  %i.co = select i1 %13, i32 %i.cl, i32 %i.cn
  %i.cp = trunc i32 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !9
  %i.cr = mul nuw nsw i32 %i.bq, 26149
  %i.cs = lshr i32 %i.cr, 8
  %i.ct = add nuw nsw i32 %i.bu, %i.cs            ; 2 uses
  %i.cu = add nsw i32 %i.ct, -14234               ; 2 uses
  %14 = icmp ult i32 %i.cu, 16384
  %i.cv = lshr i32 %i.cu, 6
  %i.cw = icmp samesign ult i32 %i.ct, 14234
  %i.cx = select i1 %i.cw, i32 0, i32 255
  %i.cy = select i1 %14, i32 %i.cv, i32 %i.cx
  %i.cz = trunc i32 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !9
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 3
  store i8 -1, ptr %i.db, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not259267 = icmp slt i32 %8, 34
  br i1 %.not259267, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.df = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv274 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next275, %bb.f ] ; 4 uses
  %indvars.iv272 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next273, %bb.f ] ; 5 uses
  %indvars.iv = phi i64 [ 33, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv272 ; 2 uses
  %i.dj = load <2 x i64>, ptr %i.di, align 1, !tbaa !9 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dl = load <2 x i64>, ptr %i.dk, align 1, !tbaa !9 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv272 ; 2 uses
  %i.dn = load <2 x i64>, ptr %i.dm, align 1, !tbaa !9 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %i.dp = load <2 x i64>, ptr %i.do, align 1, !tbaa !9 ; 2 uses
  %i.dq = bitcast <2 x i64> %i.dj to <16 x i8>    ; 2 uses
  %i.dr = bitcast <2 x i64> %i.dp to <16 x i8>    ; 2 uses
  %i.ds = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dq, <16 x i8> %i.dr) ; 4 uses
  %i.dt = bitcast <2 x i64> %i.dl to <16 x i8>    ; 2 uses
  %i.du = bitcast <2 x i64> %i.dn to <16 x i8>    ; 2 uses
  %i.dv = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dt, <16 x i8> %i.du) ; 4 uses
  %.inner = xor <16 x i8> %i.dv, %i.ds
  %i.dw = bitcast <16 x i8> %.inner to <2 x i64>  ; 3 uses
  %i.dx = xor <2 x i64> %i.dp, %i.dj              ; 2 uses
  %i.dy = xor <2 x i64> %i.dn, %i.dl              ; 2 uses
  %i.dz = or <2 x i64> %i.dx, %i.dy
  %i.ea = or <2 x i64> %i.dz, %i.dw
  %i.eb = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ds, <16 x i8> %i.dv)
  %i.ec = bitcast <2 x i64> %i.ea to <16 x i8>
  %i.ed = and <16 x i8> %i.ec, splat (i8 1)
  %i.ee = sub <16 x i8> %i.eb, %i.ed              ; 4 uses
  %i.ef = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ee, <16 x i8> %i.dv)
  %i.eg = and <2 x i64> %i.dy, %i.dw
  %.inner284 = xor <16 x i8> %i.ee, %i.dv
  %i.eh = bitcast <2 x i64> %i.eg to <16 x i8>
  %i.ei = or <16 x i8> %.inner284, %i.eh
  %i.ej = and <16 x i8> %i.ei, splat (i8 1)
  %i.ek = sub <16 x i8> %i.ef, %i.ej              ; 2 uses
  %i.el = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ee, <16 x i8> %i.ds)
  %i.em = and <2 x i64> %i.dx, %i.dw
  %.inner286 = xor <16 x i8> %i.ee, %i.ds
  %i.en = bitcast <2 x i64> %i.em to <16 x i8>
  %i.eo = or <16 x i8> %.inner286, %i.en
  %i.ep = and <16 x i8> %i.eo, splat (i8 1)
  %i.eq = sub <16 x i8> %i.el, %i.ep              ; 2 uses
  %i.er = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dq, <16 x i8> %i.ek) ; 2 uses
  %i.es = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dt, <16 x i8> %i.eq) ; 2 uses
  %i.et = shufflevector <16 x i8> %i.er, <16 x i8> %i.es, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.eu = shufflevector <16 x i8> %i.er, <16 x i8> %i.es, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.et, ptr %i.i, align 16, !tbaa !9
  store <16 x i8> %i.eu, ptr %i.dc, align 16, !tbaa !9
  %i.ev = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.du, <16 x i8> %i.eq) ; 2 uses
  %i.ew = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dr, <16 x i8> %i.ek) ; 2 uses
  %i.ex = shufflevector <16 x i8> %i.ev, <16 x i8> %i.ew, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ey = shufflevector <16 x i8> %i.ev, <16 x i8> %i.ew, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.ex, ptr %i.dd, align 16, !tbaa !9
  store <16 x i8> %i.ey, ptr %i.de, align 16, !tbaa !9
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv272 ; 2 uses
  %i.fa = load <2 x i64>, ptr %i.ez, align 1, !tbaa !9 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.fc = load <2 x i64>, ptr %i.fb, align 1, !tbaa !9 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv272 ; 2 uses
  %i.fe = load <2 x i64>, ptr %i.fd, align 1, !tbaa !9 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  %i.fg = load <2 x i64>, ptr %i.ff, align 1, !tbaa !9 ; 2 uses
  %i.fh = bitcast <2 x i64> %i.fa to <16 x i8>    ; 2 uses
  %i.fi = bitcast <2 x i64> %i.fg to <16 x i8>    ; 2 uses
  %i.fj = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fh, <16 x i8> %i.fi) ; 4 uses
  %i.fk = bitcast <2 x i64> %i.fc to <16 x i8>    ; 2 uses
  %i.fl = bitcast <2 x i64> %i.fe to <16 x i8>    ; 2 uses
  %i.fm = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fk, <16 x i8> %i.fl) ; 4 uses
  %.inner288 = xor <16 x i8> %i.fm, %i.fj
  %i.fn = bitcast <16 x i8> %.inner288 to <2 x i64> ; 3 uses
  %i.fo = xor <2 x i64> %i.fg, %i.fa              ; 2 uses
  %i.fp = xor <2 x i64> %i.fe, %i.fc              ; 2 uses
  %i.fq = or <2 x i64> %i.fo, %i.fp
  %i.fr = or <2 x i64> %i.fq, %i.fn
  %i.fs = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fj, <16 x i8> %i.fm)
  %i.ft = bitcast <2 x i64> %i.fr to <16 x i8>
  %i.fu = and <16 x i8> %i.ft, splat (i8 1)
  %i.fv = sub <16 x i8> %i.fs, %i.fu              ; 4 uses
  %i.fw = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fv, <16 x i8> %i.fm)
  %i.fx = and <2 x i64> %i.fp, %i.fn
  %.inner290 = xor <16 x i8> %i.fv, %i.fm
  %i.fy = bitcast <2 x i64> %i.fx to <16 x i8>
  %i.fz = or <16 x i8> %.inner290, %i.fy
  %i.ga = and <16 x i8> %i.fz, splat (i8 1)
  %i.gb = sub <16 x i8> %i.fw, %i.ga              ; 2 uses
  %i.gc = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fv, <16 x i8> %i.fj)
  %i.gd = and <2 x i64> %i.fo, %i.fn
  %.inner292 = xor <16 x i8> %i.fv, %i.fj
  %i.ge = bitcast <2 x i64> %i.gd to <16 x i8>
  %i.gf = or <16 x i8> %.inner292, %i.ge
  %i.gg = and <16 x i8> %i.gf, splat (i8 1)
  %i.gh = sub <16 x i8> %i.gc, %i.gg              ; 2 uses
  %i.gi = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fh, <16 x i8> %i.gb) ; 2 uses
  %i.gj = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fk, <16 x i8> %i.gh) ; 2 uses
  %i.gk = shufflevector <16 x i8> %i.gi, <16 x i8> %i.gj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gl = shufflevector <16 x i8> %i.gi, <16 x i8> %i.gj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.gk, ptr %i.j, align 16, !tbaa !9
  store <16 x i8> %i.gl, ptr %i.df, align 16, !tbaa !9
  %i.gm = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fl, <16 x i8> %i.gh) ; 2 uses
  %i.gn = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fi, <16 x i8> %i.gb) ; 2 uses
  %i.go = shufflevector <16 x i8> %i.gm, <16 x i8> %i.gn, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gp = shufflevector <16 x i8> %i.gm, <16 x i8> %i.gn, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.go, ptr %i.dg, align 16, !tbaa !9
  store <16 x i8> %i.gp, ptr %i.dh, align 16, !tbaa !9
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv274
  %i.gr = shl nsw i64 %indvars.iv274, 2           ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 %i.gr
  call void @VP8YuvToBgra32_SSE2(ptr noundef nonnull %i.gq, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gs) #8
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv274
  %i.gu = getelementptr inbounds nuw i8, ptr %7, i64 %i.gr
  call void @VP8YuvToBgra32_SSE2(ptr noundef nonnull %i.gt, ptr noundef nonnull %i.dd, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.gu) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %i.gv = trunc i64 %indvars.iv to i32
  %i.gw = add i32 %i.gv, 33
  %.not259 = icmp sgt i32 %i.gw, %8
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 32
  br i1 %.not259, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !32

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.gx = trunc nuw nsw i64 %indvars.iv to i32
  %i.gy = and i64 %indvars.iv.next273, 4294967280
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.0255.lcssa = phi i32 [ 1, %bb.c ], [ %i.gx, %._crit_edge.loopexit ] ; 5 uses
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.gy, %._crit_edge.loopexit ] ; 4 uses
  %i.gz = icmp sgt i32 %8, 1
  br i1 %i.gz, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ha = add nuw nsw i32 %8, 1
  %i.hb = lshr i32 %i.ha, 1
  %i.hc = lshr i32 %.0255.lcssa, 1
  %i.hd = sub nsw i32 %i.hb, %i.hc                ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.i, i64 384 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 %.0.lcssa
  %i.hh = sext i32 %i.hd to i64                   ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 1 %i.hg, i64 %i.hh, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.hi, i64 %i.hh, i1 false)
  %i.hj = getelementptr inbounds i8, ptr %i.b, i64 %i.hh
  %i.hk = add nsw i32 %i.hd, -1
  %i.hl = sext i32 %i.hk to i64                   ; 4 uses
  %i.hm = getelementptr inbounds i8, ptr %i.b, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !9
  %i.ho = sub nsw i32 17, %i.hd
  %i.hp = sext i32 %i.ho to i64                   ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hj, i8 %i.hn, i64 %i.hp, i1 false)
  %i.hq = getelementptr inbounds i8, ptr %i.c, i64 %i.hh
  %i.hr = getelementptr inbounds i8, ptr %i.c, i64 %i.hl
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hq, i8 %i.hs, i64 %i.hp, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.ht = load <2 x i64>, ptr %i.b, align 16, !tbaa !9, !alias.scope !33, !noalias !40 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.hv = load <2 x i64>, ptr %i.hu, align 1, !tbaa !9, !alias.scope !33, !noalias !40 ; 2 uses
  %i.hw = load <2 x i64>, ptr %i.c, align 16, !tbaa !9, !alias.scope !36, !noalias !41 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.hy = load <2 x i64>, ptr %i.hx, align 1, !tbaa !9, !alias.scope !36, !noalias !41 ; 2 uses
  %i.hz = bitcast <2 x i64> %i.ht to <16 x i8>    ; 2 uses
  %i.ia = bitcast <2 x i64> %i.hy to <16 x i8>    ; 2 uses
  %i.ib = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.hz, <16 x i8> %i.ia) ; 4 uses
  %i.ic = bitcast <2 x i64> %i.hv to <16 x i8>    ; 2 uses
  %i.id = bitcast <2 x i64> %i.hw to <16 x i8>    ; 2 uses
  %i.ie = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ic, <16 x i8> %i.id) ; 4 uses
  %.inner294 = xor <16 x i8> %i.ie, %i.ib
  %i.if = bitcast <16 x i8> %.inner294 to <2 x i64> ; 3 uses
  %i.ig = xor <2 x i64> %i.hy, %i.ht              ; 2 uses
  %i.ih = xor <2 x i64> %i.hw, %i.hv              ; 2 uses
  %i.ii = or <2 x i64> %i.ig, %i.ih
  %i.ij = or <2 x i64> %i.ii, %i.if
  %i.ik = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ib, <16 x i8> %i.ie)
  %i.il = bitcast <2 x i64> %i.ij to <16 x i8>
  %i.im = and <16 x i8> %i.il, splat (i8 1)
  %i.in = sub <16 x i8> %i.ik, %i.im              ; 4 uses
  %i.io = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.in, <16 x i8> %i.ie)
  %i.ip = and <2 x i64> %i.ih, %i.if
  %.inner296 = xor <16 x i8> %i.in, %i.ie
  %i.iq = bitcast <2 x i64> %i.ip to <16 x i8>
  %i.ir = or <16 x i8> %.inner296, %i.iq
  %i.is = and <16 x i8> %i.ir, splat (i8 1)
  %i.it = sub <16 x i8> %i.io, %i.is              ; 2 uses
  %i.iu = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.in, <16 x i8> %i.ib)
  %i.iv = and <2 x i64> %i.ig, %i.if
  %.inner298 = xor <16 x i8> %i.in, %i.ib
  %i.iw = bitcast <2 x i64> %i.iv to <16 x i8>
  %i.ix = or <16 x i8> %.inner298, %i.iw
  %i.iy = and <16 x i8> %i.ix, splat (i8 1)
  %i.iz = sub <16 x i8> %i.iu, %i.iy              ; 2 uses
  %i.ja = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.hz, <16 x i8> %i.it) ; 2 uses
  %i.jb = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ic, <16 x i8> %i.iz) ; 2 uses
  %i.jc = shufflevector <16 x i8> %i.ja, <16 x i8> %i.jb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.jd = shufflevector <16 x i8> %i.ja, <16 x i8> %i.jb, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.jc, ptr %i.i, align 16, !tbaa !9, !alias.scope !38, !noalias !42
  %i.je = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <16 x i8> %i.jd, ptr %i.je, align 16, !tbaa !9, !alias.scope !38, !noalias !42
  %i.jf = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.id, <16 x i8> %i.iz) ; 2 uses
  %i.jg = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ia, <16 x i8> %i.it) ; 2 uses
  %i.jh = shufflevector <16 x i8> %i.jf, <16 x i8> %i.jg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ji = shufflevector <16 x i8> %i.jf, <16 x i8> %i.jg, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.jj = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  store <16 x i8> %i.jh, ptr %i.jj, align 16, !tbaa !9, !alias.scope !38, !noalias !42
  %i.jk = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store <16 x i8> %i.ji, ptr %i.jk, align 16, !tbaa !9, !alias.scope !38, !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 1 %i.jl, i64 %i.hh, i1 false)
  %i.jm = getelementptr inbounds nuw i8, ptr %5, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.e, ptr nonnull align 1 %i.jm, i64 %i.hh, i1 false)
  %i.jn = getelementptr inbounds i8, ptr %i.d, i64 %i.hh
  %i.jo = getelementptr inbounds i8, ptr %i.d, i64 %i.hl
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jn, i8 %i.jp, i64 %i.hp, i1 false)
  %i.jq = getelementptr inbounds i8, ptr %i.e, i64 %i.hh
  %i.jr = getelementptr inbounds i8, ptr %i.e, i64 %i.hl
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jq, i8 %i.js, i64 %i.hp, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.jt = load <2 x i64>, ptr %i.d, align 16, !tbaa !9, !alias.scope !43, !noalias !50 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.jv = load <2 x i64>, ptr %i.ju, align 1, !tbaa !9, !alias.scope !43, !noalias !50 ; 2 uses
  %i.jw = load <2 x i64>, ptr %i.e, align 16, !tbaa !9, !alias.scope !46, !noalias !51 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.jy = load <2 x i64>, ptr %i.jx, align 1, !tbaa !9, !alias.scope !46, !noalias !51 ; 2 uses
  %i.jz = bitcast <2 x i64> %i.jt to <16 x i8>    ; 2 uses
  %i.ka = bitcast <2 x i64> %i.jy to <16 x i8>    ; 2 uses
  %i.kb = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.jz, <16 x i8> %i.ka) ; 4 uses
  %i.kc = bitcast <2 x i64> %i.jv to <16 x i8>    ; 2 uses
  %i.kd = bitcast <2 x i64> %i.jw to <16 x i8>    ; 2 uses
  %i.ke = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kc, <16 x i8> %i.kd) ; 4 uses
  %.inner300 = xor <16 x i8> %i.ke, %i.kb
  %i.kf = bitcast <16 x i8> %.inner300 to <2 x i64> ; 3 uses
  %i.kg = xor <2 x i64> %i.jy, %i.jt              ; 2 uses
  %i.kh = xor <2 x i64> %i.jw, %i.jv              ; 2 uses
  %i.ki = or <2 x i64> %i.kg, %i.kh
  %i.kj = or <2 x i64> %i.ki, %i.kf
  %i.kk = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kb, <16 x i8> %i.ke)
  %i.kl = bitcast <2 x i64> %i.kj to <16 x i8>
  %i.km = and <16 x i8> %i.kl, splat (i8 1)
  %i.kn = sub <16 x i8> %i.kk, %i.km              ; 4 uses
  %i.ko = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kn, <16 x i8> %i.ke)
  %i.kp = and <2 x i64> %i.kh, %i.kf
  %.inner302 = xor <16 x i8> %i.kn, %i.ke
  %i.kq = bitcast <2 x i64> %i.kp to <16 x i8>
  %i.kr = or <16 x i8> %.inner302, %i.kq
  %i.ks = and <16 x i8> %i.kr, splat (i8 1)
  %i.kt = sub <16 x i8> %i.ko, %i.ks              ; 2 uses
  %i.ku = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kn, <16 x i8> %i.kb)
  %i.kv = and <2 x i64> %i.kg, %i.kf
  %.inner304 = xor <16 x i8> %i.kn, %i.kb
  %i.kw = bitcast <2 x i64> %i.kv to <16 x i8>
  %i.kx = or <16 x i8> %.inner304, %i.kw
  %i.ky = and <16 x i8> %i.kx, splat (i8 1)
  %i.kz = sub <16 x i8> %i.ku, %i.ky              ; 2 uses
  %i.la = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.jz, <16 x i8> %i.kt) ; 2 uses
  %i.lb = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kc, <16 x i8> %i.kz) ; 2 uses
  %i.lc = shufflevector <16 x i8> %i.la, <16 x i8> %i.lb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ld = shufflevector <16 x i8> %i.la, <16 x i8> %i.lb, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.lc, ptr %i.j, align 16, !tbaa !9, !alias.scope !48, !noalias !52
  %i.le = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store <16 x i8> %i.ld, ptr %i.le, align 16, !tbaa !9, !alias.scope !48, !noalias !52
  %i.lf = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kd, <16 x i8> %i.kz) ; 2 uses
  %i.lg = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ka, <16 x i8> %i.kt) ; 2 uses
  %i.lh = shufflevector <16 x i8> %i.lf, <16 x i8> %i.lg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.li = shufflevector <16 x i8> %i.lf, <16 x i8> %i.lg, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.lj = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  store <16 x i8> %i.lh, ptr %i.lj, align 16, !tbaa !9, !alias.scope !48, !noalias !52
  %i.lk = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store <16 x i8> %i.li, ptr %i.lk, align 16, !tbaa !9, !alias.scope !48, !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.ll = zext nneg i32 %.0255.lcssa to i64       ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 %i.ll
  %i.ln = sub nsw i32 %8, %.0255.lcssa            ; 3 uses
  %i.lo = sext i32 %i.ln to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.hf, ptr nonnull align 1 %i.lm, i64 %i.lo, i1 false)
  br i1 %.not, label %.thread261, label %bb.h

.thread261:                                       ; preds = %bb.g
  call void @VP8YuvToBgra32_SSE2(ptr noundef nonnull %i.hf, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.he) #8
  %i.lp = shl nsw i32 %.0255.lcssa, 2
  %i.lq = zext nneg i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %6, i64 %i.lq
  %i.ls = shl nsw i32 %i.ln, 2
  %i.lt = sext i32 %i.ls to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lr, ptr nonnull align 16 %i.he, i64 %i.lt, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.lu = getelementptr inbounds nuw i8, ptr %i.i, i64 416 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 %i.ll
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.lu, ptr nonnull align 1 %i.lw, i64 %i.lo, i1 false)
  call void @VP8YuvToBgra32_SSE2(ptr noundef nonnull %i.hf, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.he) #8
  call void @VP8YuvToBgra32_SSE2(ptr noundef nonnull %i.lu, ptr noundef nonnull %i.jj, ptr noundef nonnull %i.lj, ptr noundef nonnull %i.lv) #8
  %i.lx = shl nsw i32 %.0255.lcssa, 2
  %i.ly = zext nneg i32 %i.lx to i64              ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %6, i64 %i.ly
  %i.ma = shl nsw i32 %i.ln, 2
  %i.mb = sext i32 %i.ma to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lz, ptr nonnull align 16 %i.he, i64 %i.mb, i1 false)
  %i.mc = getelementptr inbounds nuw i8, ptr %7, i64 %i.ly
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mc, ptr nonnull align 16 %i.lv, i64 %i.mb, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %.thread261, %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UpsampleRgbLinePair_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef readonly captures(none) %2, ptr noalias noundef readonly captures(none) %3, ptr noalias noundef readonly captures(none) %4, ptr noalias noundef readonly captures(none) %5, ptr noalias noundef initializes((0, 3)) %6, ptr noalias noundef %7, i32 noundef %8) #1 {
bb.a:
  %i.a = alloca [463 x i8], align 16              ; 4 uses
  %i.b = alloca [17 x i8], align 16               ; 7 uses
  %i.c = alloca [17 x i8], align 16               ; 7 uses
  %i.d = alloca [17 x i8], align 16               ; 7 uses
  %i.e = alloca [17 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(463) %i.a, i8 0, i64 463, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -16
  %i.i = inttoptr i64 %i.h to ptr                 ; 22 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 5 uses
  %i.k = load i8, ptr %2, align 1, !tbaa !9
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = load i8, ptr %4, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = add nuw nsw i32 %i.n, %i.l
  %i.p = lshr i32 %i.o, 1
  %i.q = add nuw nsw i32 %i.p, 1                  ; 2 uses
  %i.r = load i8, ptr %3, align 1, !tbaa !9
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = load i8, ptr %5, align 1, !tbaa !9
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = add nuw nsw i32 %i.u, %i.s
  %i.w = lshr i32 %i.v, 1
  %i.x = add nuw nsw i32 %i.w, 1                  ; 2 uses
  %i.y = add nuw nsw i32 %i.q, %i.l
  %i.z = lshr i32 %i.y, 1                         ; 2 uses
  %i.aa = add nuw nsw i32 %i.x, %i.s
  %i.ab = lshr i32 %i.aa, 1                       ; 2 uses
  %i.ac = load i8, ptr %0, align 1, !tbaa !9
  %i.ad = zext i8 %i.ac to i32
  %i.ae = mul nuw nsw i32 %i.ad, 19077
  %i.af = lshr i32 %i.ae, 8                       ; 3 uses
  %i.ag = mul nuw nsw i32 %i.ab, 26149
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = add nuw nsw i32 %i.ah, %i.af            ; 2 uses
  %i.aj = add nsw i32 %i.ai, -14234               ; 2 uses
  %9 = icmp ult i32 %i.aj, 16384
  %i.ak = lshr i32 %i.aj, 6
  %i.al = icmp samesign ult i32 %i.ai, 14234
  %i.am = select i1 %i.al, i32 0, i32 255
  %i.an = select i1 %9, i32 %i.ak, i32 %i.am
  %i.ao = trunc i32 %i.an to i8
  store i8 %i.ao, ptr %6, align 1, !tbaa !9
  %i.ap = mul nuw nsw i32 %i.z, 6419
  %i.aq = lshr i32 %i.ap, 8
  %i.ar = mul nuw nsw i32 %i.ab, 13320
  %i.as = lshr i32 %i.ar, 8
  %i.at = add nuw nsw i32 %i.aq, %i.as
  %i.au = sub nsw i32 %i.af, %i.at                ; 2 uses
  %i.av = add nsw i32 %i.au, 8708                 ; 2 uses
  %10 = icmp ult i32 %i.av, 16384
  %i.aw = lshr i32 %i.av, 6
  %i.ax = icmp slt i32 %i.au, -8708
  %i.ay = select i1 %i.ax, i32 0, i32 255
  %i.az = select i1 %10, i32 %i.aw, i32 %i.ay
  %i.ba = trunc i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !9
  %i.bc = mul nuw nsw i32 %i.z, 33050
  %i.bd = lshr i32 %i.bc, 8
  %i.be = add nuw nsw i32 %i.bd, %i.af            ; 2 uses
  %i.bf = add nsw i32 %i.be, -17685               ; 2 uses
  %11 = icmp ult i32 %i.bf, 16384
  %i.bg = lshr i32 %i.bf, 6
  %i.bh = icmp samesign ult i32 %i.be, 17685
  %i.bi = select i1 %i.bh, i32 0, i32 255
  %i.bj = select i1 %11, i32 %i.bg, i32 %i.bi
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !9
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bm = add nuw nsw i32 %i.q, %i.n
  %i.bn = lshr i32 %i.bm, 1                       ; 2 uses
  %i.bo = add nuw nsw i32 %i.x, %i.u
  %i.bp = lshr i32 %i.bo, 1                       ; 2 uses
  %i.bq = load i8, ptr %1, align 1, !tbaa !9
  %i.br = zext i8 %i.bq to i32
  %i.bs = mul nuw nsw i32 %i.br, 19077
  %i.bt = lshr i32 %i.bs, 8                       ; 3 uses
  %i.bu = mul nuw nsw i32 %i.bp, 26149
  %i.bv = lshr i32 %i.bu, 8
  %i.bw = add nuw nsw i32 %i.bt, %i.bv            ; 2 uses
  %i.bx = add nsw i32 %i.bw, -14234               ; 2 uses
  %12 = icmp ult i32 %i.bx, 16384
  %i.by = lshr i32 %i.bx, 6
  %i.bz = icmp samesign ult i32 %i.bw, 14234
  %i.ca = select i1 %i.bz, i32 0, i32 255
  %i.cb = select i1 %12, i32 %i.by, i32 %i.ca
  %i.cc = trunc i32 %i.cb to i8
  store i8 %i.cc, ptr %7, align 1, !tbaa !9
  %i.cd = mul nuw nsw i32 %i.bn, 6419
  %i.ce = lshr i32 %i.cd, 8
  %i.cf = mul nuw nsw i32 %i.bp, 13320
  %i.cg = lshr i32 %i.cf, 8
  %i.ch = add nuw nsw i32 %i.cg, %i.ce
  %i.ci = sub nsw i32 %i.bt, %i.ch                ; 2 uses
  %i.cj = add nsw i32 %i.ci, 8708                 ; 2 uses
  %13 = icmp ult i32 %i.cj, 16384
  %i.ck = lshr i32 %i.cj, 6
  %i.cl = icmp slt i32 %i.ci, -8708
  %i.cm = select i1 %i.cl, i32 0, i32 255
  %i.cn = select i1 %13, i32 %i.ck, i32 %i.cm
  %i.co = trunc i32 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !9
  %i.cq = mul nuw nsw i32 %i.bn, 33050
  %i.cr = lshr i32 %i.cq, 8
  %i.cs = add nuw nsw i32 %i.bt, %i.cr            ; 2 uses
  %i.ct = add nsw i32 %i.cs, -17685               ; 2 uses
  %14 = icmp ult i32 %i.ct, 16384
  %i.cu = lshr i32 %i.ct, 6
  %i.cv = icmp samesign ult i32 %i.cs, 17685
  %i.cw = select i1 %i.cv, i32 0, i32 255
  %i.cx = select i1 %14, i32 %i.cu, i32 %i.cw
  %i.cy = trunc i32 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not259267 = icmp slt i32 %8, 34
  br i1 %.not259267, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.dd = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.de = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv274 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next275, %bb.f ] ; 4 uses
  %indvars.iv272 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next273, %bb.f ] ; 5 uses
  %indvars.iv = phi i64 [ 33, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv272 ; 2 uses
  %i.dh = load <2 x i64>, ptr %i.dg, align 1, !tbaa !9 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.dj = load <2 x i64>, ptr %i.di, align 1, !tbaa !9 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv272 ; 2 uses
  %i.dl = load <2 x i64>, ptr %i.dk, align 1, !tbaa !9 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.dn = load <2 x i64>, ptr %i.dm, align 1, !tbaa !9 ; 2 uses
  %i.do = bitcast <2 x i64> %i.dh to <16 x i8>    ; 2 uses
  %i.dp = bitcast <2 x i64> %i.dn to <16 x i8>    ; 2 uses
  %i.dq = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.do, <16 x i8> %i.dp) ; 4 uses
  %i.dr = bitcast <2 x i64> %i.dj to <16 x i8>    ; 2 uses
  %i.ds = bitcast <2 x i64> %i.dl to <16 x i8>    ; 2 uses
  %i.dt = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dr, <16 x i8> %i.ds) ; 4 uses
  %.inner = xor <16 x i8> %i.dt, %i.dq
  %i.du = bitcast <16 x i8> %.inner to <2 x i64>  ; 3 uses
  %i.dv = xor <2 x i64> %i.dn, %i.dh              ; 2 uses
  %i.dw = xor <2 x i64> %i.dl, %i.dj              ; 2 uses
  %i.dx = or <2 x i64> %i.dv, %i.dw
  %i.dy = or <2 x i64> %i.dx, %i.du
  %i.dz = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dq, <16 x i8> %i.dt)
  %i.ea = bitcast <2 x i64> %i.dy to <16 x i8>
  %i.eb = and <16 x i8> %i.ea, splat (i8 1)
  %i.ec = sub <16 x i8> %i.dz, %i.eb              ; 4 uses
  %i.ed = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ec, <16 x i8> %i.dt)
  %i.ee = and <2 x i64> %i.dw, %i.du
  %.inner284 = xor <16 x i8> %i.ec, %i.dt
  %i.ef = bitcast <2 x i64> %i.ee to <16 x i8>
  %i.eg = or <16 x i8> %.inner284, %i.ef
  %i.eh = and <16 x i8> %i.eg, splat (i8 1)
  %i.ei = sub <16 x i8> %i.ed, %i.eh              ; 2 uses
  %i.ej = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ec, <16 x i8> %i.dq)
  %i.ek = and <2 x i64> %i.dv, %i.du
  %.inner286 = xor <16 x i8> %i.ec, %i.dq
  %i.el = bitcast <2 x i64> %i.ek to <16 x i8>
  %i.em = or <16 x i8> %.inner286, %i.el
  %i.en = and <16 x i8> %i.em, splat (i8 1)
  %i.eo = sub <16 x i8> %i.ej, %i.en              ; 2 uses
  %i.ep = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.do, <16 x i8> %i.ei) ; 2 uses
  %i.eq = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dr, <16 x i8> %i.eo) ; 2 uses
  %i.er = shufflevector <16 x i8> %i.ep, <16 x i8> %i.eq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.es = shufflevector <16 x i8> %i.ep, <16 x i8> %i.eq, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.er, ptr %i.i, align 16, !tbaa !9
  store <16 x i8> %i.es, ptr %i.da, align 16, !tbaa !9
  %i.et = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ds, <16 x i8> %i.eo) ; 2 uses
  %i.eu = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dp, <16 x i8> %i.ei) ; 2 uses
  %i.ev = shufflevector <16 x i8> %i.et, <16 x i8> %i.eu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ew = shufflevector <16 x i8> %i.et, <16 x i8> %i.eu, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.ev, ptr %i.db, align 16, !tbaa !9
  store <16 x i8> %i.ew, ptr %i.dc, align 16, !tbaa !9
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv272 ; 2 uses
  %i.ey = load <2 x i64>, ptr %i.ex, align 1, !tbaa !9 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %i.fa = load <2 x i64>, ptr %i.ez, align 1, !tbaa !9 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv272 ; 2 uses
  %i.fc = load <2 x i64>, ptr %i.fb, align 1, !tbaa !9 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %i.fe = load <2 x i64>, ptr %i.fd, align 1, !tbaa !9 ; 2 uses
  %i.ff = bitcast <2 x i64> %i.ey to <16 x i8>    ; 2 uses
  %i.fg = bitcast <2 x i64> %i.fe to <16 x i8>    ; 2 uses
  %i.fh = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ff, <16 x i8> %i.fg) ; 4 uses
  %i.fi = bitcast <2 x i64> %i.fa to <16 x i8>    ; 2 uses
  %i.fj = bitcast <2 x i64> %i.fc to <16 x i8>    ; 2 uses
  %i.fk = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fi, <16 x i8> %i.fj) ; 4 uses
  %.inner288 = xor <16 x i8> %i.fk, %i.fh
  %i.fl = bitcast <16 x i8> %.inner288 to <2 x i64> ; 3 uses
  %i.fm = xor <2 x i64> %i.fe, %i.ey              ; 2 uses
  %i.fn = xor <2 x i64> %i.fc, %i.fa              ; 2 uses
  %i.fo = or <2 x i64> %i.fm, %i.fn
  %i.fp = or <2 x i64> %i.fo, %i.fl
  %i.fq = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fh, <16 x i8> %i.fk)
  %i.fr = bitcast <2 x i64> %i.fp to <16 x i8>
  %i.fs = and <16 x i8> %i.fr, splat (i8 1)
  %i.ft = sub <16 x i8> %i.fq, %i.fs              ; 4 uses
  %i.fu = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ft, <16 x i8> %i.fk)
  %i.fv = and <2 x i64> %i.fn, %i.fl
  %.inner290 = xor <16 x i8> %i.ft, %i.fk
  %i.fw = bitcast <2 x i64> %i.fv to <16 x i8>
  %i.fx = or <16 x i8> %.inner290, %i.fw
  %i.fy = and <16 x i8> %i.fx, splat (i8 1)
  %i.fz = sub <16 x i8> %i.fu, %i.fy              ; 2 uses
  %i.ga = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ft, <16 x i8> %i.fh)
  %i.gb = and <2 x i64> %i.fm, %i.fl
  %.inner292 = xor <16 x i8> %i.ft, %i.fh
  %i.gc = bitcast <2 x i64> %i.gb to <16 x i8>
  %i.gd = or <16 x i8> %.inner292, %i.gc
  %i.ge = and <16 x i8> %i.gd, splat (i8 1)
  %i.gf = sub <16 x i8> %i.ga, %i.ge              ; 2 uses
  %i.gg = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ff, <16 x i8> %i.fz) ; 2 uses
  %i.gh = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fi, <16 x i8> %i.gf) ; 2 uses
  %i.gi = shufflevector <16 x i8> %i.gg, <16 x i8> %i.gh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gj = shufflevector <16 x i8> %i.gg, <16 x i8> %i.gh, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.gi, ptr %i.j, align 16, !tbaa !9
  store <16 x i8> %i.gj, ptr %i.dd, align 16, !tbaa !9
  %i.gk = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fj, <16 x i8> %i.gf) ; 2 uses
  %i.gl = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fg, <16 x i8> %i.fz) ; 2 uses
  %i.gm = shufflevector <16 x i8> %i.gk, <16 x i8> %i.gl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gn = shufflevector <16 x i8> %i.gk, <16 x i8> %i.gl, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.gm, ptr %i.de, align 16, !tbaa !9
  store <16 x i8> %i.gn, ptr %i.df, align 16, !tbaa !9
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv274
  %i.gp = mul nuw nsw i64 %indvars.iv274, 3       ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 %i.gp
  call void @VP8YuvToRgb32_SSE2(ptr noundef nonnull %i.go, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gq) #8
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv274
  %i.gs = getelementptr inbounds nuw i8, ptr %7, i64 %i.gp
  call void @VP8YuvToRgb32_SSE2(ptr noundef nonnull %i.gr, ptr noundef nonnull %i.db, ptr noundef nonnull %i.de, ptr noundef nonnull %i.gs) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %i.gt = trunc i64 %indvars.iv to i32
  %i.gu = add i32 %i.gt, 33
  %.not259 = icmp sgt i32 %i.gu, %8
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 32
  br i1 %.not259, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !53

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.gv = trunc nuw nsw i64 %indvars.iv to i32
  %i.gw = and i64 %indvars.iv.next273, 4294967280
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.0255.lcssa = phi i32 [ 1, %bb.c ], [ %i.gv, %._crit_edge.loopexit ] ; 5 uses
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.gw, %._crit_edge.loopexit ] ; 4 uses
  %i.gx = icmp sgt i32 %8, 1
  br i1 %i.gx, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.gy = add nuw nsw i32 %8, 1
  %i.gz = lshr i32 %i.gy, 1
  %i.ha = lshr i32 %.0255.lcssa, 1
  %i.hb = sub nsw i32 %i.gz, %i.ha                ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.i, i64 384 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 %.0.lcssa
  %i.hf = sext i32 %i.hb to i64                   ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 1 %i.he, i64 %i.hf, i1 false)
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.hg, i64 %i.hf, i1 false)
  %i.hh = getelementptr inbounds i8, ptr %i.b, i64 %i.hf
  %i.hi = add nsw i32 %i.hb, -1
  %i.hj = sext i32 %i.hi to i64                   ; 4 uses
  %i.hk = getelementptr inbounds i8, ptr %i.b, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !9
  %i.hm = sub nsw i32 17, %i.hb
  %i.hn = sext i32 %i.hm to i64                   ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hh, i8 %i.hl, i64 %i.hn, i1 false)
  %i.ho = getelementptr inbounds i8, ptr %i.c, i64 %i.hf
  %i.hp = getelementptr inbounds i8, ptr %i.c, i64 %i.hj
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ho, i8 %i.hq, i64 %i.hn, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.hr = load <2 x i64>, ptr %i.b, align 16, !tbaa !9, !alias.scope !54, !noalias !61 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ht = load <2 x i64>, ptr %i.hs, align 1, !tbaa !9, !alias.scope !54, !noalias !61 ; 2 uses
  %i.hu = load <2 x i64>, ptr %i.c, align 16, !tbaa !9, !alias.scope !57, !noalias !62 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.hw = load <2 x i64>, ptr %i.hv, align 1, !tbaa !9, !alias.scope !57, !noalias !62 ; 2 uses
  %i.hx = bitcast <2 x i64> %i.hr to <16 x i8>    ; 2 uses
  %i.hy = bitcast <2 x i64> %i.hw to <16 x i8>    ; 2 uses
  %i.hz = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.hx, <16 x i8> %i.hy) ; 4 uses
  %i.ia = bitcast <2 x i64> %i.ht to <16 x i8>    ; 2 uses
  %i.ib = bitcast <2 x i64> %i.hu to <16 x i8>    ; 2 uses
  %i.ic = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ia, <16 x i8> %i.ib) ; 4 uses
  %.inner294 = xor <16 x i8> %i.ic, %i.hz
  %i.id = bitcast <16 x i8> %.inner294 to <2 x i64> ; 3 uses
  %i.ie = xor <2 x i64> %i.hw, %i.hr              ; 2 uses
  %i.if = xor <2 x i64> %i.hu, %i.ht              ; 2 uses
  %i.ig = or <2 x i64> %i.ie, %i.if
  %i.ih = or <2 x i64> %i.ig, %i.id
  %i.ii = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.hz, <16 x i8> %i.ic)
  %i.ij = bitcast <2 x i64> %i.ih to <16 x i8>
  %i.ik = and <16 x i8> %i.ij, splat (i8 1)
  %i.il = sub <16 x i8> %i.ii, %i.ik              ; 4 uses
  %i.im = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.il, <16 x i8> %i.ic)
  %i.in = and <2 x i64> %i.if, %i.id
  %.inner296 = xor <16 x i8> %i.il, %i.ic
  %i.io = bitcast <2 x i64> %i.in to <16 x i8>
  %i.ip = or <16 x i8> %.inner296, %i.io
  %i.iq = and <16 x i8> %i.ip, splat (i8 1)
  %i.ir = sub <16 x i8> %i.im, %i.iq              ; 2 uses
  %i.is = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.il, <16 x i8> %i.hz)
  %i.it = and <2 x i64> %i.ie, %i.id
  %.inner298 = xor <16 x i8> %i.il, %i.hz
  %i.iu = bitcast <2 x i64> %i.it to <16 x i8>
  %i.iv = or <16 x i8> %.inner298, %i.iu
  %i.iw = and <16 x i8> %i.iv, splat (i8 1)
  %i.ix = sub <16 x i8> %i.is, %i.iw              ; 2 uses
  %i.iy = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.hx, <16 x i8> %i.ir) ; 2 uses
  %i.iz = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ia, <16 x i8> %i.ix) ; 2 uses
  %i.ja = shufflevector <16 x i8> %i.iy, <16 x i8> %i.iz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.jb = shufflevector <16 x i8> %i.iy, <16 x i8> %i.iz, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.ja, ptr %i.i, align 16, !tbaa !9, !alias.scope !59, !noalias !63
  %i.jc = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <16 x i8> %i.jb, ptr %i.jc, align 16, !tbaa !9, !alias.scope !59, !noalias !63
  %i.jd = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ib, <16 x i8> %i.ix) ; 2 uses
  %i.je = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.hy, <16 x i8> %i.ir) ; 2 uses
  %i.jf = shufflevector <16 x i8> %i.jd, <16 x i8> %i.je, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.jg = shufflevector <16 x i8> %i.jd, <16 x i8> %i.je, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.jh = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  store <16 x i8> %i.jf, ptr %i.jh, align 16, !tbaa !9, !alias.scope !59, !noalias !63
  %i.ji = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store <16 x i8> %i.jg, ptr %i.ji, align 16, !tbaa !9, !alias.scope !59, !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 1 %i.jj, i64 %i.hf, i1 false)
  %i.jk = getelementptr inbounds nuw i8, ptr %5, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.e, ptr nonnull align 1 %i.jk, i64 %i.hf, i1 false)
  %i.jl = getelementptr inbounds i8, ptr %i.d, i64 %i.hf
  %i.jm = getelementptr inbounds i8, ptr %i.d, i64 %i.hj
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jl, i8 %i.jn, i64 %i.hn, i1 false)
  %i.jo = getelementptr inbounds i8, ptr %i.e, i64 %i.hf
  %i.jp = getelementptr inbounds i8, ptr %i.e, i64 %i.hj
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jo, i8 %i.jq, i64 %i.hn, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.jr = load <2 x i64>, ptr %i.d, align 16, !tbaa !9, !alias.scope !64, !noalias !71 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.jt = load <2 x i64>, ptr %i.js, align 1, !tbaa !9, !alias.scope !64, !noalias !71 ; 2 uses
  %i.ju = load <2 x i64>, ptr %i.e, align 16, !tbaa !9, !alias.scope !67, !noalias !72 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.jw = load <2 x i64>, ptr %i.jv, align 1, !tbaa !9, !alias.scope !67, !noalias !72 ; 2 uses
  %i.jx = bitcast <2 x i64> %i.jr to <16 x i8>    ; 2 uses
  %i.jy = bitcast <2 x i64> %i.jw to <16 x i8>    ; 2 uses
  %i.jz = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.jx, <16 x i8> %i.jy) ; 4 uses
  %i.ka = bitcast <2 x i64> %i.jt to <16 x i8>    ; 2 uses
  %i.kb = bitcast <2 x i64> %i.ju to <16 x i8>    ; 2 uses
  %i.kc = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ka, <16 x i8> %i.kb) ; 4 uses
  %.inner300 = xor <16 x i8> %i.kc, %i.jz
  %i.kd = bitcast <16 x i8> %.inner300 to <2 x i64> ; 3 uses
  %i.ke = xor <2 x i64> %i.jw, %i.jr              ; 2 uses
  %i.kf = xor <2 x i64> %i.ju, %i.jt              ; 2 uses
  %i.kg = or <2 x i64> %i.ke, %i.kf
  %i.kh = or <2 x i64> %i.kg, %i.kd
  %i.ki = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.jz, <16 x i8> %i.kc)
  %i.kj = bitcast <2 x i64> %i.kh to <16 x i8>
  %i.kk = and <16 x i8> %i.kj, splat (i8 1)
  %i.kl = sub <16 x i8> %i.ki, %i.kk              ; 4 uses
  %i.km = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kl, <16 x i8> %i.kc)
  %i.kn = and <2 x i64> %i.kf, %i.kd
  %.inner302 = xor <16 x i8> %i.kl, %i.kc
  %i.ko = bitcast <2 x i64> %i.kn to <16 x i8>
  %i.kp = or <16 x i8> %.inner302, %i.ko
  %i.kq = and <16 x i8> %i.kp, splat (i8 1)
  %i.kr = sub <16 x i8> %i.km, %i.kq              ; 2 uses
  %i.ks = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kl, <16 x i8> %i.jz)
  %i.kt = and <2 x i64> %i.ke, %i.kd
  %.inner304 = xor <16 x i8> %i.kl, %i.jz
  %i.ku = bitcast <2 x i64> %i.kt to <16 x i8>
  %i.kv = or <16 x i8> %.inner304, %i.ku
  %i.kw = and <16 x i8> %i.kv, splat (i8 1)
  %i.kx = sub <16 x i8> %i.ks, %i.kw              ; 2 uses
  %i.ky = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.jx, <16 x i8> %i.kr) ; 2 uses
  %i.kz = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ka, <16 x i8> %i.kx) ; 2 uses
  %i.la = shufflevector <16 x i8> %i.ky, <16 x i8> %i.kz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.lb = shufflevector <16 x i8> %i.ky, <16 x i8> %i.kz, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.la, ptr %i.j, align 16, !tbaa !9, !alias.scope !69, !noalias !73
  %i.lc = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store <16 x i8> %i.lb, ptr %i.lc, align 16, !tbaa !9, !alias.scope !69, !noalias !73
  %i.ld = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kb, <16 x i8> %i.kx) ; 2 uses
  %i.le = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.jy, <16 x i8> %i.kr) ; 2 uses
  %i.lf = shufflevector <16 x i8> %i.ld, <16 x i8> %i.le, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.lg = shufflevector <16 x i8> %i.ld, <16 x i8> %i.le, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.lh = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  store <16 x i8> %i.lf, ptr %i.lh, align 16, !tbaa !9, !alias.scope !69, !noalias !73
  %i.li = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store <16 x i8> %i.lg, ptr %i.li, align 16, !tbaa !9, !alias.scope !69, !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.lj = zext nneg i32 %.0255.lcssa to i64       ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 %i.lj
  %i.ll = sub nsw i32 %8, %.0255.lcssa            ; 3 uses
  %i.lm = sext i32 %i.ll to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.hd, ptr nonnull align 1 %i.lk, i64 %i.lm, i1 false)
  br i1 %.not, label %.thread261, label %bb.h

.thread261:                                       ; preds = %bb.g
  call void @VP8YuvToRgb32_SSE2(ptr noundef nonnull %i.hd, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hc) #8
  %i.ln = mul nuw nsw i32 %.0255.lcssa, 3
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw i8, ptr %6, i64 %i.lo
  %i.lq = mul nsw i32 %i.ll, 3
  %i.lr = sext i32 %i.lq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lp, ptr nonnull align 16 %i.hc, i64 %i.lr, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ls = getelementptr inbounds nuw i8, ptr %i.i, i64 416 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 %i.lj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ls, ptr nonnull align 1 %i.lu, i64 %i.lm, i1 false)
  call void @VP8YuvToRgb32_SSE2(ptr noundef nonnull %i.hd, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hc) #8
  call void @VP8YuvToRgb32_SSE2(ptr noundef nonnull %i.ls, ptr noundef nonnull %i.jh, ptr noundef nonnull %i.lh, ptr noundef nonnull %i.lt) #8
  %i.lv = mul nuw nsw i32 %.0255.lcssa, 3
  %i.lw = zext nneg i32 %i.lv to i64              ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %6, i64 %i.lw
  %i.ly = mul nsw i32 %i.ll, 3
  %i.lz = sext i32 %i.ly to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lx, ptr nonnull align 16 %i.hc, i64 %i.lz, i1 false)
  %i.ma = getelementptr inbounds nuw i8, ptr %7, i64 %i.lw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ma, ptr nonnull align 16 %i.lt, i64 %i.lz, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %.thread261, %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UpsampleBgrLinePair_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef readonly captures(none) %2, ptr noalias noundef readonly captures(none) %3, ptr noalias noundef readonly captures(none) %4, ptr noalias noundef readonly captures(none) %5, ptr noalias noundef initializes((0, 3)) %6, ptr noalias noundef %7, i32 noundef %8) #1 {
bb.a:
  %i.a = alloca [463 x i8], align 16              ; 4 uses
  %i.b = alloca [17 x i8], align 16               ; 7 uses
  %i.c = alloca [17 x i8], align 16               ; 7 uses
  %i.d = alloca [17 x i8], align 16               ; 7 uses
  %i.e = alloca [17 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(463) %i.a, i8 0, i64 463, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -16
  %i.i = inttoptr i64 %i.h to ptr                 ; 22 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 5 uses
  %i.k = load i8, ptr %2, align 1, !tbaa !9
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = load i8, ptr %4, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = add nuw nsw i32 %i.n, %i.l
  %i.p = lshr i32 %i.o, 1
  %i.q = add nuw nsw i32 %i.p, 1                  ; 2 uses
  %i.r = load i8, ptr %3, align 1, !tbaa !9
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = load i8, ptr %5, align 1, !tbaa !9
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = add nuw nsw i32 %i.u, %i.s
  %i.w = lshr i32 %i.v, 1
  %i.x = add nuw nsw i32 %i.w, 1                  ; 2 uses
  %i.y = add nuw nsw i32 %i.q, %i.l
  %i.z = lshr i32 %i.y, 1                         ; 2 uses
  %i.aa = add nuw nsw i32 %i.x, %i.s
  %i.ab = lshr i32 %i.aa, 1                       ; 2 uses
  %i.ac = load i8, ptr %0, align 1, !tbaa !9
  %i.ad = zext i8 %i.ac to i32
  %i.ae = mul nuw nsw i32 %i.ad, 19077
  %i.af = lshr i32 %i.ae, 8                       ; 3 uses
  %i.ag = mul nuw nsw i32 %i.z, 33050
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = add nuw nsw i32 %i.ah, %i.af            ; 2 uses
  %i.aj = add nsw i32 %i.ai, -17685               ; 2 uses
  %9 = icmp ult i32 %i.aj, 16384
  %i.ak = lshr i32 %i.aj, 6
  %i.al = icmp samesign ult i32 %i.ai, 17685
  %i.am = select i1 %i.al, i32 0, i32 255
  %i.an = select i1 %9, i32 %i.ak, i32 %i.am
  %i.ao = trunc i32 %i.an to i8
  store i8 %i.ao, ptr %6, align 1, !tbaa !9
  %i.ap = mul nuw nsw i32 %i.z, 6419
  %i.aq = lshr i32 %i.ap, 8
  %i.ar = mul nuw nsw i32 %i.ab, 13320
  %i.as = lshr i32 %i.ar, 8
  %i.at = add nuw nsw i32 %i.aq, %i.as
  %i.au = sub nsw i32 %i.af, %i.at                ; 2 uses
  %i.av = add nsw i32 %i.au, 8708                 ; 2 uses
  %10 = icmp ult i32 %i.av, 16384
  %i.aw = lshr i32 %i.av, 6
  %i.ax = icmp slt i32 %i.au, -8708
  %i.ay = select i1 %i.ax, i32 0, i32 255
  %i.az = select i1 %10, i32 %i.aw, i32 %i.ay
  %i.ba = trunc i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !9
  %i.bc = mul nuw nsw i32 %i.ab, 26149
  %i.bd = lshr i32 %i.bc, 8
  %i.be = add nuw nsw i32 %i.bd, %i.af            ; 2 uses
  %i.bf = add nsw i32 %i.be, -14234               ; 2 uses
  %11 = icmp ult i32 %i.bf, 16384
  %i.bg = lshr i32 %i.bf, 6
  %i.bh = icmp samesign ult i32 %i.be, 14234
  %i.bi = select i1 %i.bh, i32 0, i32 255
  %i.bj = select i1 %11, i32 %i.bg, i32 %i.bi
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !9
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bm = add nuw nsw i32 %i.q, %i.n
  %i.bn = lshr i32 %i.bm, 1                       ; 2 uses
  %i.bo = add nuw nsw i32 %i.x, %i.u
  %i.bp = lshr i32 %i.bo, 1                       ; 2 uses
  %i.bq = load i8, ptr %1, align 1, !tbaa !9
  %i.br = zext i8 %i.bq to i32
  %i.bs = mul nuw nsw i32 %i.br, 19077
  %i.bt = lshr i32 %i.bs, 8                       ; 3 uses
  %i.bu = mul nuw nsw i32 %i.bn, 33050
  %i.bv = lshr i32 %i.bu, 8
  %i.bw = add nuw nsw i32 %i.bt, %i.bv            ; 2 uses
  %i.bx = add nsw i32 %i.bw, -17685               ; 2 uses
  %12 = icmp ult i32 %i.bx, 16384
  %i.by = lshr i32 %i.bx, 6
  %i.bz = icmp samesign ult i32 %i.bw, 17685
  %i.ca = select i1 %i.bz, i32 0, i32 255
  %i.cb = select i1 %12, i32 %i.by, i32 %i.ca
  %i.cc = trunc i32 %i.cb to i8
  store i8 %i.cc, ptr %7, align 1, !tbaa !9
  %i.cd = mul nuw nsw i32 %i.bn, 6419
  %i.ce = lshr i32 %i.cd, 8
  %i.cf = mul nuw nsw i32 %i.bp, 13320
  %i.cg = lshr i32 %i.cf, 8
  %i.ch = add nuw nsw i32 %i.cg, %i.ce
  %i.ci = sub nsw i32 %i.bt, %i.ch                ; 2 uses
  %i.cj = add nsw i32 %i.ci, 8708                 ; 2 uses
  %13 = icmp ult i32 %i.cj, 16384
  %i.ck = lshr i32 %i.cj, 6
  %i.cl = icmp slt i32 %i.ci, -8708
  %i.cm = select i1 %i.cl, i32 0, i32 255
  %i.cn = select i1 %13, i32 %i.ck, i32 %i.cm
  %i.co = trunc i32 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !9
  %i.cq = mul nuw nsw i32 %i.bp, 26149
  %i.cr = lshr i32 %i.cq, 8
  %i.cs = add nuw nsw i32 %i.bt, %i.cr            ; 2 uses
  %i.ct = add nsw i32 %i.cs, -14234               ; 2 uses
  %14 = icmp ult i32 %i.ct, 16384
  %i.cu = lshr i32 %i.ct, 6
  %i.cv = icmp samesign ult i32 %i.cs, 14234
  %i.cw = select i1 %i.cv, i32 0, i32 255
  %i.cx = select i1 %14, i32 %i.cu, i32 %i.cw
  %i.cy = trunc i32 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not259267 = icmp slt i32 %8, 34
  br i1 %.not259267, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.dd = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.de = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv274 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next275, %bb.f ] ; 4 uses
  %indvars.iv272 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next273, %bb.f ] ; 5 uses
  %indvars.iv = phi i64 [ 33, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv272 ; 2 uses
  %i.dh = load <2 x i64>, ptr %i.dg, align 1, !tbaa !9 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.dj = load <2 x i64>, ptr %i.di, align 1, !tbaa !9 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv272 ; 2 uses
  %i.dl = load <2 x i64>, ptr %i.dk, align 1, !tbaa !9 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.dn = load <2 x i64>, ptr %i.dm, align 1, !tbaa !9 ; 2 uses
  %i.do = bitcast <2 x i64> %i.dh to <16 x i8>    ; 2 uses
  %i.dp = bitcast <2 x i64> %i.dn to <16 x i8>    ; 2 uses
  %i.dq = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.do, <16 x i8> %i.dp) ; 4 uses
  %i.dr = bitcast <2 x i64> %i.dj to <16 x i8>    ; 2 uses
  %i.ds = bitcast <2 x i64> %i.dl to <16 x i8>    ; 2 uses
  %i.dt = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dr, <16 x i8> %i.ds) ; 4 uses
  %.inner = xor <16 x i8> %i.dt, %i.dq
  %i.du = bitcast <16 x i8> %.inner to <2 x i64>  ; 3 uses
  %i.dv = xor <2 x i64> %i.dn, %i.dh              ; 2 uses
  %i.dw = xor <2 x i64> %i.dl, %i.dj              ; 2 uses
  %i.dx = or <2 x i64> %i.dv, %i.dw
  %i.dy = or <2 x i64> %i.dx, %i.du
  %i.dz = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dq, <16 x i8> %i.dt)
  %i.ea = bitcast <2 x i64> %i.dy to <16 x i8>
  %i.eb = and <16 x i8> %i.ea, splat (i8 1)
  %i.ec = sub <16 x i8> %i.dz, %i.eb              ; 4 uses
  %i.ed = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ec, <16 x i8> %i.dt)
  %i.ee = and <2 x i64> %i.dw, %i.du
  %.inner284 = xor <16 x i8> %i.ec, %i.dt
  %i.ef = bitcast <2 x i64> %i.ee to <16 x i8>
  %i.eg = or <16 x i8> %.inner284, %i.ef
  %i.eh = and <16 x i8> %i.eg, splat (i8 1)
  %i.ei = sub <16 x i8> %i.ed, %i.eh              ; 2 uses
  %i.ej = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ec, <16 x i8> %i.dq)
  %i.ek = and <2 x i64> %i.dv, %i.du
  %.inner286 = xor <16 x i8> %i.ec, %i.dq
  %i.el = bitcast <2 x i64> %i.ek to <16 x i8>
  %i.em = or <16 x i8> %.inner286, %i.el
  %i.en = and <16 x i8> %i.em, splat (i8 1)
  %i.eo = sub <16 x i8> %i.ej, %i.en              ; 2 uses
  %i.ep = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.do, <16 x i8> %i.ei) ; 2 uses
  %i.eq = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dr, <16 x i8> %i.eo) ; 2 uses
  %i.er = shufflevector <16 x i8> %i.ep, <16 x i8> %i.eq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.es = shufflevector <16 x i8> %i.ep, <16 x i8> %i.eq, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.er, ptr %i.i, align 16, !tbaa !9
  store <16 x i8> %i.es, ptr %i.da, align 16, !tbaa !9
  %i.et = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ds, <16 x i8> %i.eo) ; 2 uses
  %i.eu = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dp, <16 x i8> %i.ei) ; 2 uses
  %i.ev = shufflevector <16 x i8> %i.et, <16 x i8> %i.eu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ew = shufflevector <16 x i8> %i.et, <16 x i8> %i.eu, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.ev, ptr %i.db, align 16, !tbaa !9
  store <16 x i8> %i.ew, ptr %i.dc, align 16, !tbaa !9
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv272 ; 2 uses
  %i.ey = load <2 x i64>, ptr %i.ex, align 1, !tbaa !9 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %i.fa = load <2 x i64>, ptr %i.ez, align 1, !tbaa !9 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv272 ; 2 uses
  %i.fc = load <2 x i64>, ptr %i.fb, align 1, !tbaa !9 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %i.fe = load <2 x i64>, ptr %i.fd, align 1, !tbaa !9 ; 2 uses
  %i.ff = bitcast <2 x i64> %i.ey to <16 x i8>    ; 2 uses
  %i.fg = bitcast <2 x i64> %i.fe to <16 x i8>    ; 2 uses
  %i.fh = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ff, <16 x i8> %i.fg) ; 4 uses
  %i.fi = bitcast <2 x i64> %i.fa to <16 x i8>    ; 2 uses
  %i.fj = bitcast <2 x i64> %i.fc to <16 x i8>    ; 2 uses
  %i.fk = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fi, <16 x i8> %i.fj) ; 4 uses
  %.inner288 = xor <16 x i8> %i.fk, %i.fh
  %i.fl = bitcast <16 x i8> %.inner288 to <2 x i64> ; 3 uses
  %i.fm = xor <2 x i64> %i.fe, %i.ey              ; 2 uses
  %i.fn = xor <2 x i64> %i.fc, %i.fa              ; 2 uses
  %i.fo = or <2 x i64> %i.fm, %i.fn
  %i.fp = or <2 x i64> %i.fo, %i.fl
  %i.fq = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fh, <16 x i8> %i.fk)
  %i.fr = bitcast <2 x i64> %i.fp to <16 x i8>
  %i.fs = and <16 x i8> %i.fr, splat (i8 1)
  %i.ft = sub <16 x i8> %i.fq, %i.fs              ; 4 uses
  %i.fu = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ft, <16 x i8> %i.fk)
  %i.fv = and <2 x i64> %i.fn, %i.fl
  %.inner290 = xor <16 x i8> %i.ft, %i.fk
  %i.fw = bitcast <2 x i64> %i.fv to <16 x i8>
  %i.fx = or <16 x i8> %.inner290, %i.fw
  %i.fy = and <16 x i8> %i.fx, splat (i8 1)
  %i.fz = sub <16 x i8> %i.fu, %i.fy              ; 2 uses
  %i.ga = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ft, <16 x i8> %i.fh)
  %i.gb = and <2 x i64> %i.fm, %i.fl
  %.inner292 = xor <16 x i8> %i.ft, %i.fh
  %i.gc = bitcast <2 x i64> %i.gb to <16 x i8>
  %i.gd = or <16 x i8> %.inner292, %i.gc
  %i.ge = and <16 x i8> %i.gd, splat (i8 1)
  %i.gf = sub <16 x i8> %i.ga, %i.ge              ; 2 uses
  %i.gg = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ff, <16 x i8> %i.fz) ; 2 uses
  %i.gh = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fi, <16 x i8> %i.gf) ; 2 uses
  %i.gi = shufflevector <16 x i8> %i.gg, <16 x i8> %i.gh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gj = shufflevector <16 x i8> %i.gg, <16 x i8> %i.gh, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.gi, ptr %i.j, align 16, !tbaa !9
  store <16 x i8> %i.gj, ptr %i.dd, align 16, !tbaa !9
  %i.gk = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fj, <16 x i8> %i.gf) ; 2 uses
  %i.gl = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fg, <16 x i8> %i.fz) ; 2 uses
  %i.gm = shufflevector <16 x i8> %i.gk, <16 x i8> %i.gl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gn = shufflevector <16 x i8> %i.gk, <16 x i8> %i.gl, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.gm, ptr %i.de, align 16, !tbaa !9
  store <16 x i8> %i.gn, ptr %i.df, align 16, !tbaa !9
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv274
  %i.gp = mul nuw nsw i64 %indvars.iv274, 3       ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 %i.gp
  call void @VP8YuvToBgr32_SSE2(ptr noundef nonnull %i.go, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gq) #8
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv274
  %i.gs = getelementptr inbounds nuw i8, ptr %7, i64 %i.gp
  call void @VP8YuvToBgr32_SSE2(ptr noundef nonnull %i.gr, ptr noundef nonnull %i.db, ptr noundef nonnull %i.de, ptr noundef nonnull %i.gs) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %i.gt = trunc i64 %indvars.iv to i32
  %i.gu = add i32 %i.gt, 33
  %.not259 = icmp sgt i32 %i.gu, %8
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 32
  br i1 %.not259, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !74

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.gv = trunc nuw nsw i64 %indvars.iv to i32
  %i.gw = and i64 %indvars.iv.next273, 4294967280
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.0255.lcssa = phi i32 [ 1, %bb.c ], [ %i.gv, %._crit_edge.loopexit ] ; 5 uses
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.gw, %._crit_edge.loopexit ] ; 4 uses
  %i.gx = icmp sgt i32 %8, 1
  br i1 %i.gx, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.gy = add nuw nsw i32 %8, 1
  %i.gz = lshr i32 %i.gy, 1
  %i.ha = lshr i32 %.0255.lcssa, 1
  %i.hb = sub nsw i32 %i.gz, %i.ha                ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.i, i64 384 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 %.0.lcssa
  %i.hf = sext i32 %i.hb to i64                   ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 1 %i.he, i64 %i.hf, i1 false)
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.hg, i64 %i.hf, i1 false)
  %i.hh = getelementptr inbounds i8, ptr %i.b, i64 %i.hf
  %i.hi = add nsw i32 %i.hb, -1
  %i.hj = sext i32 %i.hi to i64                   ; 4 uses
  %i.hk = getelementptr inbounds i8, ptr %i.b, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !9
  %i.hm = sub nsw i32 17, %i.hb
  %i.hn = sext i32 %i.hm to i64                   ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hh, i8 %i.hl, i64 %i.hn, i1 false)
  %i.ho = getelementptr inbounds i8, ptr %i.c, i64 %i.hf
  %i.hp = getelementptr inbounds i8, ptr %i.c, i64 %i.hj
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ho, i8 %i.hq, i64 %i.hn, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.hr = load <2 x i64>, ptr %i.b, align 16, !tbaa !9, !alias.scope !75, !noalias !82 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ht = load <2 x i64>, ptr %i.hs, align 1, !tbaa !9, !alias.scope !75, !noalias !82 ; 2 uses
  %i.hu = load <2 x i64>, ptr %i.c, align 16, !tbaa !9, !alias.scope !78, !noalias !83 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.hw = load <2 x i64>, ptr %i.hv, align 1, !tbaa !9, !alias.scope !78, !noalias !83 ; 2 uses
  %i.hx = bitcast <2 x i64> %i.hr to <16 x i8>    ; 2 uses
  %i.hy = bitcast <2 x i64> %i.hw to <16 x i8>    ; 2 uses
  %i.hz = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.hx, <16 x i8> %i.hy) ; 4 uses
  %i.ia = bitcast <2 x i64> %i.ht to <16 x i8>    ; 2 uses
  %i.ib = bitcast <2 x i64> %i.hu to <16 x i8>    ; 2 uses
  %i.ic = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ia, <16 x i8> %i.ib) ; 4 uses
  %.inner294 = xor <16 x i8> %i.ic, %i.hz
  %i.id = bitcast <16 x i8> %.inner294 to <2 x i64> ; 3 uses
  %i.ie = xor <2 x i64> %i.hw, %i.hr              ; 2 uses
  %i.if = xor <2 x i64> %i.hu, %i.ht              ; 2 uses
  %i.ig = or <2 x i64> %i.ie, %i.if
  %i.ih = or <2 x i64> %i.ig, %i.id
  %i.ii = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.hz, <16 x i8> %i.ic)
  %i.ij = bitcast <2 x i64> %i.ih to <16 x i8>
  %i.ik = and <16 x i8> %i.ij, splat (i8 1)
  %i.il = sub <16 x i8> %i.ii, %i.ik              ; 4 uses
  %i.im = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.il, <16 x i8> %i.ic)
  %i.in = and <2 x i64> %i.if, %i.id
  %.inner296 = xor <16 x i8> %i.il, %i.ic
  %i.io = bitcast <2 x i64> %i.in to <16 x i8>
  %i.ip = or <16 x i8> %.inner296, %i.io
  %i.iq = and <16 x i8> %i.ip, splat (i8 1)
  %i.ir = sub <16 x i8> %i.im, %i.iq              ; 2 uses
  %i.is = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.il, <16 x i8> %i.hz)
  %i.it = and <2 x i64> %i.ie, %i.id
  %.inner298 = xor <16 x i8> %i.il, %i.hz
  %i.iu = bitcast <2 x i64> %i.it to <16 x i8>
  %i.iv = or <16 x i8> %.inner298, %i.iu
  %i.iw = and <16 x i8> %i.iv, splat (i8 1)
  %i.ix = sub <16 x i8> %i.is, %i.iw              ; 2 uses
  %i.iy = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.hx, <16 x i8> %i.ir) ; 2 uses
  %i.iz = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ia, <16 x i8> %i.ix) ; 2 uses
  %i.ja = shufflevector <16 x i8> %i.iy, <16 x i8> %i.iz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.jb = shufflevector <16 x i8> %i.iy, <16 x i8> %i.iz, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.ja, ptr %i.i, align 16, !tbaa !9, !alias.scope !80, !noalias !84
  %i.jc = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <16 x i8> %i.jb, ptr %i.jc, align 16, !tbaa !9, !alias.scope !80, !noalias !84
  %i.jd = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ib, <16 x i8> %i.ix) ; 2 uses
  %i.je = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.hy, <16 x i8> %i.ir) ; 2 uses
  %i.jf = shufflevector <16 x i8> %i.jd, <16 x i8> %i.je, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.jg = shufflevector <16 x i8> %i.jd, <16 x i8> %i.je, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.jh = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  store <16 x i8> %i.jf, ptr %i.jh, align 16, !tbaa !9, !alias.scope !80, !noalias !84
  %i.ji = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store <16 x i8> %i.jg, ptr %i.ji, align 16, !tbaa !9, !alias.scope !80, !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 1 %i.jj, i64 %i.hf, i1 false)
  %i.jk = getelementptr inbounds nuw i8, ptr %5, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.e, ptr nonnull align 1 %i.jk, i64 %i.hf, i1 false)
  %i.jl = getelementptr inbounds i8, ptr %i.d, i64 %i.hf
  %i.jm = getelementptr inbounds i8, ptr %i.d, i64 %i.hj
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jl, i8 %i.jn, i64 %i.hn, i1 false)
  %i.jo = getelementptr inbounds i8, ptr %i.e, i64 %i.hf
  %i.jp = getelementptr inbounds i8, ptr %i.e, i64 %i.hj
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jo, i8 %i.jq, i64 %i.hn, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.jr = load <2 x i64>, ptr %i.d, align 16, !tbaa !9, !alias.scope !85, !noalias !92 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.jt = load <2 x i64>, ptr %i.js, align 1, !tbaa !9, !alias.scope !85, !noalias !92 ; 2 uses
  %i.ju = load <2 x i64>, ptr %i.e, align 16, !tbaa !9, !alias.scope !88, !noalias !93 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.jw = load <2 x i64>, ptr %i.jv, align 1, !tbaa !9, !alias.scope !88, !noalias !93 ; 2 uses
  %i.jx = bitcast <2 x i64> %i.jr to <16 x i8>    ; 2 uses
  %i.jy = bitcast <2 x i64> %i.jw to <16 x i8>    ; 2 uses
  %i.jz = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.jx, <16 x i8> %i.jy) ; 4 uses
  %i.ka = bitcast <2 x i64> %i.jt to <16 x i8>    ; 2 uses
  %i.kb = bitcast <2 x i64> %i.ju to <16 x i8>    ; 2 uses
  %i.kc = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ka, <16 x i8> %i.kb) ; 4 uses
  %.inner300 = xor <16 x i8> %i.kc, %i.jz
  %i.kd = bitcast <16 x i8> %.inner300 to <2 x i64> ; 3 uses
  %i.ke = xor <2 x i64> %i.jw, %i.jr              ; 2 uses
  %i.kf = xor <2 x i64> %i.ju, %i.jt              ; 2 uses
  %i.kg = or <2 x i64> %i.ke, %i.kf
  %i.kh = or <2 x i64> %i.kg, %i.kd
  %i.ki = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.jz, <16 x i8> %i.kc)
  %i.kj = bitcast <2 x i64> %i.kh to <16 x i8>
  %i.kk = and <16 x i8> %i.kj, splat (i8 1)
  %i.kl = sub <16 x i8> %i.ki, %i.kk              ; 4 uses
  %i.km = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kl, <16 x i8> %i.kc)
  %i.kn = and <2 x i64> %i.kf, %i.kd
  %.inner302 = xor <16 x i8> %i.kl, %i.kc
  %i.ko = bitcast <2 x i64> %i.kn to <16 x i8>
  %i.kp = or <16 x i8> %.inner302, %i.ko
  %i.kq = and <16 x i8> %i.kp, splat (i8 1)
  %i.kr = sub <16 x i8> %i.km, %i.kq              ; 2 uses
  %i.ks = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kl, <16 x i8> %i.jz)
  %i.kt = and <2 x i64> %i.ke, %i.kd
  %.inner304 = xor <16 x i8> %i.kl, %i.jz
  %i.ku = bitcast <2 x i64> %i.kt to <16 x i8>
  %i.kv = or <16 x i8> %.inner304, %i.ku
  %i.kw = and <16 x i8> %i.kv, splat (i8 1)
  %i.kx = sub <16 x i8> %i.ks, %i.kw              ; 2 uses
  %i.ky = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.jx, <16 x i8> %i.kr) ; 2 uses
  %i.kz = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ka, <16 x i8> %i.kx) ; 2 uses
  %i.la = shufflevector <16 x i8> %i.ky, <16 x i8> %i.kz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.lb = shufflevector <16 x i8> %i.ky, <16 x i8> %i.kz, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.la, ptr %i.j, align 16, !tbaa !9, !alias.scope !90, !noalias !94
  %i.lc = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store <16 x i8> %i.lb, ptr %i.lc, align 16, !tbaa !9, !alias.scope !90, !noalias !94
  %i.ld = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kb, <16 x i8> %i.kx) ; 2 uses
  %i.le = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.jy, <16 x i8> %i.kr) ; 2 uses
  %i.lf = shufflevector <16 x i8> %i.ld, <16 x i8> %i.le, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.lg = shufflevector <16 x i8> %i.ld, <16 x i8> %i.le, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.lh = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  store <16 x i8> %i.lf, ptr %i.lh, align 16, !tbaa !9, !alias.scope !90, !noalias !94
  %i.li = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store <16 x i8> %i.lg, ptr %i.li, align 16, !tbaa !9, !alias.scope !90, !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.lj = zext nneg i32 %.0255.lcssa to i64       ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 %i.lj
  %i.ll = sub nsw i32 %8, %.0255.lcssa            ; 3 uses
  %i.lm = sext i32 %i.ll to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.hd, ptr nonnull align 1 %i.lk, i64 %i.lm, i1 false)
  br i1 %.not, label %.thread261, label %bb.h

.thread261:                                       ; preds = %bb.g
  call void @VP8YuvToBgr32_SSE2(ptr noundef nonnull %i.hd, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hc) #8
  %i.ln = mul nuw nsw i32 %.0255.lcssa, 3
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw i8, ptr %6, i64 %i.lo
  %i.lq = mul nsw i32 %i.ll, 3
  %i.lr = sext i32 %i.lq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lp, ptr nonnull align 16 %i.hc, i64 %i.lr, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ls = getelementptr inbounds nuw i8, ptr %i.i, i64 416 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 %i.lj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ls, ptr nonnull align 1 %i.lu, i64 %i.lm, i1 false)
  call void @VP8YuvToBgr32_SSE2(ptr noundef nonnull %i.hd, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hc) #8
  call void @VP8YuvToBgr32_SSE2(ptr noundef nonnull %i.ls, ptr noundef nonnull %i.jh, ptr noundef nonnull %i.lh, ptr noundef nonnull %i.lt) #8
  %i.lv = mul nuw nsw i32 %.0255.lcssa, 3
  %i.lw = zext nneg i32 %i.lv to i64              ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %6, i64 %i.lw
  %i.ly = mul nsw i32 %i.ll, 3
  %i.lz = sext i32 %i.ly to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lx, ptr nonnull align 16 %i.hc, i64 %i.lz, i1 false)
  %i.ma = getelementptr inbounds nuw i8, ptr %7, i64 %i.lw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ma, ptr nonnull align 16 %i.lt, i64 %i.lz, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %.thread261, %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UpsampleArgbLinePair_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef readonly captures(none) %2, ptr noalias noundef readonly captures(none) %3, ptr noalias noundef readonly captures(none) %4, ptr noalias noundef readonly captures(none) %5, ptr noalias noundef initializes((0, 4)) %6, ptr noalias noundef %7, i32 noundef %8) #1 {
bb.a:
  %i.a = alloca [463 x i8], align 16              ; 4 uses
  %i.b = alloca [17 x i8], align 16               ; 7 uses
  %i.c = alloca [17 x i8], align 16               ; 7 uses
  %i.d = alloca [17 x i8], align 16               ; 7 uses
  %i.e = alloca [17 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(463) %i.a, i8 0, i64 463, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -16
  %i.i = inttoptr i64 %i.h to ptr                 ; 22 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 5 uses
  %i.k = load i8, ptr %2, align 1, !tbaa !9
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = load i8, ptr %4, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = add nuw nsw i32 %i.n, %i.l
  %i.p = lshr i32 %i.o, 1
  %i.q = add nuw nsw i32 %i.p, 1                  ; 2 uses
  %i.r = load i8, ptr %3, align 1, !tbaa !9
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = load i8, ptr %5, align 1, !tbaa !9
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = add nuw nsw i32 %i.u, %i.s
  %i.w = lshr i32 %i.v, 1
  %i.x = add nuw nsw i32 %i.w, 1                  ; 2 uses
  %i.y = add nuw nsw i32 %i.q, %i.l
  %i.z = lshr i32 %i.y, 1                         ; 2 uses
  %i.aa = add nuw nsw i32 %i.x, %i.s
  %i.ab = lshr i32 %i.aa, 1                       ; 2 uses
  %i.ac = load i8, ptr %0, align 1, !tbaa !9
  store i8 -1, ptr %6, align 1, !tbaa !9
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.af = mul nuw nsw i32 %i.ad, 19077
  %i.ag = lshr i32 %i.af, 8                       ; 3 uses
  %i.ah = mul nuw nsw i32 %i.ab, 26149
  %i.ai = lshr i32 %i.ah, 8
  %i.aj = add nuw nsw i32 %i.ai, %i.ag            ; 2 uses
  %i.ak = add nsw i32 %i.aj, -14234               ; 2 uses
  %9 = icmp ult i32 %i.ak, 16384
  %i.al = lshr i32 %i.ak, 6
  %i.am = icmp samesign ult i32 %i.aj, 14234
  %i.an = select i1 %i.am, i32 0, i32 255
  %i.ao = select i1 %9, i32 %i.al, i32 %i.an
  %i.ap = trunc i32 %i.ao to i8
  store i8 %i.ap, ptr %i.ae, align 1, !tbaa !9
  %i.aq = mul nuw nsw i32 %i.z, 6419
  %i.ar = lshr i32 %i.aq, 8
  %i.as = mul nuw nsw i32 %i.ab, 13320
  %i.at = lshr i32 %i.as, 8
  %i.au = add nuw nsw i32 %i.ar, %i.at
  %i.av = sub nsw i32 %i.ag, %i.au                ; 2 uses
  %i.aw = add nsw i32 %i.av, 8708                 ; 2 uses
  %10 = icmp ult i32 %i.aw, 16384
  %i.ax = lshr i32 %i.aw, 6
  %i.ay = icmp slt i32 %i.av, -8708
  %i.az = select i1 %i.ay, i32 0, i32 255
  %i.ba = select i1 %10, i32 %i.ax, i32 %i.az
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !9
  %i.bd = mul nuw nsw i32 %i.z, 33050
  %i.be = lshr i32 %i.bd, 8
  %i.bf = add nuw nsw i32 %i.be, %i.ag            ; 2 uses
  %i.bg = add nsw i32 %i.bf, -17685               ; 2 uses
  %11 = icmp ult i32 %i.bg, 16384
  %i.bh = lshr i32 %i.bg, 6
  %i.bi = icmp samesign ult i32 %i.bf, 17685
  %i.bj = select i1 %i.bi, i32 0, i32 255
  %i.bk = select i1 %11, i32 %i.bh, i32 %i.bj
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 3
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !9
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bn = add nuw nsw i32 %i.q, %i.n
  %i.bo = lshr i32 %i.bn, 1                       ; 2 uses
  %i.bp = add nuw nsw i32 %i.x, %i.u
  %i.bq = lshr i32 %i.bp, 1                       ; 2 uses
  %i.br = load i8, ptr %1, align 1, !tbaa !9
  store i8 -1, ptr %7, align 1, !tbaa !9
  %i.bs = zext i8 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.bu = mul nuw nsw i32 %i.bs, 19077
  %i.bv = lshr i32 %i.bu, 8                       ; 3 uses
  %i.bw = mul nuw nsw i32 %i.bq, 26149
  %i.bx = lshr i32 %i.bw, 8
  %i.by = add nuw nsw i32 %i.bv, %i.bx            ; 2 uses
  %i.bz = add nsw i32 %i.by, -14234               ; 2 uses
  %12 = icmp ult i32 %i.bz, 16384
  %i.ca = lshr i32 %i.bz, 6
  %i.cb = icmp samesign ult i32 %i.by, 14234
  %i.cc = select i1 %i.cb, i32 0, i32 255
  %i.cd = select i1 %12, i32 %i.ca, i32 %i.cc
  %i.ce = trunc i32 %i.cd to i8
  store i8 %i.ce, ptr %i.bt, align 1, !tbaa !9
  %i.cf = mul nuw nsw i32 %i.bo, 6419
  %i.cg = lshr i32 %i.cf, 8
  %i.ch = mul nuw nsw i32 %i.bq, 13320
  %i.ci = lshr i32 %i.ch, 8
  %i.cj = add nuw nsw i32 %i.ci, %i.cg
  %i.ck = sub nsw i32 %i.bv, %i.cj                ; 2 uses
  %i.cl = add nsw i32 %i.ck, 8708                 ; 2 uses
  %13 = icmp ult i32 %i.cl, 16384
  %i.cm = lshr i32 %i.cl, 6
  %i.cn = icmp slt i32 %i.ck, -8708
  %i.co = select i1 %i.cn, i32 0, i32 255
  %i.cp = select i1 %13, i32 %i.cm, i32 %i.co
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !9
  %i.cs = mul nuw nsw i32 %i.bo, 33050
  %i.ct = lshr i32 %i.cs, 8
  %i.cu = add nuw nsw i32 %i.bv, %i.ct            ; 2 uses
  %i.cv = add nsw i32 %i.cu, -17685               ; 2 uses
  %14 = icmp ult i32 %i.cv, 16384
  %i.cw = lshr i32 %i.cv, 6
  %i.cx = icmp samesign ult i32 %i.cu, 17685
  %i.cy = select i1 %i.cx, i32 0, i32 255
  %i.cz = select i1 %14, i32 %i.cw, i32 %i.cy
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 3
  store i8 %i.da, ptr %i.db, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not259267 = icmp slt i32 %8, 34
  br i1 %.not259267, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.df = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv274 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next275, %bb.f ] ; 4 uses
  %indvars.iv272 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next273, %bb.f ] ; 5 uses
  %indvars.iv = phi i64 [ 33, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv272 ; 2 uses
  %i.dj = load <2 x i64>, ptr %i.di, align 1, !tbaa !9 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dl = load <2 x i64>, ptr %i.dk, align 1, !tbaa !9 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv272 ; 2 uses
  %i.dn = load <2 x i64>, ptr %i.dm, align 1, !tbaa !9 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %i.dp = load <2 x i64>, ptr %i.do, align 1, !tbaa !9 ; 2 uses
  %i.dq = bitcast <2 x i64> %i.dj to <16 x i8>    ; 2 uses
  %i.dr = bitcast <2 x i64> %i.dp to <16 x i8>    ; 2 uses
  %i.ds = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dq, <16 x i8> %i.dr) ; 4 uses
  %i.dt = bitcast <2 x i64> %i.dl to <16 x i8>    ; 2 uses
  %i.du = bitcast <2 x i64> %i.dn to <16 x i8>    ; 2 uses
  %i.dv = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dt, <16 x i8> %i.du) ; 4 uses
  %.inner = xor <16 x i8> %i.dv, %i.ds
  %i.dw = bitcast <16 x i8> %.inner to <2 x i64>  ; 3 uses
  %i.dx = xor <2 x i64> %i.dp, %i.dj              ; 2 uses
  %i.dy = xor <2 x i64> %i.dn, %i.dl              ; 2 uses
  %i.dz = or <2 x i64> %i.dx, %i.dy
  %i.ea = or <2 x i64> %i.dz, %i.dw
  %i.eb = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ds, <16 x i8> %i.dv)
  %i.ec = bitcast <2 x i64> %i.ea to <16 x i8>
  %i.ed = and <16 x i8> %i.ec, splat (i8 1)
  %i.ee = sub <16 x i8> %i.eb, %i.ed              ; 4 uses
  %i.ef = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ee, <16 x i8> %i.dv)
  %i.eg = and <2 x i64> %i.dy, %i.dw
  %.inner284 = xor <16 x i8> %i.ee, %i.dv
  %i.eh = bitcast <2 x i64> %i.eg to <16 x i8>
  %i.ei = or <16 x i8> %.inner284, %i.eh
  %i.ej = and <16 x i8> %i.ei, splat (i8 1)
  %i.ek = sub <16 x i8> %i.ef, %i.ej              ; 2 uses
  %i.el = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ee, <16 x i8> %i.ds)
  %i.em = and <2 x i64> %i.dx, %i.dw
  %.inner286 = xor <16 x i8> %i.ee, %i.ds
  %i.en = bitcast <2 x i64> %i.em to <16 x i8>
  %i.eo = or <16 x i8> %.inner286, %i.en
  %i.ep = and <16 x i8> %i.eo, splat (i8 1)
  %i.eq = sub <16 x i8> %i.el, %i.ep              ; 2 uses
  %i.er = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dq, <16 x i8> %i.ek) ; 2 uses
  %i.es = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dt, <16 x i8> %i.eq) ; 2 uses
  %i.et = shufflevector <16 x i8> %i.er, <16 x i8> %i.es, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.eu = shufflevector <16 x i8> %i.er, <16 x i8> %i.es, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.et, ptr %i.i, align 16, !tbaa !9
  store <16 x i8> %i.eu, ptr %i.dc, align 16, !tbaa !9
  %i.ev = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.du, <16 x i8> %i.eq) ; 2 uses
  %i.ew = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dr, <16 x i8> %i.ek) ; 2 uses
  %i.ex = shufflevector <16 x i8> %i.ev, <16 x i8> %i.ew, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ey = shufflevector <16 x i8> %i.ev, <16 x i8> %i.ew, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.ex, ptr %i.dd, align 16, !tbaa !9
  store <16 x i8> %i.ey, ptr %i.de, align 16, !tbaa !9
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv272 ; 2 uses
  %i.fa = load <2 x i64>, ptr %i.ez, align 1, !tbaa !9 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.fc = load <2 x i64>, ptr %i.fb, align 1, !tbaa !9 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv272 ; 2 uses
  %i.fe = load <2 x i64>, ptr %i.fd, align 1, !tbaa !9 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  %i.fg = load <2 x i64>, ptr %i.ff, align 1, !tbaa !9 ; 2 uses
  %i.fh = bitcast <2 x i64> %i.fa to <16 x i8>    ; 2 uses
  %i.fi = bitcast <2 x i64> %i.fg to <16 x i8>    ; 2 uses
  %i.fj = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fh, <16 x i8> %i.fi) ; 4 uses
  %i.fk = bitcast <2 x i64> %i.fc to <16 x i8>    ; 2 uses
  %i.fl = bitcast <2 x i64> %i.fe to <16 x i8>    ; 2 uses
  %i.fm = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fk, <16 x i8> %i.fl) ; 4 uses
  %.inner288 = xor <16 x i8> %i.fm, %i.fj
  %i.fn = bitcast <16 x i8> %.inner288 to <2 x i64> ; 3 uses
  %i.fo = xor <2 x i64> %i.fg, %i.fa              ; 2 uses
  %i.fp = xor <2 x i64> %i.fe, %i.fc              ; 2 uses
  %i.fq = or <2 x i64> %i.fo, %i.fp
  %i.fr = or <2 x i64> %i.fq, %i.fn
  %i.fs = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fj, <16 x i8> %i.fm)
  %i.ft = bitcast <2 x i64> %i.fr to <16 x i8>
  %i.fu = and <16 x i8> %i.ft, splat (i8 1)
  %i.fv = sub <16 x i8> %i.fs, %i.fu              ; 4 uses
  %i.fw = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fv, <16 x i8> %i.fm)
  %i.fx = and <2 x i64> %i.fp, %i.fn
  %.inner290 = xor <16 x i8> %i.fv, %i.fm
  %i.fy = bitcast <2 x i64> %i.fx to <16 x i8>
  %i.fz = or <16 x i8> %.inner290, %i.fy
  %i.ga = and <16 x i8> %i.fz, splat (i8 1)
  %i.gb = sub <16 x i8> %i.fw, %i.ga              ; 2 uses
  %i.gc = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fv, <16 x i8> %i.fj)
  %i.gd = and <2 x i64> %i.fo, %i.fn
  %.inner292 = xor <16 x i8> %i.fv, %i.fj
  %i.ge = bitcast <2 x i64> %i.gd to <16 x i8>
  %i.gf = or <16 x i8> %.inner292, %i.ge
  %i.gg = and <16 x i8> %i.gf, splat (i8 1)
  %i.gh = sub <16 x i8> %i.gc, %i.gg              ; 2 uses
  %i.gi = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fh, <16 x i8> %i.gb) ; 2 uses
  %i.gj = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fk, <16 x i8> %i.gh) ; 2 uses
  %i.gk = shufflevector <16 x i8> %i.gi, <16 x i8> %i.gj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gl = shufflevector <16 x i8> %i.gi, <16 x i8> %i.gj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.gk, ptr %i.j, align 16, !tbaa !9
  store <16 x i8> %i.gl, ptr %i.df, align 16, !tbaa !9
  %i.gm = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fl, <16 x i8> %i.gh) ; 2 uses
  %i.gn = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fi, <16 x i8> %i.gb) ; 2 uses
  %i.go = shufflevector <16 x i8> %i.gm, <16 x i8> %i.gn, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gp = shufflevector <16 x i8> %i.gm, <16 x i8> %i.gn, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.go, ptr %i.dg, align 16, !tbaa !9
  store <16 x i8> %i.gp, ptr %i.dh, align 16, !tbaa !9
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv274
  %i.gr = shl nsw i64 %indvars.iv274, 2           ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 %i.gr
  call void @VP8YuvToArgb32_SSE2(ptr noundef nonnull %i.gq, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gs) #8
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv274
  %i.gu = getelementptr inbounds nuw i8, ptr %7, i64 %i.gr
  call void @VP8YuvToArgb32_SSE2(ptr noundef nonnull %i.gt, ptr noundef nonnull %i.dd, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.gu) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %i.gv = trunc i64 %indvars.iv to i32
  %i.gw = add i32 %i.gv, 33
  %.not259 = icmp sgt i32 %i.gw, %8
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 32
  br i1 %.not259, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !95

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.gx = trunc nuw nsw i64 %indvars.iv to i32
  %i.gy = and i64 %indvars.iv.next273, 4294967280
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.0255.lcssa = phi i32 [ 1, %bb.c ], [ %i.gx, %._crit_edge.loopexit ] ; 5 uses
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.gy, %._crit_edge.loopexit ] ; 4 uses
  %i.gz = icmp sgt i32 %8, 1
  br i1 %i.gz, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ha = add nuw nsw i32 %8, 1
  %i.hb = lshr i32 %i.ha, 1
  %i.hc = lshr i32 %.0255.lcssa, 1
  %i.hd = sub nsw i32 %i.hb, %i.hc                ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.i, i64 384 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 %.0.lcssa
  %i.hh = sext i32 %i.hd to i64                   ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 1 %i.hg, i64 %i.hh, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.hi, i64 %i.hh, i1 false)
  %i.hj = getelementptr inbounds i8, ptr %i.b, i64 %i.hh
  %i.hk = add nsw i32 %i.hd, -1
  %i.hl = sext i32 %i.hk to i64                   ; 4 uses
  %i.hm = getelementptr inbounds i8, ptr %i.b, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !9
  %i.ho = sub nsw i32 17, %i.hd
  %i.hp = sext i32 %i.ho to i64                   ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hj, i8 %i.hn, i64 %i.hp, i1 false)
  %i.hq = getelementptr inbounds i8, ptr %i.c, i64 %i.hh
  %i.hr = getelementptr inbounds i8, ptr %i.c, i64 %i.hl
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hq, i8 %i.hs, i64 %i.hp, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.ht = load <2 x i64>, ptr %i.b, align 16, !tbaa !9, !alias.scope !96, !noalias !103 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.hv = load <2 x i64>, ptr %i.hu, align 1, !tbaa !9, !alias.scope !96, !noalias !103 ; 2 uses
  %i.hw = load <2 x i64>, ptr %i.c, align 16, !tbaa !9, !alias.scope !99, !noalias !104 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.hy = load <2 x i64>, ptr %i.hx, align 1, !tbaa !9, !alias.scope !99, !noalias !104 ; 2 uses
  %i.hz = bitcast <2 x i64> %i.ht to <16 x i8>    ; 2 uses
  %i.ia = bitcast <2 x i64> %i.hy to <16 x i8>    ; 2 uses
  %i.ib = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.hz, <16 x i8> %i.ia) ; 4 uses
  %i.ic = bitcast <2 x i64> %i.hv to <16 x i8>    ; 2 uses
  %i.id = bitcast <2 x i64> %i.hw to <16 x i8>    ; 2 uses
  %i.ie = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ic, <16 x i8> %i.id) ; 4 uses
  %.inner294 = xor <16 x i8> %i.ie, %i.ib
  %i.if = bitcast <16 x i8> %.inner294 to <2 x i64> ; 3 uses
  %i.ig = xor <2 x i64> %i.hy, %i.ht              ; 2 uses
  %i.ih = xor <2 x i64> %i.hw, %i.hv              ; 2 uses
  %i.ii = or <2 x i64> %i.ig, %i.ih
  %i.ij = or <2 x i64> %i.ii, %i.if
  %i.ik = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ib, <16 x i8> %i.ie)
  %i.il = bitcast <2 x i64> %i.ij to <16 x i8>
  %i.im = and <16 x i8> %i.il, splat (i8 1)
  %i.in = sub <16 x i8> %i.ik, %i.im              ; 4 uses
  %i.io = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.in, <16 x i8> %i.ie)
  %i.ip = and <2 x i64> %i.ih, %i.if
  %.inner296 = xor <16 x i8> %i.in, %i.ie
  %i.iq = bitcast <2 x i64> %i.ip to <16 x i8>
  %i.ir = or <16 x i8> %.inner296, %i.iq
  %i.is = and <16 x i8> %i.ir, splat (i8 1)
  %i.it = sub <16 x i8> %i.io, %i.is              ; 2 uses
  %i.iu = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.in, <16 x i8> %i.ib)
  %i.iv = and <2 x i64> %i.ig, %i.if
  %.inner298 = xor <16 x i8> %i.in, %i.ib
  %i.iw = bitcast <2 x i64> %i.iv to <16 x i8>
  %i.ix = or <16 x i8> %.inner298, %i.iw
  %i.iy = and <16 x i8> %i.ix, splat (i8 1)
  %i.iz = sub <16 x i8> %i.iu, %i.iy              ; 2 uses
  %i.ja = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.hz, <16 x i8> %i.it) ; 2 uses
  %i.jb = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ic, <16 x i8> %i.iz) ; 2 uses
  %i.jc = shufflevector <16 x i8> %i.ja, <16 x i8> %i.jb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.jd = shufflevector <16 x i8> %i.ja, <16 x i8> %i.jb, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.jc, ptr %i.i, align 16, !tbaa !9, !alias.scope !101, !noalias !105
  %i.je = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <16 x i8> %i.jd, ptr %i.je, align 16, !tbaa !9, !alias.scope !101, !noalias !105
  %i.jf = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.id, <16 x i8> %i.iz) ; 2 uses
  %i.jg = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ia, <16 x i8> %i.it) ; 2 uses
  %i.jh = shufflevector <16 x i8> %i.jf, <16 x i8> %i.jg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ji = shufflevector <16 x i8> %i.jf, <16 x i8> %i.jg, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.jj = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  store <16 x i8> %i.jh, ptr %i.jj, align 16, !tbaa !9, !alias.scope !101, !noalias !105
  %i.jk = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store <16 x i8> %i.ji, ptr %i.jk, align 16, !tbaa !9, !alias.scope !101, !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 1 %i.jl, i64 %i.hh, i1 false)
  %i.jm = getelementptr inbounds nuw i8, ptr %5, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.e, ptr nonnull align 1 %i.jm, i64 %i.hh, i1 false)
  %i.jn = getelementptr inbounds i8, ptr %i.d, i64 %i.hh
  %i.jo = getelementptr inbounds i8, ptr %i.d, i64 %i.hl
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jn, i8 %i.jp, i64 %i.hp, i1 false)
  %i.jq = getelementptr inbounds i8, ptr %i.e, i64 %i.hh
  %i.jr = getelementptr inbounds i8, ptr %i.e, i64 %i.hl
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jq, i8 %i.js, i64 %i.hp, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.jt = load <2 x i64>, ptr %i.d, align 16, !tbaa !9, !alias.scope !106, !noalias !113 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.jv = load <2 x i64>, ptr %i.ju, align 1, !tbaa !9, !alias.scope !106, !noalias !113 ; 2 uses
  %i.jw = load <2 x i64>, ptr %i.e, align 16, !tbaa !9, !alias.scope !109, !noalias !114 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.jy = load <2 x i64>, ptr %i.jx, align 1, !tbaa !9, !alias.scope !109, !noalias !114 ; 2 uses
  %i.jz = bitcast <2 x i64> %i.jt to <16 x i8>    ; 2 uses
  %i.ka = bitcast <2 x i64> %i.jy to <16 x i8>    ; 2 uses
  %i.kb = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.jz, <16 x i8> %i.ka) ; 4 uses
  %i.kc = bitcast <2 x i64> %i.jv to <16 x i8>    ; 2 uses
  %i.kd = bitcast <2 x i64> %i.jw to <16 x i8>    ; 2 uses
  %i.ke = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kc, <16 x i8> %i.kd) ; 4 uses
  %.inner300 = xor <16 x i8> %i.ke, %i.kb
  %i.kf = bitcast <16 x i8> %.inner300 to <2 x i64> ; 3 uses
  %i.kg = xor <2 x i64> %i.jy, %i.jt              ; 2 uses
  %i.kh = xor <2 x i64> %i.jw, %i.jv              ; 2 uses
  %i.ki = or <2 x i64> %i.kg, %i.kh
  %i.kj = or <2 x i64> %i.ki, %i.kf
  %i.kk = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kb, <16 x i8> %i.ke)
  %i.kl = bitcast <2 x i64> %i.kj to <16 x i8>
  %i.km = and <16 x i8> %i.kl, splat (i8 1)
  %i.kn = sub <16 x i8> %i.kk, %i.km              ; 4 uses
  %i.ko = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kn, <16 x i8> %i.ke)
  %i.kp = and <2 x i64> %i.kh, %i.kf
  %.inner302 = xor <16 x i8> %i.kn, %i.ke
  %i.kq = bitcast <2 x i64> %i.kp to <16 x i8>
  %i.kr = or <16 x i8> %.inner302, %i.kq
  %i.ks = and <16 x i8> %i.kr, splat (i8 1)
  %i.kt = sub <16 x i8> %i.ko, %i.ks              ; 2 uses
  %i.ku = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kn, <16 x i8> %i.kb)
  %i.kv = and <2 x i64> %i.kg, %i.kf
  %.inner304 = xor <16 x i8> %i.kn, %i.kb
  %i.kw = bitcast <2 x i64> %i.kv to <16 x i8>
  %i.kx = or <16 x i8> %.inner304, %i.kw
  %i.ky = and <16 x i8> %i.kx, splat (i8 1)
  %i.kz = sub <16 x i8> %i.ku, %i.ky              ; 2 uses
  %i.la = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.jz, <16 x i8> %i.kt) ; 2 uses
  %i.lb = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kc, <16 x i8> %i.kz) ; 2 uses
  %i.lc = shufflevector <16 x i8> %i.la, <16 x i8> %i.lb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ld = shufflevector <16 x i8> %i.la, <16 x i8> %i.lb, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.lc, ptr %i.j, align 16, !tbaa !9, !alias.scope !111, !noalias !115
  %i.le = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store <16 x i8> %i.ld, ptr %i.le, align 16, !tbaa !9, !alias.scope !111, !noalias !115
  %i.lf = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kd, <16 x i8> %i.kz) ; 2 uses
  %i.lg = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ka, <16 x i8> %i.kt) ; 2 uses
  %i.lh = shufflevector <16 x i8> %i.lf, <16 x i8> %i.lg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.li = shufflevector <16 x i8> %i.lf, <16 x i8> %i.lg, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.lj = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  store <16 x i8> %i.lh, ptr %i.lj, align 16, !tbaa !9, !alias.scope !111, !noalias !115
  %i.lk = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store <16 x i8> %i.li, ptr %i.lk, align 16, !tbaa !9, !alias.scope !111, !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.ll = zext nneg i32 %.0255.lcssa to i64       ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 %i.ll
  %i.ln = sub nsw i32 %8, %.0255.lcssa            ; 3 uses
  %i.lo = sext i32 %i.ln to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.hf, ptr nonnull align 1 %i.lm, i64 %i.lo, i1 false)
  br i1 %.not, label %.thread261, label %bb.h

.thread261:                                       ; preds = %bb.g
  call void @VP8YuvToArgb32_SSE2(ptr noundef nonnull %i.hf, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.he) #8
  %i.lp = shl nsw i32 %.0255.lcssa, 2
  %i.lq = zext nneg i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %6, i64 %i.lq
  %i.ls = shl nsw i32 %i.ln, 2
  %i.lt = sext i32 %i.ls to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lr, ptr nonnull align 16 %i.he, i64 %i.lt, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.lu = getelementptr inbounds nuw i8, ptr %i.i, i64 416 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 %i.ll
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.lu, ptr nonnull align 1 %i.lw, i64 %i.lo, i1 false)
  call void @VP8YuvToArgb32_SSE2(ptr noundef nonnull %i.hf, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.he) #8
  call void @VP8YuvToArgb32_SSE2(ptr noundef nonnull %i.lu, ptr noundef nonnull %i.jj, ptr noundef nonnull %i.lj, ptr noundef nonnull %i.lv) #8
  %i.lx = shl nsw i32 %.0255.lcssa, 2
  %i.ly = zext nneg i32 %i.lx to i64              ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %6, i64 %i.ly
  %i.ma = shl nsw i32 %i.ln, 2
  %i.mb = sext i32 %i.ma to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lz, ptr nonnull align 16 %i.he, i64 %i.mb, i1 false)
  %i.mc = getelementptr inbounds nuw i8, ptr %7, i64 %i.ly
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mc, ptr nonnull align 16 %i.lv, i64 %i.mb, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %.thread261, %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UpsampleRgb565LinePair_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef readonly captures(none) %2, ptr noalias noundef readonly captures(none) %3, ptr noalias noundef readonly captures(none) %4, ptr noalias noundef readonly captures(none) %5, ptr noalias noundef initializes((0, 2)) %6, ptr noalias noundef %7, i32 noundef %8) #1 {
bb.a:
  %i.a = alloca [463 x i8], align 16              ; 4 uses
  %i.b = alloca [17 x i8], align 16               ; 7 uses
  %i.c = alloca [17 x i8], align 16               ; 7 uses
  %i.d = alloca [17 x i8], align 16               ; 7 uses
  %i.e = alloca [17 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(463) %i.a, i8 0, i64 463, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -16
  %i.i = inttoptr i64 %i.h to ptr                 ; 22 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 5 uses
  %i.k = load i8, ptr %2, align 1, !tbaa !9
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = load i8, ptr %4, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = add nuw nsw i32 %i.n, %i.l
  %i.p = lshr i32 %i.o, 1
  %i.q = add nuw nsw i32 %i.p, 1                  ; 2 uses
  %i.r = load i8, ptr %3, align 1, !tbaa !9
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = load i8, ptr %5, align 1, !tbaa !9
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = add nuw nsw i32 %i.u, %i.s
  %i.w = lshr i32 %i.v, 1
  %i.x = add nuw nsw i32 %i.w, 1                  ; 2 uses
  %i.y = add nuw nsw i32 %i.q, %i.l
  %i.z = lshr i32 %i.y, 1                         ; 2 uses
  %i.aa = add nuw nsw i32 %i.x, %i.s
  %i.ab = lshr i32 %i.aa, 1                       ; 2 uses
  %i.ac = load i8, ptr %0, align 1, !tbaa !9
  %i.ad = zext i8 %i.ac to i32
  %i.ae = mul nuw nsw i32 %i.ad, 19077
  %i.af = lshr i32 %i.ae, 8                       ; 3 uses
  %i.ag = mul nuw nsw i32 %i.ab, 26149
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = add nuw nsw i32 %i.ah, %i.af            ; 2 uses
  %i.aj = add nsw i32 %i.ai, -14234               ; 2 uses
  %9 = icmp ult i32 %i.aj, 16384
  %i.ak = lshr i32 %i.aj, 6
  %i.al = icmp samesign ult i32 %i.ai, 14234
  %i.am = select i1 %i.al, i32 0, i32 248
  %i.an = mul nuw nsw i32 %i.z, 6419
  %i.ao = lshr i32 %i.an, 8
  %i.ap = mul nuw nsw i32 %i.ab, 13320
  %i.aq = lshr i32 %i.ap, 8
  %i.ar = add nuw nsw i32 %i.ao, %i.aq
  %i.as = sub nsw i32 %i.af, %i.ar                ; 2 uses
  %i.at = add nsw i32 %i.as, 8708                 ; 2 uses
  %10 = icmp ult i32 %i.at, 16384
  %i.au = lshr i32 %i.at, 6
  %i.av = icmp slt i32 %i.as, -8708
  %i.aw = select i1 %i.av, i32 0, i32 255
  %i.ax = select i1 %10, i32 %i.au, i32 %i.aw     ; 2 uses
  %i.ay = mul nuw nsw i32 %i.z, 33050
  %i.az = lshr i32 %i.ay, 8
  %i.ba = add nuw nsw i32 %i.az, %i.af            ; 2 uses
  %i.bb = add nsw i32 %i.ba, -17685               ; 2 uses
  %11 = icmp ult i32 %i.bb, 16384
  %i.bc = lshr i32 %i.bb, 6
  %i.bd = icmp samesign ult i32 %i.ba, 17685
  %i.be = select i1 %i.bd, i32 0, i32 248
  %i.bf = select i1 %11, i32 %i.bc, i32 %i.be
  %i.bg = and i32 %i.ak, 248
  %i.bh = select i1 %9, i32 %i.bg, i32 %i.am
  %i.bi = lshr i32 %i.ax, 5
  %i.bj = or i32 %i.bh, %i.bi
  %i.bk = shl nuw nsw i32 %i.ax, 3
  %i.bl = and i32 %i.bk, 224
  %i.bm = lshr i32 %i.bf, 3
  %i.bn = or i32 %i.bl, %i.bm
  %i.bo = trunc i32 %i.bj to i8
  store i8 %i.bo, ptr %6, align 1, !tbaa !9
  %i.bp = trunc i32 %i.bn to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !9
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.br = add nuw nsw i32 %i.q, %i.n
  %i.bs = lshr i32 %i.br, 1                       ; 2 uses
  %i.bt = add nuw nsw i32 %i.x, %i.u
  %i.bu = lshr i32 %i.bt, 1                       ; 2 uses
  %i.bv = load i8, ptr %1, align 1, !tbaa !9
  %i.bw = zext i8 %i.bv to i32
  %i.bx = mul nuw nsw i32 %i.bw, 19077
  %i.by = lshr i32 %i.bx, 8                       ; 3 uses
  %i.bz = mul nuw nsw i32 %i.bu, 26149
  %i.ca = lshr i32 %i.bz, 8
  %i.cb = add nuw nsw i32 %i.by, %i.ca            ; 2 uses
  %i.cc = add nsw i32 %i.cb, -14234               ; 2 uses
  %12 = icmp ult i32 %i.cc, 16384
  %i.cd = lshr i32 %i.cc, 6
  %i.ce = icmp samesign ult i32 %i.cb, 14234
  %i.cf = select i1 %i.ce, i32 0, i32 248
  %i.cg = mul nuw nsw i32 %i.bs, 6419
  %i.ch = lshr i32 %i.cg, 8
  %i.ci = mul nuw nsw i32 %i.bu, 13320
  %i.cj = lshr i32 %i.ci, 8
  %i.ck = add nuw nsw i32 %i.cj, %i.ch
  %i.cl = sub nsw i32 %i.by, %i.ck                ; 2 uses
  %i.cm = add nsw i32 %i.cl, 8708                 ; 2 uses
  %13 = icmp ult i32 %i.cm, 16384
  %i.cn = lshr i32 %i.cm, 6
  %i.co = icmp slt i32 %i.cl, -8708
  %i.cp = select i1 %i.co, i32 0, i32 255
  %i.cq = select i1 %13, i32 %i.cn, i32 %i.cp     ; 2 uses
  %i.cr = mul nuw nsw i32 %i.bs, 33050
  %i.cs = lshr i32 %i.cr, 8
  %i.ct = add nuw nsw i32 %i.by, %i.cs            ; 2 uses
  %i.cu = add nsw i32 %i.ct, -17685               ; 2 uses
  %14 = icmp ult i32 %i.cu, 16384
  %i.cv = lshr i32 %i.cu, 6
  %i.cw = icmp samesign ult i32 %i.ct, 17685
  %i.cx = select i1 %i.cw, i32 0, i32 248
  %i.cy = select i1 %14, i32 %i.cv, i32 %i.cx
  %i.cz = and i32 %i.cd, 248
  %i.da = select i1 %12, i32 %i.cz, i32 %i.cf
  %i.db = lshr i32 %i.cq, 5
  %i.dc = or i32 %i.da, %i.db
  %i.dd = shl nuw nsw i32 %i.cq, 3
  %i.de = and i32 %i.dd, 224
  %i.df = lshr i32 %i.cy, 3
  %i.dg = or i32 %i.de, %i.df
  %i.dh = trunc i32 %i.dc to i8
  store i8 %i.dh, ptr %7, align 1, !tbaa !9
  %i.di = trunc i32 %i.dg to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not259267 = icmp slt i32 %8, 34
  br i1 %.not259267, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.dk = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv274 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next275, %bb.f ] ; 4 uses
  %indvars.iv272 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next273, %bb.f ] ; 5 uses
  %indvars.iv = phi i64 [ 33, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv272 ; 2 uses
  %i.dr = load <2 x i64>, ptr %i.dq, align 1, !tbaa !9 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.dt = load <2 x i64>, ptr %i.ds, align 1, !tbaa !9 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv272 ; 2 uses
  %i.dv = load <2 x i64>, ptr %i.du, align 1, !tbaa !9 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.dx = load <2 x i64>, ptr %i.dw, align 1, !tbaa !9 ; 2 uses
  %i.dy = bitcast <2 x i64> %i.dr to <16 x i8>    ; 2 uses
  %i.dz = bitcast <2 x i64> %i.dx to <16 x i8>    ; 2 uses
  %i.ea = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dy, <16 x i8> %i.dz) ; 4 uses
  %i.eb = bitcast <2 x i64> %i.dt to <16 x i8>    ; 2 uses
  %i.ec = bitcast <2 x i64> %i.dv to <16 x i8>    ; 2 uses
  %i.ed = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.eb, <16 x i8> %i.ec) ; 4 uses
  %.inner = xor <16 x i8> %i.ed, %i.ea
  %i.ee = bitcast <16 x i8> %.inner to <2 x i64>  ; 3 uses
  %i.ef = xor <2 x i64> %i.dx, %i.dr              ; 2 uses
  %i.eg = xor <2 x i64> %i.dv, %i.dt              ; 2 uses
  %i.eh = or <2 x i64> %i.ef, %i.eg
  %i.ei = or <2 x i64> %i.eh, %i.ee
  %i.ej = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ea, <16 x i8> %i.ed)
  %i.ek = bitcast <2 x i64> %i.ei to <16 x i8>
  %i.el = and <16 x i8> %i.ek, splat (i8 1)
  %i.em = sub <16 x i8> %i.ej, %i.el              ; 4 uses
  %i.en = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.em, <16 x i8> %i.ed)
  %i.eo = and <2 x i64> %i.eg, %i.ee
  %.inner284 = xor <16 x i8> %i.em, %i.ed
  %i.ep = bitcast <2 x i64> %i.eo to <16 x i8>
  %i.eq = or <16 x i8> %.inner284, %i.ep
  %i.er = and <16 x i8> %i.eq, splat (i8 1)
  %i.es = sub <16 x i8> %i.en, %i.er              ; 2 uses
  %i.et = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.em, <16 x i8> %i.ea)
  %i.eu = and <2 x i64> %i.ef, %i.ee
  %.inner286 = xor <16 x i8> %i.em, %i.ea
  %i.ev = bitcast <2 x i64> %i.eu to <16 x i8>
  %i.ew = or <16 x i8> %.inner286, %i.ev
  %i.ex = and <16 x i8> %i.ew, splat (i8 1)
  %i.ey = sub <16 x i8> %i.et, %i.ex              ; 2 uses
  %i.ez = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dy, <16 x i8> %i.es) ; 2 uses
  %i.fa = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.eb, <16 x i8> %i.ey) ; 2 uses
  %i.fb = shufflevector <16 x i8> %i.ez, <16 x i8> %i.fa, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.fc = shufflevector <16 x i8> %i.ez, <16 x i8> %i.fa, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.fb, ptr %i.i, align 16, !tbaa !9
  store <16 x i8> %i.fc, ptr %i.dk, align 16, !tbaa !9
  %i.fd = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ec, <16 x i8> %i.ey) ; 2 uses
  %i.fe = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dz, <16 x i8> %i.es) ; 2 uses
  %i.ff = shufflevector <16 x i8> %i.fd, <16 x i8> %i.fe, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.fg = shufflevector <16 x i8> %i.fd, <16 x i8> %i.fe, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.ff, ptr %i.dl, align 16, !tbaa !9
  store <16 x i8> %i.fg, ptr %i.dm, align 16, !tbaa !9
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv272 ; 2 uses
  %i.fi = load <2 x i64>, ptr %i.fh, align 1, !tbaa !9 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  %i.fk = load <2 x i64>, ptr %i.fj, align 1, !tbaa !9 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv272 ; 2 uses
  %i.fm = load <2 x i64>, ptr %i.fl, align 1, !tbaa !9 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fo = load <2 x i64>, ptr %i.fn, align 1, !tbaa !9 ; 2 uses
  %i.fp = bitcast <2 x i64> %i.fi to <16 x i8>    ; 2 uses
  %i.fq = bitcast <2 x i64> %i.fo to <16 x i8>    ; 2 uses
  %i.fr = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fp, <16 x i8> %i.fq) ; 4 uses
  %i.fs = bitcast <2 x i64> %i.fk to <16 x i8>    ; 2 uses
  %i.ft = bitcast <2 x i64> %i.fm to <16 x i8>    ; 2 uses
  %i.fu = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fs, <16 x i8> %i.ft) ; 4 uses
  %.inner288 = xor <16 x i8> %i.fu, %i.fr
  %i.fv = bitcast <16 x i8> %.inner288 to <2 x i64> ; 3 uses
  %i.fw = xor <2 x i64> %i.fo, %i.fi              ; 2 uses
  %i.fx = xor <2 x i64> %i.fm, %i.fk              ; 2 uses
  %i.fy = or <2 x i64> %i.fw, %i.fx
  %i.fz = or <2 x i64> %i.fy, %i.fv
  %i.ga = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fr, <16 x i8> %i.fu)
  %i.gb = bitcast <2 x i64> %i.fz to <16 x i8>
  %i.gc = and <16 x i8> %i.gb, splat (i8 1)
  %i.gd = sub <16 x i8> %i.ga, %i.gc              ; 4 uses
  %i.ge = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.gd, <16 x i8> %i.fu)
  %i.gf = and <2 x i64> %i.fx, %i.fv
  %.inner290 = xor <16 x i8> %i.gd, %i.fu
  %i.gg = bitcast <2 x i64> %i.gf to <16 x i8>
  %i.gh = or <16 x i8> %.inner290, %i.gg
  %i.gi = and <16 x i8> %i.gh, splat (i8 1)
  %i.gj = sub <16 x i8> %i.ge, %i.gi              ; 2 uses
  %i.gk = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.gd, <16 x i8> %i.fr)
  %i.gl = and <2 x i64> %i.fw, %i.fv
  %.inner292 = xor <16 x i8> %i.gd, %i.fr
  %i.gm = bitcast <2 x i64> %i.gl to <16 x i8>
  %i.gn = or <16 x i8> %.inner292, %i.gm
  %i.go = and <16 x i8> %i.gn, splat (i8 1)
  %i.gp = sub <16 x i8> %i.gk, %i.go              ; 2 uses
  %i.gq = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fp, <16 x i8> %i.gj) ; 2 uses
  %i.gr = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fs, <16 x i8> %i.gp) ; 2 uses
  %i.gs = shufflevector <16 x i8> %i.gq, <16 x i8> %i.gr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gt = shufflevector <16 x i8> %i.gq, <16 x i8> %i.gr, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.gs, ptr %i.j, align 16, !tbaa !9
  store <16 x i8> %i.gt, ptr %i.dn, align 16, !tbaa !9
  %i.gu = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ft, <16 x i8> %i.gp) ; 2 uses
  %i.gv = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fq, <16 x i8> %i.gj) ; 2 uses
  %i.gw = shufflevector <16 x i8> %i.gu, <16 x i8> %i.gv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gx = shufflevector <16 x i8> %i.gu, <16 x i8> %i.gv, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.gw, ptr %i.do, align 16, !tbaa !9
  store <16 x i8> %i.gx, ptr %i.dp, align 16, !tbaa !9
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv274
  %i.gz = shl nuw nsw i64 %indvars.iv274, 1       ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %6, i64 %i.gz
  call void @VP8YuvToRgb56532_SSE2(ptr noundef nonnull %i.gy, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.ha) #8
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv274
  %i.hc = getelementptr inbounds nuw i8, ptr %7, i64 %i.gz
  call void @VP8YuvToRgb56532_SSE2(ptr noundef nonnull %i.hb, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.do, ptr noundef nonnull %i.hc) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %i.hd = trunc i64 %indvars.iv to i32
  %i.he = add i32 %i.hd, 33
  %.not259 = icmp sgt i32 %i.he, %8
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 32
  br i1 %.not259, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !116

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.hf = trunc nuw nsw i64 %indvars.iv to i32
  %i.hg = and i64 %indvars.iv.next273, 4294967280
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.0255.lcssa = phi i32 [ 1, %bb.c ], [ %i.hf, %._crit_edge.loopexit ] ; 5 uses
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.hg, %._crit_edge.loopexit ] ; 4 uses
  %i.hh = icmp sgt i32 %8, 1
  br i1 %i.hh, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.hi = add nuw nsw i32 %8, 1
  %i.hj = lshr i32 %i.hi, 1
  %i.hk = lshr i32 %.0255.lcssa, 1
  %i.hl = sub nsw i32 %i.hj, %i.hk                ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.i, i64 384 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 %.0.lcssa
  %i.hp = sext i32 %i.hl to i64                   ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 1 %i.ho, i64 %i.hp, i1 false)
  %i.hq = getelementptr inbounds nuw i8, ptr %4, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.hq, i64 %i.hp, i1 false)
  %i.hr = getelementptr inbounds i8, ptr %i.b, i64 %i.hp
  %i.hs = add nsw i32 %i.hl, -1
  %i.ht = sext i32 %i.hs to i64                   ; 4 uses
  %i.hu = getelementptr inbounds i8, ptr %i.b, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !9
  %i.hw = sub nsw i32 17, %i.hl
  %i.hx = sext i32 %i.hw to i64                   ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hr, i8 %i.hv, i64 %i.hx, i1 false)
  %i.hy = getelementptr inbounds i8, ptr %i.c, i64 %i.hp
  %i.hz = getelementptr inbounds i8, ptr %i.c, i64 %i.ht
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hy, i8 %i.ia, i64 %i.hx, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.ib = load <2 x i64>, ptr %i.b, align 16, !tbaa !9, !alias.scope !117, !noalias !124 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.id = load <2 x i64>, ptr %i.ic, align 1, !tbaa !9, !alias.scope !117, !noalias !124 ; 2 uses
  %i.ie = load <2 x i64>, ptr %i.c, align 16, !tbaa !9, !alias.scope !120, !noalias !125 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ig = load <2 x i64>, ptr %i.if, align 1, !tbaa !9, !alias.scope !120, !noalias !125 ; 2 uses
  %i.ih = bitcast <2 x i64> %i.ib to <16 x i8>    ; 2 uses
  %i.ii = bitcast <2 x i64> %i.ig to <16 x i8>    ; 2 uses
  %i.ij = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ih, <16 x i8> %i.ii) ; 4 uses
  %i.ik = bitcast <2 x i64> %i.id to <16 x i8>    ; 2 uses
  %i.il = bitcast <2 x i64> %i.ie to <16 x i8>    ; 2 uses
  %i.im = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ik, <16 x i8> %i.il) ; 4 uses
  %.inner294 = xor <16 x i8> %i.im, %i.ij
  %i.in = bitcast <16 x i8> %.inner294 to <2 x i64> ; 3 uses
  %i.io = xor <2 x i64> %i.ig, %i.ib              ; 2 uses
  %i.ip = xor <2 x i64> %i.ie, %i.id              ; 2 uses
  %i.iq = or <2 x i64> %i.io, %i.ip
  %i.ir = or <2 x i64> %i.iq, %i.in
  %i.is = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ij, <16 x i8> %i.im)
  %i.it = bitcast <2 x i64> %i.ir to <16 x i8>
  %i.iu = and <16 x i8> %i.it, splat (i8 1)
  %i.iv = sub <16 x i8> %i.is, %i.iu              ; 4 uses
  %i.iw = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.iv, <16 x i8> %i.im)
  %i.ix = and <2 x i64> %i.ip, %i.in
  %.inner296 = xor <16 x i8> %i.iv, %i.im
  %i.iy = bitcast <2 x i64> %i.ix to <16 x i8>
  %i.iz = or <16 x i8> %.inner296, %i.iy
  %i.ja = and <16 x i8> %i.iz, splat (i8 1)
  %i.jb = sub <16 x i8> %i.iw, %i.ja              ; 2 uses
  %i.jc = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.iv, <16 x i8> %i.ij)
  %i.jd = and <2 x i64> %i.io, %i.in
  %.inner298 = xor <16 x i8> %i.iv, %i.ij
  %i.je = bitcast <2 x i64> %i.jd to <16 x i8>
  %i.jf = or <16 x i8> %.inner298, %i.je
  %i.jg = and <16 x i8> %i.jf, splat (i8 1)
  %i.jh = sub <16 x i8> %i.jc, %i.jg              ; 2 uses
  %i.ji = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ih, <16 x i8> %i.jb) ; 2 uses
  %i.jj = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ik, <16 x i8> %i.jh) ; 2 uses
  %i.jk = shufflevector <16 x i8> %i.ji, <16 x i8> %i.jj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.jl = shufflevector <16 x i8> %i.ji, <16 x i8> %i.jj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.jk, ptr %i.i, align 16, !tbaa !9, !alias.scope !122, !noalias !126
  %i.jm = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <16 x i8> %i.jl, ptr %i.jm, align 16, !tbaa !9, !alias.scope !122, !noalias !126
  %i.jn = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.il, <16 x i8> %i.jh) ; 2 uses
  %i.jo = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ii, <16 x i8> %i.jb) ; 2 uses
  %i.jp = shufflevector <16 x i8> %i.jn, <16 x i8> %i.jo, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.jq = shufflevector <16 x i8> %i.jn, <16 x i8> %i.jo, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.jr = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  store <16 x i8> %i.jp, ptr %i.jr, align 16, !tbaa !9, !alias.scope !122, !noalias !126
  %i.js = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store <16 x i8> %i.jq, ptr %i.js, align 16, !tbaa !9, !alias.scope !122, !noalias !126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 1 %i.jt, i64 %i.hp, i1 false)
  %i.ju = getelementptr inbounds nuw i8, ptr %5, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.e, ptr nonnull align 1 %i.ju, i64 %i.hp, i1 false)
  %i.jv = getelementptr inbounds i8, ptr %i.d, i64 %i.hp
  %i.jw = getelementptr inbounds i8, ptr %i.d, i64 %i.ht
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jv, i8 %i.jx, i64 %i.hx, i1 false)
  %i.jy = getelementptr inbounds i8, ptr %i.e, i64 %i.hp
  %i.jz = getelementptr inbounds i8, ptr %i.e, i64 %i.ht
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jy, i8 %i.ka, i64 %i.hx, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.kb = load <2 x i64>, ptr %i.d, align 16, !tbaa !9, !alias.scope !127, !noalias !134 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.kd = load <2 x i64>, ptr %i.kc, align 1, !tbaa !9, !alias.scope !127, !noalias !134 ; 2 uses
  %i.ke = load <2 x i64>, ptr %i.e, align 16, !tbaa !9, !alias.scope !130, !noalias !135 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.kg = load <2 x i64>, ptr %i.kf, align 1, !tbaa !9, !alias.scope !130, !noalias !135 ; 2 uses
  %i.kh = bitcast <2 x i64> %i.kb to <16 x i8>    ; 2 uses
  %i.ki = bitcast <2 x i64> %i.kg to <16 x i8>    ; 2 uses
  %i.kj = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kh, <16 x i8> %i.ki) ; 4 uses
  %i.kk = bitcast <2 x i64> %i.kd to <16 x i8>    ; 2 uses
  %i.kl = bitcast <2 x i64> %i.ke to <16 x i8>    ; 2 uses
  %i.km = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kk, <16 x i8> %i.kl) ; 4 uses
  %.inner300 = xor <16 x i8> %i.km, %i.kj
  %i.kn = bitcast <16 x i8> %.inner300 to <2 x i64> ; 3 uses
  %i.ko = xor <2 x i64> %i.kg, %i.kb              ; 2 uses
  %i.kp = xor <2 x i64> %i.ke, %i.kd              ; 2 uses
  %i.kq = or <2 x i64> %i.ko, %i.kp
  %i.kr = or <2 x i64> %i.kq, %i.kn
  %i.ks = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kj, <16 x i8> %i.km)
  %i.kt = bitcast <2 x i64> %i.kr to <16 x i8>
  %i.ku = and <16 x i8> %i.kt, splat (i8 1)
  %i.kv = sub <16 x i8> %i.ks, %i.ku              ; 4 uses
  %i.kw = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kv, <16 x i8> %i.km)
  %i.kx = and <2 x i64> %i.kp, %i.kn
  %.inner302 = xor <16 x i8> %i.kv, %i.km
  %i.ky = bitcast <2 x i64> %i.kx to <16 x i8>
  %i.kz = or <16 x i8> %.inner302, %i.ky
  %i.la = and <16 x i8> %i.kz, splat (i8 1)
  %i.lb = sub <16 x i8> %i.kw, %i.la              ; 2 uses
  %i.lc = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kv, <16 x i8> %i.kj)
  %i.ld = and <2 x i64> %i.ko, %i.kn
  %.inner304 = xor <16 x i8> %i.kv, %i.kj
  %i.le = bitcast <2 x i64> %i.ld to <16 x i8>
  %i.lf = or <16 x i8> %.inner304, %i.le
  %i.lg = and <16 x i8> %i.lf, splat (i8 1)
  %i.lh = sub <16 x i8> %i.lc, %i.lg              ; 2 uses
  %i.li = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kh, <16 x i8> %i.lb) ; 2 uses
  %i.lj = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kk, <16 x i8> %i.lh) ; 2 uses
  %i.lk = shufflevector <16 x i8> %i.li, <16 x i8> %i.lj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ll = shufflevector <16 x i8> %i.li, <16 x i8> %i.lj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.lk, ptr %i.j, align 16, !tbaa !9, !alias.scope !132, !noalias !136
  %i.lm = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store <16 x i8> %i.ll, ptr %i.lm, align 16, !tbaa !9, !alias.scope !132, !noalias !136
  %i.ln = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kl, <16 x i8> %i.lh) ; 2 uses
  %i.lo = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ki, <16 x i8> %i.lb) ; 2 uses
  %i.lp = shufflevector <16 x i8> %i.ln, <16 x i8> %i.lo, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.lq = shufflevector <16 x i8> %i.ln, <16 x i8> %i.lo, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.lr = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  store <16 x i8> %i.lp, ptr %i.lr, align 16, !tbaa !9, !alias.scope !132, !noalias !136
  %i.ls = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store <16 x i8> %i.lq, ptr %i.ls, align 16, !tbaa !9, !alias.scope !132, !noalias !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.lt = zext nneg i32 %.0255.lcssa to i64       ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 %i.lt
  %i.lv = sub nsw i32 %8, %.0255.lcssa            ; 3 uses
  %i.lw = sext i32 %i.lv to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.hn, ptr nonnull align 1 %i.lu, i64 %i.lw, i1 false)
  br i1 %.not, label %.thread261, label %bb.h

.thread261:                                       ; preds = %bb.g
  call void @VP8YuvToRgb56532_SSE2(ptr noundef nonnull %i.hn, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hm) #8
  %i.lx = shl nuw nsw i32 %.0255.lcssa, 1
  %i.ly = zext nneg i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %6, i64 %i.ly
  %i.ma = shl nsw i32 %i.lv, 1
  %i.mb = sext i32 %i.ma to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lz, ptr nonnull align 16 %i.hm, i64 %i.mb, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.mc = getelementptr inbounds nuw i8, ptr %i.i, i64 416 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 %i.lt
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.mc, ptr nonnull align 1 %i.me, i64 %i.lw, i1 false)
  call void @VP8YuvToRgb56532_SSE2(ptr noundef nonnull %i.hn, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hm) #8
  call void @VP8YuvToRgb56532_SSE2(ptr noundef nonnull %i.mc, ptr noundef nonnull %i.jr, ptr noundef nonnull %i.lr, ptr noundef nonnull %i.md) #8
  %i.mf = shl nuw nsw i32 %.0255.lcssa, 1
  %i.mg = zext nneg i32 %i.mf to i64              ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %6, i64 %i.mg
  %i.mi = shl nsw i32 %i.lv, 1
  %i.mj = sext i32 %i.mi to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mh, ptr nonnull align 16 %i.hm, i64 %i.mj, i1 false)
  %i.mk = getelementptr inbounds nuw i8, ptr %7, i64 %i.mg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mk, ptr nonnull align 16 %i.md, i64 %i.mj, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %.thread261, %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UpsampleRgba4444LinePair_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef readonly captures(none) %2, ptr noalias noundef readonly captures(none) %3, ptr noalias noundef readonly captures(none) %4, ptr noalias noundef readonly captures(none) %5, ptr noalias noundef initializes((0, 2)) %6, ptr noalias noundef %7, i32 noundef %8) #1 {
bb.a:
  %i.a = alloca [463 x i8], align 16              ; 4 uses
  %i.b = alloca [17 x i8], align 16               ; 7 uses
  %i.c = alloca [17 x i8], align 16               ; 7 uses
  %i.d = alloca [17 x i8], align 16               ; 7 uses
  %i.e = alloca [17 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(463) %i.a, i8 0, i64 463, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -16
  %i.i = inttoptr i64 %i.h to ptr                 ; 22 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 5 uses
  %i.k = load i8, ptr %2, align 1, !tbaa !9
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = load i8, ptr %4, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = add nuw nsw i32 %i.n, %i.l
  %i.p = lshr i32 %i.o, 1
  %i.q = add nuw nsw i32 %i.p, 1                  ; 2 uses
  %i.r = load i8, ptr %3, align 1, !tbaa !9
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = load i8, ptr %5, align 1, !tbaa !9
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = add nuw nsw i32 %i.u, %i.s
  %i.w = lshr i32 %i.v, 1
  %i.x = add nuw nsw i32 %i.w, 1                  ; 2 uses
  %i.y = add nuw nsw i32 %i.q, %i.l
  %i.z = lshr i32 %i.y, 1                         ; 2 uses
  %i.aa = add nuw nsw i32 %i.x, %i.s
  %i.ab = lshr i32 %i.aa, 1                       ; 2 uses
  %i.ac = load i8, ptr %0, align 1, !tbaa !9
  %i.ad = zext i8 %i.ac to i32
  %i.ae = mul nuw nsw i32 %i.ad, 19077
  %i.af = lshr i32 %i.ae, 8                       ; 3 uses
  %i.ag = mul nuw nsw i32 %i.ab, 26149
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = add nuw nsw i32 %i.ah, %i.af            ; 2 uses
  %i.aj = add nsw i32 %i.ai, -14234               ; 2 uses
  %9 = icmp ult i32 %i.aj, 16384
  %i.ak = lshr i32 %i.aj, 6
  %i.al = icmp samesign ult i32 %i.ai, 14234
  %i.am = select i1 %i.al, i32 0, i32 240
  %i.an = mul nuw nsw i32 %i.z, 6419
  %i.ao = lshr i32 %i.an, 8
  %i.ap = mul nuw nsw i32 %i.ab, 13320
  %i.aq = lshr i32 %i.ap, 8
  %i.ar = add nuw nsw i32 %i.ao, %i.aq
  %i.as = sub nsw i32 %i.af, %i.ar                ; 2 uses
  %i.at = add nsw i32 %i.as, 8708                 ; 2 uses
  %10 = icmp ult i32 %i.at, 16384
  %i.au = lshr i32 %i.at, 6
  %i.av = icmp slt i32 %i.as, -8708
  %i.aw = select i1 %i.av, i32 0, i32 240
  %i.ax = select i1 %10, i32 %i.au, i32 %i.aw
  %i.ay = mul nuw nsw i32 %i.z, 33050
  %i.az = lshr i32 %i.ay, 8
  %i.ba = add nuw nsw i32 %i.az, %i.af            ; 2 uses
  %i.bb = add nsw i32 %i.ba, -17685               ; 2 uses
  %11 = icmp ult i32 %i.bb, 16384
  %i.bc = lshr i32 %i.bb, 6
  %i.bd = icmp samesign ult i32 %i.ba, 17685
  %i.be = select i1 %i.bd, i32 0, i32 240
  %i.bf = select i1 %11, i32 %i.bc, i32 %i.be
  %i.bg = and i32 %i.ak, 240
  %i.bh = select i1 %9, i32 %i.bg, i32 %i.am
  %i.bi = lshr i32 %i.ax, 4
  %i.bj = or i32 %i.bh, %i.bi
  %i.bk = trunc i32 %i.bj to i8
  store i8 %i.bk, ptr %6, align 1, !tbaa !9
  %i.bl = trunc i32 %i.bf to i8
  %i.bm = or i8 %i.bl, 15
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !9
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bo = add nuw nsw i32 %i.q, %i.n
  %i.bp = lshr i32 %i.bo, 1                       ; 2 uses
  %i.bq = add nuw nsw i32 %i.x, %i.u
  %i.br = lshr i32 %i.bq, 1                       ; 2 uses
  %i.bs = load i8, ptr %1, align 1, !tbaa !9
  %i.bt = zext i8 %i.bs to i32
  %i.bu = mul nuw nsw i32 %i.bt, 19077
  %i.bv = lshr i32 %i.bu, 8                       ; 3 uses
  %i.bw = mul nuw nsw i32 %i.br, 26149
  %i.bx = lshr i32 %i.bw, 8
  %i.by = add nuw nsw i32 %i.bv, %i.bx            ; 2 uses
  %i.bz = add nsw i32 %i.by, -14234               ; 2 uses
  %12 = icmp ult i32 %i.bz, 16384
  %i.ca = lshr i32 %i.bz, 6
  %i.cb = icmp samesign ult i32 %i.by, 14234
  %i.cc = select i1 %i.cb, i32 0, i32 240
  %i.cd = mul nuw nsw i32 %i.bp, 6419
  %i.ce = lshr i32 %i.cd, 8
  %i.cf = mul nuw nsw i32 %i.br, 13320
  %i.cg = lshr i32 %i.cf, 8
  %i.ch = add nuw nsw i32 %i.cg, %i.ce
  %i.ci = sub nsw i32 %i.bv, %i.ch                ; 2 uses
  %i.cj = add nsw i32 %i.ci, 8708                 ; 2 uses
  %13 = icmp ult i32 %i.cj, 16384
  %i.ck = lshr i32 %i.cj, 6
  %i.cl = icmp slt i32 %i.ci, -8708
  %i.cm = select i1 %i.cl, i32 0, i32 240
  %i.cn = select i1 %13, i32 %i.ck, i32 %i.cm
  %i.co = mul nuw nsw i32 %i.bp, 33050
  %i.cp = lshr i32 %i.co, 8
  %i.cq = add nuw nsw i32 %i.bv, %i.cp            ; 2 uses
  %i.cr = add nsw i32 %i.cq, -17685               ; 2 uses
  %14 = icmp ult i32 %i.cr, 16384
  %i.cs = lshr i32 %i.cr, 6
  %i.ct = icmp samesign ult i32 %i.cq, 17685
  %i.cu = select i1 %i.ct, i32 0, i32 240
  %i.cv = select i1 %14, i32 %i.cs, i32 %i.cu
  %i.cw = and i32 %i.ca, 240
  %i.cx = select i1 %12, i32 %i.cw, i32 %i.cc
  %i.cy = lshr i32 %i.cn, 4
  %i.cz = or i32 %i.cx, %i.cy
  %i.da = trunc i32 %i.cz to i8
  store i8 %i.da, ptr %7, align 1, !tbaa !9
  %i.db = trunc i32 %i.cv to i8
  %i.dc = or i8 %i.db, 15
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not259267 = icmp slt i32 %8, 34
  br i1 %.not259267, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.de = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.di = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv274 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next275, %bb.f ] ; 4 uses
  %indvars.iv272 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next273, %bb.f ] ; 5 uses
  %indvars.iv = phi i64 [ 33, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv272 ; 2 uses
  %i.dl = load <2 x i64>, ptr %i.dk, align 1, !tbaa !9 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.dn = load <2 x i64>, ptr %i.dm, align 1, !tbaa !9 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv272 ; 2 uses
  %i.dp = load <2 x i64>, ptr %i.do, align 1, !tbaa !9 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %i.dr = load <2 x i64>, ptr %i.dq, align 1, !tbaa !9 ; 2 uses
  %i.ds = bitcast <2 x i64> %i.dl to <16 x i8>    ; 2 uses
  %i.dt = bitcast <2 x i64> %i.dr to <16 x i8>    ; 2 uses
  %i.du = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ds, <16 x i8> %i.dt) ; 4 uses
  %i.dv = bitcast <2 x i64> %i.dn to <16 x i8>    ; 2 uses
  %i.dw = bitcast <2 x i64> %i.dp to <16 x i8>    ; 2 uses
  %i.dx = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dv, <16 x i8> %i.dw) ; 4 uses
  %.inner = xor <16 x i8> %i.dx, %i.du
  %i.dy = bitcast <16 x i8> %.inner to <2 x i64>  ; 3 uses
  %i.dz = xor <2 x i64> %i.dr, %i.dl              ; 2 uses
  %i.ea = xor <2 x i64> %i.dp, %i.dn              ; 2 uses
  %i.eb = or <2 x i64> %i.dz, %i.ea
  %i.ec = or <2 x i64> %i.eb, %i.dy
  %i.ed = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.du, <16 x i8> %i.dx)
  %i.ee = bitcast <2 x i64> %i.ec to <16 x i8>
  %i.ef = and <16 x i8> %i.ee, splat (i8 1)
  %i.eg = sub <16 x i8> %i.ed, %i.ef              ; 4 uses
  %i.eh = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.eg, <16 x i8> %i.dx)
  %i.ei = and <2 x i64> %i.ea, %i.dy
  %.inner284 = xor <16 x i8> %i.eg, %i.dx
  %i.ej = bitcast <2 x i64> %i.ei to <16 x i8>
  %i.ek = or <16 x i8> %.inner284, %i.ej
  %i.el = and <16 x i8> %i.ek, splat (i8 1)
  %i.em = sub <16 x i8> %i.eh, %i.el              ; 2 uses
  %i.en = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.eg, <16 x i8> %i.du)
  %i.eo = and <2 x i64> %i.dz, %i.dy
  %.inner286 = xor <16 x i8> %i.eg, %i.du
  %i.ep = bitcast <2 x i64> %i.eo to <16 x i8>
  %i.eq = or <16 x i8> %.inner286, %i.ep
  %i.er = and <16 x i8> %i.eq, splat (i8 1)
  %i.es = sub <16 x i8> %i.en, %i.er              ; 2 uses
  %i.et = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ds, <16 x i8> %i.em) ; 2 uses
  %i.eu = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dv, <16 x i8> %i.es) ; 2 uses
  %i.ev = shufflevector <16 x i8> %i.et, <16 x i8> %i.eu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ew = shufflevector <16 x i8> %i.et, <16 x i8> %i.eu, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.ev, ptr %i.i, align 16, !tbaa !9
  store <16 x i8> %i.ew, ptr %i.de, align 16, !tbaa !9
  %i.ex = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dw, <16 x i8> %i.es) ; 2 uses
  %i.ey = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dt, <16 x i8> %i.em) ; 2 uses
  %i.ez = shufflevector <16 x i8> %i.ex, <16 x i8> %i.ey, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.fa = shufflevector <16 x i8> %i.ex, <16 x i8> %i.ey, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.ez, ptr %i.df, align 16, !tbaa !9
  store <16 x i8> %i.fa, ptr %i.dg, align 16, !tbaa !9
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv272 ; 2 uses
  %i.fc = load <2 x i64>, ptr %i.fb, align 1, !tbaa !9 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %i.fe = load <2 x i64>, ptr %i.fd, align 1, !tbaa !9 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv272 ; 2 uses
  %i.fg = load <2 x i64>, ptr %i.ff, align 1, !tbaa !9 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.fi = load <2 x i64>, ptr %i.fh, align 1, !tbaa !9 ; 2 uses
  %i.fj = bitcast <2 x i64> %i.fc to <16 x i8>    ; 2 uses
  %i.fk = bitcast <2 x i64> %i.fi to <16 x i8>    ; 2 uses
  %i.fl = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fj, <16 x i8> %i.fk) ; 4 uses
  %i.fm = bitcast <2 x i64> %i.fe to <16 x i8>    ; 2 uses
  %i.fn = bitcast <2 x i64> %i.fg to <16 x i8>    ; 2 uses
  %i.fo = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fm, <16 x i8> %i.fn) ; 4 uses
  %.inner288 = xor <16 x i8> %i.fo, %i.fl
  %i.fp = bitcast <16 x i8> %.inner288 to <2 x i64> ; 3 uses
  %i.fq = xor <2 x i64> %i.fi, %i.fc              ; 2 uses
  %i.fr = xor <2 x i64> %i.fg, %i.fe              ; 2 uses
  %i.fs = or <2 x i64> %i.fq, %i.fr
  %i.ft = or <2 x i64> %i.fs, %i.fp
  %i.fu = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fl, <16 x i8> %i.fo)
  %i.fv = bitcast <2 x i64> %i.ft to <16 x i8>
  %i.fw = and <16 x i8> %i.fv, splat (i8 1)
  %i.fx = sub <16 x i8> %i.fu, %i.fw              ; 4 uses
  %i.fy = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fx, <16 x i8> %i.fo)
  %i.fz = and <2 x i64> %i.fr, %i.fp
  %.inner290 = xor <16 x i8> %i.fx, %i.fo
  %i.ga = bitcast <2 x i64> %i.fz to <16 x i8>
  %i.gb = or <16 x i8> %.inner290, %i.ga
  %i.gc = and <16 x i8> %i.gb, splat (i8 1)
  %i.gd = sub <16 x i8> %i.fy, %i.gc              ; 2 uses
  %i.ge = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fx, <16 x i8> %i.fl)
  %i.gf = and <2 x i64> %i.fq, %i.fp
  %.inner292 = xor <16 x i8> %i.fx, %i.fl
  %i.gg = bitcast <2 x i64> %i.gf to <16 x i8>
  %i.gh = or <16 x i8> %.inner292, %i.gg
  %i.gi = and <16 x i8> %i.gh, splat (i8 1)
  %i.gj = sub <16 x i8> %i.ge, %i.gi              ; 2 uses
  %i.gk = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fj, <16 x i8> %i.gd) ; 2 uses
  %i.gl = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fm, <16 x i8> %i.gj) ; 2 uses
  %i.gm = shufflevector <16 x i8> %i.gk, <16 x i8> %i.gl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gn = shufflevector <16 x i8> %i.gk, <16 x i8> %i.gl, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.gm, ptr %i.j, align 16, !tbaa !9
  store <16 x i8> %i.gn, ptr %i.dh, align 16, !tbaa !9
  %i.go = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fn, <16 x i8> %i.gj) ; 2 uses
  %i.gp = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.fk, <16 x i8> %i.gd) ; 2 uses
  %i.gq = shufflevector <16 x i8> %i.go, <16 x i8> %i.gp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gr = shufflevector <16 x i8> %i.go, <16 x i8> %i.gp, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.gq, ptr %i.di, align 16, !tbaa !9
  store <16 x i8> %i.gr, ptr %i.dj, align 16, !tbaa !9
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv274
  %i.gt = shl nuw nsw i64 %indvars.iv274, 1       ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 %i.gt
  call void @VP8YuvToRgba444432_SSE2(ptr noundef nonnull %i.gs, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gu) #8
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv274
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 %i.gt
  call void @VP8YuvToRgba444432_SSE2(ptr noundef nonnull %i.gv, ptr noundef nonnull %i.df, ptr noundef nonnull %i.di, ptr noundef nonnull %i.gw) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %i.gx = trunc i64 %indvars.iv to i32
  %i.gy = add i32 %i.gx, 33
  %.not259 = icmp sgt i32 %i.gy, %8
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 32
  br i1 %.not259, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !137

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.gz = trunc nuw nsw i64 %indvars.iv to i32
  %i.ha = and i64 %indvars.iv.next273, 4294967280
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.0255.lcssa = phi i32 [ 1, %bb.c ], [ %i.gz, %._crit_edge.loopexit ] ; 5 uses
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.ha, %._crit_edge.loopexit ] ; 4 uses
  %i.hb = icmp sgt i32 %8, 1
  br i1 %i.hb, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.hc = add nuw nsw i32 %8, 1
  %i.hd = lshr i32 %i.hc, 1
  %i.he = lshr i32 %.0255.lcssa, 1
  %i.hf = sub nsw i32 %i.hd, %i.he                ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.i, i64 384 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 %.0.lcssa
  %i.hj = sext i32 %i.hf to i64                   ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 1 %i.hi, i64 %i.hj, i1 false)
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 1 %i.hk, i64 %i.hj, i1 false)
  %i.hl = getelementptr inbounds i8, ptr %i.b, i64 %i.hj
  %i.hm = add nsw i32 %i.hf, -1
  %i.hn = sext i32 %i.hm to i64                   ; 4 uses
  %i.ho = getelementptr inbounds i8, ptr %i.b, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !9
  %i.hq = sub nsw i32 17, %i.hf
  %i.hr = sext i32 %i.hq to i64                   ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hl, i8 %i.hp, i64 %i.hr, i1 false)
  %i.hs = getelementptr inbounds i8, ptr %i.c, i64 %i.hj
  %i.ht = getelementptr inbounds i8, ptr %i.c, i64 %i.hn
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !9
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hs, i8 %i.hu, i64 %i.hr, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.hv = load <2 x i64>, ptr %i.b, align 16, !tbaa !9, !alias.scope !138, !noalias !145 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.hx = load <2 x i64>, ptr %i.hw, align 1, !tbaa !9, !alias.scope !138, !noalias !145 ; 2 uses
  %i.hy = load <2 x i64>, ptr %i.c, align 16, !tbaa !9, !alias.scope !141, !noalias !146 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ia = load <2 x i64>, ptr %i.hz, align 1, !tbaa !9, !alias.scope !141, !noalias !146 ; 2 uses
  %i.ib = bitcast <2 x i64> %i.hv to <16 x i8>    ; 2 uses
  %i.ic = bitcast <2 x i64> %i.ia to <16 x i8>    ; 2 uses
  %i.id = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ib, <16 x i8> %i.ic) ; 4 uses
  %i.ie = bitcast <2 x i64> %i.hx to <16 x i8>    ; 2 uses
  %i.if = bitcast <2 x i64> %i.hy to <16 x i8>    ; 2 uses
  %i.ig = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ie, <16 x i8> %i.if) ; 4 uses
end_hunk_0
