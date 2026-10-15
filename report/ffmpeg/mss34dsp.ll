Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mss34dsp?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ff_mjpeg_std_luminance_quant_tbl = external hidden local_unnamed_addr constant [64 x i8], align 16
@ff_mjpeg_std_chrominance_quant_tbl = external hidden local_unnamed_addr constant [64 x i8], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @ff_mss34_gen_quant_mat(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0                       ; 17 uses
  %i.a = select i1 %.not, ptr @ff_mjpeg_std_chrominance_quant_tbl, ptr @ff_mjpeg_std_luminance_quant_tbl ; 7 uses
  %i.b = icmp sgt i32 %1, 49
  br i1 %i.b, label %vector.memcheck36, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 128
  %3 = select i1 %.not, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_chrominance_quant_tbl, i64 64), ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_luminance_quant_tbl, i64 64)
  %bound0 = icmp ult ptr %0, %3
  %bound1 = icmp ult ptr %i.a, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %1, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 8 uses
  %wide.load = load <8 x i8>, ptr %i.a, align 16, !tbaa !9, !alias.scope !20
  %i.d = zext <8 x i8> %wide.load to <8 x i32>
  %i.e = mul nuw nsw <8 x i32> %i.d, splat (i32 5000)
  %i.f = sdiv <8 x i32> %i.e, %broadcast.splat
  %i.g = add nsw <8 x i32> %i.f, splat (i32 50)
  %i.h = sdiv <8 x i32> %i.g, splat (i32 100)
  %i.i = trunc nsw <8 x i32> %i.h to <8 x i16>
  store <8 x i16> %i.i, ptr %0, align 2, !tbaa !22, !alias.scope !23, !noalias !20
  %.val = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_chrominance_quant_tbl, i64 8), align 8
  %.val51 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_luminance_quant_tbl, i64 8), align 8
  %wide.load.1 = select i1 %.not, <8 x i8> %.val, <8 x i8> %.val51
  %i.j = zext <8 x i8> %wide.load.1 to <8 x i32>
  %i.k = mul nuw nsw <8 x i32> %i.j, splat (i32 5000)
  %i.l = sdiv <8 x i32> %i.k, %broadcast.splat
  %i.m = add nsw <8 x i32> %i.l, splat (i32 50)
  %i.n = sdiv <8 x i32> %i.m, splat (i32 100)
  %i.o = trunc nsw <8 x i32> %i.n to <8 x i16>
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <8 x i16> %i.o, ptr %i.p, align 2, !tbaa !22, !alias.scope !23, !noalias !20
  %.val52 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_chrominance_quant_tbl, i64 16), align 16
  %.val53 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_luminance_quant_tbl, i64 16), align 16
  %wide.load.2 = select i1 %.not, <8 x i8> %.val52, <8 x i8> %.val53
  %i.q = zext <8 x i8> %wide.load.2 to <8 x i32>
  %i.r = mul nuw nsw <8 x i32> %i.q, splat (i32 5000)
  %i.s = sdiv <8 x i32> %i.r, %broadcast.splat
  %i.t = add nsw <8 x i32> %i.s, splat (i32 50)
  %i.u = sdiv <8 x i32> %i.t, splat (i32 100)
  %i.v = trunc nsw <8 x i32> %i.u to <8 x i16>
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x i16> %i.v, ptr %i.w, align 2, !tbaa !22, !alias.scope !23, !noalias !20
  %.val54 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_chrominance_quant_tbl, i64 24), align 8
  %.val55 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_luminance_quant_tbl, i64 24), align 8
  %wide.load.3 = select i1 %.not, <8 x i8> %.val54, <8 x i8> %.val55
  %i.x = zext <8 x i8> %wide.load.3 to <8 x i32>
  %i.y = mul nuw nsw <8 x i32> %i.x, splat (i32 5000)
  %i.z = sdiv <8 x i32> %i.y, %broadcast.splat
  %i.aa = add nsw <8 x i32> %i.z, splat (i32 50)
  %i.ab = sdiv <8 x i32> %i.aa, splat (i32 100)
  %i.ac = trunc nsw <8 x i32> %i.ab to <8 x i16>
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <8 x i16> %i.ac, ptr %i.ad, align 2, !tbaa !22, !alias.scope !23, !noalias !20
  %.val56 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_chrominance_quant_tbl, i64 32), align 16
  %.val57 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_luminance_quant_tbl, i64 32), align 16
  %wide.load.4 = select i1 %.not, <8 x i8> %.val56, <8 x i8> %.val57
  %i.ae = zext <8 x i8> %wide.load.4 to <8 x i32>
  %i.af = mul nuw nsw <8 x i32> %i.ae, splat (i32 5000)
  %i.ag = sdiv <8 x i32> %i.af, %broadcast.splat
  %i.ah = add nsw <8 x i32> %i.ag, splat (i32 50)
  %i.ai = sdiv <8 x i32> %i.ah, splat (i32 100)
  %i.aj = trunc nsw <8 x i32> %i.ai to <8 x i16>
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i16> %i.aj, ptr %i.ak, align 2, !tbaa !22, !alias.scope !23, !noalias !20
  %.val58 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_chrominance_quant_tbl, i64 40), align 8
  %.val59 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_luminance_quant_tbl, i64 40), align 8
  %wide.load.5 = select i1 %.not, <8 x i8> %.val58, <8 x i8> %.val59
  %i.al = zext <8 x i8> %wide.load.5 to <8 x i32>
  %i.am = mul nuw nsw <8 x i32> %i.al, splat (i32 5000)
  %i.an = sdiv <8 x i32> %i.am, %broadcast.splat
  %i.ao = add nsw <8 x i32> %i.an, splat (i32 50)
  %i.ap = sdiv <8 x i32> %i.ao, splat (i32 100)
  %i.aq = trunc nsw <8 x i32> %i.ap to <8 x i16>
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <8 x i16> %i.aq, ptr %i.ar, align 2, !tbaa !22, !alias.scope !23, !noalias !20
  %.val60 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_chrominance_quant_tbl, i64 48), align 16
  %.val61 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_luminance_quant_tbl, i64 48), align 16
  %wide.load.6 = select i1 %.not, <8 x i8> %.val60, <8 x i8> %.val61
  %i.as = zext <8 x i8> %wide.load.6 to <8 x i32>
  %i.at = mul nuw nsw <8 x i32> %i.as, splat (i32 5000)
  %i.au = sdiv <8 x i32> %i.at, %broadcast.splat
  %i.av = add nsw <8 x i32> %i.au, splat (i32 50)
  %i.aw = sdiv <8 x i32> %i.av, splat (i32 100)
  %i.ax = trunc nsw <8 x i32> %i.aw to <8 x i16>
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <8 x i16> %i.ax, ptr %i.ay, align 2, !tbaa !22, !alias.scope !23, !noalias !20
  %.val62 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_chrominance_quant_tbl, i64 56), align 8
  %.val63 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_luminance_quant_tbl, i64 56), align 8
  %wide.load.7 = select i1 %.not, <8 x i8> %.val62, <8 x i8> %.val63
  %i.az = zext <8 x i8> %wide.load.7 to <8 x i32>
  %i.ba = mul nuw nsw <8 x i32> %i.az, splat (i32 5000)
  %i.bb = sdiv <8 x i32> %i.ba, %broadcast.splat
  %i.bc = add nsw <8 x i32> %i.bb, splat (i32 50)
  %i.bd = sdiv <8 x i32> %i.bc, splat (i32 100)
  %i.be = trunc nsw <8 x i32> %i.bd to <8 x i16>
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <8 x i16> %i.be, ptr %i.bf, align 2, !tbaa !22, !alias.scope !23, !noalias !20
  br label %.loopexit

