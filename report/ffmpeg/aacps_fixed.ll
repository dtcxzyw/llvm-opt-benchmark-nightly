Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacps_fixed?download=true
inline.NumInlined: 34
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@ff_ps_apply_fixed:bb.a
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ak, i64 288
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !11
  %gep70.30.i = getelementptr inbounds nuw i8, ptr %invariant.gep69.i, i64 7680
  %i.fd = load i32, ptr %gep70.30.i, align 4, !tbaa !11
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ak, i64 292
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !11
  %gep.31.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 7936
  %i.ff = load i32, ptr %gep.31.i, align 4, !tbaa !11
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ak, i64 296
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !11
  %gep70.31.i = getelementptr inbounds nuw i8, ptr %invariant.gep69.i, i64 7936
  %i.fh = load i32, ptr %gep70.31.i, align 4, !tbaa !11
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ak, i64 300
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !11
  %gep.32.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 8192
  %i.fj = load i32, ptr %gep.32.i, align 4, !tbaa !11
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ak, i64 304
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !11
  %gep70.32.i = getelementptr inbounds nuw i8, ptr %invariant.gep69.i, i64 8192
  %i.fl = load i32, ptr %gep70.32.i, align 4, !tbaa !11
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ak, i64 308
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !11
  %gep.33.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 8448
  %i.fn = load i32, ptr %gep.33.i, align 4, !tbaa !11
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ak, i64 312
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !11
  %gep70.33.i = getelementptr inbounds nuw i8, ptr %invariant.gep69.i, i64 8448
  %i.fp = load i32, ptr %gep70.33.i, align 4, !tbaa !11
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ak, i64 316
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !11
  %gep.34.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 8704
  %i.fr = load i32, ptr %gep.34.i, align 4, !tbaa !11
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ak, i64 320
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !11
  %gep70.34.i = getelementptr inbounds nuw i8, ptr %invariant.gep69.i, i64 8704
  %i.ft = load i32, ptr %gep70.34.i, align 4, !tbaa !11
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ak, i64 324
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !11
  %gep.35.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 8960
  %i.fv = load i32, ptr %gep.35.i, align 4, !tbaa !11
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ak, i64 328
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !11
  %gep70.35.i = getelementptr inbounds nuw i8, ptr %invariant.gep69.i, i64 8960
  %i.fx = load i32, ptr %gep70.35.i, align 4, !tbaa !11
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ak, i64 332
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !11
  %gep.36.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 9216
  %i.fz = load i32, ptr %gep.36.i, align 4, !tbaa !11
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ak, i64 336
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !11
  %gep70.36.i = getelementptr inbounds nuw i8, ptr %invariant.gep69.i, i64 9216
  %i.gb = load i32, ptr %gep70.36.i, align 4, !tbaa !11
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ak, i64 340
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !11
  %gep.37.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 9472
  %i.gd = load i32, ptr %gep.37.i, align 4, !tbaa !11
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ak, i64 344
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !11
  %gep70.37.i = getelementptr inbounds nuw i8, ptr %invariant.gep69.i, i64 9472
  %i.gf = load i32, ptr %gep70.37.i, align 4, !tbaa !11
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ak, i64 348
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 5
  br i1 %exitcond.not.i, label %bb.d, label %.preheader.i, !llvm.loop !17

