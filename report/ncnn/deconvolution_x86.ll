Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86?download=true
inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %.2650717.us = phi <4 x float> [ %.1649728.us, %.preheader681.us ], [ %.6654.us, %.loopexit678.us ] ; 6 uses
  %i.cg = mul nsw i32 %i.ca, %.0192721.us
  %.reass727.us = add i32 %i.cg, %invariant.op726.us ; 3 uses
  %i.ch = icmp slt i32 %.reass727.us, 0
  br i1 %i.ch, label %.loopexit678.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ci = load i32, ptr %11, align 4, !tbaa !60   ; 2 uses
  %i.cj = srem i32 %.reass727.us, %i.ci
  %i.ck = sdiv i32 %.reass727.us, %i.ci           ; 2 uses
  %.not231.us = icmp eq i32 %i.cj, 0
  %.not232.us = icmp slt i32 %i.ck, %i.ae
  %or.cond = select i1 %.not231.us, i1 %.not232.us, i1 false
  br i1 %or.cond, label %.preheader677.us, label %.loopexit678.us

.preheader677.us:                                 ; preds = %bb.f
  %i.cl = load i32, ptr %12, align 4, !tbaa !60   ; 4 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.us, label %.loopexit678.us

.lr.ph.us:                                        ; preds = %.preheader677.us
  %i.cn = load i32, ptr %13, align 4, !tbaa !60   ; 2 uses
  %i.co = load i32, ptr %14, align 4, !tbaa !60
  %invariant.op.us = sub i32 %.neg674, %i.co      ; 2 uses
  %i.cp = mul nuw nsw i32 %i.cl, %.0192721.us     ; 2 uses
  %i.cq = sext i32 %i.ck to i64                   ; 2 uses
  switch i32 %.fr, label %.loopexit678.us [
    i32 4, label %.lr.ph.split.us.us.preheader
    i32 1, label %.lr.ph.split.us696.us.preheader
  ]

.lr.ph.split.us696.us.preheader:                  ; preds = %.lr.ph.us
  %wide.trip.count = zext nneg i32 %i.cl to i64
  br label %.lr.ph.split.us696.us

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us
  %wide.trip.count824 = zext nneg i32 %i.cl to i64
  br label %.lr.ph.split.us.us

.lr.ph.split.us696.us:                            ; preds = %.lr.ph.split.us696.us.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us696.us.preheader ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %.2634688.us698.us = phi <4 x float> [ %.1633720.us, %.lr.ph.split.us696.us.preheader ], [ %.4.us708.us, %bb.h ] ; 3 uses
  %.2638687.us699.us = phi <4 x float> [ %.1637719.us, %.lr.ph.split.us696.us.preheader ], [ %.4640.us707.us, %bb.h ] ; 3 uses
  %.2644686.us700.us = phi <4 x float> [ %.1643718.us, %.lr.ph.split.us696.us.preheader ], [ %.4646.us706.us, %bb.h ] ; 3 uses
  %.3651685.us701.us = phi <4 x float> [ %.2650717.us, %.lr.ph.split.us696.us.preheader ], [ %.5653.us705.us, %bb.h ] ; 3 uses
  %i.cr = trunc i64 %indvars.iv to i32
  %i.cs = mul i32 %i.cn, %i.cr
  %.reass.us702.us = add i32 %i.cs, %invariant.op.us ; 3 uses
  %i.ct = icmp slt i32 %.reass.us702.us, 0
  br i1 %i.ct, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us696.us
  %i.cu = load i32, ptr %15, align 4, !tbaa !60   ; 2 uses
  %i.cv = srem i32 %.reass.us702.us, %i.cu
  %i.cw = sdiv i32 %.reass.us702.us, %i.cu        ; 2 uses
  %.not233.us703.us = icmp eq i32 %i.cv, 0
  %.not234.us704.us = icmp slt i32 %i.cw, %i.ad
  %or.cond885 = select i1 %.not233.us703.us, i1 %.not234.us704.us, i1 false
  br i1 %or.cond885, label %_ZN4ncnn3MatD2Ev.exit240.us.us, label %bb.h