vector.memcheck36:                                ; preds = %bb.a
  %i.bg = shl nuw nsw i32 %1, 1
  %i.bh = sub nsw i32 200, %i.bg                  ; 3 uses
  %i.bi = getelementptr i8, ptr %0, i64 128
  %4 = select i1 %.not, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_chrominance_quant_tbl, i64 64), ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_luminance_quant_tbl, i64 64)
  %bound037 = icmp ult ptr %0, %4
  %bound138 = icmp ult ptr %i.a, %i.bi
  %found.conflict39 = and i1 %bound037, %bound138
  br i1 %found.conflict39, label %scalar.ph35, label %vector.body43

vector.body43:                                    ; preds = %vector.memcheck36
  %broadcast.splatinsert41 = insertelement <8 x i32> poison, i32 %i.bh, i64 0
  %broadcast.splat42 = shufflevector <8 x i32> %broadcast.splatinsert41, <8 x i32> poison, <8 x i32> zeroinitializer ; 8 uses
  %wide.load45 = load <8 x i8>, ptr %i.a, align 16, !tbaa !9, !alias.scope !24
  %i.bj = zext <8 x i8> %wide.load45 to <8 x i32>
  %i.bk = mul nsw <8 x i32> %broadcast.splat42, %i.bj
  %i.bl = add nsw <8 x i32> %i.bk, splat (i32 50)
  %i.bm = sdiv <8 x i32> %i.bl, splat (i32 100)
  %i.bn = trunc <8 x i32> %i.bm to <8 x i16>
  store <8 x i16> %i.bn, ptr %0, align 2, !tbaa !22, !alias.scope !25, !noalias !24
  %.val64 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_chrominance_quant_tbl, i64 8), align 8
  %.val65 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_luminance_quant_tbl, i64 8), align 8
  %wide.load45.1 = select i1 %.not, <8 x i8> %.val64, <8 x i8> %.val65
  %i.bo = zext <8 x i8> %wide.load45.1 to <8 x i32>
  %i.bp = mul nsw <8 x i32> %broadcast.splat42, %i.bo
  %i.bq = add nsw <8 x i32> %i.bp, splat (i32 50)
  %i.br = sdiv <8 x i32> %i.bq, splat (i32 100)
  %i.bs = trunc <8 x i32> %i.br to <8 x i16>
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <8 x i16> %i.bs, ptr %i.bt, align 2, !tbaa !22, !alias.scope !25, !noalias !24
  %.val66 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_chrominance_quant_tbl, i64 16), align 16
  %.val67 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_luminance_quant_tbl, i64 16), align 16
  %wide.load45.2 = select i1 %.not, <8 x i8> %.val66, <8 x i8> %.val67
  %i.bu = zext <8 x i8> %wide.load45.2 to <8 x i32>
  %i.bv = mul nsw <8 x i32> %broadcast.splat42, %i.bu
  %i.bw = add nsw <8 x i32> %i.bv, splat (i32 50)
  %i.bx = sdiv <8 x i32> %i.bw, splat (i32 100)
  %i.by = trunc <8 x i32> %i.bx to <8 x i16>
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x i16> %i.by, ptr %i.bz, align 2, !tbaa !22, !alias.scope !25, !noalias !24
  %.val68 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_chrominance_quant_tbl, i64 24), align 8
  %.val69 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_luminance_quant_tbl, i64 24), align 8
  %wide.load45.3 = select i1 %.not, <8 x i8> %.val68, <8 x i8> %.val69
  %i.ca = zext <8 x i8> %wide.load45.3 to <8 x i32>
  %i.cb = mul nsw <8 x i32> %broadcast.splat42, %i.ca
  %i.cc = add nsw <8 x i32> %i.cb, splat (i32 50)
  %i.cd = sdiv <8 x i32> %i.cc, splat (i32 100)
  %i.ce = trunc <8 x i32> %i.cd to <8 x i16>
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <8 x i16> %i.ce, ptr %i.cf, align 2, !tbaa !22, !alias.scope !25, !noalias !24
  %.val70 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_chrominance_quant_tbl, i64 32), align 16
  %.val71 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_luminance_quant_tbl, i64 32), align 16
  %wide.load45.4 = select i1 %.not, <8 x i8> %.val70, <8 x i8> %.val71
  %i.cg = zext <8 x i8> %wide.load45.4 to <8 x i32>
  %i.ch = mul nsw <8 x i32> %broadcast.splat42, %i.cg
  %i.ci = add nsw <8 x i32> %i.ch, splat (i32 50)
  %i.cj = sdiv <8 x i32> %i.ci, splat (i32 100)
  %i.ck = trunc <8 x i32> %i.cj to <8 x i16>
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i16> %i.ck, ptr %i.cl, align 2, !tbaa !22, !alias.scope !25, !noalias !24
  %.val72 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_chrominance_quant_tbl, i64 40), align 8
  %.val73 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_luminance_quant_tbl, i64 40), align 8
  %wide.load45.5 = select i1 %.not, <8 x i8> %.val72, <8 x i8> %.val73
  %i.cm = zext <8 x i8> %wide.load45.5 to <8 x i32>
  %i.cn = mul nsw <8 x i32> %broadcast.splat42, %i.cm
  %i.co = add nsw <8 x i32> %i.cn, splat (i32 50)
  %i.cp = sdiv <8 x i32> %i.co, splat (i32 100)
  %i.cq = trunc <8 x i32> %i.cp to <8 x i16>
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <8 x i16> %i.cq, ptr %i.cr, align 2, !tbaa !22, !alias.scope !25, !noalias !24
  %.val74 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_chrominance_quant_tbl, i64 48), align 16
  %.val75 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_luminance_quant_tbl, i64 48), align 16
  %wide.load45.6 = select i1 %.not, <8 x i8> %.val74, <8 x i8> %.val75
  %i.cs = zext <8 x i8> %wide.load45.6 to <8 x i32>
  %i.ct = mul nsw <8 x i32> %broadcast.splat42, %i.cs
  %i.cu = add nsw <8 x i32> %i.ct, splat (i32 50)
  %i.cv = sdiv <8 x i32> %i.cu, splat (i32 100)
  %i.cw = trunc <8 x i32> %i.cv to <8 x i16>
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <8 x i16> %i.cw, ptr %i.cx, align 2, !tbaa !22, !alias.scope !25, !noalias !24
  %.val76 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_chrominance_quant_tbl, i64 56), align 8
  %.val77 = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @ff_mjpeg_std_luminance_quant_tbl, i64 56), align 8
  %wide.load45.7 = select i1 %.not, <8 x i8> %.val76, <8 x i8> %.val77
  %i.cy = zext <8 x i8> %wide.load45.7 to <8 x i32>
  %i.cz = mul nsw <8 x i32> %broadcast.splat42, %i.cy
  %i.da = add nsw <8 x i32> %i.cz, splat (i32 50)
  %i.db = sdiv <8 x i32> %i.da, splat (i32 100)
  %i.dc = trunc <8 x i32> %i.db to <8 x i16>
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <8 x i16> %i.dc, ptr %i.dd, align 2, !tbaa !22, !alias.scope !25, !noalias !24
  br label %.loopexit

