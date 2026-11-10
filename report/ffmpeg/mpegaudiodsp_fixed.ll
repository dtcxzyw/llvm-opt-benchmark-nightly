Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegaudiodsp_fixed?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ff_mpa_synth_init_fixed.init_static_once = internal global i32 0, align 4
@ff_mdct_win_fixed = hidden local_unnamed_addr global [8 x [40 x i32]] zeroinitializer, align 16
@ff_mpa_synth_window_fixed = hidden local_unnamed_addr global [768 x i32] zeroinitializer, align 16
@ff_mpa_enwindow = external hidden local_unnamed_addr constant [257 x i32], align 16
@icos36h = internal unnamed_addr constant [9 x i32] [i32 1077843343, i32 1111619334, i32 1184743019, i32 1310796734, i32 1518500250, i32 1872011742, i32 1270344802, i32 2074309917, i32 0], align 16
@icos36 = internal unnamed_addr constant [9 x i32] [i32 4210326, i32 4342263, i32 4627902, i32 5120300, i32 5931642, i32 7312546, i32 9924569, i32 16205546, i32 48124241], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @ff_mpadsp_apply_window_fixed(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2048
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, ptr noundef nonnull align 4 dereferenceable(128) %0, i64 128, i1 false)
  %.idx = mul nsw i64 %4, 62
  %i.b = getelementptr inbounds i8, ptr %3, i64 %.idx
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.d = load i32, ptr %2, align 4, !tbaa !9
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !9
  %i.h = sext i32 %i.g to i64
  %i.i = load i32, ptr %i.f, align 4, !tbaa !9
  %i.j = sext i32 %i.i to i64
  %i.k = mul nsw i64 %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.m = load i32, ptr %i.l, align 4, !tbaa !9
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.p = load i32, ptr %i.o, align 4, !tbaa !9
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.t = load i32, ptr %i.s, align 4, !tbaa !9
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.w = load i32, ptr %i.v, align 4, !tbaa !9
  %i.x = sext i32 %i.w to i64
  %i.y = mul nsw i64 %i.x, %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !9
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !9
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul nsw i64 %i.ae, %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !9
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !9
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.al, %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1280
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !9
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !9
  %i.as = sext i32 %i.ar to i64
  %i.at = mul nsw i64 %i.as, %i.ap
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 1536
  %i.av = load i32, ptr %i.au, align 4, !tbaa !9
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !9
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.az, %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 1792
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !9
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !9
  %i.bg = sext i32 %i.bf to i64
  %i.bh = mul nsw i64 %i.bg, %i.bd
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !9
  %i.bl = sext i32 %i.bk to i64
  %i.bm = load i32, ptr %i.bi, align 4, !tbaa !9
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !9
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !9
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !9
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !9
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 896
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !9
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !9
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 1152
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !9
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !9
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 1408
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !9
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !9
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 1664
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !9
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1728
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !9
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 1920
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !9
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !9
  %i.dd = sext i32 %i.dc to i64
  %.neg = mul nsw i64 %i.bn, %i.bl
  %.neg190 = mul nsw i64 %i.bt, %i.bq
  %.neg192 = mul nsw i64 %i.bz, %i.bw
  %.neg194 = mul nsw i64 %i.cf, %i.cc
  %.neg196 = mul nsw i64 %i.cl, %i.ci
  %.neg198 = mul nsw i64 %i.cr, %i.co
  %.neg200 = mul nsw i64 %i.cx, %i.cu
  %.neg202 = mul nsw i64 %i.dd, %i.da
  %reass.add = add i64 %.neg190, %.neg
  %reass.add204 = add i64 %reass.add, %.neg192
  %reass.add205 = add i64 %reass.add204, %.neg194
  %reass.add206 = add i64 %reass.add205, %.neg196
  %reass.add207 = add i64 %reass.add206, %.neg198
  %reass.add208 = add i64 %reass.add207, %.neg200
  %reass.add209 = add i64 %reass.add208, %.neg202
  %i.de = add nsw i64 %i.k, %i.e
  %i.df = add i64 %i.de, %i.r
  %i.dg = add i64 %i.df, %i.y
  %i.dh = add i64 %i.dg, %i.af
  %i.di = add i64 %i.dh, %i.am
  %i.dj = add i64 %i.di, %i.at
  %i.dk = add i64 %i.dj, %i.ba
  %i.dl = add i64 %i.dk, %i.bh
  %i.dm = sub i64 %i.dl, %reass.add209            ; 2 uses
  %i.dn = lshr i64 %i.dm, 24
  %i.do = trunc i64 %i.dn to i32
  %i.dp = tail call i32 @llvm.smax.i32(i32 %i.do, i32 -32768)
  %.0.i.i = tail call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.dp, i32 32767)
  %i.dq = trunc nsw i32 %.0.i.i to i16
  store i16 %i.dq, ptr %3, align 2, !tbaa !13
  %i.dr = sub i64 0, %4
  %.0303 = getelementptr inbounds [2 x i8], ptr %3, i64 %4
  %.0188304 = and i64 %i.dm, 16777215
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.0188310 = phi i64 [ %.0188304, %bb.a ], [ %.0188, %bb.b ]
  %.0309 = phi ptr [ %.0303, %bb.a ], [ %.0, %bb.b ] ; 2 uses
  %.pn308 = phi ptr [ %1, %bb.a ], [ %.0174, %bb.b ] ; 24 uses
  %.0175307 = phi ptr [ %i.b, %bb.a ], [ %i.kg, %bb.b ] ; 2 uses
  %.0177305 = phi ptr [ %i.c, %bb.a ], [ %i.kh, %bb.b ] ; 17 uses
  %.0174 = getelementptr inbounds nuw i8, ptr %.pn308, i64 4 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv ; 8 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !9
  %i.du = load i32, ptr %.0174, align 4, !tbaa !9
  %i.dv = sext i32 %i.du to i64
  %i.dw = sext i32 %i.dt to i64                   ; 2 uses
  %i.dx = mul nsw i64 %i.dv, %i.dw
  %i.dy = load i32, ptr %.0177305, align 4, !tbaa !9
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ds, i64 256
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !9
  %i.ec = getelementptr inbounds nuw i8, ptr %.pn308, i64 260
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !9
  %i.ee = sext i32 %i.ed to i64
  %i.ef = sext i32 %i.eb to i64                   ; 2 uses
  %i.eg = mul nsw i64 %i.ee, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %.0177305, i64 256
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !9
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ds, i64 512
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !9
  %i.em = getelementptr inbounds nuw i8, ptr %.pn308, i64 516
  %i.en = load i32, ptr %i.em, align 4, !tbaa !9
  %i.eo = sext i32 %i.en to i64
  %i.ep = sext i32 %i.el to i64                   ; 2 uses
  %i.eq = mul nsw i64 %i.eo, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %.0177305, i64 512
  %i.es = load i32, ptr %i.er, align 4, !tbaa !9
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ds, i64 768
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !9
  %i.ew = getelementptr inbounds nuw i8, ptr %.pn308, i64 772
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !9
  %i.ey = sext i32 %i.ex to i64
  %i.ez = sext i32 %i.ev to i64                   ; 2 uses
  %i.fa = mul nsw i64 %i.ey, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %.0177305, i64 768
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !9
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ds, i64 1024
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !9
  %i.fg = getelementptr inbounds nuw i8, ptr %.pn308, i64 1028
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !9
  %i.fi = sext i32 %i.fh to i64
  %i.fj = sext i32 %i.ff to i64                   ; 2 uses
  %i.fk = mul nsw i64 %i.fi, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %.0177305, i64 1024
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !9
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ds, i64 1280
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !9
  %i.fq = getelementptr inbounds nuw i8, ptr %.pn308, i64 1284
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !9
  %i.fs = sext i32 %i.fr to i64
  %i.ft = sext i32 %i.fp to i64                   ; 2 uses
  %i.fu = mul nsw i64 %i.fs, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %.0177305, i64 1280
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !9
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ds, i64 1536
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !9
  %i.ga = getelementptr inbounds nuw i8, ptr %.pn308, i64 1540
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !9
  %i.gc = sext i32 %i.gb to i64
  %i.gd = sext i32 %i.fz to i64                   ; 2 uses
  %i.ge = mul nsw i64 %i.gc, %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %.0177305, i64 1536
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !9
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ds, i64 1792
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !9
  %i.gk = getelementptr inbounds nuw i8, ptr %.pn308, i64 1796
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !9
  %i.gm = sext i32 %i.gl to i64
  %i.gn = sext i32 %i.gj to i64                   ; 2 uses
  %i.go = mul nsw i64 %i.gm, %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %.0177305, i64 1792
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !9
  %i.gr = sext i32 %i.gq to i64
  %i.gs = sub nsw i64 0, %indvars.iv
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.gs ; 8 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !9
  %i.gv = getelementptr inbounds nuw i8, ptr %.pn308, i64 132
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !9
  %i.gx = sext i32 %i.gw to i64
  %i.gy = sext i32 %i.gu to i64                   ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.0177305, i64 128
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !9
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gt, i64 256
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !9
  %i.he = getelementptr inbounds nuw i8, ptr %.pn308, i64 388
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !9
  %i.hg = sext i32 %i.hf to i64
  %i.hh = sext i32 %i.hd to i64                   ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0177305, i64 384
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !9
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gt, i64 512
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !9
  %i.hn = getelementptr inbounds nuw i8, ptr %.pn308, i64 644
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !9
  %i.hp = sext i32 %i.ho to i64
  %i.hq = sext i32 %i.hm to i64                   ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.0177305, i64 640
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !9
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gt, i64 768
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !9
  %i.hw = getelementptr inbounds nuw i8, ptr %.pn308, i64 900
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !9
  %i.hy = sext i32 %i.hx to i64
  %i.hz = sext i32 %i.hv to i64                   ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.0177305, i64 896
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !9
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.gt, i64 1024
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !9
  %i.if = getelementptr inbounds nuw i8, ptr %.pn308, i64 1156
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !9
  %i.ih = sext i32 %i.ig to i64
  %i.ii = sext i32 %i.ie to i64                   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.0177305, i64 1152
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !9
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.gt, i64 1280
  %i.in = load i32, ptr %i.im, align 4, !tbaa !9
  %i.io = getelementptr inbounds nuw i8, ptr %.pn308, i64 1412
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !9
  %i.iq = sext i32 %i.ip to i64
  %i.ir = sext i32 %i.in to i64                   ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.0177305, i64 1408
  %i.it = load i32, ptr %i.is, align 4, !tbaa !9
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gt, i64 1536
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !9
  %i.ix = getelementptr inbounds nuw i8, ptr %.pn308, i64 1668
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !9
  %i.iz = sext i32 %i.iy to i64
  %i.ja = sext i32 %i.iw to i64                   ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.0177305, i64 1664
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !9
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw i8, ptr %i.gt, i64 1792
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !9
  %i.jg = getelementptr inbounds nuw i8, ptr %.pn308, i64 1924
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !9
  %i.ji = sext i32 %i.jh to i64
  %i.jj = sext i32 %i.jf to i64                   ; 2 uses
  %.neg233 = mul nsw i64 %i.gx, %i.gy
  %.neg234 = mul nsw i64 %i.hg, %i.hh
  %.neg236 = mul nsw i64 %i.hp, %i.hq
  %.neg238 = mul nsw i64 %i.hy, %i.hz
  %.neg240 = mul nsw i64 %i.ih, %i.ii
  %.neg242 = mul nsw i64 %i.iq, %i.ir
  %.neg244 = mul nsw i64 %i.iz, %i.ja
  %.neg246 = mul nsw i64 %i.ji, %i.jj
  %reass.add279 = add i64 %.neg234, %.neg233
  %reass.add280 = add i64 %reass.add279, %.neg236
  %reass.add281 = add i64 %reass.add280, %.neg238
  %reass.add282 = add i64 %reass.add281, %.neg240
  %reass.add283 = add i64 %reass.add282, %.neg242
  %reass.add284 = add i64 %reass.add283, %.neg244
  %reass.add285 = add i64 %reass.add284, %.neg246
  %i.jk = add nsw i64 %i.dx, %.0188310
  %i.jl = add i64 %i.jk, %i.eg
  %i.jm = add i64 %i.jl, %i.eq
  %i.jn = add i64 %i.jm, %i.fa
  %i.jo = add i64 %i.jn, %i.fk
  %i.jp = add i64 %i.jo, %i.fu
  %i.jq = add i64 %i.jp, %i.ge
  %i.jr = add i64 %i.jq, %i.go
  %i.js = sub i64 %i.jr, %reass.add285            ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.0177305, i64 1920
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !9
  %i.jv = sext i32 %i.ju to i64
  %i.jw = lshr i64 %i.js, 24
  %i.jx = trunc i64 %i.jw to i32
  %i.jy = and i64 %i.js, 16777215
  %i.jz = tail call i32 @llvm.smax.i32(i32 %i.jx, i32 -32768)
  %.0.i.i178 = tail call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.jz, i32 32767)
  %i.ka = trunc nsw i32 %.0.i.i178 to i16
  store i16 %i.ka, ptr %.0309, align 2, !tbaa !13
  %.neg248 = mul nsw i64 %i.dz, %i.dw
  %.neg249 = mul nsw i64 %i.ej, %i.ef
  %.neg251 = mul nsw i64 %i.et, %i.ep
  %.neg253 = mul nsw i64 %i.fd, %i.ez
  %.neg255 = mul nsw i64 %i.fn, %i.fj
  %.neg257 = mul nsw i64 %i.fx, %i.ft
  %.neg259 = mul nsw i64 %i.gh, %i.gd
  %.neg261 = mul nsw i64 %i.gr, %i.gn
  %.neg263 = mul nsw i64 %i.hb, %i.gy
  %.neg265 = mul nsw i64 %i.hk, %i.hh
  %.neg267 = mul nsw i64 %i.ht, %i.hq
  %.neg269 = mul nsw i64 %i.ic, %i.hz
  %.neg271 = mul nsw i64 %i.il, %i.ii
  %.neg273 = mul nsw i64 %i.iu, %i.ir
  %.neg275 = mul nsw i64 %i.jd, %i.ja
  %.neg277 = mul nsw i64 %i.jv, %i.jj
  %reass.add287 = add i64 %.neg249, %.neg248
  %reass.add288 = add i64 %reass.add287, %.neg251
  %reass.add289 = add i64 %reass.add288, %.neg253
  %reass.add290 = add i64 %reass.add289, %.neg255
  %reass.add291 = add i64 %reass.add290, %.neg257
  %reass.add292 = add i64 %reass.add291, %.neg259
  %reass.add293 = add i64 %reass.add292, %.neg261
  %reass.add294 = add i64 %reass.add293, %.neg263
  %reass.add295 = add i64 %reass.add294, %.neg265
  %reass.add296 = add i64 %reass.add295, %.neg267
  %reass.add297 = add i64 %reass.add296, %.neg269
  %reass.add298 = add i64 %reass.add297, %.neg271
  %reass.add299 = add i64 %reass.add298, %.neg273
  %reass.add300 = add i64 %reass.add299, %.neg275
  %reass.add301 = add i64 %reass.add300, %.neg277
  %i.kb = sub i64 %i.jy, %reass.add301            ; 2 uses
  %i.kc = lshr i64 %i.kb, 24
  %i.kd = trunc i64 %i.kc to i32
  %i.ke = tail call i32 @llvm.smax.i32(i32 %i.kd, i32 -32768)
  %.0.i.i179 = tail call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.ke, i32 32767)
  %i.kf = trunc nsw i32 %.0.i.i179 to i16
  store i16 %i.kf, ptr %.0175307, align 2, !tbaa !13
  %i.kg = getelementptr inbounds [2 x i8], ptr %.0175307, i64 %i.dr
  %i.kh = getelementptr inbounds i8, ptr %.0177305, i64 -4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.0 = getelementptr inbounds [2 x i8], ptr %.0309, i64 %4 ; 2 uses
  %.0188 = and i64 %i.kb, 16777215                ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !11