_ZN4ncnn3MatD2Ev.exit240.us.us:                   ; preds = %bb.g
  %i.cx = trunc i64 %indvars.iv to i32
  %i.cy = add i32 %i.cp, %i.cx
  %i.cz = shl nsw i32 %i.cy, 4
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %.0194732.us, i64 %i.da ; 4 uses
  %i.dc = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !500
  %i.dd = load ptr, ptr %4, align 8, !tbaa !20, !noalias !500 ; 4 uses
  %i.de = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !500 ; 4 uses
  %i.df = mul i64 %i.de, %indvars.iv827
  %i.dg = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !500 ; 5 uses
  %i.dh = mul i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dh
  %i.dj = sext i32 %i.dc to i64
  %i.dk = mul nsw i64 %i.dj, %i.cq
  %i.dl = mul i64 %i.dk, %i.dg                    ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dl
  %i.dn = sext i32 %i.cw to i64                   ; 4 uses
  %i.do = getelementptr inbounds [2 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !86
  %i.dq = zext i16 %i.dp to i32
  %i.dr = shl nuw i32 %i.dq, 16
  %i.ds = insertelement <4 x i32> poison, i32 %i.dr, i64 0
  %i.dt = bitcast <4 x i32> %i.ds to <4 x float>
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dv = mul i64 %i.de, %i.cd
  %i.dw = mul i64 %i.dv, %i.dg
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dl
  %i.dz = getelementptr inbounds [2 x i8], ptr %i.dy, i64 %i.dn
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !86
  %i.eb = zext i16 %i.ea to i32
  %i.ec = shl nuw i32 %i.eb, 16
  %i.ed = insertelement <4 x i32> poison, i32 %i.ec, i64 0
  %i.ee = bitcast <4 x i32> %i.ed to <4 x float>
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eg = mul i64 %i.de, %i.ce
  %i.eh = mul i64 %i.eg, %i.dg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.dl
  %i.ek = getelementptr inbounds [2 x i8], ptr %i.ej, i64 %i.dn
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !86
  %i.em = zext i16 %i.el to i32
  %i.en = shl nuw i32 %i.em, 16
  %i.eo = insertelement <4 x i32> poison, i32 %i.en, i64 0
  %i.ep = bitcast <4 x i32> %i.eo to <4 x float>
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> zeroinitializer
  %i.er = mul i64 %i.de, %i.cc
  %i.es = mul i64 %i.er, %i.dg
  %i.et = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.dl
  %i.ev = getelementptr inbounds [2 x i8], ptr %i.eu, i64 %i.dn
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !86
  %i.ex = zext i16 %i.ew to i32
  %i.ey = shl nuw i32 %i.ex, 16
  %i.ez = insertelement <4 x i32> poison, i32 %i.ey, i64 0
  %i.fa = bitcast <4 x i32> %i.ez to <4 x float>
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fc = load i64, ptr %i.db, align 1, !tbaa !80
  %i.fd = insertelement <2 x i64> poison, i64 %i.fc, i64 0
  %i.fe = bitcast <2 x i64> %i.fd to <8 x i16>
  %i.ff = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fg = bitcast <8 x i16> %i.ff to <4 x float>
  %i.fh = fmul fast <4 x float> %i.du, %i.fg
  %i.fi = fadd fast <4 x float> %i.fh, %.3651685.us701.us
  %i.fj = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.fk = load i64, ptr %i.fj, align 1, !tbaa !80
  %i.fl = insertelement <2 x i64> poison, i64 %i.fk, i64 0
  %i.fm = bitcast <2 x i64> %i.fl to <8 x i16>
  %i.fn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fo = bitcast <8 x i16> %i.fn to <4 x float>
  %i.fp = fmul fast <4 x float> %i.ef, %i.fo
  %i.fq = fadd fast <4 x float> %i.fp, %.2644686.us700.us
  %i.fr = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.fs = load i64, ptr %i.fr, align 1, !tbaa !80
  %i.ft = insertelement <2 x i64> poison, i64 %i.fs, i64 0
  %i.fu = bitcast <2 x i64> %i.ft to <8 x i16>
  %i.fv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fw = bitcast <8 x i16> %i.fv to <4 x float>
  %i.fx = fmul fast <4 x float> %i.eq, %i.fw
  %i.fy = fadd fast <4 x float> %i.fx, %.2638687.us699.us
  %i.fz = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.ga = load i64, ptr %i.fz, align 1, !tbaa !80
  %i.gb = insertelement <2 x i64> poison, i64 %i.ga, i64 0
  %i.gc = bitcast <2 x i64> %i.gb to <8 x i16>
  %i.gd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ge = bitcast <8 x i16> %i.gd to <4 x float>
  %i.gf = fmul fast <4 x float> %i.fb, %i.ge
  %i.gg = fadd fast <4 x float> %i.gf, %.2634688.us698.us
  br label %bb.h

bb.h:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit240.us.us, %bb.g, %.lr.ph.split.us696.us
  %.5653.us705.us = phi nsz <4 x float> [ %.3651685.us701.us, %.lr.ph.split.us696.us ], [ %.3651685.us701.us, %bb.g ], [ %i.fi, %_ZN4ncnn3MatD2Ev.exit240.us.us ] ; 2 uses
  %.4646.us706.us = phi nsz <4 x float> [ %.2644686.us700.us, %.lr.ph.split.us696.us ], [ %.2644686.us700.us, %bb.g ], [ %i.fq, %_ZN4ncnn3MatD2Ev.exit240.us.us ] ; 2 uses
  %.4640.us707.us = phi nsz <4 x float> [ %.2638687.us699.us, %.lr.ph.split.us696.us ], [ %.2638687.us699.us, %bb.g ], [ %i.fy, %_ZN4ncnn3MatD2Ev.exit240.us.us ] ; 2 uses
  %.4.us708.us = phi nsz <4 x float> [ %.2634688.us698.us, %.lr.ph.split.us696.us ], [ %.2634688.us698.us, %bb.g ], [ %i.gg, %_ZN4ncnn3MatD2Ev.exit240.us.us ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit678.us, label %.lr.ph.split.us696.us, !llvm.loop !482

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.k
  %indvars.iv821 = phi i64 [ 0, %.lr.ph.split.us.us.preheader ], [ %indvars.iv.next822, %bb.k ] ; 3 uses
  %.2634688.us.us = phi <4 x float> [ %.1633720.us, %.lr.ph.split.us.us.preheader ], [ %.4.us.us, %bb.k ] ; 3 uses
  %.2638687.us.us = phi <4 x float> [ %.1637719.us, %.lr.ph.split.us.us.preheader ], [ %.4640.us.us, %bb.k ] ; 3 uses
  %.2644686.us.us = phi <4 x float> [ %.1643718.us, %.lr.ph.split.us.us.preheader ], [ %.4646.us.us, %bb.k ] ; 3 uses
  %.3651685.us.us = phi <4 x float> [ %.2650717.us, %.lr.ph.split.us.us.preheader ], [ %.5653.us.us, %bb.k ] ; 3 uses
  %i.gh = trunc i64 %indvars.iv821 to i32
  %i.gi = mul i32 %i.cn, %i.gh
  %.reass.us.us = add i32 %i.gi, %invariant.op.us ; 3 uses
  %i.gj = icmp slt i32 %.reass.us.us, 0
  br i1 %i.gj, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us.us
  %i.gk = load i32, ptr %15, align 4, !tbaa !60   ; 2 uses
  %i.gl = srem i32 %.reass.us.us, %i.gk
  %i.gm = sdiv i32 %.reass.us.us, %i.gk           ; 2 uses
  %.not233.us.us = icmp eq i32 %i.gl, 0
  %.not234.us.us = icmp slt i32 %i.gm, %i.ad
  %or.cond886 = select i1 %.not233.us.us, i1 %.not234.us.us, i1 false
  br i1 %or.cond886, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.gn = trunc i64 %indvars.iv821 to i32
  %i.go = add i32 %i.cp, %i.gn
  %i.gp = shl nsw i32 %i.go, 4
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %.0194732.us, i64 %i.gq ; 4 uses
  %i.gs = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !501
  %i.gt = load ptr, ptr %4, align 8, !tbaa !20, !noalias !501
  %i.gu = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !501
  %i.gv = mul i64 %i.gu, %i.cf
  %i.gw = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !501 ; 2 uses
  %i.gx = mul i64 %i.gv, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gx
  %i.gz = sext i32 %i.gs to i64
  %i.ha = mul nsw i64 %i.gz, %i.cq
  %i.hb = mul i64 %i.ha, %i.gw
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.hb
  %i.hd = shl nsw i32 %i.gm, 2
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [2 x i8], ptr %i.hc, i64 %i.he ; 3 uses
  %20 = load i16, ptr %i.hf, align 2, !tbaa !86
  %21 = zext i16 %20 to i32
  %22 = shl nuw i32 %21, 16
  %23 = insertelement <4 x i32> poison, i32 %22, i64 0
  %i.hg = bitcast <4 x i32> %23 to <4 x float>
  %i.hh = shufflevector <4 x float> %i.hg, <4 x float> poison, <4 x i32> zeroinitializer
  %24 = getelementptr inbounds nuw i8, ptr %i.hf, i64 2
  %25 = load i16, ptr %24, align 2, !tbaa !86
  %26 = zext i16 %25 to i32
  %27 = shl nuw i32 %26, 16
  %28 = insertelement <4 x i32> poison, i32 %27, i64 0
  %i.hi = bitcast <4 x i32> %28 to <4 x float>
  %29 = shufflevector <4 x float> %i.hi, <4 x float> poison, <4 x i32> zeroinitializer
  %30 = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %31 = load <2 x i16>, ptr %30, align 2, !tbaa !86
  %32 = zext <2 x i16> %31 to <2 x i32>
  %33 = shl nuw <2 x i32> %32, splat (i32 16)     ; 2 uses
  %34 = bitcast <2 x i32> %33 to <2 x float>
  %35 = shufflevector <2 x float> %34, <2 x float> poison, <4 x i32> zeroinitializer
  %36 = bitcast <2 x i32> %33 to <2 x float>
  %37 = shufflevector <2 x float> %36, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hj = load i64, ptr %i.gr, align 1, !tbaa !80
  %i.hk = insertelement <2 x i64> poison, i64 %i.hj, i64 0
  %i.hl = bitcast <2 x i64> %i.hk to <8 x i16>
  %i.hm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hn = bitcast <8 x i16> %i.hm to <4 x float>
  %i.ho = fmul fast <4 x float> %i.hh, %i.hn
  %i.hp = fadd fast <4 x float> %i.ho, %.3651685.us.us
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.hr = load i64, ptr %i.hq, align 1, !tbaa !80
  %i.hs = insertelement <2 x i64> poison, i64 %i.hr, i64 0
  %i.ht = bitcast <2 x i64> %i.hs to <8 x i16>
  %i.hu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ht, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hv = bitcast <8 x i16> %i.hu to <4 x float>
  %i.hw = fmul fast <4 x float> %29, %i.hv
  %i.hx = fadd fast <4 x float> %i.hw, %.2644686.us.us
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.hz = load i64, ptr %i.hy, align 1, !tbaa !80
  %i.ia = insertelement <2 x i64> poison, i64 %i.hz, i64 0
  %i.ib = bitcast <2 x i64> %i.ia to <8 x i16>
  %i.ic = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ib, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.id = bitcast <8 x i16> %i.ic to <4 x float>
  %i.ie = fmul fast <4 x float> %35, %i.id
  %i.if = fadd fast <4 x float> %i.ie, %.2638687.us.us
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.ih = load i64, ptr %i.ig, align 1, !tbaa !80
  %i.ii = insertelement <2 x i64> poison, i64 %i.ih, i64 0
  %i.ij = bitcast <2 x i64> %i.ii to <8 x i16>
  %i.ik = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ij, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.il = bitcast <8 x i16> %i.ik to <4 x float>
  %i.im = fmul fast <4 x float> %37, %i.il
  %i.in = fadd fast <4 x float> %i.im, %.2634688.us.us
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.lr.ph.split.us.us
  %.5653.us.us = phi nsz <4 x float> [ %.3651685.us.us, %.lr.ph.split.us.us ], [ %i.hp, %bb.j ], [ %.3651685.us.us, %bb.i ] ; 2 uses
  %.4646.us.us = phi nsz <4 x float> [ %.2644686.us.us, %.lr.ph.split.us.us ], [ %i.hx, %bb.j ], [ %.2644686.us.us, %bb.i ] ; 2 uses
  %.4640.us.us = phi nsz <4 x float> [ %.2638687.us.us, %.lr.ph.split.us.us ], [ %i.if, %bb.j ], [ %.2638687.us.us, %bb.i ] ; 2 uses
  %.4.us.us = phi nsz <4 x float> [ %.2634688.us.us, %.lr.ph.split.us.us ], [ %i.in, %bb.j ], [ %.2634688.us.us, %bb.i ] ; 2 uses
  %indvars.iv.next822 = add nuw nsw i64 %indvars.iv821, 1 ; 2 uses
  %exitcond825.not = icmp eq i64 %indvars.iv.next822, %wide.trip.count824
  br i1 %exitcond825.not, label %.loopexit678.us, label %.lr.ph.split.us.us, !llvm.loop !482

.loopexit678.us:                                  ; preds = %bb.h, %bb.k, %.lr.ph.us, %.preheader677.us, %bb.f, %bb.e
  %.6654.us = phi nsz <4 x float> [ %.2650717.us, %bb.e ], [ %.2650717.us, %bb.f ], [ %.5653.us.us, %bb.k ], [ %.2650717.us, %.preheader677.us ], [ %.2650717.us, %.lr.ph.us ], [ %.5653.us705.us, %bb.h ] ; 3 uses
  %.5647.us = phi nsz <4 x float> [ %.1643718.us, %bb.e ], [ %.1643718.us, %bb.f ], [ %.4646.us.us, %bb.k ], [ %.1643718.us, %.preheader677.us ], [ %.1643718.us, %.lr.ph.us ], [ %.4646.us706.us, %bb.h ] ; 3 uses
  %.5641.us = phi nsz <4 x float> [ %.1637719.us, %bb.e ], [ %.1637719.us, %bb.f ], [ %.4640.us.us, %bb.k ], [ %.1637719.us, %.preheader677.us ], [ %.1637719.us, %.lr.ph.us ], [ %.4640.us707.us, %bb.h ] ; 3 uses
  %.5.us = phi nsz <4 x float> [ %.1633720.us, %bb.e ], [ %.1633720.us, %bb.f ], [ %.4.us.us, %bb.k ], [ %.1633720.us, %.preheader677.us ], [ %.1633720.us, %.lr.ph.us ], [ %.4.us708.us, %bb.h ] ; 3 uses
  %i.io = add nuw nsw i32 %.0192721.us, 1         ; 2 uses
  %exitcond826.not = icmp eq i32 %i.io, %i.bt
  br i1 %exitcond826.not, label %._crit_edge.us, label %bb.e, !llvm.loop !485

._crit_edge.us:                                   ; preds = %.loopexit678.us
  %i.ip = getelementptr inbounds [2 x i8], ptr %.0194732.us, i64 %i.bx ; 2 uses
  %indvars.iv.next828 = add nuw nsw i64 %indvars.iv827, 4 ; 2 uses
  %i.iq = icmp slt i64 %indvars.iv.next828, %invariant.op
  br i1 %i.iq, label %.preheader681.us, label %.preheader683.loopexit, !llvm.loop !486

.preheader683.loopexit:                           ; preds = %._crit_edge.us
  %i.ir = fadd fast <4 x float> %.5.us, %.5641.us
  br label %.preheader683

.preheader683:                                    ; preds = %.preheader681.preheader, %.preheader683.loopexit, %_ZN4ncnn3MatD2Ev.exit242
  %.1649.lcssa = phi <4 x float> [ %.0648, %_ZN4ncnn3MatD2Ev.exit242 ], [ %.6654.us, %.preheader683.loopexit ], [ %.0648, %.preheader681.preheader ] ; 3 uses
  %.0642.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit242 ], [ %.5647.us, %.preheader683.loopexit ], [ zeroinitializer, %.preheader681.preheader ] ; 3 uses
  %.0632.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit242 ], [ %i.ir, %.preheader683.loopexit ], [ zeroinitializer, %.preheader681.preheader ]
  %.0194.lcssa = phi ptr [ %i.bs, %_ZN4ncnn3MatD2Ev.exit242 ], [ %i.ip, %.preheader683.loopexit ], [ %scevgep, %.preheader681.preheader ] ; 3 uses
  %.0193.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit242 ], [ %i.bh, %.preheader683.loopexit ], [ %i.be, %.preheader681.preheader ] ; 5 uses
  %i.is = or disjoint i32 %.0193.lcssa, 1         ; 2 uses
  %i.it = icmp slt i32 %i.is, %i.ac
  br i1 %i.it, label %.preheader680.lr.ph, label %.preheader682

