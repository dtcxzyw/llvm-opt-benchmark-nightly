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
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.b = alloca [88 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.c = sub i64 0, %2
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.h = load i16, ptr %3, align 2, !tbaa !15
  %i.i = sext i16 %i.h to i32
  %i.j = load i16, ptr %i.e, align 2, !tbaa !15
  %i.k = sext i16 %i.j to i32
  %i.l = load i16, ptr %i.f, align 2, !tbaa !15
  %i.m = sext i16 %i.l to i32
  %i.n = load i16, ptr %i.g, align 2, !tbaa !15
  %i.o = sext i16 %i.n to i32
  %i.p = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %i.q = shufflevector <4 x i32> %i.p, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.r = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %i.s = shufflevector <4 x i32> %i.r, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.t = insertelement <4 x i32> poison, i32 %i.m, i64 0
  %i.u = shufflevector <4 x i32> %i.t, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.v = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %i.w = shufflevector <4 x i32> %i.v, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader54

.preheader54:                                     ; preds = %bb.a, %.preheader54
  %.058 = phi ptr [ %i.b, %bb.a ], [ %i.bs, %.preheader54 ] ; 3 uses
  %.04357 = phi i32 [ 0, %bb.a ], [ %i.bt, %.preheader54 ]
  %.04856 = phi ptr [ %i.d, %bb.a ], [ %i.br, %.preheader54 ] ; 8 uses
  %i.x = getelementptr i8, ptr %.04856, i64 -1
  %i.y = getelementptr i8, ptr %.04856, i64 1
  %i.z = getelementptr i8, ptr %.04856, i64 2
  %i.aa = getelementptr i8, ptr %.04856, i64 3
  %i.ab = getelementptr i8, ptr %.04856, i64 5
  %i.ac = load <4 x i8>, ptr %i.x, align 1, !tbaa !16
  %i.ad = load <4 x i8>, ptr %.04856, align 1, !tbaa !16
  %i.ae = load <4 x i8>, ptr %i.y, align 1, !tbaa !16
  %i.af = load <4 x i8>, ptr %i.z, align 1, !tbaa !16
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !16
  %i.ah = zext <4 x i8> %i.ac to <4 x i32>
  %i.ai = zext <4 x i8> %i.ad to <4 x i32>
  %i.aj = zext <4 x i8> %i.ae to <4 x i32>        ; 3 uses
  %i.ak = zext <4 x i8> %i.af to <4 x i32>
  %i.al = zext i8 %i.ag to i32
  %i.am = mul nsw <4 x i32> %i.q, %i.ah
  %i.an = mul nsw <4 x i32> %i.s, %i.ai
  %i.ao = mul nsw <4 x i32> %i.u, %i.aj
  %i.ap = mul nsw <4 x i32> %i.w, %i.ak
  %i.aq = add nsw <4 x i32> %i.am, splat (i32 64)
  %i.ar = add nsw <4 x i32> %i.aq, %i.an
  %i.as = add nsw <4 x i32> %i.ar, %i.ao
  %i.at = add nsw <4 x i32> %i.as, %i.ap
  %i.au = ashr <4 x i32> %i.at, splat (i32 7)
  %i.av = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.au, <4 x i32> zeroinitializer)
  %i.aw = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.av, <4 x i32> splat (i32 255))
  store <4 x i32> %i.aw, ptr %.058, align 4, !tbaa !17
  %i.ax = getelementptr i8, ptr %.04856, i64 6
  %i.ay = getelementptr inbounds nuw i8, ptr %.058, i64 16
  %i.az = load <4 x i8>, ptr %i.ab, align 1, !tbaa !16
  %i.ba = load <4 x i8>, ptr %i.ax, align 1, !tbaa !16
  %i.bb = zext <4 x i8> %i.az to <4 x i32>        ; 3 uses
  %i.bc = zext <4 x i8> %i.ba to <4 x i32>
  %i.bd = shufflevector <4 x i32> %i.aj, <4 x i32> %i.bb, <4 x i32> <i32 poison, i32 3, i32 4, i32 5>
  %i.be = insertelement <4 x i32> %i.bd, i32 %i.al, i64 0
  %i.bf = mul nsw <4 x i32> %i.q, %i.be
  %i.bg = shufflevector <4 x i32> %i.aj, <4 x i32> %i.bb, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bh = mul nsw <4 x i32> %i.s, %i.bg
  %i.bi = mul nsw <4 x i32> %i.u, %i.bb
  %i.bj = mul nsw <4 x i32> %i.w, %i.bc
  %i.bk = add nsw <4 x i32> %i.bf, splat (i32 64)
  %i.bl = add nsw <4 x i32> %i.bk, %i.bh
  %i.bm = add nsw <4 x i32> %i.bl, %i.bi
  %i.bn = add nsw <4 x i32> %i.bm, %i.bj
  %i.bo = ashr <4 x i32> %i.bn, splat (i32 7)
  %i.bp = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bo, <4 x i32> zeroinitializer)
  %i.bq = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bp, <4 x i32> splat (i32 255))
  store <4 x i32> %i.bq, ptr %i.ay, align 4, !tbaa !17
  %i.br = getelementptr inbounds i8, ptr %.04856, i64 %2
  %i.bs = getelementptr inbounds nuw i8, ptr %.058, i64 32
  %i.bt = add nuw nsw i32 %.04357, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bt, 11
  br i1 %exitcond.not, label %.preheader53, label %.preheader54, !llvm.loop !12

