inline.NumInlined: 20
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@intrapred_luma8x8:bb.a
  store i16 %i.fj, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 12), align 4, !tbaa !51
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ex, i64 14
  %i.fl = load i16, ptr %i.fi, align 2, !tbaa !51
  store i16 %i.fl, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 14), align 2, !tbaa !51
  %i.fm = load i16, ptr %i.fk, align 2, !tbaa !51
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.fn = load ptr, ptr @img, align 8, !tbaa !8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 15512
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !75
  %i.fq = trunc i32 %i.fp to i16                  ; 5 uses
  store i16 %i.fq, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 14), align 2, !tbaa !51
  store i16 %i.fq, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 12), align 4, !tbaa !51
  store i16 %i.fq, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 10), align 2, !tbaa !51
  %i.fr = insertelement <4 x i16> poison, i16 %i.fq, i64 0
  %i.fs = shufflevector <4 x i16> %i.fr, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %i.fs, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 2), align 2, !tbaa !51
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ft = phi i16 [ %i.fm, %bb.y ], [ %i.fq, %bb.z ] ; 2 uses
  store i16 %i.ft, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 16), align 16, !tbaa !51
  %.not541 = icmp eq i32 %.0, 0
  br i1 %.not541, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !44
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !49
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !46
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [2 x i8], ptr %i.fy, i64 %i.gb ; 8 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.ge = load i16, ptr %i.gc, align 2, !tbaa !51
  store i16 %i.ge, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 18), align 2, !tbaa !51
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.gg = load i16, ptr %i.gd, align 2, !tbaa !51
  store i16 %i.gg, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 20), align 4, !tbaa !51
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 6
  %i.gi = load i16, ptr %i.gf, align 2, !tbaa !51
  store i16 %i.gi, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 22), align 2, !tbaa !51
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gk = load i16, ptr %i.gh, align 2, !tbaa !51
  store i16 %i.gk, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 24), align 8, !tbaa !51
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gc, i64 10
  %i.gm = load i16, ptr %i.gj, align 2, !tbaa !51
  store i16 %i.gm, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 26), align 2, !tbaa !51
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  %i.go = load i16, ptr %i.gl, align 2, !tbaa !51
  store i16 %i.go, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 28), align 4, !tbaa !51
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gc, i64 14
  %i.gq = load i16, ptr %i.gn, align 2, !tbaa !51
  store i16 %i.gq, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 30), align 2, !tbaa !51
  %i.gr = load i16, ptr %i.gp, align 2, !tbaa !51
  store i16 %i.gr, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 32), align 16, !tbaa !51
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.gs = insertelement <8 x i16> poison, i16 %i.ft, i64 0
  %i.gt = shufflevector <8 x i16> %i.gs, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %i.gt, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 18), align 2, !tbaa !51
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br i1 %i.em, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !44
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.gw
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !49
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ha = load i32, ptr %i.gz, align 16, !tbaa !46
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [2 x i8], ptr %i.gy, i64 %i.hb
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !51
  store i16 %i.hd, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 34), align 2, !tbaa !51
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !44
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.hg
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !49
  %i.hj = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !46
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [2 x i8], ptr %i.hi, i64 %i.hl
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !51
  store i16 %i.hn, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 36), align 4, !tbaa !51
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !44
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.hq
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !49
  %i.ht = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.hu = load i32, ptr %i.ht, align 16, !tbaa !46
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %i.hv
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !51
  store i16 %i.hx, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 38), align 2, !tbaa !51
  %i.hy = getelementptr inbounds nuw i8, ptr %5, i64 92
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !44
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ia
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !49
  %i.id = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !46
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [2 x i8], ptr %i.ic, i64 %i.if
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !51
  store i16 %i.ih, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 40), align 8, !tbaa !51
  %i.ii = getelementptr inbounds nuw i8, ptr %5, i64 116
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !44
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ik
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !49
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.io = load i32, ptr %i.in, align 16, !tbaa !46
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [2 x i8], ptr %i.im, i64 %i.ip
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !51
  store i16 %i.ir, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 42), align 2, !tbaa !51
  %i.is = getelementptr inbounds nuw i8, ptr %5, i64 140
  %i.it = load i32, ptr %i.is, align 4, !tbaa !44
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.iu
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !49
  %i.ix = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !46
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds [2 x i8], ptr %i.iw, i64 %i.iz
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !51
  store i16 %i.jb, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 44), align 4, !tbaa !51
  %i.jc = getelementptr inbounds nuw i8, ptr %5, i64 164
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !44
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.je
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !49
  %i.jh = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.ji = load i32, ptr %i.jh, align 16, !tbaa !46
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [2 x i8], ptr %i.jg, i64 %i.jj
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !51
  store i16 %i.jl, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 46), align 2, !tbaa !51
  %i.jm = getelementptr inbounds nuw i8, ptr %5, i64 188
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !44
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.jo
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !49
  %i.jr = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !46
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [2 x i8], ptr %i.jq, i64 %i.jt
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !51
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.jw = load ptr, ptr @img, align 8, !tbaa !8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 15512
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !75
  %i.jz = trunc i32 %i.jy to i16                  ; 5 uses
  store i16 %i.jz, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 46), align 2, !tbaa !51
  store i16 %i.jz, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 44), align 4, !tbaa !51
  store i16 %i.jz, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 42), align 2, !tbaa !51
  %i.ka = insertelement <4 x i16> poison, i16 %i.jz, i64 0
  %i.kb = shufflevector <4 x i16> %i.ka, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %i.kb, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 34), align 2, !tbaa !51
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sink560 = phi i16 [ %i.jv, %bb.ae ], [ %i.jz, %bb.af ]
  store i16 %.sink560, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 48), align 16, !tbaa !51
  br i1 %i.en, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.kc = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !44
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ke
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !49
  %i.kh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !46
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [2 x i8], ptr %i.kg, i64 %i.kj
  %i.kl = load i16, ptr %i.kk, align 2, !tbaa !51
  %.pre = load ptr, ptr @img, align 8, !tbaa !8
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.km = load ptr, ptr @img, align 8, !tbaa !8   ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 15512
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !75
  %i.kp = trunc i32 %i.ko to i16
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.kq = phi ptr [ %i.km, %bb.ai ], [ %.pre, %bb.ah ] ; 116 uses
  %storemerge = phi i16 [ %i.kp, %bb.ai ], [ %i.kl, %bb.ah ]
  store i16 %storemerge, ptr @intrapred_luma8x8.PredPel, align 16, !tbaa !51
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 7376 ; 3 uses
  store i16 -1, ptr %i.kr, align 8, !tbaa !51
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 7504
  store i16 -1, ptr %i.ks, align 8, !tbaa !51
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 7632
  store i16 -1, ptr %i.kt, align 8, !tbaa !51
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 7760
  store i16 -1, ptr %i.ku, align 8, !tbaa !51
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 7888
  store i16 -1, ptr %i.kv, align 8, !tbaa !51
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kq, i64 8016
  store i16 -1, ptr %i.kw, align 8, !tbaa !51
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kq, i64 8144
  store i16 -1, ptr %i.kx, align 8, !tbaa !51
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kq, i64 8272
  store i16 -1, ptr %i.ky, align 8, !tbaa !51
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kq, i64 8400
  store i16 -1, ptr %i.kz, align 8, !tbaa !51
  call void @LowPassForIntra8x8Pred(ptr noundef nonnull @intrapred_luma8x8.PredPel, i32 noundef %.0527, i32 noundef %.0529, i32 noundef %.1)
  br i1 %or.cond, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.la = load <24 x i16>, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 2), align 2, !tbaa !51
  %i.lb = shufflevector <24 x i16> %i.la, <24 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.lc = zext <16 x i16> %i.lb to <16 x i32>
  %i.ld = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.lc)
  %op.rdx = add nuw nsw i32 %i.ld, 8
  %i.le = lshr i32 %op.rdx, 4
  br label %.preheader