bb.d:                                             ; preds = %.preheader.i
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 110672 ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 87376 ; 8 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 134040 ; 8 uses
  %.not.i = icmp eq i32 %i.o, 0                   ; 4 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @hybrid4_8_12_cx(ptr noundef nonnull readonly %i.gj, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.gi, ptr noundef nonnull @f34_0_12, i32 noundef 12)
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 90448
  tail call fastcc void @hybrid4_8_12_cx(ptr noundef nonnull readonly %i.gj, ptr noundef nonnull %i.gk, ptr noundef nonnull %i.gl, ptr noundef nonnull @f34_1_8, i32 noundef 8)
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 92496
  tail call fastcc void @hybrid4_8_12_cx(ptr noundef nonnull readonly %i.gj, ptr noundef nonnull %i.gm, ptr noundef nonnull %i.gn, ptr noundef nonnull @f34_2_4, i32 noundef 4)
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 1824
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 93520
  tail call fastcc void @hybrid4_8_12_cx(ptr noundef nonnull readonly %i.gj, ptr noundef nonnull %i.go, ptr noundef nonnull %i.gp, ptr noundef nonnull @f34_2_4, i32 noundef 4)
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 94544
  tail call fastcc void @hybrid4_8_12_cx(ptr noundef nonnull readonly %i.gj, ptr noundef nonnull %i.gq, ptr noundef nonnull %i.gr, ptr noundef nonnull @f34_2_4, i32 noundef 4)
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 134064
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !37
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 94288
  tail call void %i.gt(ptr noundef nonnull %i.gu, ptr noundef nonnull %1, i32 noundef 5, i32 noundef 32) #9, !inline_history !18
  br label %hybrid_analysis.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #9
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 134056
  %i.gw = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.gx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 87632
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 87888
  %i.ha = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 88144
  %i.hc = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 88400
  %i.hf = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.hg = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 88656
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i.i = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i.i, %bb.g ] ; 7 uses
  %.0481.i.i = phi ptr [ %i.ai, %bb.f ], [ %i.hz, %bb.g ] ; 2 uses
  %i.hi = load ptr, ptr %i.gv, align 8, !tbaa !13
  call void %i.hi(ptr noundef nonnull %i.m, ptr noundef nonnull %.0481.i.i, ptr noundef nonnull @f20_0_8, i64 noundef 1, i32 noundef 8) #9, !inline_history !19
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv.i.i
  %i.hk = load <2 x i32>, ptr %i.gw, align 16, !tbaa !11
  store <2 x i32> %i.hk, ptr %i.hj, align 4, !tbaa !11
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.i.i
  %i.hm = load <2 x i32>, ptr %i.gx, align 8, !tbaa !11
  store <2 x i32> %i.hm, ptr %i.hl, align 4, !tbaa !11
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.i.i
  %i.ho = load <2 x i32>, ptr %i.m, align 16, !tbaa !11
  store <2 x i32> %i.ho, ptr %i.hn, align 4, !tbaa !11
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv.i.i
  %i.hq = load <2 x i32>, ptr %i.ha, align 8, !tbaa !11
  store <2 x i32> %i.hq, ptr %i.hp, align 4, !tbaa !11
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv.i.i
  %i.hs = load <2 x i32>, ptr %i.hc, align 16, !tbaa !11
  %i.ht = load <2 x i32>, ptr %i.hd, align 8, !tbaa !11
  %i.hu = add nsw <2 x i32> %i.ht, %i.hs
  store <2 x i32> %i.hu, ptr %i.hr, align 4, !tbaa !11
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv.i.i
  %i.hw = load <2 x i32>, ptr %i.hf, align 8, !tbaa !11
  %i.hx = load <2 x i32>, ptr %i.hg, align 16, !tbaa !11
  %i.hy = add nsw <2 x i32> %i.hx, %i.hw
  store <2 x i32> %i.hy, ptr %i.hv, align 4, !tbaa !11
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.0481.i.i, i64 8
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 32
  br i1 %exitcond.not.i.i, label %hybrid6_cx.exit.i, label %bb.g, !llvm.loop !20

