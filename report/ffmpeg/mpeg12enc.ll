Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpeg12enc?download=true
inline.NumInlined: 182
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@mpeg1_encode_picture_header:bb.a
  %spec.select218.i.5 = select i1 %.not215.i.5, i32 %spec.select218.i.4, i32 7
  %i.db = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg2_aspect, i64 64), align 16, !tbaa !147
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul i64 %i.as, %i.dc
  %i.de = sdiv i64 %i.dd, %i.ar
  %i.df = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg2_aspect, i64 68), align 4, !tbaa !148
  %i.dg = sext i32 %i.df to i64
  %i.dh = sdiv i64 %i.de, %i.dg
  %i.di = sub nsw i64 %i.ai, %i.dh
  %i.dj = tail call i64 @llvm.abs.i64(i64 %i.di, i1 true) ; 2 uses
  %i.dk = add nsw i64 %i.dj, -2
  %.not215.i.6 = icmp sgt i64 %i.dk, %spec.select217.i.5 ; 2 uses
  %spec.select217.i.6 = select i1 %.not215.i.6, i64 %spec.select217.i.5, i64 %i.dj ; 2 uses
  %spec.select218.i.6 = select i1 %.not215.i.6, i32 %spec.select218.i.5, i32 8
  %i.dl = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg2_aspect, i64 72), align 8, !tbaa !147
  %i.dm = sext i32 %i.dl to i64
  %i.dn = mul i64 %i.as, %i.dm
  %i.do = sdiv i64 %i.dn, %i.ar
  %i.dp = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg2_aspect, i64 76), align 4, !tbaa !148
  %i.dq = sext i32 %i.dp to i64
  %i.dr = sdiv i64 %i.do, %i.dq
  %i.ds = sub nsw i64 %i.ai, %i.dr
  %i.dt = tail call i64 @llvm.abs.i64(i64 %i.ds, i1 true) ; 2 uses
  %i.du = add nsw i64 %i.dt, -2
  %.not215.i.7 = icmp sgt i64 %i.du, %spec.select217.i.6 ; 2 uses
  %spec.select217.i.7 = select i1 %.not215.i.7, i64 %spec.select217.i.6, i64 %i.dt ; 2 uses
  %spec.select218.i.7 = select i1 %.not215.i.7, i32 %spec.select218.i.6, i32 9
  %i.dv = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg2_aspect, i64 80), align 16, !tbaa !147
  %i.dw = sext i32 %i.dv to i64
  %i.dx = mul i64 %i.as, %i.dw
  %i.dy = sdiv i64 %i.dx, %i.ar
  %i.dz = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg2_aspect, i64 84), align 4, !tbaa !148
  %i.ea = sext i32 %i.dz to i64
  %i.eb = sdiv i64 %i.dy, %i.ea
  %i.ec = sub nsw i64 %i.ai, %i.eb
  %i.ed = tail call i64 @llvm.abs.i64(i64 %i.ec, i1 true) ; 2 uses
  %i.ee = add nsw i64 %i.ed, -2
  %.not215.i.8 = icmp sgt i64 %i.ee, %spec.select217.i.7 ; 2 uses
  %spec.select217.i.8 = select i1 %.not215.i.8, i64 %spec.select217.i.7, i64 %i.ed ; 2 uses
  %spec.select218.i.8 = select i1 %.not215.i.8, i32 %spec.select218.i.7, i32 10
  %i.ef = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg2_aspect, i64 88), align 8, !tbaa !147
  %i.eg = sext i32 %i.ef to i64
  %i.eh = mul i64 %i.as, %i.eg
  %i.ei = sdiv i64 %i.eh, %i.ar
  %i.ej = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg2_aspect, i64 92), align 4, !tbaa !148
  %i.ek = sext i32 %i.ej to i64
  %i.el = sdiv i64 %i.ei, %i.ek
  %i.em = sub nsw i64 %i.ai, %i.el
  %i.en = tail call i64 @llvm.abs.i64(i64 %i.em, i1 true) ; 2 uses
  %i.eo = add nsw i64 %i.en, -2
  %.not215.i.9 = icmp sgt i64 %i.eo, %spec.select217.i.8 ; 2 uses
  %spec.select217.i.9 = select i1 %.not215.i.9, i64 %spec.select217.i.8, i64 %i.en ; 2 uses
  %spec.select218.i.9 = select i1 %.not215.i.9, i32 %spec.select218.i.8, i32 11
  %i.ep = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg2_aspect, i64 96), align 16, !tbaa !147
  %i.eq = sext i32 %i.ep to i64
  %i.er = mul i64 %i.as, %i.eq
  %i.es = sdiv i64 %i.er, %i.ar
  %i.et = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg2_aspect, i64 100), align 4, !tbaa !148
  %i.eu = sext i32 %i.et to i64
  %i.ev = sdiv i64 %i.es, %i.eu
  %i.ew = sub nsw i64 %i.ai, %i.ev
  %i.ex = tail call i64 @llvm.abs.i64(i64 %i.ew, i1 true) ; 2 uses
  %i.ey = add nsw i64 %i.ex, -2
  %.not215.i.10 = icmp sgt i64 %i.ey, %spec.select217.i.9 ; 2 uses
  %spec.select217.i.10 = select i1 %.not215.i.10, i64 %spec.select217.i.9, i64 %i.ex ; 2 uses
  %spec.select218.i.10 = select i1 %.not215.i.10, i32 %spec.select218.i.9, i32 12
  %i.ez = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg2_aspect, i64 104), align 8, !tbaa !147
  %i.fa = sext i32 %i.ez to i64
  %i.fb = mul i64 %i.as, %i.fa
  %i.fc = sdiv i64 %i.fb, %i.ar
  %i.fd = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg2_aspect, i64 108), align 4, !tbaa !148
  %i.fe = sext i32 %i.fd to i64
  %i.ff = sdiv i64 %i.fc, %i.fe
  %i.fg = sub nsw i64 %i.ai, %i.ff
  %i.fh = tail call i64 @llvm.abs.i64(i64 %i.fg, i1 true) ; 2 uses
  %i.fi = add nsw i64 %i.fh, -2
  %.not215.i.11 = icmp sgt i64 %i.fi, %spec.select217.i.10 ; 2 uses
  %spec.select217.i.11 = select i1 %.not215.i.11, i64 %spec.select217.i.10, i64 %i.fh
  %spec.select218.i.11 = select i1 %.not215.i.11, i32 %spec.select218.i.10, i32 13
  %i.fj = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg2_aspect, i64 112), align 16, !tbaa !147
  %i.fk = sext i32 %i.fj to i64
  %i.fl = mul i64 %i.as, %i.fk
  %i.fm = sdiv i64 %i.fl, %i.ar
  %i.fn = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg2_aspect, i64 116), align 4, !tbaa !148
  %i.fo = sext i32 %i.fn to i64
  %i.fp = sdiv i64 %i.fm, %i.fo
  %i.fq = sub nsw i64 %i.ai, %i.fp
  br label %.loopexit.i