bb.al:                                            ; preds = %bb.aj
  %i.lf = icmp eq i32 %.0529, 0                   ; 2 uses
  %or.cond5 = select i1 %i.lf, i1 %i.em, i1 false
  br i1 %or.cond5, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.lg = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 34), align 2, !tbaa !51
  %i.lh = zext <8 x i16> %i.lg to <8 x i32>
  %i.li = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.lh)
  %op.rdx562 = add nuw nsw i32 %i.li, 4
  %i.lj = lshr i32 %op.rdx562, 3
  br label %.preheader

bb.an:                                            ; preds = %bb.al
  %or.cond7 = select i1 %i.lf, i1 true, i1 %i.em
  br i1 %or.cond7, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lk = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 2), align 2, !tbaa !51
  %i.ll = zext <8 x i16> %i.lk to <8 x i32>
  %i.lm = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ll)
  %op.rdx563 = add nuw nsw i32 %i.lm, 4
  %i.ln = lshr i32 %op.rdx563, 3
  br label %.preheader

bb.ap:                                            ; preds = %bb.an
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kq, i64 15512
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !75
  br label %.preheader

.preheader:                                       ; preds = %bb.am, %bb.ap, %bb.ao, %bb.ak
  %.0530 = phi i32 [ %i.le, %bb.ak ], [ %i.lj, %bb.am ], [ %i.lp, %bb.ap ], [ %i.ln, %bb.ao ]
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kq, i64 7632
  %i.lr = trunc i32 %.0530 to i16
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.kq, i64 7648
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.kq, i64 7664
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.kq, i64 7680
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.kq, i64 7696
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.kq, i64 7712
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.kq, i64 7728
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.kq, i64 7744
  %i.ls = insertelement <8 x i16> poison, i16 %i.lr, i64 0
  %i.lt = shufflevector <8 x i16> %i.ls, <8 x i16> poison, <8 x i32> zeroinitializer ; 8 uses
  store <8 x i16> %i.lt, ptr %i.lq, align 8, !tbaa !51
  store <8 x i16> %i.lt, ptr %gep.1, align 8, !tbaa !51
  store <8 x i16> %i.lt, ptr %gep.2, align 8, !tbaa !51
  store <8 x i16> %i.lt, ptr %gep.3, align 8, !tbaa !51
  store <8 x i16> %i.lt, ptr %gep.4, align 8, !tbaa !51
  store <8 x i16> %i.lt, ptr %gep.5, align 8, !tbaa !51
  store <8 x i16> %i.lt, ptr %gep.6, align 8, !tbaa !51
  store <8 x i16> %i.lt, ptr %gep.7, align 8, !tbaa !51
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kq, i64 7488
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kq, i64 7472
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kq, i64 7456
  %i.lx = getelementptr inbounds nuw i8, ptr %i.kq, i64 7440
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kq, i64 7424
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kq, i64 7408
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kq, i64 7392
  %i.mb = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 2), align 2, !tbaa !51 ; 8 uses
  store <8 x i16> %i.mb, ptr %i.lu, align 8, !tbaa !51
  store <8 x i16> %i.mb, ptr %i.lv, align 8, !tbaa !51
  store <8 x i16> %i.mb, ptr %i.lw, align 8, !tbaa !51
  store <8 x i16> %i.mb, ptr %i.lx, align 8, !tbaa !51
  store <8 x i16> %i.mb, ptr %i.ly, align 8, !tbaa !51
  store <8 x i16> %i.mb, ptr %i.lz, align 8, !tbaa !51
  store <8 x i16> %i.mb, ptr %i.ma, align 8, !tbaa !51
  store <8 x i16> %i.mb, ptr %i.kr, align 8, !tbaa !51
  br i1 %i.el, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.preheader
  store i16 -1, ptr %i.kr, align 8, !tbaa !51
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.preheader
  %i.mc = getelementptr inbounds nuw i8, ptr %i.kq, i64 7504 ; 2 uses
  %i.md = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 34), align 2
  %i.me = shufflevector <8 x i16> %i.md, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %i.me, ptr %i.mc, align 8, !tbaa !51
  %i.mf = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 36), align 4, !tbaa !51
  %i.mg = getelementptr inbounds nuw i8, ptr %i.kq, i64 7520
  %i.mh = insertelement <8 x i16> poison, i16 %i.mf, i64 0
  %i.mi = shufflevector <8 x i16> %i.mh, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %i.mi, ptr %i.mg, align 8, !tbaa !51
  %i.mj = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 38), align 2, !tbaa !51
  %i.mk = getelementptr inbounds nuw i8, ptr %i.kq, i64 7536
  %i.ml = insertelement <8 x i16> poison, i16 %i.mj, i64 0
  %i.mm = shufflevector <8 x i16> %i.ml, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %i.mm, ptr %i.mk, align 8, !tbaa !51
  %i.mn = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 40), align 8, !tbaa !51
  %i.mo = getelementptr inbounds nuw i8, ptr %i.kq, i64 7552
  %i.mp = insertelement <8 x i16> poison, i16 %i.mn, i64 0
  %i.mq = shufflevector <8 x i16> %i.mp, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %i.mq, ptr %i.mo, align 8, !tbaa !51
  %i.mr = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 42), align 2, !tbaa !51
  %i.ms = getelementptr inbounds nuw i8, ptr %i.kq, i64 7568
  %i.mt = insertelement <8 x i16> poison, i16 %i.mr, i64 0
  %i.mu = shufflevector <8 x i16> %i.mt, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %i.mu, ptr %i.ms, align 8, !tbaa !51
  %i.mv = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 44), align 4, !tbaa !51
  %i.mw = getelementptr inbounds nuw i8, ptr %i.kq, i64 7584
  %i.mx = insertelement <8 x i16> poison, i16 %i.mv, i64 0
  %i.my = shufflevector <8 x i16> %i.mx, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %i.my, ptr %i.mw, align 8, !tbaa !51
  %i.mz = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 46), align 2, !tbaa !51
  %i.na = getelementptr inbounds nuw i8, ptr %i.kq, i64 7600
  %i.nb = insertelement <8 x i16> poison, i16 %i.mz, i64 0
  %i.nc = shufflevector <8 x i16> %i.nb, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %i.nc, ptr %i.na, align 8, !tbaa !51
  %i.nd = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 48), align 16, !tbaa !51
  %i.ne = getelementptr inbounds nuw i8, ptr %i.kq, i64 7616
  %i.nf = insertelement <8 x i16> poison, i16 %i.nd, i64 0
  %i.ng = shufflevector <8 x i16> %i.nf, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %i.ng, ptr %i.ne, align 8, !tbaa !51
  br i1 %i.em, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i16 -1, ptr %i.mc, align 8, !tbaa !51
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  br i1 %i.el, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.nh = getelementptr inbounds nuw i8, ptr %i.kq, i64 7760
  %i.ni = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 2), align 2, !tbaa !51
  %i.nj = zext i16 %i.ni to i32                   ; 2 uses
  %i.nk = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 6), align 2, !tbaa !51
  %i.nl = zext i16 %i.nk to i32                   ; 3 uses
  %i.nm = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 4), align 4, !tbaa !51
  %i.nn = zext i16 %i.nm to i32                   ; 4 uses
  %i.no = shl nuw nsw i32 %i.nn, 1
  %i.np = add nuw nsw i32 %i.nl, 2                ; 2 uses
  %i.nq = add nuw nsw i32 %i.np, %i.nj
  %i.nr = add nuw nsw i32 %i.nq, %i.no
  %i.ns = lshr i32 %i.nr, 2
  %i.nt = trunc nuw i32 %i.ns to i16              ; 2 uses
  store i16 %i.nt, ptr %i.nh, align 8, !tbaa !51
  %i.nu = shl nuw nsw i32 %i.nl, 1
  %i.nv = getelementptr inbounds nuw i8, ptr %i.kq, i64 7776
  %i.nw = getelementptr inbounds nuw i8, ptr %i.kq, i64 7762
  %i.nx = getelementptr inbounds nuw i8, ptr %i.kq, i64 7778
  %i.ny = getelementptr inbounds nuw i8, ptr %i.kq, i64 7764
  %i.nz = getelementptr inbounds nuw i8, ptr %i.kq, i64 7780
  %i.oa = getelementptr inbounds nuw i8, ptr %i.kq, i64 7766
  %i.ob = getelementptr inbounds nuw i8, ptr %i.kq, i64 7824
  %i.oc = getelementptr inbounds nuw i8, ptr %i.kq, i64 7768
  %i.od = getelementptr inbounds nuw i8, ptr %i.kq, i64 7840
  %i.oe = getelementptr inbounds nuw i8, ptr %i.kq, i64 7826
  %i.of = getelementptr inbounds nuw i8, ptr %i.kq, i64 7812
  %i.og = getelementptr inbounds nuw i8, ptr %i.kq, i64 7770
  %i.oh = getelementptr inbounds nuw i8, ptr %i.kq, i64 7856
  %i.oi = getelementptr inbounds nuw i8, ptr %i.kq, i64 7842
  %i.oj = getelementptr inbounds nuw i8, ptr %i.kq, i64 7828
  %i.ok = getelementptr inbounds nuw i8, ptr %i.kq, i64 7814
  %i.ol = getelementptr inbounds nuw i8, ptr %i.kq, i64 7772
  %i.om = getelementptr inbounds nuw i8, ptr %i.kq, i64 7872
  %i.on = getelementptr inbounds nuw i8, ptr %i.kq, i64 7844
  %i.oo = getelementptr inbounds nuw i8, ptr %i.kq, i64 7830
  %i.op = getelementptr inbounds nuw i8, ptr %i.kq, i64 7816
  %i.oq = getelementptr inbounds nuw i8, ptr %i.kq, i64 7774
  %i.or = getelementptr inbounds nuw i8, ptr %i.kq, i64 7874
  %i.os = getelementptr inbounds nuw i8, ptr %i.kq, i64 7846
  %i.ot = getelementptr inbounds nuw i8, ptr %i.kq, i64 7832
  %9 = getelementptr inbounds nuw i8, ptr %i.kq, i64 7818
  %i.ou = getelementptr inbounds nuw i8, ptr %i.kq, i64 7876
  %i.ov = getelementptr inbounds nuw i8, ptr %i.kq, i64 7848
  %i.ow = getelementptr inbounds nuw i8, ptr %i.kq, i64 7834
  %10 = getelementptr inbounds nuw i8, ptr %i.kq, i64 7820
  %11 = getelementptr inbounds nuw i8, ptr %i.kq, i64 7878
  %i.ox = getelementptr inbounds nuw i8, ptr %i.kq, i64 7836
  %i.oy = getelementptr inbounds nuw i8, ptr %i.kq, i64 7822
  %12 = getelementptr inbounds nuw i8, ptr %i.kq, i64 7882
  %13 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 14), align 2, !tbaa !51
  %i.oz = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 16), align 16, !tbaa !51
  %i.pa = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 32), align 16, !tbaa !51
  %i.pb = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 18), align 2, !tbaa !51
  %i.pc = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 30), align 2, !tbaa !51
  %i.pd = zext <8 x i16> %13 to <8 x i32>         ; 3 uses
  %i.pe = zext <8 x i16> %i.oz to <8 x i32>
  %i.pf = zext i16 %i.pa to i32
  %i.pg = zext <8 x i16> %i.pb to <8 x i32>
  %i.ph = zext i16 %i.pc to i32
  %i.pi = add nuw nsw <8 x i32> %i.pd, splat (i32 2) ; 5 uses
  %i.pj = shl nuw nsw <8 x i32> %i.pe, splat (i32 1) ; 3 uses
  %i.pk = add nuw nsw <8 x i32> %i.pi, %i.pj
  %i.pl = add nuw nsw <8 x i32> %i.pk, %i.pg
  %i.pm = lshr <8 x i32> %i.pl, splat (i32 2)     ; 2 uses
  %i.pn = trunc <8 x i32> %i.pm to <8 x i16>      ; 9 uses
  %i.po = extractelement <8 x i16> %i.pn, i64 0   ; 4 uses
  store i16 %i.po, ptr %i.oi, align 2, !tbaa !51
  store i16 %i.po, ptr %i.oj, align 4, !tbaa !51
  store i16 %i.po, ptr %i.ok, align 2, !tbaa !51
  store i16 %i.po, ptr %i.ol, align 4, !tbaa !51
  %i.pp = extractelement <8 x i16> %i.pn, i64 1   ; 5 uses
  store i16 %i.pp, ptr %i.om, align 8, !tbaa !51
  store i16 %i.pp, ptr %i.on, align 4, !tbaa !51
  store i16 %i.pp, ptr %i.oo, align 2, !tbaa !51
  store i16 %i.pp, ptr %i.op, align 8, !tbaa !51
  store i16 %i.pp, ptr %i.oq, align 2, !tbaa !51
  %i.pq = extractelement <8 x i16> %i.pn, i64 2   ; 4 uses
  store i16 %i.pq, ptr %i.or, align 2, !tbaa !51
  store i16 %i.pq, ptr %i.os, align 2, !tbaa !51
  store i16 %i.pq, ptr %i.ot, align 8, !tbaa !51
  store i16 %i.pq, ptr %9, align 2, !tbaa !51
  %i.pr = extractelement <8 x i16> %i.pn, i64 3   ; 5 uses
  store i16 %i.pr, ptr %i.ou, align 4, !tbaa !51
  store i16 %i.pr, ptr %i.ow, align 2, !tbaa !51
  store i16 %i.pr, ptr %10, align 4, !tbaa !51
  %14 = extractelement <8 x i16> %i.pn, i64 4     ; 2 uses
  store i16 %14, ptr %i.oy, align 2, !tbaa !51
  %i.ps = shufflevector <8 x i32> %i.pm, <8 x i32> poison, <2 x i32> <i32 4, i32 5>
  %i.pt = trunc <2 x i32> %i.ps to <2 x i16>      ; 2 uses
  store <2 x i16> %i.pt, ptr %11, align 2, !tbaa !51
  store <2 x i16> %i.pt, ptr %i.ox, align 4, !tbaa !51
  %i.pu = shufflevector <8 x i16> %i.pn, <8 x i16> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  store <4 x i16> %i.pu, ptr %i.ov, align 8, !tbaa !51
  %i.pv = shufflevector <8 x i16> %i.pn, <8 x i16> poison, <2 x i32> <i32 6, i32 7>
  store <2 x i16> %i.pv, ptr %12, align 2, !tbaa !51
  store <8 x i16> %i.pn, ptr %i.oh, align 8, !tbaa !51
  %i.pw = mul nuw nsw i32 %i.pf, 3
  %i.px = add nuw nsw i32 %i.ph, 2
  %i.py = add nuw nsw i32 %i.px, %i.pw
  %i.pz = lshr i32 %i.py, 2
  %i.qa = trunc nuw i32 %i.pz to i16
  %i.qb = getelementptr inbounds nuw i8, ptr %i.kq, i64 7886
  store i16 %i.qa, ptr %i.qb, align 2, !tbaa !51
  %i.qc = getelementptr inbounds nuw i8, ptr %i.kq, i64 8272
  %i.qd = add nuw nsw i32 %i.nn, 1
  %i.qe = add nuw nsw i32 %i.qd, %i.nj
  %i.qf = lshr i32 %i.qe, 1
  %i.qg = trunc nuw i32 %i.qf to i16
  store i16 %i.qg, ptr %i.qc, align 8, !tbaa !51
  %i.qh = add nuw nsw i32 %i.nl, 1                ; 2 uses
  %i.qi = add nuw nsw i32 %i.qh, %i.nn
  %i.qj = lshr i32 %i.qi, 1
  %i.qk = trunc nuw i32 %i.qj to i16              ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.kq, i64 8304
  store i16 %i.qk, ptr %i.ql, align 8, !tbaa !51
  %i.qm = getelementptr inbounds nuw i8, ptr %i.kq, i64 8274
  store i16 %i.qk, ptr %i.qm, align 2, !tbaa !51
  %i.qn = getelementptr inbounds nuw i8, ptr %i.kq, i64 8336
  %i.qo = getelementptr inbounds nuw i8, ptr %i.kq, i64 8306
  %i.qp = getelementptr inbounds nuw i8, ptr %i.kq, i64 8276
  %i.qq = getelementptr inbounds nuw i8, ptr %i.kq, i64 8368
  %i.qr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8338
  %i.qs = getelementptr inbounds nuw i8, ptr %i.kq, i64 8308
  %i.qt = getelementptr inbounds nuw i8, ptr %i.kq, i64 8278
  %i.qu = getelementptr inbounds nuw i8, ptr %i.kq, i64 8312
  %i.qv = getelementptr inbounds nuw i8, ptr %i.kq, i64 8282
  %i.qw = getelementptr inbounds nuw i8, ptr %i.kq, i64 8346
  %i.qx = getelementptr inbounds nuw i8, ptr %i.kq, i64 8286
  %i.qy = getelementptr inbounds nuw i8, ptr %i.kq, i64 8350
  %15 = load <5 x i16>, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 8), align 8, !tbaa !51
  %16 = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 8), align 8, !tbaa !51
  %17 = zext <5 x i16> %15 to <5 x i32>           ; 6 uses
  %18 = shufflevector <5 x i32> %17, <5 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 poison, i32 poison, i32 poison, i32 poison>
  %19 = shufflevector <8 x i32> %i.pd, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison, i32 poison, i32 poison>
  %20 = shufflevector <8 x i32> %18, <8 x i32> %19, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %21 = zext i16 %16 to i32                       ; 4 uses
  %22 = shufflevector <5 x i32> %17, <5 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 poison, i32 poison, i32 poison>
  %23 = shufflevector <8 x i32> %i.pd, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %24 = shufflevector <8 x i32> %22, <8 x i32> %23, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 10>
  %i.qz = add nuw nsw i32 %21, 2
  %i.ra = add nuw nsw i32 %i.qz, %i.nn
  %i.rb = add nuw nsw i32 %i.ra, %i.nu
  %i.rc = lshr i32 %i.rb, 2
  %i.rd = trunc nuw i32 %i.rc to i16              ; 4 uses
  store i16 %i.rd, ptr %i.nv, align 8, !tbaa !51
  store i16 %i.rd, ptr %i.nw, align 2, !tbaa !51
  %i.re = shl nuw nsw i32 %21, 1
  %i.rf = add nuw nsw i32 %i.np, %i.re
  %i.rg = extractelement <5 x i32> %17, i64 1     ; 3 uses
  %i.rh = add nuw nsw i32 %i.rf, %i.rg
  %i.ri = lshr i32 %i.rh, 2
  %i.rj = trunc i32 %i.ri to i16                  ; 6 uses
  store i16 %i.rj, ptr %i.nx, align 2, !tbaa !51
  store i16 %i.rj, ptr %i.ny, align 4, !tbaa !51
  %i.rk = shl nuw nsw i32 %i.rg, 1                ; 2 uses
  %i.rl = extractelement <5 x i32> %17, i64 2     ; 2 uses
  %i.rm = add nuw nsw i32 %i.rl, 2                ; 3 uses
  %i.rn = add nuw nsw i32 %i.rm, %21
  %i.ro = add nuw nsw i32 %i.rn, %i.rk
  %i.rp = lshr i32 %i.ro, 2
  %25 = trunc i32 %i.rp to i16                    ; 2 uses
  store i16 %25, ptr %i.oa, align 2, !tbaa !51
  %26 = shl nuw nsw i32 %i.rl, 1
  %i.rq = extractelement <5 x i32> %17, i64 3     ; 2 uses
  %i.rr = add nuw nsw i32 %i.rq, 2                ; 2 uses
  %i.rs = add nuw nsw i32 %i.rr, %i.rg
  %i.rt = add nuw nsw i32 %i.rs, %26
  %i.ru = lshr i32 %i.rt, 2
  %27 = trunc i32 %i.ru to i16                    ; 3 uses
  store i16 %27, ptr %i.ob, align 8, !tbaa !51
  store i16 %27, ptr %i.oc, align 8, !tbaa !51
  %28 = shl nuw nsw i32 %i.rq, 1
  %29 = add nuw nsw i32 %i.rm, %28
  %30 = extractelement <5 x i32> %17, i64 4       ; 2 uses
  %31 = add nuw nsw i32 %29, %30
  %32 = lshr i32 %31, 2
  %i.rv = trunc i32 %32 to i16                    ; 5 uses
  store i16 %i.rv, ptr %i.od, align 8, !tbaa !51
  store i16 %i.rv, ptr %i.oe, align 2, !tbaa !51
  store i16 %i.rv, ptr %i.of, align 4, !tbaa !51
  %33 = shufflevector <8 x i16> %i.pn, <8 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 poison, i32 3>
  %i.rw = insertelement <8 x i16> %33, i16 %25, i64 0
  %i.rx = insertelement <8 x i16> %i.rw, i16 %27, i64 1
  %i.ry = insertelement <8 x i16> %i.rx, i16 %i.rv, i64 2
  %34 = insertelement <8 x i16> %i.ry, i16 %i.rj, i64 6
  %35 = shufflevector <8 x i16> %34, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 0, i32 1>
  store <16 x i16> %35, ptr %i.nz, align 4, !tbaa !51
  store i16 %i.rv, ptr %i.og, align 2, !tbaa !51
  %i.rz = shl nuw nsw i32 %30, 1
  %i.sa = add nuw nsw i32 %i.qh, %21
  %i.sb = lshr i32 %i.sa, 1
  %i.sc = trunc nuw i32 %i.sb to i16              ; 3 uses
  store i16 %i.sc, ptr %i.qn, align 8, !tbaa !51
  store i16 %i.sc, ptr %i.qo, align 2, !tbaa !51
  store i16 %i.sc, ptr %i.qp, align 4, !tbaa !51
  %i.sd = add nuw nsw <8 x i32> %24, splat (i32 1)
  %i.se = add nuw nsw <8 x i32> %i.sd, %20
  %i.sf = lshr <8 x i32> %i.se, splat (i32 1)     ; 2 uses
  %i.sg = trunc <8 x i32> %i.sf to <8 x i16>      ; 7 uses
  %i.sh = shufflevector <8 x i16> %i.sg, <8 x i16> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  store <2 x i16> %i.sh, ptr %i.qs, align 4, !tbaa !51
  store <2 x i16> %i.sh, ptr %i.qt, align 2, !tbaa !51
  %i.si = shufflevector <8 x i16> %i.sg, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i16> %i.si, ptr %i.qr, align 2, !tbaa !51
  %i.sj = shufflevector <8 x i16> %i.sg, <8 x i16> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i16> %i.sj, ptr %i.qv, align 2, !tbaa !51
  %i.sk = extractelement <8 x i16> %i.sg, i64 4
  store i16 %i.sk, ptr %i.qx, align 2, !tbaa !51
  %i.sl = shufflevector <8 x i32> %i.sf, <8 x i32> poison, <2 x i32> <i32 4, i32 5>
  %i.sm = trunc <2 x i32> %i.sl to <2 x i16>
  store <2 x i16> %i.sm, ptr %i.qw, align 2, !tbaa !51
  %i.sn = shufflevector <8 x i16> %i.sg, <8 x i16> poison, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  store <4 x i16> %i.sn, ptr %i.qu, align 8, !tbaa !51
  %i.so = extractelement <8 x i16> %i.sg, i64 6
  store i16 %i.so, ptr %i.qy, align 2, !tbaa !51
  store <8 x i16> %i.sg, ptr %i.qq, align 8, !tbaa !51
  %i.sp = getelementptr inbounds nuw i8, ptr %i.kq, i64 8288
  store i16 %i.nt, ptr %i.sp, align 8, !tbaa !51
  %i.sq = getelementptr inbounds nuw i8, ptr %i.kq, i64 8320
  store i16 %i.rd, ptr %i.sq, align 8, !tbaa !51
  %i.sr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8290
  store i16 %i.rd, ptr %i.sr, align 2, !tbaa !51
  %i.ss = getelementptr inbounds nuw i8, ptr %i.kq, i64 8352
  store i16 %i.rj, ptr %i.ss, align 8, !tbaa !51
  %i.st = getelementptr inbounds nuw i8, ptr %i.kq, i64 8322
  store i16 %i.rj, ptr %i.st, align 2, !tbaa !51
  %i.su = getelementptr inbounds nuw i8, ptr %i.kq, i64 8292
  store i16 %i.rj, ptr %i.su, align 4, !tbaa !51
  %i.sv = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 8), align 8, !tbaa !51
  %i.sw = zext i16 %i.sv to i32
  %i.sx = add nuw nsw i32 %i.rm, %i.rk
  %i.sy = add nuw nsw i32 %i.sx, %i.sw
  %i.sz = lshr i32 %i.sy, 2
  %i.ta = trunc nuw i32 %i.sz to i16              ; 4 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.kq, i64 8384
  store i16 %i.ta, ptr %i.tb, align 8, !tbaa !51
  %i.tc = getelementptr inbounds nuw i8, ptr %i.kq, i64 8354
  store i16 %i.ta, ptr %i.tc, align 2, !tbaa !51
  %i.td = getelementptr inbounds nuw i8, ptr %i.kq, i64 8324
  store i16 %i.ta, ptr %i.td, align 4, !tbaa !51
  %i.te = getelementptr inbounds nuw i8, ptr %i.kq, i64 8294
  store i16 %i.ta, ptr %i.te, align 2, !tbaa !51
  %i.tf = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 10), align 2, !tbaa !51
  %i.tg = zext i16 %i.tf to i32
  %i.th = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 12), align 4, !tbaa !51
  %i.ti = zext i16 %i.th to i32                   ; 2 uses
  %i.tj = shl nuw nsw i32 %i.ti, 1
  %i.tk = add nuw nsw i32 %i.rr, %i.tg
  %i.tl = add nuw nsw i32 %i.tk, %i.tj
  %i.tm = lshr i32 %i.tl, 2
  %i.tn = trunc nuw i32 %i.tm to i16              ; 4 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.kq, i64 8386
  store i16 %i.tn, ptr %i.to, align 2, !tbaa !51
  %i.tp = getelementptr inbounds nuw i8, ptr %i.kq, i64 8356
  store i16 %i.tn, ptr %i.tp, align 4, !tbaa !51
  %i.tq = getelementptr inbounds nuw i8, ptr %i.kq, i64 8326
  store i16 %i.tn, ptr %i.tq, align 2, !tbaa !51
  %i.tr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8296
  store i16 %i.tn, ptr %i.tr, align 8, !tbaa !51
  %i.ts = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 14), align 2, !tbaa !51
  %i.tt = zext i16 %i.ts to i32                   ; 2 uses
  %i.tu = shl nuw nsw i32 %i.tt, 1
  %i.tv = extractelement <8 x i32> %i.pi, i64 1
  %i.tw = add nuw nsw i32 %i.tv, %i.ti
  %i.tx = add nuw nsw i32 %i.tw, %i.tu
  %i.ty = lshr i32 %i.tx, 2
  %i.tz = trunc nuw i32 %i.ty to i16              ; 4 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.kq, i64 8388
  store i16 %i.tz, ptr %i.ua, align 4, !tbaa !51
  %i.ub = getelementptr inbounds nuw i8, ptr %i.kq, i64 8358
  store i16 %i.tz, ptr %i.ub, align 2, !tbaa !51
  %i.uc = getelementptr inbounds nuw i8, ptr %i.kq, i64 8328
  store i16 %i.tz, ptr %i.uc, align 8, !tbaa !51
  %i.ud = getelementptr inbounds nuw i8, ptr %i.kq, i64 8298
  store i16 %i.tz, ptr %i.ud, align 2, !tbaa !51
  %i.ue = extractelement <8 x i32> %i.pi, i64 2
  %i.uf = add nuw nsw i32 %i.ue, %i.rz
  %i.ug = add nuw nsw i32 %i.uf, %i.tt
  %i.uh = lshr i32 %i.ug, 2
  %i.ui = trunc nuw i32 %i.uh to i16              ; 4 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.kq, i64 8390
  store i16 %i.ui, ptr %i.uj, align 2, !tbaa !51
  %i.uk = getelementptr inbounds nuw i8, ptr %i.kq, i64 8360
  store i16 %i.ui, ptr %i.uk, align 8, !tbaa !51
  %i.ul = getelementptr inbounds nuw i8, ptr %i.kq, i64 8330
  store i16 %i.ui, ptr %i.ul, align 2, !tbaa !51
  %i.um = getelementptr inbounds nuw i8, ptr %i.kq, i64 8300
  store i16 %i.ui, ptr %i.um, align 4, !tbaa !51
  %i.un = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 16), align 16, !tbaa !51
  %i.uo = zext i16 %i.un to i32
  %shift = shufflevector <8 x i32> %i.pi, <8 x i32> poison, <8 x i32> <i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nuw nsw <8 x i32> %shift, %i.pj
  %i.up = extractelement <8 x i32> %foldExtExtBinop, i64 1
  %i.uq = add nuw nsw i32 %i.up, %i.uo
  %i.ur = lshr i32 %i.uq, 2
  %i.us = trunc nuw i32 %i.ur to i16              ; 4 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.kq, i64 8392
  store i16 %i.us, ptr %i.ut, align 8, !tbaa !51
  %i.uu = getelementptr inbounds nuw i8, ptr %i.kq, i64 8362
  store i16 %i.us, ptr %i.uu, align 2, !tbaa !51
  %i.uv = getelementptr inbounds nuw i8, ptr %i.kq, i64 8332
  store i16 %i.us, ptr %i.uv, align 4, !tbaa !51
  %i.uw = getelementptr inbounds nuw i8, ptr %i.kq, i64 8302
  store i16 %i.us, ptr %i.uw, align 2, !tbaa !51
  %i.ux = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 18), align 2, !tbaa !51
  %i.uy = zext i16 %i.ux to i32
  %shift565 = shufflevector <8 x i32> %i.pj, <8 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop566 = add nuw nsw <8 x i32> %i.pi, %shift565
  %i.uz = extractelement <8 x i32> %foldExtExtBinop566, i64 4
  %i.va = add nuw nsw i32 %i.uz, %i.uy
  %i.vb = lshr i32 %i.va, 2
  %i.vc = trunc nuw i32 %i.vb to i16              ; 3 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.kq, i64 8394
  store i16 %i.vc, ptr %i.vd, align 2, !tbaa !51
  %i.ve = getelementptr inbounds nuw i8, ptr %i.kq, i64 8364
  store i16 %i.vc, ptr %i.ve, align 4, !tbaa !51
  %i.vf = getelementptr inbounds nuw i8, ptr %i.kq, i64 8334
  store i16 %i.vc, ptr %i.vf, align 2, !tbaa !51
  %i.vg = getelementptr inbounds nuw i8, ptr %i.kq, i64 8396
  store i16 %i.pr, ptr %i.vg, align 4, !tbaa !51
  %i.vh = getelementptr inbounds nuw i8, ptr %i.kq, i64 8366
  store i16 %i.pr, ptr %i.vh, align 2, !tbaa !51
  %i.vi = getelementptr inbounds nuw i8, ptr %i.kq, i64 8398
  store i16 %14, ptr %i.vi, align 2, !tbaa !51
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %or.cond11 = and i1 %or.cond, %i.en
  br i1 %or.cond11, label %.thread, label %bb.aw