hybrid6_cx.exit.i:                                ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 88912
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 89168 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %hybrid6_cx.exit.i
  %index = phi i64 [ 0, %hybrid6_cx.exit.i ], [ %index.next, %vector.body ] ; 4 uses
  %i.id = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ia, i64 %i.id ; 7 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %next.gep, i64 48
  %wide.vec = load <4 x i32>, ptr %i.ie, align 4, !tbaa !11 ; 2 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec73 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.if = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %wide.vec74 = load <4 x i32>, ptr %i.if, align 4, !tbaa !11 ; 2 uses
  %strided.vec75 = shufflevector <4 x i32> %wide.vec74, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec76 = shufflevector <4 x i32> %wide.vec74, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.ig = getelementptr inbounds nuw i8, ptr %next.gep, i64 88
  %wide.vec77 = load <4 x i32>, ptr %i.ig, align 4, !tbaa !11 ; 2 uses
  %strided.vec78 = shufflevector <4 x i32> %wide.vec77, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec79 = shufflevector <4 x i32> %wide.vec77, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.ih = add nsw <2 x i32> %strided.vec78, %strided.vec75
  %i.ii = sext <2 x i32> %i.ih to <2 x i64>
  %i.ij = mul nsw <2 x i64> %i.ii, splat (i64 40791184)
  %i.ik = add nsw <2 x i32> %strided.vec79, %strided.vec76
  %i.il = sext <2 x i32> %i.ik to <2 x i64>
  %i.im = mul nsw <2 x i64> %i.il, splat (i64 40791184)
  %i.in = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %wide.vec80 = load <4 x i32>, ptr %i.in, align 4, !tbaa !11 ; 2 uses
  %strided.vec81 = shufflevector <4 x i32> %wide.vec80, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec82 = shufflevector <4 x i32> %wide.vec80, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.io = getelementptr inbounds nuw i8, ptr %next.gep, i64 72
  %wide.vec83 = load <4 x i32>, ptr %i.io, align 4, !tbaa !11 ; 2 uses
  %strided.vec84 = shufflevector <4 x i32> %wide.vec83, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec85 = shufflevector <4 x i32> %wide.vec83, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.ip = add nsw <2 x i32> %strided.vec84, %strided.vec81
  %i.iq = sext <2 x i32> %i.ip to <2 x i64>
  %i.ir = mul nsw <2 x i64> %i.iq, splat (i64 -156618975)
  %i.is = add nsw <2 x i32> %strided.vec85, %strided.vec82
  %i.it = sext <2 x i32> %i.is to <2 x i64>
  %i.iu = mul nsw <2 x i64> %i.it, splat (i64 -156618975)
  %i.iv = getelementptr inbounds nuw i8, ptr %next.gep, i64 40
  %wide.vec86 = load <4 x i32>, ptr %i.iv, align 4, !tbaa !11 ; 2 uses
  %strided.vec87 = shufflevector <4 x i32> %wide.vec86, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec88 = shufflevector <4 x i32> %wide.vec86, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.iw = getelementptr inbounds nuw i8, ptr %next.gep, i64 56
  %wide.vec89 = load <4 x i32>, ptr %i.iw, align 4, !tbaa !11 ; 2 uses
  %strided.vec90 = shufflevector <4 x i32> %wide.vec89, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec91 = shufflevector <4 x i32> %wide.vec89, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.ix = add nsw <2 x i32> %strided.vec90, %strided.vec87
  %i.iy = sext <2 x i32> %i.ix to <2 x i64>
  %i.iz = mul nsw <2 x i64> %i.iy, splat (i64 657057664)
  %i.ja = add nsw <2 x i32> %strided.vec91, %strided.vec88
  %i.jb = sext <2 x i32> %i.ja to <2 x i64>
  %i.jc = mul nsw <2 x i64> %i.jb, splat (i64 657057664)
  %i.jd = sext <2 x i32> %strided.vec to <2 x i64>
  %i.je = shl nsw <2 x i64> %i.jd, splat (i64 30)
  %i.jf = add nsw <2 x i64> %i.je, splat (i64 1073741824)
  %i.jg = ashr <2 x i64> %i.jf, splat (i64 31)    ; 2 uses
  %i.jh = sext <2 x i32> %strided.vec73 to <2 x i64>
  %i.ji = shl nsw <2 x i64> %i.jh, splat (i64 30)
  %i.jj = add nsw <2 x i64> %i.ji, splat (i64 1073741824)
  %i.jk = ashr <2 x i64> %i.jj, splat (i64 31)    ; 2 uses
  %i.jl = add nsw <2 x i64> %i.ij, splat (i64 1073741824)
  %i.jm = add nsw <2 x i64> %i.jl, %i.ir
  %i.jn = add nsw <2 x i64> %i.jm, %i.iz
  %i.jo = ashr <2 x i64> %i.jn, splat (i64 31)    ; 2 uses
  %i.jp = add nsw <2 x i64> %i.im, splat (i64 1073741824)
  %i.jq = add nsw <2 x i64> %i.jp, %i.iu
  %i.jr = add nsw <2 x i64> %i.jq, %i.jc
  %i.js = ashr <2 x i64> %i.jr, splat (i64 31)    ; 2 uses
  %i.jt = add nsw <2 x i64> %i.jo, %i.jg
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %index
  %i.jv = add nsw <2 x i64> %i.js, %i.jk
  %i.jw = shufflevector <2 x i64> %i.jt, <2 x i64> %i.jv, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = trunc nsw <4 x i64> %i.jw to <4 x i32>
  store <4 x i32> %interleaved.vec, ptr %i.ju, align 4, !tbaa !11
  %i.jx = sub nsw <2 x i64> %i.jg, %i.jo
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %index
  %i.jz = sub nsw <2 x i64> %i.jk, %i.js
  %i.ka = shufflevector <2 x i64> %i.jx, <2 x i64> %i.jz, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec92 = trunc nsw <4 x i64> %i.ka to <4 x i32>
  store <4 x i32> %interleaved.vec92, ptr %i.jy, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.kb = icmp eq i64 %index.next, 32
  br i1 %i.kb, label %hybrid2_re.exit.i, label %vector.body, !llvm.loop !21