.preheader680.lr.ph:                              ; preds = %.preheader683
  %i.iu = load i32, ptr %8, align 4, !tbaa !60    ; 2 uses
  %i.iv = icmp sgt i32 %i.iu, 0
  %.neg670 = add nuw nsw i32 %.0197800, 1
  %i.iw = load i32, ptr %16, align 4, !tbaa !60
  %i.ix = shl i32 %i.iw, 3
  %i.iy = sext i32 %i.ix to i64                   ; 2 uses
  br i1 %i.iv, label %.preheader680.lr.ph.split.us, label %.preheader680.preheader

.preheader680.preheader:                          ; preds = %.preheader680.lr.ph
  %i.iz = sub i32 %i.bi, %.0193.lcssa             ; 2 uses
  %i.ja = and i32 %i.iz, -2
  %i.jb = zext i32 %i.ja to i64
  %i.jc = add nuw nsw i64 %i.jb, 2
  %i.jd = mul nsw i64 %i.jc, %i.iy
  %scevgep830 = getelementptr i8, ptr %.0194.lcssa, i64 %i.jd
  %i.je = add i32 %.0193.lcssa, 2
  %i.jf = and i32 %i.iz, -2
  %i.jg = add i32 %i.je, %i.jf
  br label %.preheader682

.preheader680.lr.ph.split.us:                     ; preds = %.preheader680.lr.ph
  %i.jh = load i32, ptr %9, align 4, !tbaa !60
  %i.ji = load i32, ptr %10, align 4, !tbaa !60
  %invariant.op764.us = sub i32 %.neg672, %i.ji
  %i.jj = zext i32 %.0193.lcssa to i64
  %i.jk = zext nneg i32 %i.is to i64
  br label %.preheader680.us