put_sbits.exit225.split.us.preheader.i:           ; preds = %put_sbits.exit225.i
  %i.fr = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg1_aspect, i64 8), align 8, !tbaa !146
  %i.fs = fdiv nsz <4 x float> splat (float f0x4F800000), %i.fr
  %i.ft = insertelement <4 x float> poison, float %i.ak, i64 0
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.fv = fsub nsz <4 x float> %i.fu, %i.fs       ; 4 uses
  %i.fw = extractelement <4 x float> %i.fv, i64 0
  %i.fx = fptosi float %i.fw to i64
  %i.fy = tail call i64 @llvm.abs.i64(i64 %i.fx, i1 true) ; 2 uses
  %i.fz = add nsw i64 %i.fy, -2
  %.not215.us.1.i = icmp sgt i64 %i.fz, %i.ap     ; 2 uses
  %spec.select217.us.1.i = select i1 %.not215.us.1.i, i64 %i.ap, i64 %i.fy ; 2 uses
  %spec.select218.us.1.i = select i1 %.not215.us.1.i, i32 1, i32 2
  %i.ga = extractelement <4 x float> %i.fv, i64 1
  %i.gb = fptosi float %i.ga to i64
  %i.gc = tail call i64 @llvm.abs.i64(i64 %i.gb, i1 true) ; 2 uses
  %i.gd = add nsw i64 %i.gc, -2
  %.not215.us.2.i = icmp sgt i64 %i.gd, %spec.select217.us.1.i ; 2 uses
  %spec.select217.us.2.i = select i1 %.not215.us.2.i, i64 %spec.select217.us.1.i, i64 %i.gc ; 2 uses
  %spec.select218.us.2.i = select i1 %.not215.us.2.i, i32 %spec.select218.us.1.i, i32 3
  %i.ge = extractelement <4 x float> %i.fv, i64 2
  %i.gf = fptosi float %i.ge to i64
  %i.gg = tail call i64 @llvm.abs.i64(i64 %i.gf, i1 true) ; 2 uses
  %i.gh = add nsw i64 %i.gg, -2
  %.not215.us.3.i = icmp sgt i64 %i.gh, %spec.select217.us.2.i ; 2 uses
  %spec.select217.us.3.i = select i1 %.not215.us.3.i, i64 %spec.select217.us.2.i, i64 %i.gg ; 2 uses
  %spec.select218.us.3.i = select i1 %.not215.us.3.i, i32 %spec.select218.us.2.i, i32 4
  %i.gi = extractelement <4 x float> %i.fv, i64 3
  %i.gj = fptosi float %i.gi to i64
  %i.gk = tail call i64 @llvm.abs.i64(i64 %i.gj, i1 true) ; 2 uses
  %i.gl = add nsw i64 %i.gk, -2
  %.not215.us.4.i = icmp sgt i64 %i.gl, %spec.select217.us.3.i ; 2 uses
  %spec.select217.us.4.i = select i1 %.not215.us.4.i, i64 %spec.select217.us.3.i, i64 %i.gk ; 2 uses
  %spec.select218.us.4.i = select i1 %.not215.us.4.i, i32 %spec.select218.us.3.i, i32 5
  %i.gm = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg1_aspect, i64 24), align 8, !tbaa !146
  %i.gn = fdiv nsz <4 x float> splat (float f0x4F800000), %i.gm
  %i.go = fsub nsz <4 x float> %i.fu, %i.gn       ; 4 uses
  %i.gp = extractelement <4 x float> %i.go, i64 0
  %i.gq = fptosi float %i.gp to i64
  %i.gr = tail call i64 @llvm.abs.i64(i64 %i.gq, i1 true) ; 2 uses
  %i.gs = add nsw i64 %i.gr, -2
  %.not215.us.5.i = icmp sgt i64 %i.gs, %spec.select217.us.4.i ; 2 uses
  %spec.select217.us.5.i = select i1 %.not215.us.5.i, i64 %spec.select217.us.4.i, i64 %i.gr ; 2 uses
  %spec.select218.us.5.i = select i1 %.not215.us.5.i, i32 %spec.select218.us.4.i, i32 6
  %i.gt = extractelement <4 x float> %i.go, i64 1
  %i.gu = fptosi float %i.gt to i64
  %i.gv = tail call i64 @llvm.abs.i64(i64 %i.gu, i1 true) ; 2 uses
  %i.gw = add nsw i64 %i.gv, -2
  %.not215.us.6.i = icmp sgt i64 %i.gw, %spec.select217.us.5.i ; 2 uses
  %spec.select217.us.6.i = select i1 %.not215.us.6.i, i64 %spec.select217.us.5.i, i64 %i.gv ; 2 uses
  %spec.select218.us.6.i = select i1 %.not215.us.6.i, i32 %spec.select218.us.5.i, i32 7
  %i.gx = extractelement <4 x float> %i.go, i64 2
  %i.gy = fptosi float %i.gx to i64
  %i.gz = tail call i64 @llvm.abs.i64(i64 %i.gy, i1 true) ; 2 uses
  %i.ha = add nsw i64 %i.gz, -2
  %.not215.us.7.i = icmp sgt i64 %i.ha, %spec.select217.us.6.i ; 2 uses
  %spec.select217.us.7.i = select i1 %.not215.us.7.i, i64 %spec.select217.us.6.i, i64 %i.gz ; 2 uses
  %spec.select218.us.7.i = select i1 %.not215.us.7.i, i32 %spec.select218.us.6.i, i32 8
  %i.hb = extractelement <4 x float> %i.go, i64 3
  %i.hc = fptosi float %i.hb to i64
  %i.hd = tail call i64 @llvm.abs.i64(i64 %i.hc, i1 true) ; 2 uses
  %i.he = add nsw i64 %i.hd, -2
  %.not215.us.8.i = icmp sgt i64 %i.he, %spec.select217.us.7.i ; 2 uses
  %spec.select217.us.8.i = select i1 %.not215.us.8.i, i64 %spec.select217.us.7.i, i64 %i.hd ; 2 uses
  %spec.select218.us.8.i = select i1 %.not215.us.8.i, i32 %spec.select218.us.7.i, i32 9
  %i.hf = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg1_aspect, i64 40), align 8, !tbaa !146
  %i.hg = fdiv nsz <4 x float> splat (float f0x4F800000), %i.hf
  %i.hh = fsub nsz <4 x float> %i.fu, %i.hg       ; 4 uses
  %i.hi = extractelement <4 x float> %i.hh, i64 0
  %i.hj = fptosi float %i.hi to i64
  %i.hk = tail call i64 @llvm.abs.i64(i64 %i.hj, i1 true) ; 2 uses
  %i.hl = add nsw i64 %i.hk, -2
  %.not215.us.9.i = icmp sgt i64 %i.hl, %spec.select217.us.8.i ; 2 uses
  %spec.select217.us.9.i = select i1 %.not215.us.9.i, i64 %spec.select217.us.8.i, i64 %i.hk ; 2 uses
  %spec.select218.us.9.i = select i1 %.not215.us.9.i, i32 %spec.select218.us.8.i, i32 10
  %i.hm = extractelement <4 x float> %i.hh, i64 1
  %i.hn = fptosi float %i.hm to i64
  %i.ho = tail call i64 @llvm.abs.i64(i64 %i.hn, i1 true) ; 2 uses
  %i.hp = add nsw i64 %i.ho, -2
  %.not215.us.10.i = icmp sgt i64 %i.hp, %spec.select217.us.9.i ; 2 uses
  %spec.select217.us.10.i = select i1 %.not215.us.10.i, i64 %spec.select217.us.9.i, i64 %i.ho ; 2 uses
  %spec.select218.us.10.i = select i1 %.not215.us.10.i, i32 %spec.select218.us.9.i, i32 11
  %i.hq = extractelement <4 x float> %i.hh, i64 2
  %i.hr = fptosi float %i.hq to i64
  %i.hs = tail call i64 @llvm.abs.i64(i64 %i.hr, i1 true) ; 2 uses
  %i.ht = add nsw i64 %i.hs, -2
  %.not215.us.11.i = icmp sgt i64 %i.ht, %spec.select217.us.10.i ; 2 uses
  %spec.select217.us.11.i = select i1 %.not215.us.11.i, i64 %spec.select217.us.10.i, i64 %i.hs ; 2 uses
  %spec.select218.us.11.i = select i1 %.not215.us.11.i, i32 %spec.select218.us.10.i, i32 12
  %i.hu = extractelement <4 x float> %i.hh, i64 3
  %i.hv = fptosi float %i.hu to i64
  %i.hw = tail call i64 @llvm.abs.i64(i64 %i.hv, i1 true) ; 2 uses
  %i.hx = add nsw i64 %i.hw, -2
  %.not215.us.12.i = icmp sgt i64 %i.hx, %spec.select217.us.11.i ; 2 uses
  %spec.select217.us.12.i = select i1 %.not215.us.12.i, i64 %spec.select217.us.11.i, i64 %i.hw
  %spec.select218.us.12.i = select i1 %.not215.us.12.i, i32 %spec.select218.us.11.i, i32 13
  %i.hy = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg1_aspect, i64 56), align 8, !tbaa !146
  %i.hz = fdiv nsz float f0x4F800000, %i.hy
  %i.ia = fsub nsz float %i.ak, %i.hz
  %i.ib = fptosi float %i.ia to i64
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %put_sbits.exit225.split.peel.next.i, %put_sbits.exit225.split.us.preheader.i
  %.sink = phi i64 [ %i.fq, %put_sbits.exit225.split.peel.next.i ], [ %i.ib, %put_sbits.exit225.split.us.preheader.i ]
  %spec.select217.i.11.sink = phi i64 [ %spec.select217.i.11, %put_sbits.exit225.split.peel.next.i ], [ %spec.select217.us.12.i, %put_sbits.exit225.split.us.preheader.i ]
  %spec.select218.i.11.sink = phi i32 [ %spec.select218.i.11, %put_sbits.exit225.split.peel.next.i ], [ %spec.select218.us.12.i, %put_sbits.exit225.split.us.preheader.i ]
  %i.ic = tail call i64 @llvm.abs.i64(i64 %.sink, i1 true)
  %i.id = add nsw i64 %i.ic, -2
  %.not215.i.12 = icmp sgt i64 %i.id, %spec.select217.i.11.sink
  %spec.select218.i.12 = select i1 %.not215.i.12, i32 %spec.select218.i.11.sink, i32 14
  %i.ie = shl nuw nsw i32 %i.ac, 4
  %i.if = or disjoint i32 %i.ie, 805306368
  %i.ig = or i32 %spec.select218.i.12, %i.if      ; 2 uses
  %.pre420.i = load i32, ptr %i.c, align 8, !tbaa !88 ; 2 uses
  store i32 %i.ig, ptr %i.a, align 16, !tbaa !52
  store i32 4, ptr %i.b, align 4, !tbaa !51
  %i.ih = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  %i.ii = load ptr, ptr %.phi.trans.insert401.i, align 16, !tbaa !54 ; 2 uses
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = sub i64 %i.ij, %i.ik
  %i.im = icmp ugt i64 %i.il, 3
  br i1 %i.im, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit.i
  %i.in = shl i32 %i.ig, 4
  %i.io = or i32 %i.in, %.pre420.i
  %i.ip = tail call i32 @llvm.bswap.i32(i32 %i.io)
  store i32 %i.ip, ptr %i.ii, align 1, !tbaa !9
  %i.iq = load ptr, ptr %.phi.trans.insert401.i, align 16, !tbaa !54
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  store ptr %i.ir, ptr %.phi.trans.insert401.i, align 16, !tbaa !54
  br label %put_bits.exit230.i