hybrid2_re.exit.i:                                ; preds = %vector.body
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 89424
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 89680
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %hybrid2_re.exit.i
  %index95 = phi i64 [ 0, %hybrid2_re.exit.i ], [ %index.next120, %vector.body94 ] ; 4 uses
  %i.kf = shl i64 %index95, 3
  %next.gep96 = getelementptr i8, ptr %i.kc, i64 %i.kf ; 7 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %next.gep96, i64 48
  %wide.vec97 = load <4 x i32>, ptr %i.kg, align 4, !tbaa !11 ; 2 uses
  %strided.vec98 = shufflevector <4 x i32> %wide.vec97, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec99 = shufflevector <4 x i32> %wide.vec97, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.kh = getelementptr inbounds nuw i8, ptr %next.gep96, i64 8
  %wide.vec100 = load <4 x i32>, ptr %i.kh, align 4, !tbaa !11 ; 2 uses
  %strided.vec101 = shufflevector <4 x i32> %wide.vec100, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec102 = shufflevector <4 x i32> %wide.vec100, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.ki = getelementptr inbounds nuw i8, ptr %next.gep96, i64 88
  %wide.vec103 = load <4 x i32>, ptr %i.ki, align 4, !tbaa !11 ; 2 uses
  %strided.vec104 = shufflevector <4 x i32> %wide.vec103, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec105 = shufflevector <4 x i32> %wide.vec103, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.kj = add nsw <2 x i32> %strided.vec104, %strided.vec101
  %i.kk = sext <2 x i32> %i.kj to <2 x i64>
  %i.kl = mul nsw <2 x i64> %i.kk, splat (i64 40791184)
  %i.km = add nsw <2 x i32> %strided.vec105, %strided.vec102
  %i.kn = sext <2 x i32> %i.km to <2 x i64>
  %i.ko = mul nsw <2 x i64> %i.kn, splat (i64 40791184)
  %i.kp = getelementptr inbounds nuw i8, ptr %next.gep96, i64 24
  %wide.vec106 = load <4 x i32>, ptr %i.kp, align 4, !tbaa !11 ; 2 uses
  %strided.vec107 = shufflevector <4 x i32> %wide.vec106, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec108 = shufflevector <4 x i32> %wide.vec106, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.kq = getelementptr inbounds nuw i8, ptr %next.gep96, i64 72
  %wide.vec109 = load <4 x i32>, ptr %i.kq, align 4, !tbaa !11 ; 2 uses
  %strided.vec110 = shufflevector <4 x i32> %wide.vec109, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec111 = shufflevector <4 x i32> %wide.vec109, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.kr = add nsw <2 x i32> %strided.vec110, %strided.vec107
  %i.ks = sext <2 x i32> %i.kr to <2 x i64>
  %i.kt = mul nsw <2 x i64> %i.ks, splat (i64 -156618975)
  %i.ku = add nsw <2 x i32> %strided.vec111, %strided.vec108
  %i.kv = sext <2 x i32> %i.ku to <2 x i64>
  %i.kw = mul nsw <2 x i64> %i.kv, splat (i64 -156618975)
  %i.kx = getelementptr inbounds nuw i8, ptr %next.gep96, i64 40
  %wide.vec112 = load <4 x i32>, ptr %i.kx, align 4, !tbaa !11 ; 2 uses
  %strided.vec113 = shufflevector <4 x i32> %wide.vec112, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec114 = shufflevector <4 x i32> %wide.vec112, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.ky = getelementptr inbounds nuw i8, ptr %next.gep96, i64 56
  %wide.vec115 = load <4 x i32>, ptr %i.ky, align 4, !tbaa !11 ; 2 uses
  %strided.vec116 = shufflevector <4 x i32> %wide.vec115, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec117 = shufflevector <4 x i32> %wide.vec115, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.kz = add nsw <2 x i32> %strided.vec116, %strided.vec113
  %i.la = sext <2 x i32> %i.kz to <2 x i64>
  %i.lb = mul nsw <2 x i64> %i.la, splat (i64 657057664)
  %i.lc = add nsw <2 x i32> %strided.vec117, %strided.vec114
  %i.ld = sext <2 x i32> %i.lc to <2 x i64>
  %i.le = mul nsw <2 x i64> %i.ld, splat (i64 657057664)
  %i.lf = sext <2 x i32> %strided.vec98 to <2 x i64>
  %i.lg = shl nsw <2 x i64> %i.lf, splat (i64 30)
  %i.lh = add nsw <2 x i64> %i.lg, splat (i64 1073741824)
  %i.li = ashr <2 x i64> %i.lh, splat (i64 31)    ; 2 uses
  %i.lj = sext <2 x i32> %strided.vec99 to <2 x i64>
  %i.lk = shl nsw <2 x i64> %i.lj, splat (i64 30)
  %i.ll = add nsw <2 x i64> %i.lk, splat (i64 1073741824)
  %i.lm = ashr <2 x i64> %i.ll, splat (i64 31)    ; 2 uses
  %i.ln = add nsw <2 x i64> %i.kl, splat (i64 1073741824)
  %i.lo = add nsw <2 x i64> %i.ln, %i.kt
  %i.lp = add nsw <2 x i64> %i.lo, %i.lb
  %i.lq = ashr <2 x i64> %i.lp, splat (i64 31)    ; 2 uses
  %i.lr = add nsw <2 x i64> %i.ko, splat (i64 1073741824)
  %i.ls = add nsw <2 x i64> %i.lr, %i.kw
  %i.lt = add nsw <2 x i64> %i.ls, %i.le
  %i.lu = ashr <2 x i64> %i.lt, splat (i64 31)    ; 2 uses
  %i.lv = add nsw <2 x i64> %i.lq, %i.li
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %index95
  %i.lx = add nsw <2 x i64> %i.lu, %i.lm
  %i.ly = shufflevector <2 x i64> %i.lv, <2 x i64> %i.lx, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec118 = trunc nsw <4 x i64> %i.ly to <4 x i32>
  store <4 x i32> %interleaved.vec118, ptr %i.lw, align 4, !tbaa !11
  %i.lz = sub nsw <2 x i64> %i.li, %i.lq
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %index95
  %i.mb = sub nsw <2 x i64> %i.lm, %i.lu
  %i.mc = shufflevector <2 x i64> %i.lz, <2 x i64> %i.mb, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec119 = trunc nsw <4 x i64> %i.mc to <4 x i32>
  store <4 x i32> %interleaved.vec119, ptr %i.ma, align 4, !tbaa !11
  %index.next120 = add nuw i64 %index95, 2        ; 2 uses
  %i.md = icmp eq i64 %index.next120, 32
  br i1 %i.md, label %hybrid2_re.exit68.i, label %vector.body94, !llvm.loop !22