bb.c:                                             ; preds = %bb.b
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.kj = getelementptr inbounds nuw i8, ptr %.pn308, i64 136
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !9
  %i.kl = sext i32 %i.kk to i64
  %i.km = load i32, ptr %i.ki, align 4, !tbaa !9
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw i8, ptr %.pn308, i64 392
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !9
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !9
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds nuw i8, ptr %.pn308, i64 648
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !9
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !9
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw i8, ptr %.pn308, i64 904
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !9
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !9
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %.pn308, i64 1160
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !9
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !9
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %.pn308, i64 1416
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !9
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !9
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %.pn308, i64 1672
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !9
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !9
  %i.lx = sext i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw i8, ptr %.pn308, i64 1928
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !9
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !9
  %i.md = sext i32 %i.mc to i64
  %.neg210 = mul nsw i64 %i.kn, %i.kl
  %.neg211 = mul nsw i64 %i.kt, %i.kq
  %.neg213 = mul nsw i64 %i.kz, %i.kw
  %.neg215 = mul nsw i64 %i.lf, %i.lc
  %.neg217 = mul nsw i64 %i.ll, %i.li
  %.neg219 = mul nsw i64 %i.lr, %i.lo
  %.neg221 = mul nsw i64 %i.lx, %i.lu
  %.neg223 = mul nsw i64 %i.md, %i.ma
  %reass.add225 = add i64 %.neg211, %.neg210
  %reass.add226 = add i64 %reass.add225, %.neg213
  %reass.add227 = add i64 %reass.add226, %.neg215
  %reass.add228 = add i64 %reass.add227, %.neg217
  %reass.add229 = add i64 %reass.add228, %.neg219
  %reass.add230 = add i64 %reass.add229, %.neg221
  %reass.add231 = add i64 %reass.add230, %.neg223
  %i.me = sub i64 %.0188, %reass.add231           ; 2 uses
  %i.mf = lshr i64 %i.me, 24
  %i.mg = trunc i64 %i.mf to i32
  %i.mh = tail call i32 @llvm.smax.i32(i32 %i.mg, i32 -32768)
  %.0.i.i180 = tail call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.mh, i32 32767)
  %i.mi = trunc nsw i32 %.0.i.i180 to i16
  store i16 %i.mi, ptr %.0, align 2, !tbaa !13
  %i.mj = trunc i64 %i.me to i32
  %i.mk = and i32 %i.mj, 16777215
  store i32 %i.mk, ptr %2, align 4, !tbaa !9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden void @ff_mpa_synth_filter_fixed(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  tail call void %i.e(ptr noundef %i.c, ptr noundef %7) #9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  tail call void %i.g(ptr noundef %i.c, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) #9
  %i.h = add i32 %i.a, 480
  %i.i = and i32 %i.h, 511
  store i32 %i.i, ptr %2, align 4, !tbaa !9
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define hidden void @ff_mpa_synth_init_fixed() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @pthread_once(ptr noundef nonnull @ff_mpa_synth_init_fixed.init_static_once, ptr noundef nonnull @mpa_synth_window_init) #9 ; 0 uses
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @mpa_synth_window_init() #5 {
bb.a:
  tail call fastcc void @mpa_synth_init() #10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @ff_imdct36_blocks_fixed(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [18 x i32], align 16              ; 20 uses
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp ne i32 %4, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %imdct36.exit
  %.039 = phi ptr [ %0, %.lr.ph ], [ %i.kd, %imdct36.exit ] ; 7 uses
  %.01638 = phi ptr [ %1, %.lr.ph ], [ %i.kc, %imdct36.exit ] ; 7 uses
  %.01737 = phi i32 [ 0, %.lr.ph ], [ %i.ke, %imdct36.exit ] ; 4 uses
  %.01836 = phi ptr [ %2, %.lr.ph ], [ %i.jz, %imdct36.exit ] ; 19 uses
  %i.t = icmp samesign ult i32 %.01737, 2
  %or.cond = select i1 %i.c, i1 %i.t, i1 false
  %i.u = select i1 %or.cond, i32 0, i32 %5
  %i.v = shl i32 %.01737, 2
  %i.w = and i32 %i.v, 4
  %i.x = add nsw i32 %i.u, %i.w
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [160 x i8], ptr @ff_mdct_win_fixed, i64 %i.y ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.aa = getelementptr i8, ptr %.01836, i64 68   ; 2 uses
  %i.ab = getelementptr i8, ptr %.01836, i64 64   ; 2 uses
  %i.ac = getelementptr i8, ptr %.01836, i64 60   ; 2 uses
  %i.ad = getelementptr i8, ptr %.01836, i64 56   ; 2 uses
  %i.ae = getelementptr i8, ptr %.01836, i64 52   ; 2 uses
  %i.af = getelementptr i8, ptr %.01836, i64 48   ; 2 uses
  %i.ag = getelementptr i8, ptr %.01836, i64 44   ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !9  ; 2 uses
  %i.ai = getelementptr i8, ptr %.01836, i64 40   ; 2 uses
  %i.aj = getelementptr i8, ptr %.01836, i64 36   ; 2 uses
  %i.ak = getelementptr i8, ptr %.01836, i64 32   ; 2 uses
  %i.al = getelementptr i8, ptr %.01836, i64 28   ; 2 uses
  %i.am = getelementptr i8, ptr %.01836, i64 24   ; 2 uses
  %i.an = getelementptr i8, ptr %.01836, i64 20   ; 2 uses
  %i.ao = getelementptr i8, ptr %.01836, i64 16   ; 2 uses
  %i.ap = getelementptr i8, ptr %.01836, i64 12   ; 2 uses
  %i.aq = getelementptr i8, ptr %.01836, i64 8    ; 2 uses
  %i.ar = getelementptr i8, ptr %.01836, i64 4    ; 2 uses
  %i.as = load i32, ptr %i.ak, align 4, !tbaa !9  ; 2 uses
  %i.at = load i32, ptr %i.al, align 4, !tbaa !9  ; 2 uses
  %i.au = add i32 %i.at, %i.as                    ; 4 uses
  store i32 %i.au, ptr %i.ak, align 4, !tbaa !9
  %i.av = load i32, ptr %i.ao, align 4, !tbaa !9  ; 2 uses
  %i.aw = load i32, ptr %i.am, align 4, !tbaa !9  ; 2 uses
  %i.ax = load i32, ptr %i.an, align 4, !tbaa !9  ; 2 uses
  %i.ay = add i32 %i.ax, %i.aw                    ; 2 uses
  store i32 %i.ay, ptr %i.am, align 4, !tbaa !9
  %i.az = load i32, ptr %i.ai, align 4, !tbaa !9  ; 2 uses
  %i.ba = add i32 %i.az, %i.ah                    ; 2 uses
  %i.bb = load i32, ptr %i.aj, align 4, !tbaa !9  ; 2 uses
  %i.bc = add i32 %i.bb, %i.az                    ; 4 uses
  store i32 %i.bc, ptr %i.ai, align 4, !tbaa !9
  %i.bd = add i32 %i.as, %i.bb                    ; 2 uses
  %i.be = add i32 %i.aw, %i.at                    ; 2 uses
  %i.bf = add i32 %i.av, %i.ax                    ; 2 uses
  %i.bg = add i32 %i.bd, %i.ba                    ; 4 uses
  store i32 %i.bg, ptr %i.ag, align 4, !tbaa !9
  %i.bh = add i32 %i.bf, %i.be                    ; 2 uses
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !9
  %i.bi = shl i32 %i.ay, 1
  %i.bj = load i32, ptr %i.aa, align 4, !tbaa !9
  %i.bk = load i32, ptr %.01836, align 4, !tbaa !9 ; 3 uses
  %i.bl = load i32, ptr %i.ab, align 4, !tbaa !9  ; 2 uses
  %i.bm = add i32 %i.bj, %i.bl
  %i.bn = load i32, ptr %i.ap, align 4, !tbaa !9  ; 2 uses
  %i.bo = add i32 %i.bn, %i.av                    ; 4 uses
  store i32 %i.bo, ptr %i.ao, align 4, !tbaa !9
  %i.bp = add i32 %i.bo, %i.au
  %i.bq = shl i32 %i.bp, 1
  %i.br = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %i.bs = load i32, ptr %i.aq, align 4, !tbaa !9  ; 2 uses
  %i.bt = add i32 %i.bs, %i.bn                    ; 2 uses
  %i.bu = load i32, ptr %i.ar, align 4, !tbaa !9  ; 2 uses
  %i.bv = add i32 %i.bu, %i.bs                    ; 4 uses
  store i32 %i.bv, ptr %i.aq, align 4, !tbaa !9
  %i.bw = add i32 %i.bk, %i.bu                    ; 4 uses
  store i32 %i.bw, ptr %i.ar, align 4, !tbaa !9
  %i.bx = add i32 %i.be, %i.bd                    ; 4 uses
  store i32 %i.bx, ptr %i.aj, align 4, !tbaa !9
  %i.by = add i32 %i.bt, %i.bf                    ; 4 uses
  store i32 %i.by, ptr %i.an, align 4, !tbaa !9
  %i.bz = add i32 %i.bw, %i.bt                    ; 4 uses
  store i32 %i.bz, ptr %i.ap, align 4, !tbaa !9
  %i.ca = add i32 %i.bv, %i.bc
  %i.cb = shl i32 %i.ca, 1
  %i.cc = insertelement <4 x i32> poison, i32 %i.cb, i64 0
  %i.cd = add i32 %i.by, %i.bx
  %i.ce = shl i32 %i.cd, 1
  %i.cf = insertelement <4 x i32> poison, i32 %i.ce, i64 0
  %i.cg = add i32 %i.bz, %i.bg
  %i.ch = load i32, ptr %i.af, align 4, !tbaa !9  ; 2 uses
  %i.ci = add i32 %i.ah, %i.ch                    ; 3 uses
  store i32 %i.ci, ptr %i.af, align 4, !tbaa !9
  %i.cj = ashr i32 %i.ci, 1
  %i.ck = load i32, ptr %i.ae, align 4, !tbaa !9  ; 2 uses
  %i.cl = add i32 %i.ch, %i.ck                    ; 2 uses
  %i.cm = add i32 %i.ba, %i.cl                    ; 3 uses
  store i32 %i.cm, ptr %i.ae, align 4, !tbaa !9
  %i.cn = ashr i32 %i.cm, 1
  %i.co = add i32 %i.bk, %i.cj                    ; 3 uses
  %i.cp = sub i32 %i.bk, %i.ci                    ; 2 uses
  %i.cq = load i32, ptr %i.ac, align 4, !tbaa !9  ; 2 uses
  %i.cr = add i32 %i.cq, %i.bl                    ; 4 uses
  store i32 %i.cr, ptr %i.ab, align 4, !tbaa !9
  %i.cs = add i32 %i.au, %i.cr
  %i.ct = sub i32 %i.cs, %i.bo                    ; 2 uses
  %i.cu = ashr i32 %i.ct, 1
  %i.cv = sub i32 %i.cp, %i.cu
  store i32 %i.cv, ptr %i.d, align 8, !tbaa !9
  %i.cw = add i32 %i.cp, %i.ct                    ; 3 uses
  store i32 %i.cw, ptr %i.e, align 16, !tbaa !9
  %i.cx = sub i32 %i.au, %i.cr
  %i.cy = add i32 %i.bo, %i.cr
  %i.cz = shl i32 %i.cy, 1
  %i.da = insertelement <4 x i32> %i.br, i32 %i.cx, i64 1
  %i.db = insertelement <4 x i32> %i.da, i32 %i.cz, i64 2
  %i.dc = load i32, ptr %i.ad, align 4, !tbaa !9  ; 2 uses
  %i.dd = add i32 %i.dc, %i.cq                    ; 2 uses
  %i.de = add i32 %i.ck, %i.dc                    ; 4 uses
  store i32 %i.de, ptr %i.ad, align 4, !tbaa !9
  %i.df = add i32 %i.bm, %i.dd                    ; 4 uses
  store i32 %i.df, ptr %i.aa, align 4, !tbaa !9
  %i.dg = add i32 %i.cl, %i.dd                    ; 4 uses
  store i32 %i.dg, ptr %i.ac, align 4, !tbaa !9
end_hunk_0