bb.e:                                             ; preds = %.loopexit.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %put_bits.exit230.i

put_bits.exit230.i:                               ; preds = %bb.e, %bb.d
  %i.is = load ptr, ptr %i.g, align 8, !tbaa !144 ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 464
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !82 ; 2 uses
  %.not198.i = icmp eq i64 %i.iu, 0
  br i1 %.not198.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %put_bits.exit230.i
  %i.iv = add nsw i64 %i.iu, 399
  %i.iw = sdiv i64 %i.iv, 400
  %i.ix = trunc i64 %i.iw to i32                  ; 3 uses
  %i.iy = icmp ugt i32 %i.ix, 262143
  br i1 %i.iy, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.iz = load i32, ptr %.phi.trans.insert418.i, align 16, !tbaa !48
  %i.ja = icmp eq i32 %i.iz, 1
  %spec.select219.i = select i1 %i.ja, i32 262143, i32 %i.ix
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %put_bits.exit230.i
  %.0186.i = phi i32 [ 262143, %put_bits.exit230.i ], [ %spec.select219.i, %bb.g ], [ %i.ix, %bb.f ] ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.is, i64 448
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !83 ; 2 uses
  %.not199.i = icmp eq i32 %i.jc, 0
  br i1 %.not199.i, label %bb.i, label %put_sbits.exit242.i