.preheader680.us:                                 ; preds = %._crit_edge.us776, %.preheader680.lr.ph.split.us
  %indvars.iv837 = phi i64 [ %indvars.iv.next838, %._crit_edge.us776 ], [ %i.jj, %.preheader680.lr.ph.split.us ] ; 2 uses
  %i.jl = phi i64 [ %i.md, %._crit_edge.us776 ], [ %i.jk, %.preheader680.lr.ph.split.us ]
  %.1195768.us = phi ptr [ %i.mc, %._crit_edge.us776 ], [ %.0194.lcssa, %.preheader680.lr.ph.split.us ] ; 2 uses
  %.6767.us = phi <4 x float> [ %.10.us, %._crit_edge.us776 ], [ %.0642.lcssa, %.preheader680.lr.ph.split.us ]
  %.7655766.us = phi <4 x float> [ %.11.us, %._crit_edge.us776 ], [ %.1649.lcssa, %.preheader680.lr.ph.split.us ]
  br label %bb.l

bb.l:                                             ; preds = %.preheader680.us, %.loopexit676.us
  %.0190760.us = phi i32 [ 0, %.preheader680.us ], [ %i.lx, %.loopexit676.us ] ; 3 uses
  %.7759.us = phi <4 x float> [ %.6767.us, %.preheader680.us ], [ %.10.us, %.loopexit676.us ] ; 4 uses
  %.8656758.us = phi <4 x float> [ %.7655766.us, %.preheader680.us ], [ %.11.us, %.loopexit676.us ] ; 4 uses
  %i.jm = mul nsw i32 %i.jh, %.0190760.us
  %.reass765.us = add i32 %i.jm, %invariant.op764.us ; 3 uses
  %i.jn = icmp slt i32 %.reass765.us, 0
  br i1 %i.jn, label %.loopexit676.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jo = load i32, ptr %11, align 4, !tbaa !60   ; 2 uses
  %i.jp = srem i32 %.reass765.us, %i.jo
  %i.jq = sdiv i32 %.reass765.us, %i.jo           ; 2 uses
  %.not227.us = icmp eq i32 %i.jp, 0
  %.not228.us = icmp slt i32 %i.jq, %i.ae
  %or.cond887 = select i1 %.not227.us, i1 %.not228.us, i1 false
  br i1 %or.cond887, label %.preheader675.us, label %.loopexit676.us