.thread:                                          ; preds = %bb.av
  %i.vj = load ptr, ptr @img, align 8, !tbaa !8   ; 128 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 7888
  %i.vl = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 48), align 16, !tbaa !51
  %i.vm = zext i16 %i.vl to i32
  %i.vn = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 44), align 4, !tbaa !51
  %i.vo = zext i16 %i.vn to i32                   ; 2 uses
  %i.vp = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 46), align 2, !tbaa !51
  %i.vq = zext i16 %i.vp to i32                   ; 2 uses
  %i.vr = shl nuw nsw i32 %i.vq, 1
  %i.vs = add nuw nsw i32 %i.vo, 2                ; 2 uses
  %i.vt = add nuw nsw i32 %i.vs, %i.vm
  %i.vu = add nuw nsw i32 %i.vt, %i.vr
  %i.vv = lshr i32 %i.vu, 2
  %i.vw = trunc nuw i32 %i.vv to i16
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vj, i64 8000
  store i16 %i.vw, ptr %i.vx, align 2, !tbaa !51
  %i.vy = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 42), align 2, !tbaa !51
  %i.vz = zext i16 %i.vy to i32                   ; 2 uses
  %i.wa = shl nuw nsw i32 %i.vo, 1
  %i.wb = add nuw nsw i32 %i.vz, 2                ; 2 uses
  %i.wc = add nuw nsw i32 %i.wb, %i.vq
  %i.wd = add nuw nsw i32 %i.wc, %i.wa
  %i.we = lshr i32 %i.wd, 2
  %i.wf = trunc nuw i32 %i.we to i16              ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vj, i64 8002
  store i16 %i.wf, ptr %i.wg, align 2, !tbaa !51
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vj, i64 7984
  store i16 %i.wf, ptr %i.wh, align 2, !tbaa !51
  %i.wi = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 40), align 8, !tbaa !51
  %i.wj = zext i16 %i.wi to i32                   ; 3 uses
  %i.wk = shl nuw nsw i32 %i.vz, 1
  %i.wl = add nuw nsw i32 %i.vs, %i.wk
  %i.wm = add nuw nsw i32 %i.wl, %i.wj
  %i.wn = lshr i32 %i.wm, 2
  %i.wo = trunc nuw i32 %i.wn to i16              ; 3 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.vj, i64 8004
  store i16 %i.wo, ptr %i.wp, align 2, !tbaa !51
  %i.wq = getelementptr inbounds nuw i8, ptr %i.vj, i64 7986
  store i16 %i.wo, ptr %i.wq, align 2, !tbaa !51
  %i.wr = getelementptr inbounds nuw i8, ptr %i.vj, i64 7968
  store i16 %i.wo, ptr %i.wr, align 2, !tbaa !51
  %i.ws = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 38), align 2, !tbaa !51
  %i.wt = zext i16 %i.ws to i32                   ; 3 uses
  %i.wu = shl nuw nsw i32 %i.wj, 1
  %i.wv = add nuw nsw i32 %i.wb, %i.wu
  %i.ww = add nuw nsw i32 %i.wv, %i.wt
  %i.wx = lshr i32 %i.ww, 2
  %i.wy = trunc nuw i32 %i.wx to i16              ; 4 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.vj, i64 8006
  store i16 %i.wy, ptr %i.wz, align 2, !tbaa !51
  %i.xa = getelementptr inbounds nuw i8, ptr %i.vj, i64 7988
  store i16 %i.wy, ptr %i.xa, align 2, !tbaa !51
  %i.xb = getelementptr inbounds nuw i8, ptr %i.vj, i64 7970
  store i16 %i.wy, ptr %i.xb, align 2, !tbaa !51
  %i.xc = getelementptr inbounds nuw i8, ptr %i.vj, i64 7952
  store i16 %i.wy, ptr %i.xc, align 2, !tbaa !51
  %i.xd = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 36), align 4, !tbaa !51
  %i.xe = zext i16 %i.xd to i32                   ; 3 uses
  %i.xf = shl nuw nsw i32 %i.wt, 1
  %i.xg = add nuw nsw i32 %i.wj, 2
  %i.xh = add nuw nsw i32 %i.xg, %i.xf
  %i.xi = add nuw nsw i32 %i.xh, %i.xe
  %i.xj = lshr i32 %i.xi, 2
  %i.xk = trunc nuw i32 %i.xj to i16              ; 5 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.vj, i64 8008
  store i16 %i.xk, ptr %i.xl, align 2, !tbaa !51
  %i.xm = getelementptr inbounds nuw i8, ptr %i.vj, i64 7990
  store i16 %i.xk, ptr %i.xm, align 2, !tbaa !51
  %i.xn = getelementptr inbounds nuw i8, ptr %i.vj, i64 7972
  store i16 %i.xk, ptr %i.xn, align 2, !tbaa !51
  %i.xo = getelementptr inbounds nuw i8, ptr %i.vj, i64 7954
  store i16 %i.xk, ptr %i.xo, align 2, !tbaa !51
  %i.xp = getelementptr inbounds nuw i8, ptr %i.vj, i64 7936
  store i16 %i.xk, ptr %i.xp, align 2, !tbaa !51
  %i.xq = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 34), align 2, !tbaa !51
  %i.xr = zext i16 %i.xq to i32                   ; 3 uses
  %i.xs = shl nuw nsw i32 %i.xe, 1
  %i.xt = add nuw nsw i32 %i.wt, 2
  %i.xu = add nuw nsw i32 %i.xt, %i.xs
  %i.xv = add nuw nsw i32 %i.xu, %i.xr
  %i.xw = lshr i32 %i.xv, 2
  %i.xx = trunc nuw i32 %i.xw to i16              ; 6 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.vj, i64 8010
  store i16 %i.xx, ptr %i.xy, align 2, !tbaa !51
  %i.xz = getelementptr inbounds nuw i8, ptr %i.vj, i64 7992
  store i16 %i.xx, ptr %i.xz, align 2, !tbaa !51
  %i.ya = getelementptr inbounds nuw i8, ptr %i.vj, i64 7974
  store i16 %i.xx, ptr %i.ya, align 2, !tbaa !51
  %i.yb = getelementptr inbounds nuw i8, ptr %i.vj, i64 7956
  store i16 %i.xx, ptr %i.yb, align 2, !tbaa !51
  %i.yc = getelementptr inbounds nuw i8, ptr %i.vj, i64 7938
  store i16 %i.xx, ptr %i.yc, align 2, !tbaa !51
  %i.yd = getelementptr inbounds nuw i8, ptr %i.vj, i64 7920
  store i16 %i.xx, ptr %i.yd, align 2, !tbaa !51
  %i.ye = load i16, ptr @intrapred_luma8x8.PredPel, align 16, !tbaa !51
  %i.yf = zext i16 %i.ye to i32                   ; 3 uses
  %i.yg = shl nuw nsw i32 %i.xr, 1
  %i.yh = add nuw nsw i32 %i.yf, 2                ; 3 uses
  %i.yi = add nuw nsw i32 %i.yh, %i.xe
  %i.yj = add nuw nsw i32 %i.yi, %i.yg
  %i.yk = lshr i32 %i.yj, 2
  %i.yl = trunc nuw i32 %i.yk to i16              ; 7 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.vj, i64 8012
  store i16 %i.yl, ptr %i.ym, align 2, !tbaa !51
  %i.yn = getelementptr inbounds nuw i8, ptr %i.vj, i64 7994
  store i16 %i.yl, ptr %i.yn, align 2, !tbaa !51
  %i.yo = getelementptr inbounds nuw i8, ptr %i.vj, i64 7976
  store i16 %i.yl, ptr %i.yo, align 2, !tbaa !51
  %i.yp = getelementptr inbounds nuw i8, ptr %i.vj, i64 7958
  store i16 %i.yl, ptr %i.yp, align 2, !tbaa !51
  %i.yq = getelementptr inbounds nuw i8, ptr %i.vj, i64 7940
  store i16 %i.yl, ptr %i.yq, align 2, !tbaa !51
  %i.yr = getelementptr inbounds nuw i8, ptr %i.vj, i64 7922
  store i16 %i.yl, ptr %i.yr, align 2, !tbaa !51
  %i.ys = getelementptr inbounds nuw i8, ptr %i.vj, i64 7904
  store i16 %i.yl, ptr %i.ys, align 2, !tbaa !51
  %i.yt = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 2), align 2, !tbaa !51
  %i.yu = zext i16 %i.yt to i32                   ; 4 uses
  %i.yv = shl nuw nsw i32 %i.yf, 1
  %i.yw = add nuw nsw i32 %i.xr, 2
  %i.yx = add nuw nsw i32 %i.yw, %i.yv
  %i.yy = add nuw nsw i32 %i.yx, %i.yu
  %i.yz = lshr i32 %i.yy, 2
  %i.za = trunc nuw i32 %i.yz to i16              ; 12 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.vj, i64 8014
  store i16 %i.za, ptr %i.zb, align 2, !tbaa !51
  %i.zc = getelementptr inbounds nuw i8, ptr %i.vj, i64 7996
  store i16 %i.za, ptr %i.zc, align 2, !tbaa !51
  %i.zd = getelementptr inbounds nuw i8, ptr %i.vj, i64 7978
  store i16 %i.za, ptr %i.zd, align 2, !tbaa !51
  %i.ze = getelementptr inbounds nuw i8, ptr %i.vj, i64 7960
  store i16 %i.za, ptr %i.ze, align 2, !tbaa !51
  %i.zf = getelementptr inbounds nuw i8, ptr %i.vj, i64 7942
  store i16 %i.za, ptr %i.zf, align 2, !tbaa !51
  %i.zg = getelementptr inbounds nuw i8, ptr %i.vj, i64 7924
  store i16 %i.za, ptr %i.zg, align 2, !tbaa !51
  %i.zh = getelementptr inbounds nuw i8, ptr %i.vj, i64 7906
  store i16 %i.za, ptr %i.zh, align 2, !tbaa !51
  store i16 %i.za, ptr %i.vk, align 2, !tbaa !51
  %i.zi = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 4), align 4, !tbaa !51
  %i.zj = zext i16 %i.zi to i32                   ; 5 uses
  %i.zk = shl nuw nsw i32 %i.yu, 1
  %i.zl = add nuw nsw i32 %i.yh, %i.zk
  %i.zm = add nuw nsw i32 %i.zl, %i.zj
  %i.zn = lshr i32 %i.zm, 2
  %i.zo = trunc nuw i32 %i.zn to i16              ; 11 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.vj, i64 7998
  store i16 %i.zo, ptr %i.zp, align 2, !tbaa !51
  %i.zq = getelementptr inbounds nuw i8, ptr %i.vj, i64 7980
  store i16 %i.zo, ptr %i.zq, align 2, !tbaa !51
  %i.zr = getelementptr inbounds nuw i8, ptr %i.vj, i64 7962
  store i16 %i.zo, ptr %i.zr, align 2, !tbaa !51
  %i.zs = getelementptr inbounds nuw i8, ptr %i.vj, i64 7944
  store i16 %i.zo, ptr %i.zs, align 2, !tbaa !51
  %i.zt = getelementptr inbounds nuw i8, ptr %i.vj, i64 7926
  store i16 %i.zo, ptr %i.zt, align 2, !tbaa !51
  %i.zu = getelementptr inbounds nuw i8, ptr %i.vj, i64 7908
  store i16 %i.zo, ptr %i.zu, align 2, !tbaa !51
  %i.zv = getelementptr inbounds nuw i8, ptr %i.vj, i64 7890
  store i16 %i.zo, ptr %i.zv, align 2, !tbaa !51
  %i.zw = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 6), align 2, !tbaa !51
  %i.zx = zext i16 %i.zw to i32                   ; 5 uses
  %i.zy = shl nuw nsw i32 %i.zj, 1
  %i.zz = add nuw nsw i32 %i.yu, 2
  %i.aaa = add nuw nsw i32 %i.zz, %i.zy
  %i.aab = add nuw nsw i32 %i.aaa, %i.zx
  %i.aac = lshr i32 %i.aab, 2
  %i.aad = trunc nuw i32 %i.aac to i16            ; 10 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.vj, i64 7982
  store i16 %i.aad, ptr %i.aae, align 2, !tbaa !51
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.vj, i64 7964
  store i16 %i.aad, ptr %i.aaf, align 2, !tbaa !51
  %i.aag = getelementptr inbounds nuw i8, ptr %i.vj, i64 7946
  store i16 %i.aad, ptr %i.aag, align 2, !tbaa !51
  %i.aah = getelementptr inbounds nuw i8, ptr %i.vj, i64 7928
  store i16 %i.aad, ptr %i.aah, align 2, !tbaa !51
  %i.aai = getelementptr inbounds nuw i8, ptr %i.vj, i64 7910
  store i16 %i.aad, ptr %i.aai, align 2, !tbaa !51
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.vj, i64 7892
  store i16 %i.aad, ptr %i.aaj, align 2, !tbaa !51
  %i.aak = load i16, ptr getelementptr inbounds nuw (i8, ptr @intrapred_luma8x8.PredPel, i64 8), align 8, !tbaa !51
  %i.aal = zext i16 %i.aak to i32                 ; 5 uses
  %i.aam = shl nuw nsw i32 %i.zx, 1
  %i.aan = add nuw nsw i32 %i.zj, 2
  %i.aao = add nuw nsw i32 %i.aan, %i.aam
  %i.aap = add nuw nsw i32 %i.aao, %i.aal
  %i.aaq = lshr i32 %i.aap, 2
  %i.aar = trunc nuw i32 %i.aaq to i16            ; 9 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.vj, i64 7966
  store i16 %i.aar, ptr %i.aas, align 2, !tbaa !51
  %i.aat = getelementptr inbounds nuw i8, ptr %i.vj, i64 7948
  store i16 %i.aar, ptr %i.aat, align 2, !tbaa !51
  %i.aau = getelementptr inbounds nuw i8, ptr %i.vj, i64 7930
end_hunk_0