bb.i:                                             ; preds = %bb.h
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 10400
  %i.je = load i64, ptr %i.jd, align 16, !tbaa !149
  %i.jf = tail call i64 @av_rescale_rnd(i64 noundef %i.je, i64 noundef 20, i64 noundef 575964, i32 noundef 0) #12
  %.tr.i = trunc i64 %i.jf to i32
  %i.jg = shl i32 %.tr.i, 13
  br label %put_sbits.exit242.i

put_sbits.exit242.i:                              ; preds = %bb.i, %bb.h
  %.0180.i = phi i32 [ %i.jg, %bb.i ], [ %i.jc, %bb.h ]
  %i.jh = add i32 %.0180.i, 16383                 ; 3 uses
  %i.ji = lshr i32 %i.jh, 14
  %i.jj = shl i32 %.pre420.i, 29
  %i.jk = shl i32 %.0186.i, 11
  %i.jl = and i32 %i.jk, 536868864
  %i.jm = or disjoint i32 %i.jl, %i.jj
  %i.jn = and i32 %i.ji, 1023
  %i.jo = or disjoint i32 %i.jn, %i.jm
  %.pre421.i = load i32, ptr %i.x, align 16, !tbaa !145
  %i.jp = icmp slt i32 %.pre421.i, 769
  br i1 %i.jp, label %bb.j, label %put_bits.exit246.i