hybrid2_re.exit68.i:                              ; preds = %vector.body94
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 134064
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !37
  call void %i.mf(ptr noundef nonnull %i.ic, ptr noundef nonnull %1, i32 noundef 3, i32 noundef 32) #9, !inline_history !18
  br label %hybrid_analysis.exit

hybrid_analysis.exit:                             ; preds = %bb.e, %hybrid2_re.exit68.i
  %i.mg = phi ptr [ @ff_k_to_i_34, %bb.e ], [ @ff_k_to_i_20, %hybrid2_re.exit68.i ] ; 5 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 1024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.ai, ptr noundef nonnull align 4 dereferenceable(48) %i.mh, i64 48, i1 false)
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 1376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.mi, ptr noundef nonnull align 4 dereferenceable(48) %i.mj, i64 48, i1 false)
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 1728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.mk, ptr noundef nonnull align 4 dereferenceable(48) %i.ml, i64 48, i1 false)
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 1824
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 2080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.mm, ptr noundef nonnull align 4 dereferenceable(48) %i.mn, i64 48, i1 false)
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 2432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.mo, ptr noundef nonnull align 4 dereferenceable(48) %i.mp, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 80416
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 80560 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 80704 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 36016
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4352) %i.k, i8 0, i64 4352, i1 false)
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 3 uses
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !40
  %.not175.i = icmp eq i32 %i.o, %i.mv
  br i1 %.not175.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %hybrid_analysis.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %i.mr, i8 0, i64 136, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %i.ms, i8 0, i64 136, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(78024) %i.u, i8 0, i64 78024, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %hybrid_analysis.exit
  %i.mw = icmp ult i32 %i.o, 2                    ; 2 uses
  br i1 %i.mw, label %.lr.ph.i, label %.preheader182.i

