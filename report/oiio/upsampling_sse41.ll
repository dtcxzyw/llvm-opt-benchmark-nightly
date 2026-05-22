inline.NumInlined: 24
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@WebPUpsamplers = external local_unnamed_addr global [0 x ptr], align 8
@WebPYUV444Converters = external local_unnamed_addr global [0 x ptr], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @WebPInitUpsamplersSSE41() local_unnamed_addr #0 {
bb.a:
  store ptr @UpsampleRgbLinePair_SSE41, ptr @WebPUpsamplers, align 8, !tbaa !7
  store ptr @UpsampleBgrLinePair_SSE41, ptr getelementptr inbounds nuw (i8, ptr @WebPUpsamplers, i64 16), align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UpsampleRgbLinePair_SSE41(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef readonly captures(none) %2, ptr noalias noundef readonly captures(none) %3, ptr noalias noundef readonly captures(none) %4, ptr noalias noundef readonly captures(none) %5, ptr noalias noundef initializes((0, 3)) %6, ptr noalias noundef %7, i32 noundef %8) #1 {
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
  call void @VP8YuvToRgb32_SSE41(ptr noundef nonnull %i.go, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gq) #8
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv274
  %i.gs = getelementptr inbounds nuw i8, ptr %7, i64 %i.gp
  call void @VP8YuvToRgb32_SSE41(ptr noundef nonnull %i.gr, ptr noundef nonnull %i.db, ptr noundef nonnull %i.de, ptr noundef nonnull %i.gs) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %i.gt = trunc i64 %indvars.iv to i32
  %i.gu = add i32 %i.gt, 33
  %.not259 = icmp sgt i32 %i.gu, %8
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 32
  br i1 %.not259, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !10

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
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.hr = load <2 x i64>, ptr %i.b, align 16, !tbaa !9, !alias.scope !12, !noalias !19 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ht = load <2 x i64>, ptr %i.hs, align 1, !tbaa !9, !alias.scope !12, !noalias !19 ; 2 uses
  %i.hu = load <2 x i64>, ptr %i.c, align 16, !tbaa !9, !alias.scope !15, !noalias !20 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.hw = load <2 x i64>, ptr %i.hv, align 1, !tbaa !9, !alias.scope !15, !noalias !20 ; 2 uses
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
  store <16 x i8> %i.ja, ptr %i.i, align 16, !tbaa !9, !alias.scope !17, !noalias !21
  %i.jc = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <16 x i8> %i.jb, ptr %i.jc, align 16, !tbaa !9, !alias.scope !17, !noalias !21
  %i.jd = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ib, <16 x i8> %i.ix) ; 2 uses
  %i.je = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.hy, <16 x i8> %i.ir) ; 2 uses
  %i.jf = shufflevector <16 x i8> %i.jd, <16 x i8> %i.je, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.jg = shufflevector <16 x i8> %i.jd, <16 x i8> %i.je, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.jh = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  store <16 x i8> %i.jf, ptr %i.jh, align 16, !tbaa !9, !alias.scope !17, !noalias !21
  %i.ji = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store <16 x i8> %i.jg, ptr %i.ji, align 16, !tbaa !9, !alias.scope !17, !noalias !21
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
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.jr = load <2 x i64>, ptr %i.d, align 16, !tbaa !9, !alias.scope !22, !noalias !29 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.jt = load <2 x i64>, ptr %i.js, align 1, !tbaa !9, !alias.scope !22, !noalias !29 ; 2 uses
  %i.ju = load <2 x i64>, ptr %i.e, align 16, !tbaa !9, !alias.scope !25, !noalias !30 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.jw = load <2 x i64>, ptr %i.jv, align 1, !tbaa !9, !alias.scope !25, !noalias !30 ; 2 uses
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
  store <16 x i8> %i.la, ptr %i.j, align 16, !tbaa !9, !alias.scope !27, !noalias !31
  %i.lc = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store <16 x i8> %i.lb, ptr %i.lc, align 16, !tbaa !9, !alias.scope !27, !noalias !31
  %i.ld = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.kb, <16 x i8> %i.kx) ; 2 uses
  %i.le = call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.jy, <16 x i8> %i.kr) ; 2 uses
  %i.lf = shufflevector <16 x i8> %i.ld, <16 x i8> %i.le, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.lg = shufflevector <16 x i8> %i.ld, <16 x i8> %i.le, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.lh = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  store <16 x i8> %i.lf, ptr %i.lh, align 16, !tbaa !9, !alias.scope !27, !noalias !31
  %i.li = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store <16 x i8> %i.lg, ptr %i.li, align 16, !tbaa !9, !alias.scope !27, !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.lj = zext nneg i32 %.0255.lcssa to i64       ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 %i.lj
  %i.ll = sub nsw i32 %8, %.0255.lcssa            ; 3 uses
  %i.lm = sext i32 %i.ll to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.hd, ptr nonnull align 1 %i.lk, i64 %i.lm, i1 false)
  br i1 %.not, label %.thread261, label %bb.h

.thread261:                                       ; preds = %bb.g
  call void @VP8YuvToRgb32_SSE41(ptr noundef nonnull %i.hd, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hc) #8
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
  call void @VP8YuvToRgb32_SSE41(ptr noundef nonnull %i.hd, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hc) #8
  call void @VP8YuvToRgb32_SSE41(ptr noundef nonnull %i.ls, ptr noundef nonnull %i.jh, ptr noundef nonnull %i.lh, ptr noundef nonnull %i.lt) #8
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
define internal void @UpsampleBgrLinePair_SSE41(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef readonly captures(none) %2, ptr noalias noundef readonly captures(none) %3, ptr noalias noundef readonly captures(none) %4, ptr noalias noundef readonly captures(none) %5, ptr noalias noundef initializes((0, 3)) %6, ptr noalias noundef %7, i32 noundef %8) #1 {
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
  call void @VP8YuvToBgr32_SSE41(ptr noundef nonnull %i.go, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gq) #8
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv274
  %i.gs = getelementptr inbounds nuw i8, ptr %7, i64 %i.gp
  call void @VP8YuvToBgr32_SSE41(ptr noundef nonnull %i.gr, ptr noundef nonnull %i.db, ptr noundef nonnull %i.de, ptr noundef nonnull %i.gs) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %i.gt = trunc i64 %indvars.iv to i32
  %i.gu = add i32 %i.gt, 33
  %.not259 = icmp sgt i32 %i.gu, %8
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 32
  br i1 %.not259, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !32

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
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.hr = load <2 x i64>, ptr %i.b, align 16, !tbaa !9, !alias.scope !33, !noalias !40 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ht = load <2 x i64>, ptr %i.hs, align 1, !tbaa !9, !alias.scope !33, !noalias !40 ; 2 uses
  %i.hu = load <2 x i64>, ptr %i.c, align 16, !tbaa !9, !alias.scope !36, !noalias !41 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.hw = load <2 x i64>, ptr %i.hv, align 1, !tbaa !9, !alias.scope !36, !noalias !41 ; 2 uses
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
end_hunk_0