bb.j:                                             ; preds = %put_sbits.exit242.i
  %i.jq = load i32, ptr %.phi.trans.insert416.i, align 4, !tbaa !49
  %i.jr = icmp slt i32 %i.jq, 577
  br i1 %i.jr, label %bb.k, label %put_bits.exit246.i

bb.k:                                             ; preds = %bb.j
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !90
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !150
  %i.jw = mul nsw i32 %i.jv, %i.jt                ; 2 uses
  %i.jx = icmp slt i32 %i.jw, 397
  br i1 %i.jx, label %bb.l, label %put_bits.exit246.i

bb.l:                                             ; preds = %bb.k
  %i.jy = mul nsw i32 %i.jw, %.sroa.044.0.copyload.i
  %i.jz = mul nsw i32 %.sroa.647.0.copyload.i, 9900
  %.not200.i = icmp sgt i32 %i.jy, %i.jz
  %i.ka = mul nsw i32 %.sroa.647.0.copyload.i, 30
  %.not201.i = icmp sgt i32 %.sroa.044.0.copyload.i, %i.ka
  %or.cond220.i = select i1 %.not200.i, i1 true, i1 %.not201.i
  br i1 %or.cond220.i, label %put_bits.exit246.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.kb = getelementptr inbounds nuw i8, ptr %i.is, i64 280
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !151 ; 2 uses
  %.not202.i = icmp eq i32 %i.kc, 0
  br i1 %.not202.i, label %put_bits.exit246.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.kd = icmp slt i32 %i.kc, 128
  %i.ke = icmp ult i32 %i.jh, 344064
  %or.cond6.i = select i1 %i.kd, i1 %i.ke, i1 false
  %i.kf = icmp ult i32 %.0186.i, 4641
  %or.cond8.i = and i1 %i.kf, %or.cond6.i
  br i1 %or.cond8.i, label %bb.o, label %put_bits.exit246.i