.lr.ph.i:                                         ; preds = %bb.i
  %smax.i = call i32 @llvm.smax.i32(i32 %i.r, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %bb.j

.preheader184.preheader.i:                        ; preds = %bb.j
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr @NR_PAR_BANDS, i64 %i.p
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !11
  %smax217.i = call i32 @llvm.smax.i32(i32 %i.my, i32 1)
  %wide.trip.count218.i = zext nneg i32 %smax217.i to i64
  br label %.preheader184.i

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i38 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i39, %bb.j ] ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mg, i64 %indvars.iv.i38
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !14
  %i.nb = load ptr, ptr %i.gj, align 8, !tbaa !41
  %i.nc = sext i8 %i.na to i64
  %i.nd = getelementptr inbounds [128 x i8], ptr %i.k, i64 %i.nc
  %i.ne = getelementptr inbounds nuw [256 x i8], ptr %i.gi, i64 %indvars.iv.i38
  call void %i.nb(ptr noundef nonnull %i.nd, ptr noundef nonnull %i.ne, i32 noundef 32) #9, !inline_history !23
  %indvars.iv.next.i39 = add nuw nsw i64 %indvars.iv.i38, 1 ; 2 uses
  %exitcond.not.i40 = icmp eq i64 %indvars.iv.next.i39, %wide.trip.count.i
  br i1 %exitcond.not.i40, label %.preheader184.preheader.i, label %bb.j, !llvm.loop !24

.preheader184.i:                                  ; preds = %bb.n, %.preheader184.preheader.i
  %indvars.iv214.i = phi i64 [ 0, %.preheader184.preheader.i ], [ %indvars.iv.next215.i, %bb.n ] ; 6 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %indvars.iv214.i ; 2 uses
  %i.ng = getelementptr inbounds nuw [128 x i8], ptr %i.k, i64 %indvars.iv214.i
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv214.i ; 2 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %indvars.iv214.i ; 2 uses
  %.promoted.i = load i32, ptr %i.nf, align 4, !tbaa !11
  %.promoted190.i = load i32, ptr %i.nh, align 4, !tbaa !11
  %.promoted192.i = load i32, ptr %i.ni, align 4, !tbaa !11
  %i.nj = getelementptr inbounds nuw [128 x i8], ptr %i.l, i64 %indvars.iv214.i
  br label %bb.k

.preheader183.i:                                  ; preds = %bb.n
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr @DECAY_CUTOFF, i64 %i.p
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !11
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 134080
  %i.nn = getelementptr inbounds nuw [400 x i8], ptr @phi_fract, i64 %i.p
  %i.no = getelementptr inbounds nuw [1200 x i8], ptr @Q_fract_allpass, i64 %i.p
  %i.np = sext i32 %i.nl to i64
  %smax228.i = call i32 @llvm.smax.i32(i32 %i.ab, i32 1) ; 2 uses
  %wide.trip.count229.i = zext nneg i32 %smax228.i to i64
  br label %bb.o