.preheader53:                                     ; preds = %.preheader54
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 9 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 9 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 9 uses
  %i.bx = add i64 %i.a, 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader53, %.preheader.rtcont
  %.pn = phi ptr [ %i.b, %.preheader53 ], [ %.163.rtmerge, %.preheader.rtcont ] ; 36 uses
  %.14462 = phi i32 [ 0, %.preheader53 ], [ %.rtmerge69, %.preheader.rtcont ]
  %.04761 = phi ptr [ %0, %.preheader53 ], [ %.rtmerge, %.preheader.rtcont ] ; 11 uses
  %.0476168 = ptrtoaddr ptr %.04761 to i64        ; 2 uses
  %i.by = add i64 %.0476168, 8
  %rt.bound0 = icmp ugt i64 %i.bx, %.0476168
  %rt.bound1 = icmp ugt i64 %i.by, %i.a
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.preheader.rtscalar, label %.preheader.rtvec, !prof !19

bb.b:                                             ; preds = %.preheader.rtcont
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  ret void

.preheader.rtvec:                                 ; preds = %.preheader
  %.163 = getelementptr inbounds nuw i8, ptr %.pn, i64 32 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn, i64 64
  %i.ca = getelementptr inbounds nuw i8, ptr %.pn, i64 96
  %i.cb = load i16, ptr %4, align 2, !tbaa !15    ; 7 uses
  %i.cc = load i16, ptr %i.bu, align 2, !tbaa !15 ; 7 uses
  %i.cd = load i16, ptr %i.bv, align 2, !tbaa !15 ; 7 uses
  %i.ce = load i16, ptr %i.bw, align 2, !tbaa !15 ; 7 uses
  %i.cf = load <4 x i16>, ptr %4, align 2, !tbaa !15 ; 4 uses
  %i.cg = load <8 x i32>, ptr %.pn, align 4, !tbaa !17
  %i.ch = shufflevector <4 x i16> %i.cf, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ci = insertelement <8 x i16> %i.ch, i16 %i.cb, i64 1
  %i.cj = insertelement <8 x i16> %i.ci, i16 %i.cb, i64 2
  %i.ck = insertelement <8 x i16> %i.cj, i16 %i.cb, i64 3
  %i.cl = insertelement <8 x i16> %i.ck, i16 %i.cb, i64 4
  %i.cm = insertelement <8 x i16> %i.cl, i16 %i.cb, i64 5
  %i.cn = insertelement <8 x i16> %i.cm, i16 %i.cb, i64 6
  %i.co = insertelement <8 x i16> %i.cn, i16 %i.cb, i64 7
  %i.cp = sext <8 x i16> %i.co to <8 x i32>
  %i.cq = mul nsw <8 x i32> %i.cg, %i.cp
  %i.cr = load <8 x i32>, ptr %.163, align 4, !tbaa !17
  %i.cs = shufflevector <4 x i16> %i.cf, <4 x i16> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ct = insertelement <8 x i16> %i.cs, i16 %i.cc, i64 1
  %i.cu = insertelement <8 x i16> %i.ct, i16 %i.cc, i64 2
  %i.cv = insertelement <8 x i16> %i.cu, i16 %i.cc, i64 3
  %i.cw = insertelement <8 x i16> %i.cv, i16 %i.cc, i64 4
  %i.cx = insertelement <8 x i16> %i.cw, i16 %i.cc, i64 5
  %i.cy = insertelement <8 x i16> %i.cx, i16 %i.cc, i64 6
  %i.cz = insertelement <8 x i16> %i.cy, i16 %i.cc, i64 7
  %i.da = sext <8 x i16> %i.cz to <8 x i32>
  %i.db = mul nsw <8 x i32> %i.cr, %i.da
  %i.dc = load <8 x i32>, ptr %i.bz, align 4, !tbaa !17
  %i.dd = shufflevector <4 x i16> %i.cf, <4 x i16> poison, <8 x i32> <i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.de = insertelement <8 x i16> %i.dd, i16 %i.cd, i64 1
  %i.df = insertelement <8 x i16> %i.de, i16 %i.cd, i64 2
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cd, i64 3
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.cd, i64 4
  %i.di = insertelement <8 x i16> %i.dh, i16 %i.cd, i64 5
  %i.dj = insertelement <8 x i16> %i.di, i16 %i.cd, i64 6
  %i.dk = insertelement <8 x i16> %i.dj, i16 %i.cd, i64 7
  %i.dl = sext <8 x i16> %i.dk to <8 x i32>
  %i.dm = mul nsw <8 x i32> %i.dc, %i.dl
  %i.dn = load <8 x i32>, ptr %i.ca, align 4, !tbaa !17
  %i.do = shufflevector <4 x i16> %i.cf, <4 x i16> poison, <8 x i32> <i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dp = insertelement <8 x i16> %i.do, i16 %i.ce, i64 1
  %i.dq = insertelement <8 x i16> %i.dp, i16 %i.ce, i64 2
  %i.dr = insertelement <8 x i16> %i.dq, i16 %i.ce, i64 3
  %i.ds = insertelement <8 x i16> %i.dr, i16 %i.ce, i64 4
  %i.dt = insertelement <8 x i16> %i.ds, i16 %i.ce, i64 5
  %i.du = insertelement <8 x i16> %i.dt, i16 %i.ce, i64 6
  %i.dv = insertelement <8 x i16> %i.du, i16 %i.ce, i64 7
  %i.dw = sext <8 x i16> %i.dv to <8 x i32>
  %i.dx = mul nsw <8 x i32> %i.dn, %i.dw
  %i.dy = add <8 x i32> %i.cq, splat (i32 64)
  %i.dz = add <8 x i32> %i.dy, %i.db
  %i.ea = add <8 x i32> %i.dz, %i.dm
  %i.eb = add <8 x i32> %i.ea, %i.dx
  %i.ec = ashr <8 x i32> %i.eb, splat (i32 7)
  %i.ed = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ec, <8 x i32> zeroinitializer)
  %i.ee = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ed, <8 x i32> splat (i32 255))
  %i.ef = trunc nuw <8 x i32> %i.ee to <8 x i8>
  store <8 x i8> %i.ef, ptr %.04761, align 1, !tbaa !16
  br label %.preheader.rtcont