bb.o:                                             ; preds = %bb.n
  %i.kg = load i32, ptr %.phi.trans.insert418.i, align 16, !tbaa !48
  %i.kh = icmp eq i32 %i.kg, 1
  %i.ki = zext i1 %i.kh to i32
  br label %put_bits.exit246.i

put_bits.exit246.i:                               ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %put_sbits.exit242.i
  %i.kj = phi i32 [ 0, %put_sbits.exit242.i ], [ %i.ki, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.k ]
  %.phi.trans.insert422.i = getelementptr inbounds nuw i8, ptr %i.is, i64 288
  %.pre423.i = load ptr, ptr %.phi.trans.insert422.i, align 8, !tbaa !152
  %i.kk = shl i32 %i.jo, 1
  %i.kl = or disjoint i32 %i.kk, 2048
  %i.km = or disjoint i32 %i.kj, %i.kl
  store i32 %i.km, ptr %i.a, align 16, !tbaa !52
  store i32 2, ptr %i.b, align 4, !tbaa !51
  tail call void @ff_write_quant_matrix(ptr noundef nonnull %i.a, ptr noundef %.pre423.i) #10
  %i.kn = load ptr, ptr %i.g, align 8, !tbaa !144
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 296
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !153
  tail call void @ff_write_quant_matrix(ptr noundef nonnull %i.a, ptr noundef %i.kp) #10
  %i.kq = load i32, ptr %.phi.trans.insert418.i, align 16, !tbaa !48
  %i.kr = icmp eq i32 %i.kq, 2
  %.pre410.i = load i32, ptr %i.b, align 4, !tbaa !51 ; 6 uses
  %.pre412.i = load i32, ptr %i.a, align 16, !tbaa !52 ; 3 uses
  br i1 %i.kr, label %bb.p, label %bb.ej

bb.p:                                             ; preds = %put_bits.exit246.i
  %i.ks = load i32, ptr %i.x, align 16, !tbaa !145 ; 3 uses
  %i.kt = load i32, ptr %.phi.trans.insert416.i, align 4, !tbaa !49 ; 3 uses
  %i.ku = icmp sgt i32 %.pre410.i, 7
  br i1 %i.ku, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.kv = and i32 %.pre410.i, 7
  %i.kw = shl i32 %.pre412.i, %i.kv
  %i.kx = and i32 %.pre410.i, 2147483640
  br label %align_put_bits.exit.i248.i

bb.r:                                             ; preds = %bb.p
  %i.ky = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  %i.kz = load ptr, ptr %.phi.trans.insert401.i, align 16, !tbaa !54 ; 2 uses
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = sub i64 %i.la, %i.lb
  %i.ld = icmp ugt i64 %i.lc, 3
  br i1 %i.ld, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.le = shl i32 %.pre412.i, %.pre410.i
  %i.lf = tail call i32 @llvm.bswap.i32(i32 %i.le)
  store i32 %i.lf, ptr %i.kz, align 1, !tbaa !9
  %i.lg = load ptr, ptr %.phi.trans.insert401.i, align 16, !tbaa !54
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  store ptr %i.lh, ptr %.phi.trans.insert401.i, align 16, !tbaa !54
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %reass.sub.i.i.i247.i = and i32 %.pre410.i, -8
  %i.li = add i32 %reass.sub.i.i.i247.i, 32
  br label %align_put_bits.exit.i248.i