.preheader675.us:                                 ; preds = %bb.m
  %i.jr = load i32, ptr %12, align 4, !tbaa !60   ; 3 uses
  %i.js = icmp sgt i32 %i.jr, 0
  br i1 %i.js, label %.lr.ph.us774, label %.loopexit676.us

bb.n:                                             ; preds = %.lr.ph.us774, %bb.p
  %indvars.iv831 = phi i64 [ 0, %.lr.ph.us774 ], [ %indvars.iv.next832, %bb.p ] ; 3 uses
  %.8755.us = phi <4 x float> [ %.7759.us, %.lr.ph.us774 ], [ %.9.us, %bb.p ] ; 3 uses
  %.9657754.us = phi <4 x float> [ %.8656758.us, %.lr.ph.us774 ], [ %.10658.us, %bb.p ] ; 3 uses
  %i.jt = trunc i64 %indvars.iv831 to i32
  %i.ju = mul i32 %i.ly, %i.jt
  %.reass.us = add i32 %i.ju, %invariant.op.us775 ; 3 uses
  %i.jv = icmp slt i32 %.reass.us, 0
  br i1 %i.jv, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jw = load i32, ptr %15, align 4, !tbaa !60   ; 2 uses
  %i.jx = srem i32 %.reass.us, %i.jw
  %i.jy = sdiv i32 %.reass.us, %i.jw              ; 2 uses
  %.not229.us = icmp eq i32 %i.jx, 0
  %.not230.us = icmp slt i32 %i.jy, %i.ad
  %or.cond888 = select i1 %.not229.us, i1 %.not230.us, i1 false
  br i1 %or.cond888, label %_ZN4ncnn3MatD2Ev.exit236.us, label %bb.p

