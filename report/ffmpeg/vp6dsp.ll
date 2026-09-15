Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp6dsp?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_vp6dsp_init(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
bb.a:
  store ptr @vp6_filter_diag4_c, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @vp6_filter_diag4_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #1 {
bb.a:
  %i.a = alloca [88 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = sub i64 0, %2
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %5 = load <4 x i16>, ptr %3, align 2, !tbaa !15
  %6 = sext <4 x i16> %5 to <4 x i32>             ; 4 uses
  %i.d = shufflevector <4 x i32> %6, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %7 = shufflevector <4 x i32> %6, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %8 = shufflevector <4 x i32> %6, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %9 = shufflevector <4 x i32> %6, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  br label %.preheader52

.preheader52:                                     ; preds = %bb.a, %.preheader52
  %.056 = phi ptr [ %i.a, %bb.a ], [ %i.az, %.preheader52 ] ; 3 uses
  %.04355 = phi i32 [ 0, %bb.a ], [ %i.ba, %.preheader52 ]
  %.04854 = phi ptr [ %i.c, %bb.a ], [ %i.ay, %.preheader52 ] ; 8 uses
  %i.e = getelementptr i8, ptr %.04854, i64 -1
  %i.f = getelementptr i8, ptr %.04854, i64 1
  %i.g = getelementptr i8, ptr %.04854, i64 2
  %i.h = getelementptr i8, ptr %.04854, i64 3
  %i.i = getelementptr i8, ptr %.04854, i64 5
  %i.j = load <4 x i8>, ptr %i.e, align 1, !tbaa !16
  %i.k = load <4 x i8>, ptr %.04854, align 1, !tbaa !16
  %i.l = load <4 x i8>, ptr %i.f, align 1, !tbaa !16
  %i.m = load <4 x i8>, ptr %i.g, align 1, !tbaa !16
  %i.n = load i8, ptr %i.h, align 1, !tbaa !16
  %i.o = zext <4 x i8> %i.j to <4 x i32>
  %i.p = zext <4 x i8> %i.k to <4 x i32>
  %i.q = zext <4 x i8> %i.l to <4 x i32>          ; 3 uses
  %i.r = zext <4 x i8> %i.m to <4 x i32>
  %i.s = mul nsw <4 x i32> %i.d, %i.o
  %i.t = mul nsw <4 x i32> %7, %i.p
  %i.u = mul nsw <4 x i32> %8, %i.q
  %i.v = mul nsw <4 x i32> %9, %i.r
  %i.w = add nsw <4 x i32> %i.s, splat (i32 64)
  %i.x = add nsw <4 x i32> %i.w, %i.t
  %i.y = add nsw <4 x i32> %i.x, %i.u
  %i.z = add nsw <4 x i32> %i.y, %i.v
  %i.aa = ashr <4 x i32> %i.z, splat (i32 7)
  %i.ab = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.aa, <4 x i32> zeroinitializer)
  %i.ac = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ab, <4 x i32> splat (i32 255))
  store <4 x i32> %i.ac, ptr %.056, align 4, !tbaa !17
  %i.ad = getelementptr i8, ptr %.04854, i64 6
  %i.ae = getelementptr inbounds nuw i8, ptr %.056, i64 16
  %i.af = zext i8 %i.n to i32
  %i.ag = load <4 x i8>, ptr %i.i, align 1, !tbaa !16
  %i.ah = load <4 x i8>, ptr %i.ad, align 1, !tbaa !16
  %i.ai = zext <4 x i8> %i.ag to <4 x i32>        ; 3 uses
  %i.aj = zext <4 x i8> %i.ah to <4 x i32>
  %i.ak = shufflevector <4 x i32> %i.q, <4 x i32> %i.ai, <4 x i32> <i32 poison, i32 3, i32 4, i32 5>
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.af, i64 0
  %i.am = mul nsw <4 x i32> %i.d, %i.al
  %i.an = shufflevector <4 x i32> %i.q, <4 x i32> %i.ai, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ao = mul nsw <4 x i32> %7, %i.an
  %i.ap = mul nsw <4 x i32> %8, %i.ai
  %i.aq = mul nsw <4 x i32> %9, %i.aj
  %i.ar = add nsw <4 x i32> %i.am, splat (i32 64)
  %i.as = add nsw <4 x i32> %i.ar, %i.ao
  %i.at = add nsw <4 x i32> %i.as, %i.ap
  %i.au = add nsw <4 x i32> %i.at, %i.aq
  %i.av = ashr <4 x i32> %i.au, splat (i32 7)
  %i.aw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.av, <4 x i32> zeroinitializer)
  %i.ax = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.aw, <4 x i32> splat (i32 255))
  store <4 x i32> %i.ax, ptr %i.ae, align 4, !tbaa !17
  %i.ay = getelementptr inbounds i8, ptr %.04854, i64 %2
  %i.az = getelementptr inbounds nuw i8, ptr %.056, i64 32
  %i.ba = add nuw nsw i32 %.04355, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ba, 11
  br i1 %exitcond.not, label %.preheader51, label %.preheader52, !llvm.loop !12