bb.k:                                             ; preds = %bb.m, %.preheader184.i
  %indvars.iv210.i = phi i64 [ 0, %.preheader184.i ], [ %indvars.iv.next211.i, %bb.m ] ; 3 uses
  %.189194.i = phi i32 [ %.promoted.i, %.preheader184.i ], [ %..i, %bb.m ]
  %i.nq = phi i32 [ %.promoted190.i, %.preheader184.i ], [ %i.oe, %bb.m ] ; 2 uses
  %i.nr = phi i32 [ %.promoted192.i, %.preheader184.i ], [ %i.ol, %bb.m ] ; 2 uses
  %i.ns = sext i32 %.189194.i to i64
  %i.nt = mul nsw i64 %i.ns, 1644818560
  %i.nu = add nsw i64 %i.nt, 1073741824
  %i.nv = lshr i64 %i.nu, 31
  %i.nw = trunc i64 %i.nv to i32
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv210.i
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !11 ; 2 uses
  %..i = call i32 @llvm.smax.i32(i32 %i.ny, i32 %i.nw) ; 3 uses
  %i.nz = sext i32 %i.ny to i64                   ; 2 uses
  %i.oa = sext i32 %i.nq to i64
  %reass.sub = sub nsw i64 %i.nz, %i.oa
  %i.ob = add nsw i64 %reass.sub, 2
  %i.oc = lshr i64 %i.ob, 2
  %i.od = trunc i64 %i.oc to i32
  %i.oe = add i32 %i.nq, %i.od                    ; 3 uses
  %i.of = sext i32 %..i to i64
  %i.og = sext i32 %i.nr to i64
  %i.oh = add nsw i64 %i.og, %i.nz
  %reass.sub55 = sub nsw i64 %i.of, %i.oh
  %i.oi = add nsw i64 %reass.sub55, 2
  %i.oj = lshr i64 %i.oi, 2
  %i.ok = trunc i64 %i.oj to i32
  %i.ol = add i32 %i.nr, %i.ok                    ; 4 uses
  %.not176.i = icmp eq i32 %i.ol, 0
  br i1 %.not176.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.om = sext i32 %i.oe to i64
  %i.on = mul nsw i64 %i.om, 43691
  %i.oo = sext i32 %i.ol to i64
  %i.op = sdiv i64 %i.on, %i.oo
  %spec.select177.i = call i64 @llvm.smin.i64(i64 %i.op, i64 65536)
  %spec.select.i = trunc i64 %spec.select177.i to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink.i = phi i32 [ %spec.select.i, %bb.l ], [ 65536, %bb.k ]
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %indvars.iv210.i
  store i32 %.sink.i, ptr %i.oq, align 4, !tbaa !11
  %indvars.iv.next211.i = add nuw nsw i64 %indvars.iv210.i, 1 ; 2 uses
  %exitcond213.not.i = icmp eq i64 %indvars.iv.next211.i, 32
  br i1 %exitcond213.not.i, label %bb.n, label %bb.k, !llvm.loop !25

bb.n:                                             ; preds = %bb.m
  store i32 %..i, ptr %i.nf, align 4, !tbaa !11
  store i32 %i.oe, ptr %i.nh, align 4, !tbaa !11
  store i32 %i.ol, ptr %i.ni, align 4, !tbaa !11
  %indvars.iv.next215.i = add nuw nsw i64 %indvars.iv214.i, 1 ; 2 uses
  %exitcond219.not.i = icmp eq i64 %indvars.iv.next215.i, %wide.trip.count218.i
  br i1 %exitcond219.not.i, label %.preheader183.i, label %.preheader184.i, !llvm.loop !26

.preheader182.i:                                  ; preds = %bb.r, %bb.i
  %.1.lcssa.i = phi i32 [ 0, %bb.i ], [ %smax228.i, %bb.r ] ; 3 uses
  %i.or = getelementptr inbounds [4 x i8], ptr @SHORT_DELAY_BAND, i64 %i.p
  %i.os = load i32, ptr %i.or, align 4, !tbaa !11 ; 3 uses
  %i.ot = icmp slt i32 %.1.lcssa.i, %i.os
  br i1 %i.ot, label %.lr.ph202.i, label %.preheader.i37

.lr.ph202.i:                                      ; preds = %.preheader182.i
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 134048
  %i.ov = zext nneg i32 %.1.lcssa.i to i64
  %wide.trip.count234.i = zext nneg i32 %i.os to i64
  br label %bb.s

bb.o:                                             ; preds = %bb.r, %.preheader183.i
  %indvars.iv224.i = phi i64 [ 0, %.preheader183.i ], [ %indvars.iv.next225.i, %bb.r ] ; 9 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.mg, i64 %indvars.iv224.i
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !14
  %i.oy = sub nsw i64 %indvars.iv224.i, %i.np     ; 3 uses
  %i.oz = icmp slt i64 %i.oy, 1
  br i1 %i.oz, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.pa = icmp samesign ugt i64 %i.oy, 19
  br i1 %i.pa, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.pb = trunc nuw nsw i64 %i.oy to i32
  %i.pc = mul nsw i32 %i.pb, -53687092
end_hunk_0