align_put_bits.exit.i248.i:                       ; preds = %bb.u, %bb.q
  %.026.i.i.i.i249.i = phi i32 [ %i.kw, %bb.q ], [ 0, %bb.u ] ; 2 uses
  %.0.i.i.i.i250.i = phi i32 [ %i.kx, %bb.q ], [ %i.li, %bb.u ] ; 7 uses
  store i32 %.026.i.i.i.i249.i, ptr %i.a, align 16, !tbaa !52
  store i32 %.0.i.i.i.i250.i, ptr %i.b, align 4, !tbaa !51
  %i.lj = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  %i.lk = load ptr, ptr %.phi.trans.insert401.i, align 16, !tbaa !54 ; 2 uses
  %i.ll = ptrtoint ptr %i.lj to i64
  %i.lm = ptrtoint ptr %i.lk to i64
  %i.ln = sub i64 %i.ll, %i.lm
  %i.lo = icmp ugt i64 %i.ln, 3
  br i1 %i.lo, label %bb.v, label %bb.w

bb.v:                                             ; preds = %align_put_bits.exit.i248.i
  %i.lp = zext i32 %.026.i.i.i.i249.i to i64
  %i.lq = zext nneg i32 %.0.i.i.i.i250.i to i64
  %i.lr = shl i64 %i.lp, %i.lq
  %i.ls = trunc i64 %i.lr to i32
  %i.lt = sub nsw i32 32, %.0.i.i.i.i250.i
  %i.lu = lshr i32 437, %i.lt
  %i.lv = or i32 %i.lu, %i.ls
  %i.lw = tail call i32 @llvm.bswap.i32(i32 %i.lv)
  store i32 %i.lw, ptr %i.lk, align 1, !tbaa !9
  %i.lx = load ptr, ptr %.phi.trans.insert401.i, align 16, !tbaa !54
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 4
  store ptr %i.ly, ptr %.phi.trans.insert401.i, align 16, !tbaa !54
  br label %put_header.exit251.i

bb.w:                                             ; preds = %align_put_bits.exit.i248.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %put_header.exit251.i

put_header.exit251.i:                             ; preds = %bb.w, %bb.v
  store i32 437, ptr %i.a, align 16, !tbaa !52
  store i32 %.0.i.i.i.i250.i, ptr %i.b, align 4, !tbaa !51
  %i.lz = icmp sgt i32 %.0.i.i.i.i250.i, 4
  br i1 %i.lz, label %put_bits.exit255.i, label %bb.x

bb.x:                                             ; preds = %put_header.exit251.i
  %i.ma = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  %i.mb = load ptr, ptr %.phi.trans.insert401.i, align 16, !tbaa !54 ; 2 uses
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = sub i64 %i.mc, %i.md
  %i.mf = icmp ugt i64 %i.me, 3
  br i1 %i.mf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.mg = shl nuw nsw i32 437, %.0.i.i.i.i250.i
  %i.mh = tail call i32 @llvm.bswap.i32(i32 %i.mg)
  store i32 %i.mh, ptr %i.mb, align 1, !tbaa !9
  %i.mi = load ptr, ptr %.phi.trans.insert401.i, align 16, !tbaa !54
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  store ptr %i.mj, ptr %.phi.trans.insert401.i, align 16, !tbaa !54
  br label %put_bits.exit255.i

bb.z:                                             ; preds = %bb.x
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %put_bits.exit255.i

put_bits.exit255.i:                               ; preds = %bb.z, %bb.y, %put_header.exit251.i
  %.sink.i = phi i32 [ -4, %put_header.exit251.i ], [ 28, %bb.z ], [ 28, %bb.y ]
  %.026.i.i253.i = phi i32 [ 6993, %put_header.exit251.i ], [ 1, %bb.z ], [ 1, %bb.y ] ; 3 uses
  %i.mk = add nsw i32 %.sink.i, %.0.i.i.i.i250.i  ; 6 uses
  store i32 %.026.i.i253.i, ptr %i.a, align 16, !tbaa !52
  store i32 %i.mk, ptr %i.b, align 4, !tbaa !51
  %i.ml = load ptr, ptr %i.g, align 8, !tbaa !144 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 688
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !71 ; 2 uses
  %i.mo = icmp eq i32 %i.mn, 0
  %i.mp = zext i1 %i.mo to i32                    ; 3 uses
  %i.mq = icmp sgt i32 %i.mk, 1
  br i1 %i.mq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %put_bits.exit255.i
  %i.mr = shl nuw nsw i32 %.026.i.i253.i, 1
  %i.ms = or disjoint i32 %i.mr, %i.mp
  %i.mt = add nsw i32 %i.mk, -1
  br label %put_bits.exit259.i