scalar.ph35:                                      ; preds = %vector.memcheck36, %scalar.ph35
  %indvars.iv23 = phi i64 [ %indvars.iv.next24.1, %scalar.ph35 ], [ 0, %vector.memcheck36 ] ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv23
  %i.df = load i8, ptr %i.de, align 2, !tbaa !9
  %i.dg = zext i8 %i.df to i32
  %i.dh = mul nsw i32 %i.bh, %i.dg
  %i.di = add nsw i32 %i.dh, 50
  %i.dj = sdiv i32 %i.di, 100
  %i.dk = trunc i32 %i.dj to i16
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv23
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !22
  %indvars.iv.next24 = or disjoint i64 %indvars.iv23, 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next24
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !9
  %i.do = zext i8 %i.dn to i32
  %i.dp = mul nsw i32 %i.bh, %i.do
  %i.dq = add nsw i32 %i.dp, 50
  %i.dr = sdiv i32 %i.dq, 100
  %i.ds = trunc i32 %i.dr to i16
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next24
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !22
  %indvars.iv.next24.1 = add nuw nsw i64 %indvars.iv23, 2 ; 2 uses
  %exitcond26.not.1 = icmp eq i64 %indvars.iv.next24.1, 64
  br i1 %exitcond26.not.1, label %.loopexit, label %scalar.ph35, !llvm.loop !18