_ZN4ncnn3MatD2Ev.exit236.us:                      ; preds = %bb.o
  %i.jz = trunc i64 %indvars.iv831 to i32
  %i.ka = add i32 %i.ma, %i.jz
  %i.kb = shl nsw i32 %i.ka, 3
  %i.kc = zext nneg i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %.1195768.us, i64 %i.kc ; 2 uses
  %i.ke = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !502
  %i.kf = load ptr, ptr %4, align 8, !tbaa !20, !noalias !502 ; 2 uses
  %i.kg = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !502 ; 2 uses
  %i.kh = mul i64 %i.kg, %indvars.iv837
  %i.ki = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !502 ; 3 uses
  %i.kj = mul i64 %i.kh, %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.kj
  %i.kl = sext i32 %i.ke to i64
  %i.km = mul nsw i64 %i.kl, %i.mb
  %i.kn = mul i64 %i.km, %i.ki                    ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.kn
  %i.kp = mul i64 %i.kg, %i.jl
  %i.kq = mul i64 %i.kp, %i.ki
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.kq
  %i.ks = sext i32 %i.jy to i64                   ; 2 uses
  %i.kt = getelementptr inbounds [2 x i8], ptr %i.ko, i64 %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.kn
  %i.kv = getelementptr inbounds [2 x i8], ptr %i.ku, i64 %i.ks
  %i.kw = load i16, ptr %i.kt, align 2, !tbaa !86
  %i.kx = zext i16 %i.kw to i32
  %i.ky = shl nuw i32 %i.kx, 16
  %i.kz = insertelement <4 x i32> poison, i32 %i.ky, i64 0
  %i.la = bitcast <4 x i32> %i.kz to <4 x float>
  %i.lb = shufflevector <4 x float> %i.la, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lc = load i16, ptr %i.kv, align 2, !tbaa !86
  %i.ld = zext i16 %i.lc to i32
  %i.le = shl nuw i32 %i.ld, 16
  %i.lf = insertelement <4 x i32> poison, i32 %i.le, i64 0
  %i.lg = bitcast <4 x i32> %i.lf to <4 x float>
  %i.lh = shufflevector <4 x float> %i.lg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.li = load i64, ptr %i.kd, align 1, !tbaa !80
  %i.lj = insertelement <2 x i64> poison, i64 %i.li, i64 0
  %i.lk = bitcast <2 x i64> %i.lj to <8 x i16>
  %i.ll = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lm = bitcast <8 x i16> %i.ll to <4 x float>
  %i.ln = fmul fast <4 x float> %i.lb, %i.lm
  %i.lo = fadd fast <4 x float> %i.ln, %.9657754.us
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.lq = load i64, ptr %i.lp, align 1, !tbaa !80
  %i.lr = insertelement <2 x i64> poison, i64 %i.lq, i64 0
  %i.ls = bitcast <2 x i64> %i.lr to <8 x i16>
  %i.lt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ls, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lu = bitcast <8 x i16> %i.lt to <4 x float>
  %i.lv = fmul fast <4 x float> %i.lh, %i.lu
  %i.lw = fadd fast <4 x float> %i.lv, %.8755.us
  br label %bb.p