bb.ab:                                            ; preds = %put_bits.exit255.i
  %i.mu = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  %i.mv = load ptr, ptr %.phi.trans.insert401.i, align 16, !tbaa !54 ; 2 uses
  %i.mw = ptrtoint ptr %i.mu to i64
  %i.mx = ptrtoint ptr %i.mv to i64
  %i.my = sub i64 %i.mw, %i.mx
  %i.mz = icmp ugt i64 %i.my, 3
  br i1 %i.mz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.na = shl nuw nsw i32 %.026.i.i253.i, %i.mk
  %i.nb = sub nsw i32 1, %i.mk
  %i.nc = lshr i32 %i.mp, %i.nb
  %i.nd = or i32 %i.nc, %i.na
  %i.ne = tail call i32 @llvm.bswap.i32(i32 %i.nd)
  store i32 %i.ne, ptr %i.mv, align 1, !tbaa !9
  %i.nf = load ptr, ptr %.phi.trans.insert401.i, align 16, !tbaa !54
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  store ptr %i.ng, ptr %.phi.trans.insert401.i, align 16, !tbaa !54
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.nh = add nsw i32 %i.mk, 31
  %.pre403.i = load ptr, ptr %i.g, align 8, !tbaa !144 ; 2 uses
  %.phi.trans.insert404.i = getelementptr inbounds nuw i8, ptr %.pre403.i, i64 688
  %.pre405.i = load i32, ptr %.phi.trans.insert404.i, align 8, !tbaa !71
  br label %put_bits.exit259.i

put_bits.exit259.i:                               ; preds = %bb.ae, %bb.aa
  %i.ni = phi i32 [ %i.mn, %bb.aa ], [ %.pre405.i, %bb.ae ] ; 3 uses
  %i.nj = phi ptr [ %i.ml, %bb.aa ], [ %.pre403.i, %bb.ae ]
  %.026.i.i257.i = phi i32 [ %i.ms, %bb.aa ], [ %i.mp, %bb.ae ] ; 3 uses
  %.0.i.i258.i = phi i32 [ %i.mt, %bb.aa ], [ %i.nh, %bb.ae ] ; 6 uses
  store i32 %.026.i.i257.i, ptr %i.a, align 16, !tbaa !52
  store i32 %.0.i.i258.i, ptr %i.b, align 4, !tbaa !51
  %i.nk = icmp sgt i32 %.0.i.i258.i, 3
  br i1 %i.nk, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %put_bits.exit259.i
  %i.nl = shl nuw nsw i32 %.026.i.i257.i, 3
  %i.nm = or i32 %i.nl, %i.ni
  %i.nn = add nsw i32 %.0.i.i258.i, -3
  br label %put_bits.exit263.i

bb.ag:                                            ; preds = %put_bits.exit259.i
  %i.no = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !53
  %i.np = load ptr, ptr %.phi.trans.insert401.i, align 16, !tbaa !54 ; 2 uses
  %i.nq = ptrtoint ptr %i.no to i64
  %i.nr = ptrtoint ptr %i.np to i64
  %i.ns = sub i64 %i.nq, %i.nr
  %i.nt = icmp ugt i64 %i.ns, 3
  br i1 %i.nt, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.nu = shl nuw nsw i32 %.026.i.i257.i, %.0.i.i258.i
  %i.nv = sub nsw i32 3, %.0.i.i258.i
  %i.nw = lshr i32 %i.ni, %i.nv
  %i.nx = or i32 %i.nw, %i.nu
  %i.ny = tail call i32 @llvm.bswap.i32(i32 %i.nx)
  store i32 %i.ny, ptr %i.np, align 1, !tbaa !9
  %i.nz = load ptr, ptr %.phi.trans.insert401.i, align 16, !tbaa !54
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  store ptr %i.oa, ptr %.phi.trans.insert401.i, align 16, !tbaa !54
  br label %bb.aj
end_hunk_0