.preheader:                                       ; preds = %vector.memcheck, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %vector.memcheck ] ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !9
  %i.dw = zext i8 %i.dv to i32
  %i.dx = mul nuw nsw i32 %i.dw, 5000
  %i.dy = sdiv i32 %i.dx, %1
  %i.dz = add nsw i32 %i.dy, 50
  %i.ea = sdiv i32 %i.dz, 100
  %i.eb = trunc nsw i32 %i.ea to i16
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !19

.loopexit:                                        ; preds = %.preheader, %scalar.ph35, %vector.body, %vector.body43
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_mss34_dct_put(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.0147182 = phi i32 [ 0, %bb.a ], [ %i.bs, %bb.b ]
  %.0149181 = phi ptr [ %2, %bb.a ], [ %i.br, %bb.b ] ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0149181, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !29   ; 3 uses
  %i.c = mul i32 %i.b, -39409
  %i.d = getelementptr inbounds nuw i8, ptr %.0149181, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !29   ; 3 uses
  %.neg157 = mul i32 %i.e, -58980
  %i.f = add i32 %.neg157, %i.c
  %i.g = mul i32 %i.e, 39410
  %.neg158 = mul i32 %i.b, -58980
  %i.h = add i32 %i.g, %.neg158
  %i.i = getelementptr inbounds nuw i8, ptr %.0149181, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !29   ; 3 uses
  %i.k = mul i32 %i.j, -33410
  %i.l = getelementptr inbounds nuw i8, ptr %.0149181, i64 12 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !29   ; 3 uses
  %.neg159 = mul i32 %i.m, -167963
  %i.n = add i32 %.neg159, %i.k
  %i.o = mul i32 %i.m, 33410
  %.neg160 = mul i32 %i.j, -167963
  %i.p = add i32 %i.o, %.neg160
  %i.q = add nsw i32 %i.m, %i.b                   ; 2 uses
  %i.r = add nsw i32 %i.j, %i.e                   ; 2 uses
  %i.s = mul i32 %i.q, 77062
  %i.t = mul i32 %i.r, 51491
  %i.u = add i32 %i.s, %i.t                       ; 2 uses
  %i.v = mul i32 %i.r, 77062
  %.neg161 = mul i32 %i.q, -51491
  %i.w = add i32 %.neg161, %i.v                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0149181, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !29   ; 2 uses
  %i.z = mul i32 %i.y, 35470
  %i.aa = getelementptr inbounds nuw i8, ptr %.0149181, i64 24 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29 ; 2 uses
  %.neg162 = mul i32 %i.ab, -85623
  %i.ac = add i32 %.neg162, %i.z                  ; 4 uses
  %i.ad = mul i32 %i.ab, 35470
  %i.ae = mul i32 %i.y, 85623
  %i.af = add i32 %i.ad, %i.ae                    ; 4 uses
  %i.ag = load i32, ptr %.0149181, align 4, !tbaa !29 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0149181, i64 16 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !29 ; 2 uses
  %i.aj = sub nsw i32 %i.ag, %i.ai
  %i.ak = shl i32 %i.aj, 16
  %i.al = or disjoint i32 %i.ak, 8192             ; 4 uses
  %i.am = add nsw i32 %i.ai, %i.ag
  %i.an = shl i32 %i.am, 16
  %i.ao = or disjoint i32 %i.an, 8192             ; 4 uses
  %i.ap = add i32 %i.h, %i.u                      ; 2 uses
  %i.aq = add i32 %i.ap, %i.af
  %i.ar = add i32 %i.aq, %i.ao
  %i.as = ashr i32 %i.ar, 13
  store i32 %i.as, ptr %.0149181, align 4, !tbaa !29
  %i.at = add i32 %i.p, %i.w                      ; 2 uses
  %i.au = add i32 %i.at, %i.ac
  %i.av = add i32 %i.au, %i.al
  %i.aw = ashr i32 %i.av, 13
  store i32 %i.aw, ptr %i.d, align 4, !tbaa !29
  %i.ax = add i32 %i.n, %i.u                      ; 2 uses
  %i.ay = sub i32 %i.ax, %i.ac
  %i.az = add i32 %i.ay, %i.al
  %i.ba = ashr i32 %i.az, 13
  store i32 %i.ba, ptr %i.x, align 4, !tbaa !29
  %i.bb = add i32 %i.f, %i.w                      ; 2 uses
  %i.bc = sub i32 %i.bb, %i.af
  %i.bd = add i32 %i.bc, %i.ao
  %i.be = ashr i32 %i.bd, 13
  store i32 %i.be, ptr %i.l, align 4, !tbaa !29
  %i.bf = add i32 %i.bb, %i.af
  %i.bg = sub i32 %i.ao, %i.bf
  %i.bh = ashr i32 %i.bg, 13
  store i32 %i.bh, ptr %i.ah, align 4, !tbaa !29
  %i.bi = add i32 %i.ax, %i.ac
  %i.bj = sub i32 %i.al, %i.bi
  %i.bk = ashr i32 %i.bj, 13
  store i32 %i.bk, ptr %i.i, align 4, !tbaa !29
  %i.bl = sub i32 %i.ac, %i.at
  %i.bm = add i32 %i.bl, %i.al
  %i.bn = ashr i32 %i.bm, 13
  store i32 %i.bn, ptr %i.aa, align 4, !tbaa !29
  %i.bo = sub i32 %i.af, %i.ap
  %i.bp = add i32 %i.bo, %i.ao
  %i.bq = ashr i32 %i.bp, 13
  store i32 %i.bq, ptr %i.a, align 4, !tbaa !29
  %i.br = getelementptr inbounds nuw i8, ptr %.0149181, i64 32
  %i.bs = add nuw nsw i32 %.0147182, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bs, 8
  br i1 %exitcond.not, label %vector.body, label %bb.b, !llvm.loop !26

vector.body:                                      ; preds = %bb.b, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.b ] ; 2 uses
  %i.bt = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %i.bt ; 9 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %next.gep, i64 224 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bu, align 4, !tbaa !29 ; 3 uses
  %i.bv = mul <4 x i32> %wide.load, splat (i32 -39409)
  %i.bw = getelementptr inbounds nuw i8, ptr %next.gep, i64 32 ; 2 uses
  %wide.load193 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !29 ; 3 uses
  %i.bx = mul <4 x i32> %wide.load193, splat (i32 -58980)
  %i.by = add <4 x i32> %i.bx, %i.bv
  %i.bz = mul <4 x i32> %wide.load193, splat (i32 39410)
  %i.ca = mul <4 x i32> %wide.load, splat (i32 -58980)
  %i.cb = add <4 x i32> %i.bz, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %next.gep, i64 160 ; 2 uses
  %wide.load194 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !29 ; 3 uses
  %i.cd = mul <4 x i32> %wide.load194, splat (i32 -33410)
  %i.ce = getelementptr inbounds nuw i8, ptr %next.gep, i64 96 ; 2 uses
  %wide.load195 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !29 ; 3 uses
  %i.cf = mul <4 x i32> %wide.load195, splat (i32 -167963)
  %i.cg = add <4 x i32> %i.cf, %i.cd
  %i.ch = mul <4 x i32> %wide.load195, splat (i32 33410)
  %i.ci = mul <4 x i32> %wide.load194, splat (i32 -167963)
  %i.cj = add <4 x i32> %i.ch, %i.ci
  %i.ck = add nsw <4 x i32> %wide.load195, %wide.load ; 2 uses
  %i.cl = add nsw <4 x i32> %wide.load194, %wide.load193 ; 2 uses
  %i.cm = mul <4 x i32> %i.ck, splat (i32 77062)
  %i.cn = mul <4 x i32> %i.cl, splat (i32 51491)
  %i.co = add <4 x i32> %i.cm, %i.cn              ; 2 uses
  %i.cp = mul <4 x i32> %i.cl, splat (i32 77062)
  %i.cq = mul <4 x i32> %i.ck, splat (i32 -51491)
  %i.cr = add <4 x i32> %i.cq, %i.cp              ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %next.gep, i64 64 ; 2 uses
  %wide.load196 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !29 ; 2 uses
  %i.ct = mul <4 x i32> %wide.load196, splat (i32 35470)
  %i.cu = getelementptr inbounds nuw i8, ptr %next.gep, i64 192 ; 2 uses
  %wide.load197 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !29 ; 2 uses
  %i.cv = mul <4 x i32> %wide.load197, splat (i32 -85623)
  %i.cw = add <4 x i32> %i.cv, %i.ct              ; 4 uses
  %i.cx = mul <4 x i32> %wide.load197, splat (i32 35470)
  %i.cy = mul <4 x i32> %wide.load196, splat (i32 85623)
  %i.cz = add <4 x i32> %i.cx, %i.cy              ; 4 uses
  %wide.load198 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !29 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %next.gep, i64 128 ; 2 uses
  %wide.load199 = load <4 x i32>, ptr %i.da, align 4, !tbaa !29 ; 2 uses
  %i.db = sub nsw <4 x i32> %wide.load198, %wide.load199
  %i.dc = shl <4 x i32> %i.db, splat (i32 16)
  %i.dd = add <4 x i32> %i.dc, splat (i32 2097152) ; 4 uses
  %i.de = add nsw <4 x i32> %wide.load199, %wide.load198
  %i.df = shl <4 x i32> %i.de, splat (i32 16)
  %i.dg = add <4 x i32> %i.df, splat (i32 2097152) ; 4 uses
end_hunk_0