bb.p:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit236.us, %bb.o, %bb.n
  %.10658.us = phi nsz <4 x float> [ %.9657754.us, %bb.n ], [ %i.lo, %_ZN4ncnn3MatD2Ev.exit236.us ], [ %.9657754.us, %bb.o ] ; 2 uses
  %.9.us = phi nsz <4 x float> [ %.8755.us, %bb.n ], [ %i.lw, %_ZN4ncnn3MatD2Ev.exit236.us ], [ %.8755.us, %bb.o ] ; 2 uses
  %indvars.iv.next832 = add nuw nsw i64 %indvars.iv831, 1 ; 2 uses
  %exitcond835.not = icmp eq i64 %indvars.iv.next832, %wide.trip.count834
  br i1 %exitcond835.not, label %.loopexit676.us, label %bb.n, !llvm.loop !489

.loopexit676.us:                                  ; preds = %bb.p, %.preheader675.us, %bb.m, %bb.l
  %.11.us = phi nsz <4 x float> [ %.8656758.us, %bb.l ], [ %.8656758.us, %bb.m ], [ %.8656758.us, %.preheader675.us ], [ %.10658.us, %bb.p ] ; 3 uses
  %.10.us = phi nsz <4 x float> [ %.7759.us, %bb.l ], [ %.7759.us, %bb.m ], [ %.7759.us, %.preheader675.us ], [ %.9.us, %bb.p ] ; 3 uses
  %i.lx = add nuw nsw i32 %.0190760.us, 1         ; 2 uses
  %exitcond836.not = icmp eq i32 %i.lx, %i.iu
  br i1 %exitcond836.not, label %._crit_edge.us776, label %bb.l, !llvm.loop !490

.lr.ph.us774:                                     ; preds = %.preheader675.us
  %i.ly = load i32, ptr %13, align 4, !tbaa !60
  %i.lz = load i32, ptr %14, align 4, !tbaa !60
  %invariant.op.us775 = sub i32 %.neg670, %i.lz
  %i.ma = mul nuw nsw i32 %i.jr, %.0190760.us
  %i.mb = sext i32 %i.jq to i64
  %wide.trip.count834 = zext nneg i32 %i.jr to i64
  br label %bb.n

._crit_edge.us776:                                ; preds = %.loopexit676.us
  %i.mc = getelementptr inbounds [2 x i8], ptr %.1195768.us, i64 %i.iy ; 2 uses
  %indvars.iv.next838 = add nuw nsw i64 %indvars.iv837, 2 ; 3 uses
  %i.md = or disjoint i64 %indvars.iv.next838, 1  ; 2 uses
end_hunk_0