.preheader.rtscalar:                              ; preds = %.preheader
  %.163.scalar = getelementptr inbounds nuw i8, ptr %.pn, i64 32 ; 2 uses
  %i.eg = load i32, ptr %.pn, align 4, !tbaa !17
  %i.eh = load i16, ptr %4, align 2, !tbaa !15
  %i.ei = sext i16 %i.eh to i32
  %i.ej = mul nsw i32 %i.eg, %i.ei
  %i.ek = load i32, ptr %.163.scalar, align 4, !tbaa !17
  %i.el = load i16, ptr %i.bu, align 2, !tbaa !15
  %i.em = sext i16 %i.el to i32
  %i.en = mul nsw i32 %i.ek, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %.pn, i64 64
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !17
  %i.eq = load i16, ptr %i.bv, align 2, !tbaa !15
  %i.er = sext i16 %i.eq to i32
  %i.es = mul nsw i32 %i.ep, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %.pn, i64 96
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !17
  %i.ev = load i16, ptr %i.bw, align 2, !tbaa !15
  %i.ew = sext i16 %i.ev to i32
  %i.ex = mul nsw i32 %i.eu, %i.ew
  %i.ey = add i32 %i.ej, 64
  %i.ez = add i32 %i.ey, %i.en
  %i.fa = add i32 %i.ez, %i.es
  %i.fb = add i32 %i.fa, %i.ex
  %i.fc = ashr i32 %i.fb, 7
  %i.fd = tail call i32 @llvm.smax.i32(i32 %i.fc, i32 0)
  %.0.i51.scalar = tail call i32 @llvm.umin.i32(i32 %i.fd, i32 255)
  %.0.i.scalar = trunc nuw i32 %.0.i51.scalar to i8
  store i8 %.0.i.scalar, ptr %.04761, align 1, !tbaa !16
  %i.fe = getelementptr i8, ptr %.pn, i64 36
  %i.ff = getelementptr i8, ptr %.pn, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !17
  %i.fh = load i16, ptr %4, align 2, !tbaa !15
  %i.fi = sext i16 %i.fh to i32
  %i.fj = mul nsw i32 %i.fg, %i.fi
  %i.fk = load i32, ptr %i.fe, align 4, !tbaa !17
  %i.fl = load i16, ptr %i.bu, align 2, !tbaa !15
  %i.fm = sext i16 %i.fl to i32
  %i.fn = mul nsw i32 %i.fk, %i.fm
  %i.fo = getelementptr i8, ptr %.pn, i64 68
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !17
  %i.fq = load i16, ptr %i.bv, align 2, !tbaa !15
  %i.fr = sext i16 %i.fq to i32
  %i.fs = mul nsw i32 %i.fp, %i.fr
  %i.ft = getelementptr i8, ptr %.pn, i64 100
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !17
  %i.fv = load i16, ptr %i.bw, align 2, !tbaa !15
  %i.fw = sext i16 %i.fv to i32
  %i.fx = mul nsw i32 %i.fu, %i.fw
  %i.fy = add i32 %i.fj, 64
  %i.fz = add i32 %i.fy, %i.fn
  %i.ga = add i32 %i.fz, %i.fs
  %i.gb = add i32 %i.ga, %i.fx
  %i.gc = ashr i32 %i.gb, 7
  %i.gd = tail call i32 @llvm.smax.i32(i32 %i.gc, i32 0)
  %.0.i51.1.scalar = tail call i32 @llvm.umin.i32(i32 %i.gd, i32 255)
  %.0.i.1.scalar = trunc nuw i32 %.0.i51.1.scalar to i8
  %i.ge = getelementptr inbounds nuw i8, ptr %.04761, i64 1
  store i8 %.0.i.1.scalar, ptr %i.ge, align 1, !tbaa !16
  %i.gf = getelementptr i8, ptr %.pn, i64 40
  %i.gg = getelementptr i8, ptr %.pn, i64 8
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !17
  %i.gi = load i16, ptr %4, align 2, !tbaa !15
  %i.gj = sext i16 %i.gi to i32
  %i.gk = mul nsw i32 %i.gh, %i.gj
  %i.gl = load i32, ptr %i.gf, align 4, !tbaa !17
  %i.gm = load i16, ptr %i.bu, align 2, !tbaa !15
  %i.gn = sext i16 %i.gm to i32
  %i.go = mul nsw i32 %i.gl, %i.gn
  %i.gp = getelementptr i8, ptr %.pn, i64 72
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !17
  %i.gr = load i16, ptr %i.bv, align 2, !tbaa !15
  %i.gs = sext i16 %i.gr to i32
  %i.gt = mul nsw i32 %i.gq, %i.gs
  %i.gu = getelementptr i8, ptr %.pn, i64 104
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !17
  %i.gw = load i16, ptr %i.bw, align 2, !tbaa !15
  %i.gx = sext i16 %i.gw to i32
  %i.gy = mul nsw i32 %i.gv, %i.gx
  %i.gz = add i32 %i.gk, 64
  %i.ha = add i32 %i.gz, %i.go
  %i.hb = add i32 %i.ha, %i.gt
  %i.hc = add i32 %i.hb, %i.gy
  %i.hd = ashr i32 %i.hc, 7
  %i.he = tail call i32 @llvm.smax.i32(i32 %i.hd, i32 0)
  %.0.i51.2.scalar = tail call i32 @llvm.umin.i32(i32 %i.he, i32 255)
  %.0.i.2.scalar = trunc nuw i32 %.0.i51.2.scalar to i8
  %i.hf = getelementptr inbounds nuw i8, ptr %.04761, i64 2
  store i8 %.0.i.2.scalar, ptr %i.hf, align 1, !tbaa !16
  %i.hg = getelementptr i8, ptr %.pn, i64 44
  %i.hh = getelementptr i8, ptr %.pn, i64 12
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !17
  %i.hj = load i16, ptr %4, align 2, !tbaa !15
  %i.hk = sext i16 %i.hj to i32
  %i.hl = mul nsw i32 %i.hi, %i.hk
  %i.hm = load i32, ptr %i.hg, align 4, !tbaa !17
  %i.hn = load i16, ptr %i.bu, align 2, !tbaa !15
  %i.ho = sext i16 %i.hn to i32
  %i.hp = mul nsw i32 %i.hm, %i.ho
  %i.hq = getelementptr i8, ptr %.pn, i64 76
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !17
  %i.hs = load i16, ptr %i.bv, align 2, !tbaa !15
  %i.ht = sext i16 %i.hs to i32
  %i.hu = mul nsw i32 %i.hr, %i.ht
  %i.hv = getelementptr i8, ptr %.pn, i64 108
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !17
  %i.hx = load i16, ptr %i.bw, align 2, !tbaa !15
  %i.hy = sext i16 %i.hx to i32
  %i.hz = mul nsw i32 %i.hw, %i.hy
  %i.ia = add i32 %i.hl, 64
  %i.ib = add i32 %i.ia, %i.hp
  %i.ic = add i32 %i.ib, %i.hu
  %i.id = add i32 %i.ic, %i.hz
  %i.ie = ashr i32 %i.id, 7
  %i.if = tail call i32 @llvm.smax.i32(i32 %i.ie, i32 0)
  %.0.i51.3.scalar = tail call i32 @llvm.umin.i32(i32 %i.if, i32 255)
  %.0.i.3.scalar = trunc nuw i32 %.0.i51.3.scalar to i8
  %i.ig = getelementptr inbounds nuw i8, ptr %.04761, i64 3
  store i8 %.0.i.3.scalar, ptr %i.ig, align 1, !tbaa !16
  %i.ih = getelementptr i8, ptr %.pn, i64 48
  %i.ii = getelementptr i8, ptr %.pn, i64 16
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !17
  %i.ik = load i16, ptr %4, align 2, !tbaa !15
  %i.il = sext i16 %i.ik to i32
  %i.im = mul nsw i32 %i.ij, %i.il
  %i.in = load i32, ptr %i.ih, align 4, !tbaa !17
  %i.io = load i16, ptr %i.bu, align 2, !tbaa !15
  %i.ip = sext i16 %i.io to i32
  %i.iq = mul nsw i32 %i.in, %i.ip
  %i.ir = getelementptr i8, ptr %.pn, i64 80
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !17
  %i.it = load i16, ptr %i.bv, align 2, !tbaa !15
  %i.iu = sext i16 %i.it to i32
  %i.iv = mul nsw i32 %i.is, %i.iu
  %i.iw = getelementptr i8, ptr %.pn, i64 112
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !17
  %i.iy = load i16, ptr %i.bw, align 2, !tbaa !15
  %i.iz = sext i16 %i.iy to i32
  %i.ja = mul nsw i32 %i.ix, %i.iz
  %i.jb = add i32 %i.im, 64
  %i.jc = add i32 %i.jb, %i.iq
  %i.jd = add i32 %i.jc, %i.iv
  %i.je = add i32 %i.jd, %i.ja
  %i.jf = ashr i32 %i.je, 7
  %i.jg = tail call i32 @llvm.smax.i32(i32 %i.jf, i32 0)
  %.0.i51.4.scalar = tail call i32 @llvm.umin.i32(i32 %i.jg, i32 255)
  %.0.i.4.scalar = trunc nuw i32 %.0.i51.4.scalar to i8
  %i.jh = getelementptr inbounds nuw i8, ptr %.04761, i64 4
  store i8 %.0.i.4.scalar, ptr %i.jh, align 1, !tbaa !16
  %i.ji = getelementptr i8, ptr %.pn, i64 52
  %i.jj = getelementptr i8, ptr %.pn, i64 20
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !17
  %i.jl = load i16, ptr %4, align 2, !tbaa !15
  %i.jm = sext i16 %i.jl to i32
  %i.jn = mul nsw i32 %i.jk, %i.jm
  %i.jo = load i32, ptr %i.ji, align 4, !tbaa !17
  %i.jp = load i16, ptr %i.bu, align 2, !tbaa !15
  %i.jq = sext i16 %i.jp to i32
  %i.jr = mul nsw i32 %i.jo, %i.jq
  %i.js = getelementptr i8, ptr %.pn, i64 84
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !17
  %i.ju = load i16, ptr %i.bv, align 2, !tbaa !15
  %i.jv = sext i16 %i.ju to i32
  %i.jw = mul nsw i32 %i.jt, %i.jv
  %i.jx = getelementptr i8, ptr %.pn, i64 116
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !17
  %i.jz = load i16, ptr %i.bw, align 2, !tbaa !15
  %i.ka = sext i16 %i.jz to i32
  %i.kb = mul nsw i32 %i.jy, %i.ka
  %i.kc = add i32 %i.jn, 64
  %i.kd = add i32 %i.kc, %i.jr
  %i.ke = add i32 %i.kd, %i.jw
  %i.kf = add i32 %i.ke, %i.kb
  %i.kg = ashr i32 %i.kf, 7
  %i.kh = tail call i32 @llvm.smax.i32(i32 %i.kg, i32 0)
  %.0.i51.5.scalar = tail call i32 @llvm.umin.i32(i32 %i.kh, i32 255)
  %.0.i.5.scalar = trunc nuw i32 %.0.i51.5.scalar to i8
  %i.ki = getelementptr inbounds nuw i8, ptr %.04761, i64 5
  store i8 %.0.i.5.scalar, ptr %i.ki, align 1, !tbaa !16
  %i.kj = getelementptr i8, ptr %.pn, i64 56
  %i.kk = getelementptr i8, ptr %.pn, i64 24
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !17
  %i.km = load i16, ptr %4, align 2, !tbaa !15
  %i.kn = sext i16 %i.km to i32
  %i.ko = mul nsw i32 %i.kl, %i.kn
  %i.kp = load i32, ptr %i.kj, align 4, !tbaa !17
  %i.kq = load i16, ptr %i.bu, align 2, !tbaa !15
  %i.kr = sext i16 %i.kq to i32
  %i.ks = mul nsw i32 %i.kp, %i.kr
  %i.kt = getelementptr i8, ptr %.pn, i64 88
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !17
  %i.kv = load i16, ptr %i.bv, align 2, !tbaa !15
  %i.kw = sext i16 %i.kv to i32
  %i.kx = mul nsw i32 %i.ku, %i.kw
  %i.ky = getelementptr i8, ptr %.pn, i64 120
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !17
  %i.la = load i16, ptr %i.bw, align 2, !tbaa !15
  %i.lb = sext i16 %i.la to i32
  %i.lc = mul nsw i32 %i.kz, %i.lb
  %i.ld = add i32 %i.ko, 64
  %i.le = add i32 %i.ld, %i.ks
  %i.lf = add i32 %i.le, %i.kx
  %i.lg = add i32 %i.lf, %i.lc
  %i.lh = ashr i32 %i.lg, 7
  %i.li = tail call i32 @llvm.smax.i32(i32 %i.lh, i32 0)
  %.0.i51.6.scalar = tail call i32 @llvm.umin.i32(i32 %i.li, i32 255)
  %.0.i.6.scalar = trunc nuw i32 %.0.i51.6.scalar to i8
  %i.lj = getelementptr inbounds nuw i8, ptr %.04761, i64 6
  store i8 %.0.i.6.scalar, ptr %i.lj, align 1, !tbaa !16
  %i.lk = getelementptr i8, ptr %.pn, i64 60
  %i.ll = getelementptr i8, ptr %.pn, i64 28
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !17
  %i.ln = load i16, ptr %4, align 2, !tbaa !15
  %i.lo = sext i16 %i.ln to i32
  %i.lp = mul nsw i32 %i.lm, %i.lo
  %i.lq = load i32, ptr %i.lk, align 4, !tbaa !17
  %i.lr = load i16, ptr %i.bu, align 2, !tbaa !15
  %i.ls = sext i16 %i.lr to i32
  %i.lt = mul nsw i32 %i.lq, %i.ls
  %i.lu = getelementptr i8, ptr %.pn, i64 92
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !17
  %i.lw = load i16, ptr %i.bv, align 2, !tbaa !15
  %i.lx = sext i16 %i.lw to i32
  %i.ly = mul nsw i32 %i.lv, %i.lx
  %i.lz = getelementptr i8, ptr %.pn, i64 124
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !17
  %i.mb = load i16, ptr %i.bw, align 2, !tbaa !15
  %i.mc = sext i16 %i.mb to i32
  %i.md = mul nsw i32 %i.ma, %i.mc
  %i.me = add i32 %i.lp, 64
  %i.mf = add i32 %i.me, %i.lt
  %i.mg = add i32 %i.mf, %i.ly
  %i.mh = add i32 %i.mg, %i.md
  %i.mi = ashr i32 %i.mh, 7
  %i.mj = tail call i32 @llvm.smax.i32(i32 %i.mi, i32 0)
  %.0.i51.7.scalar = tail call i32 @llvm.umin.i32(i32 %i.mj, i32 255)
  %.0.i.7.scalar = trunc nuw i32 %.0.i51.7.scalar to i8
  %i.mk = getelementptr inbounds nuw i8, ptr %.04761, i64 7
  store i8 %.0.i.7.scalar, ptr %i.mk, align 1, !tbaa !16
  br label %.preheader.rtcont

.preheader.rtcont:                                ; preds = %.preheader.rtscalar, %.preheader.rtvec
  %.163.rtmerge = phi ptr [ %.163, %.preheader.rtvec ], [ %.163.scalar, %.preheader.rtscalar ]
  %.rtmerge69 = add nuw nsw i32 %.14462, 1        ; 2 uses
  %exitcond67.not.rtmerge = icmp eq i32 %.rtmerge69, 8
  %.rtmerge = getelementptr inbounds i8, ptr %.04761, i64 %2
  br i1 %exitcond67.not.rtmerge, label %bb.b, label %.preheader, !llvm.loop !13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #3

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"VP6DSPContext", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = distinct !{!12, !18}
!13 = distinct !{!13, !18}
!14 = !{!"short", !5, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!5, !5, i64 0}
!17 = !{!6, !6, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"branch_weights", i32 1, i32 1048575}
end_hunk_0