.preheader51:                                     ; preds = %.preheader52
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 8 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader51, %.preheader
  %.pn = phi ptr [ %i.a, %.preheader51 ], [ %.161, %.preheader ] ; 32 uses
  %.14460 = phi i32 [ 0, %.preheader51 ], [ %i.ka, %.preheader ]
  %.04759 = phi ptr [ %0, %.preheader51 ], [ %i.jz, %.preheader ] ; 9 uses
  %.161 = getelementptr inbounds nuw i8, ptr %.pn, i64 32 ; 2 uses
  %i.be = load i32, ptr %.pn, align 4, !tbaa !17
  %i.bf = load i16, ptr %4, align 2, !tbaa !15
  %i.bg = sext i16 %i.bf to i32
  %i.bh = mul nsw i32 %i.be, %i.bg
  %i.bi = load i32, ptr %.161, align 4, !tbaa !17
  %i.bj = load i16, ptr %i.bb, align 2, !tbaa !15
  %i.bk = sext i16 %i.bj to i32
  %i.bl = mul nsw i32 %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn, i64 64
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !17
  %i.bo = load i16, ptr %i.bc, align 2, !tbaa !15
  %i.bp = sext i16 %i.bo to i32
  %i.bq = mul nsw i32 %i.bn, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.pn, i64 96
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !17
  %i.bt = load i16, ptr %i.bd, align 2, !tbaa !15
  %i.bu = sext i16 %i.bt to i32
  %i.bv = mul nsw i32 %i.bs, %i.bu
  %i.bw = add i32 %i.bh, 64
  %i.bx = add i32 %i.bw, %i.bl
  %i.by = add i32 %i.bx, %i.bq
  %i.bz = add i32 %i.by, %i.bv
  %i.ca = ashr i32 %i.bz, 7                       ; 3 uses
  %i.cb = icmp ugt i32 %i.ca, 255
  %isnotneg.i = icmp sgt i32 %i.ca, -1
  %i.cc = sext i1 %isnotneg.i to i8
  %i.cd = trunc nuw i32 %i.ca to i8
  %.0.i = select i1 %i.cb, i8 %i.cc, i8 %i.cd
  store i8 %.0.i, ptr %.04759, align 1, !tbaa !16
  %i.ce = getelementptr i8, ptr %.pn, i64 36
  %i.cf = getelementptr i8, ptr %.pn, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !17
  %i.ch = load i16, ptr %4, align 2, !tbaa !15
  %i.ci = sext i16 %i.ch to i32
  %i.cj = mul nsw i32 %i.cg, %i.ci
  %i.ck = load i32, ptr %i.ce, align 4, !tbaa !17
  %i.cl = load i16, ptr %i.bb, align 2, !tbaa !15
  %i.cm = sext i16 %i.cl to i32
  %i.cn = mul nsw i32 %i.ck, %i.cm
  %i.co = getelementptr i8, ptr %.pn, i64 68
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !17
  %i.cq = load i16, ptr %i.bc, align 2, !tbaa !15
  %i.cr = sext i16 %i.cq to i32
  %i.cs = mul nsw i32 %i.cp, %i.cr
  %i.ct = getelementptr i8, ptr %.pn, i64 100
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !17
  %i.cv = load i16, ptr %i.bd, align 2, !tbaa !15
  %i.cw = sext i16 %i.cv to i32
  %i.cx = mul nsw i32 %i.cu, %i.cw
  %i.cy = add i32 %i.cj, 64
  %i.cz = add i32 %i.cy, %i.cn
  %i.da = add i32 %i.cz, %i.cs
  %i.db = add i32 %i.da, %i.cx
  %i.dc = ashr i32 %i.db, 7                       ; 3 uses
  %i.dd = icmp ugt i32 %i.dc, 255
  %isnotneg.i.1 = icmp sgt i32 %i.dc, -1
  %i.de = sext i1 %isnotneg.i.1 to i8
  %i.df = trunc nuw i32 %i.dc to i8
  %.0.i.1 = select i1 %i.dd, i8 %i.de, i8 %i.df
  %i.dg = getelementptr inbounds nuw i8, ptr %.04759, i64 1
  store i8 %.0.i.1, ptr %i.dg, align 1, !tbaa !16
  %i.dh = getelementptr i8, ptr %.pn, i64 40
  %i.di = getelementptr i8, ptr %.pn, i64 8
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !17
  %i.dk = load i16, ptr %4, align 2, !tbaa !15
  %i.dl = sext i16 %i.dk to i32
  %i.dm = mul nsw i32 %i.dj, %i.dl
  %i.dn = load i32, ptr %i.dh, align 4, !tbaa !17
  %i.do = load i16, ptr %i.bb, align 2, !tbaa !15
  %i.dp = sext i16 %i.do to i32
  %i.dq = mul nsw i32 %i.dn, %i.dp
  %i.dr = getelementptr i8, ptr %.pn, i64 72
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !17
  %i.dt = load i16, ptr %i.bc, align 2, !tbaa !15
  %i.du = sext i16 %i.dt to i32
  %i.dv = mul nsw i32 %i.ds, %i.du
  %i.dw = getelementptr i8, ptr %.pn, i64 104
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !17
  %i.dy = load i16, ptr %i.bd, align 2, !tbaa !15
  %i.dz = sext i16 %i.dy to i32
  %i.ea = mul nsw i32 %i.dx, %i.dz
  %i.eb = add i32 %i.dm, 64
  %i.ec = add i32 %i.eb, %i.dq
  %i.ed = add i32 %i.ec, %i.dv
  %i.ee = add i32 %i.ed, %i.ea
  %i.ef = ashr i32 %i.ee, 7                       ; 3 uses
  %i.eg = icmp ugt i32 %i.ef, 255
  %isnotneg.i.2 = icmp sgt i32 %i.ef, -1
  %i.eh = sext i1 %isnotneg.i.2 to i8
  %i.ei = trunc nuw i32 %i.ef to i8
  %.0.i.2 = select i1 %i.eg, i8 %i.eh, i8 %i.ei
  %i.ej = getelementptr inbounds nuw i8, ptr %.04759, i64 2
  store i8 %.0.i.2, ptr %i.ej, align 1, !tbaa !16
  %i.ek = getelementptr i8, ptr %.pn, i64 44
  %i.el = getelementptr i8, ptr %.pn, i64 12
  %i.em = load i32, ptr %i.el, align 4, !tbaa !17
  %i.en = load i16, ptr %4, align 2, !tbaa !15
  %i.eo = sext i16 %i.en to i32
  %i.ep = mul nsw i32 %i.em, %i.eo
  %i.eq = load i32, ptr %i.ek, align 4, !tbaa !17
  %i.er = load i16, ptr %i.bb, align 2, !tbaa !15
  %i.es = sext i16 %i.er to i32
  %i.et = mul nsw i32 %i.eq, %i.es
  %i.eu = getelementptr i8, ptr %.pn, i64 76
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !17
  %i.ew = load i16, ptr %i.bc, align 2, !tbaa !15
  %i.ex = sext i16 %i.ew to i32
  %i.ey = mul nsw i32 %i.ev, %i.ex
  %i.ez = getelementptr i8, ptr %.pn, i64 108
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !17
  %i.fb = load i16, ptr %i.bd, align 2, !tbaa !15
  %i.fc = sext i16 %i.fb to i32
  %i.fd = mul nsw i32 %i.fa, %i.fc
  %i.fe = add i32 %i.ep, 64
  %i.ff = add i32 %i.fe, %i.et
  %i.fg = add i32 %i.ff, %i.ey
  %i.fh = add i32 %i.fg, %i.fd
  %i.fi = ashr i32 %i.fh, 7                       ; 3 uses
  %i.fj = icmp ugt i32 %i.fi, 255
  %isnotneg.i.3 = icmp sgt i32 %i.fi, -1
  %i.fk = sext i1 %isnotneg.i.3 to i8
  %i.fl = trunc nuw i32 %i.fi to i8
  %.0.i.3 = select i1 %i.fj, i8 %i.fk, i8 %i.fl
  %i.fm = getelementptr inbounds nuw i8, ptr %.04759, i64 3
  store i8 %.0.i.3, ptr %i.fm, align 1, !tbaa !16
  %i.fn = getelementptr i8, ptr %.pn, i64 48
  %i.fo = getelementptr i8, ptr %.pn, i64 16
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !17
  %i.fq = load i16, ptr %4, align 2, !tbaa !15
  %i.fr = sext i16 %i.fq to i32
  %i.fs = mul nsw i32 %i.fp, %i.fr
  %i.ft = load i32, ptr %i.fn, align 4, !tbaa !17
  %i.fu = load i16, ptr %i.bb, align 2, !tbaa !15
  %i.fv = sext i16 %i.fu to i32
  %i.fw = mul nsw i32 %i.ft, %i.fv
  %i.fx = getelementptr i8, ptr %.pn, i64 80
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !17
  %i.fz = load i16, ptr %i.bc, align 2, !tbaa !15
  %i.ga = sext i16 %i.fz to i32
  %i.gb = mul nsw i32 %i.fy, %i.ga
  %i.gc = getelementptr i8, ptr %.pn, i64 112
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !17
  %i.ge = load i16, ptr %i.bd, align 2, !tbaa !15
  %i.gf = sext i16 %i.ge to i32
  %i.gg = mul nsw i32 %i.gd, %i.gf
  %i.gh = add i32 %i.fs, 64
  %i.gi = add i32 %i.gh, %i.fw
  %i.gj = add i32 %i.gi, %i.gb
  %i.gk = add i32 %i.gj, %i.gg
  %i.gl = ashr i32 %i.gk, 7                       ; 3 uses
  %i.gm = icmp ugt i32 %i.gl, 255
  %isnotneg.i.4 = icmp sgt i32 %i.gl, -1
  %i.gn = sext i1 %isnotneg.i.4 to i8
  %i.go = trunc nuw i32 %i.gl to i8
  %.0.i.4 = select i1 %i.gm, i8 %i.gn, i8 %i.go
  %i.gp = getelementptr inbounds nuw i8, ptr %.04759, i64 4
  store i8 %.0.i.4, ptr %i.gp, align 1, !tbaa !16
  %i.gq = getelementptr i8, ptr %.pn, i64 52
  %i.gr = getelementptr i8, ptr %.pn, i64 20
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !17
  %i.gt = load i16, ptr %4, align 2, !tbaa !15
  %i.gu = sext i16 %i.gt to i32
  %i.gv = mul nsw i32 %i.gs, %i.gu
  %i.gw = load i32, ptr %i.gq, align 4, !tbaa !17
  %i.gx = load i16, ptr %i.bb, align 2, !tbaa !15
  %i.gy = sext i16 %i.gx to i32
  %i.gz = mul nsw i32 %i.gw, %i.gy
  %i.ha = getelementptr i8, ptr %.pn, i64 84
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !17
  %i.hc = load i16, ptr %i.bc, align 2, !tbaa !15
  %i.hd = sext i16 %i.hc to i32
  %i.he = mul nsw i32 %i.hb, %i.hd
  %i.hf = getelementptr i8, ptr %.pn, i64 116
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !17
  %i.hh = load i16, ptr %i.bd, align 2, !tbaa !15
end_hunk_0
