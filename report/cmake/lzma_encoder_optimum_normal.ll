Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/lzma_encoder_optimum_normal?download=true
inline.NumInlined: 85
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 20
begin_hunk_0_@lzma_lzma_optimum_normal:bb.a
  %i.ho = zext i32 %.09.i51.i.epil.init to i64
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %i.ho
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !81
  %i.hr = zext i16 %i.hq to i64
  %i.hs = icmp eq i32 %i.hn, 0
  %i.ht = select i1 %i.hs, i64 0, i64 2032
  %i.hu = xor i64 %i.ht, %i.hr
  %i.hv = lshr i64 %i.hu, 4
  %i.hw = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !82
  %i.hy = zext i8 %i.hx to i32
  %i.hz = add i32 %.010.i.i.epil.init, %i.hy
  br label %rc_bittree_reverse_price.exit.preheader.i

rc_bittree_reverse_price.exit.preheader.i:        ; preds = %rc_bittree_reverse_price.exit.preheader.i.unr-lcssa, %.epil.preheader
  %.lcssa421 = phi i32 [ %i.hk, %rc_bittree_reverse_price.exit.preheader.i.unr-lcssa ], [ %i.hz, %.epil.preheader ] ; 4 uses
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ga ; 4 uses
  %invariant.gep63.i = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv81.i ; 4 uses
  %i.ia = load i32, ptr %invariant.gep.i, align 4, !tbaa !64
  %i.ib = add i32 %i.ia, %.lcssa421
  store i32 %i.ib, ptr %invariant.gep63.i, align 4, !tbaa !64
  %gep.1.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 256
  %i.ic = load i32, ptr %gep.1.i, align 4, !tbaa !64
  %i.id = add i32 %i.ic, %.lcssa421
  %gep64.1.i = getelementptr inbounds nuw i8, ptr %invariant.gep63.i, i64 512
  store i32 %i.id, ptr %gep64.1.i, align 4, !tbaa !64
  %gep.2.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 512
  %i.ie = load i32, ptr %gep.2.i, align 4, !tbaa !64
  %i.if = add i32 %i.ie, %.lcssa421
  %gep64.2.i = getelementptr inbounds nuw i8, ptr %invariant.gep63.i, i64 1024
  store i32 %i.if, ptr %gep64.2.i, align 4, !tbaa !64
  %gep.3.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 768
  %i.ig = load i32, ptr %gep.3.i, align 4, !tbaa !64
  %i.ih = add i32 %i.ig, %.lcssa421
  %gep64.3.i = getelementptr inbounds nuw i8, ptr %invariant.gep63.i, i64 1536
  store i32 %i.ih, ptr %gep64.3.i, align 4, !tbaa !64
  %indvars.iv.next82.i = add nuw nsw i64 %indvars.iv81.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next82.i, 128
  br i1 %exitcond.not.i, label %fill_dist_prices.exit, label %bb.m, !llvm.loop !22

fill_dist_prices.exit:                            ; preds = %rc_bittree_reverse_price.exit.preheader.i
  store i32 0, ptr %i.y, align 4, !tbaa !79
  br label %bb.o

bb.o:                                             ; preds = %fill_dist_prices.exit, %bb.d
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 69312 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !84
  %i.ik = icmp ugt i32 %i.ij, 15
  br i1 %i.ik, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 29128 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 69248
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 29130
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2, !tbaa !81
  %i.in = zext i16 %.pre.i to i64
  br label %rc_bittree_reverse_price.exit.i

rc_bittree_reverse_price.exit.i:                  ; preds = %rc_bittree_reverse_price.exit.i, %bb.p
  %indvars.iv.i57 = phi i64 [ 0, %bb.p ], [ %indvars.iv.next.i58, %rc_bittree_reverse_price.exit.i ] ; 3 uses
  %i.io = trunc nuw nsw i64 %indvars.iv.i57 to i32 ; 4 uses
  %i.ip = and i32 %i.io, 1                        ; 2 uses
  %i.iq = lshr i32 %i.io, 1
  %i.ir = icmp eq i32 %i.ip, 0
  %i.is = select i1 %i.ir, i64 0, i64 2032
  %i.it = xor i64 %i.is, %i.in
  %i.iu = lshr i64 %i.it, 4
  %i.iv = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.iu
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !82
  %i.ix = zext i8 %i.iw to i32
  %i.iy = or disjoint i32 %i.ip, 2                ; 2 uses
  %i.iz = and i32 %i.iq, 1                        ; 2 uses
  %i.ja = lshr i32 %i.io, 2
  %i.jb = zext nneg i32 %i.iy to i64
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %i.jb
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !81
  %i.je = zext i16 %i.jd to i64
  %i.jf = icmp eq i32 %i.iz, 0
  %i.jg = select i1 %i.jf, i64 0, i64 2032
  %i.jh = xor i64 %i.jg, %i.je
  %i.ji = lshr i64 %i.jh, 4
  %i.jj = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !82
  %i.jl = zext i8 %i.jk to i32
  %i.jm = add nuw nsw i32 %i.jl, %i.ix
  %i.jn = shl nuw nsw i32 %i.iy, 1
  %i.jo = or disjoint i32 %i.jn, %i.iz            ; 2 uses
  %i.jp = and i32 %i.ja, 1                        ; 2 uses
  %i.jq = zext nneg i32 %i.jo to i64
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %i.jq
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !81
  %i.jt = zext i16 %i.js to i64
  %i.ju = icmp eq i32 %i.jp, 0
  %i.jv = select i1 %i.ju, i64 0, i64 2032
  %i.jw = xor i64 %i.jv, %i.jt
  %i.jx = lshr i64 %i.jw, 4
  %i.jy = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !82
  %i.ka = zext i8 %i.jz to i32
  %i.kb = add nuw nsw i32 %i.jm, %i.ka
  %i.kc = shl nuw nsw i32 %i.jo, 1
  %i.kd = or disjoint i32 %i.kc, %i.jp
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %i.ke
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !81
  %i.kh = zext i16 %i.kg to i64
  %i.ki = and i32 %i.io, 8
  %i.kj = icmp eq i32 %i.ki, 0
  %i.kk = select i1 %i.kj, i64 0, i64 2032
  %i.kl = xor i64 %i.kk, %i.kh
  %i.km = lshr i64 %i.kl, 4
  %i.kn = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.km
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !82
  %i.kp = zext i8 %i.ko to i32
  %i.kq = add nuw nsw i32 %i.kb, %i.kp
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv.i57
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !64
  %indvars.iv.next.i58 = add nuw nsw i64 %indvars.iv.i57, 1 ; 2 uses
  %exitcond.not.i59 = icmp eq i64 %indvars.iv.next.i58, 16
  br i1 %exitcond.not.i59, label %fill_align_prices.exit, label %rc_bittree_reverse_price.exit.i, !llvm.loop !23

fill_align_prices.exit:                           ; preds = %rc_bittree_reverse_price.exit.i
  store i32 0, ptr %i.ii, align 8, !tbaa !84
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %fill_align_prices.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !71, !alias.scope !85, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7, !noalias !78
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.kv = call i32 @lzma_mf_find(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ku) #7, !noalias !89
  br label %bb.r

bb.r:                                             ; preds = %.thread, %bb.q
  %i.kw = phi i32 [ %i.kt, %bb.q ], [ %i.t, %.thread ] ; 2 uses
  %i.kx = phi ptr [ %i.ks, %bb.q ], [ %i.s, %.thread ]
  %.0176.i = phi i32 [ %i.kv, %bb.q ], [ %i.v, %.thread ] ; 6 uses
  %i.ky = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %.val201.i = load i32, ptr %i.ky, align 8, !tbaa !90, !alias.scope !85, !noalias !88 ; 2 uses
  %i.kz = getelementptr i8, ptr %1, i64 36        ; 2 uses
  %.val202.i = load i32, ptr %i.kz, align 4, !tbaa !91, !alias.scope !85, !noalias !88
  %i.la = sub i32 %.val202.i, %.val201.i
  %i.lb = add i32 %i.la, 1                        ; 3 uses
  %i.lc = icmp ult i32 %i.lb, 273
  br i1 %i.lc, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %i.ld = icmp samesign ult i32 %i.lb, 2
  br i1 %i.ld, label %helper1.exit.thread, label %.thread.i

helper1.exit.thread:                              ; preds = %bb.s
  store i32 -1, ptr %2, align 4, !tbaa !64, !alias.scope !86, !noalias !92
  store i32 1, ptr %3, align 4, !tbaa !64, !alias.scope !87, !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7, !noalias !78
  br label %bb.dt

.thread.i:                                        ; preds = %bb.s, %bb.r
  %i.le = phi i32 [ %i.lb, %bb.s ], [ 273, %bb.r ] ; 10 uses
  %.val203.i = load ptr, ptr %1, align 8, !tbaa !94, !alias.scope !85, !noalias !88
  %i.lf = zext i32 %.val201.i to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %.val203.i, i64 %i.lf ; 2 uses
  %i.lh = getelementptr inbounds i8, ptr %i.lg, i64 -1 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7, !noalias !78
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 716 ; 2 uses
  %.val206.i = load i16, ptr %i.lh, align 1, !noalias !89 ; 7 uses
  %i.lj = icmp samesign ugt i32 %i.le, 2          ; 4 uses
  %i.lk = zext nneg i32 %i.le to i64              ; 4 uses
  %i.ll = load i32, ptr %i.li, align 4, !tbaa !64, !alias.scope !75, !noalias !76 ; 2 uses
  %i.lm = zext i32 %i.ll to i64
  %i.ln = sub nsw i64 0, %i.lm
  %i.lo = getelementptr inbounds i8, ptr %i.lh, i64 %i.ln
  %i.lp = getelementptr inbounds i8, ptr %i.lo, i64 -1 ; 2 uses
  %.val205.i = load i16, ptr %i.lp, align 1, !noalias !89 ; 3 uses
  %.not197.i = icmp eq i16 %.val206.i, %.val205.i
  %i.lq = trunc i16 %.val206.i to i8
  %i.lr = trunc i16 %.val205.i to i8
  br i1 %.not197.i, label %.preheader229.i, label %lzma_memcmplen.exit.i

.preheader229.i:                                  ; preds = %.thread.i
  br i1 %i.lj, label %.lr.ph.i73, label %lzma_memcmplen.exit.thread.i

.lr.ph.i73:                                       ; preds = %.preheader229.i, %bb.t
  %indvars.iv.i74 = phi i64 [ %indvars.iv.next.i75, %bb.t ], [ 2, %.preheader229.i ] ; 4 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lh, i64 %indvars.iv.i74
  %.val208.i = load i64, ptr %i.ls, align 1, !noalias !89 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 %indvars.iv.i74
  %.val207.i = load i64, ptr %i.lt, align 1, !noalias !89 ; 2 uses
  %.not.i.not.i = icmp eq i64 %.val208.i, %.val207.i
  br i1 %.not.i.not.i, label %bb.t, label %.thread215.i

.thread215.i:                                     ; preds = %.lr.ph.i73
  %i.lu = trunc nuw nsw i64 %indvars.iv.i74 to i32
  %i.lv = sub i64 %.val208.i, %.val207.i
  %i.lw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lv, i1 true)
  %i.lx = trunc nuw nsw i64 %i.lw to i32
  %i.ly = lshr i32 %i.lx, 3
  %i.lz = add i32 %i.ly, %i.lu
  %i.ma = call i32 @llvm.umin.i32(i32 %i.lz, i32 %i.le)
  br label %lzma_memcmplen.exit.i

bb.t:                                             ; preds = %.lr.ph.i73
  %indvars.iv.next.i75 = add nuw nsw i64 %indvars.iv.i74, 8 ; 2 uses
  %i.mb = icmp samesign ult i64 %indvars.iv.next.i75, %i.lk
  br i1 %i.mb, label %.lr.ph.i73, label %lzma_memcmplen.exit.i

lzma_memcmplen.exit.i:                            ; preds = %bb.t, %.thread215.i, %.thread.i
  %storemerge.i = phi i32 [ 0, %.thread.i ], [ %i.ma, %.thread215.i ], [ %i.le, %bb.t ] ; 5 uses
  store i32 %storemerge.i, ptr %i.b, align 16, !tbaa !64, !noalias !78
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !64, !alias.scope !75, !noalias !76 ; 5 uses
  %i.me = zext i32 %i.md to i64
  %i.mf = sub nsw i64 0, %i.me
  %i.mg = getelementptr inbounds i8, ptr %i.lh, i64 %i.mf
  %i.mh = getelementptr inbounds i8, ptr %i.mg, i64 -1 ; 2 uses
  %.val205.1.i = load i16, ptr %i.mh, align 1, !noalias !89
  %.not197.1.i = icmp eq i16 %.val206.i, %.val205.1.i
  br i1 %.not197.1.i, label %.preheader229.1.i, label %bb.u

lzma_memcmplen.exit.thread.i:                     ; preds = %.preheader229.i
  store i32 2, ptr %i.b, align 16, !tbaa !64, !noalias !78
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.mj = load i32, ptr %i.mi, align 8, !tbaa !64, !alias.scope !75, !noalias !76 ; 3 uses
  %i.mk = zext i32 %i.mj to i64
  %i.ml = sub nsw i64 0, %i.mk
  %i.mm = getelementptr inbounds i8, ptr %i.lh, i64 %i.ml
  %i.mn = getelementptr inbounds i8, ptr %i.mm, i64 -1
  %.val205.1287.i = load i16, ptr %i.mn, align 1, !noalias !89
  %.not197.1288.i = icmp eq i16 %.val206.i, %.val205.1287.i
  br i1 %.not197.1288.i, label %lzma_memcmplen.exit.1.i, label %bb.u

bb.u:                                             ; preds = %lzma_memcmplen.exit.thread.i, %lzma_memcmplen.exit.i
  %i.mo = phi i32 [ %i.mj, %lzma_memcmplen.exit.thread.i ], [ %i.md, %lzma_memcmplen.exit.i ]
  %storemerge290.i = phi i32 [ 2, %lzma_memcmplen.exit.thread.i ], [ %storemerge.i, %lzma_memcmplen.exit.i ]
  %i.mp = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.mp, align 4, !tbaa !64, !noalias !78
  br label %bb.w

.preheader229.1.i:                                ; preds = %lzma_memcmplen.exit.i
  br i1 %i.lj, label %.lr.ph.1.i70, label %lzma_memcmplen.exit.1.i

.lr.ph.1.i70:                                     ; preds = %.preheader229.1.i, %bb.v
  %indvars.iv.1.i71 = phi i64 [ %indvars.iv.next.1.i72, %bb.v ], [ 2, %.preheader229.1.i ] ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lh, i64 %indvars.iv.1.i71
  %.val208.1.i = load i64, ptr %i.mq, align 1, !noalias !89 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mh, i64 %indvars.iv.1.i71
  %.val207.1.i = load i64, ptr %i.mr, align 1, !noalias !89 ; 2 uses
  %.not.i.not.1.i = icmp eq i64 %.val208.1.i, %.val207.1.i
  br i1 %.not.i.not.1.i, label %bb.v, label %.thread215.1.i

.thread215.1.i:                                   ; preds = %.lr.ph.1.i70
  %i.ms = trunc nuw nsw i64 %indvars.iv.1.i71 to i32
  %i.mt = sub i64 %.val208.1.i, %.val207.1.i
  %i.mu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.mt, i1 true)
  %i.mv = trunc nuw nsw i64 %i.mu to i32
  %i.mw = lshr i32 %i.mv, 3
  %i.mx = add i32 %i.mw, %i.ms
  %i.my = call i32 @llvm.umin.i32(i32 %i.mx, i32 %i.le)
  br label %lzma_memcmplen.exit.1.i

bb.v:                                             ; preds = %.lr.ph.1.i70
  %indvars.iv.next.1.i72 = add nuw nsw i64 %indvars.iv.1.i71, 8 ; 2 uses
  %i.mz = icmp samesign ult i64 %indvars.iv.next.1.i72, %i.lk
  br i1 %i.mz, label %.lr.ph.1.i70, label %lzma_memcmplen.exit.1.i

lzma_memcmplen.exit.1.i:                          ; preds = %bb.v, %.thread215.1.i, %.preheader229.1.i, %lzma_memcmplen.exit.thread.i
  %storemerge291293.i = phi i32 [ %storemerge.i, %.thread215.1.i ], [ %storemerge.i, %.preheader229.1.i ], [ 2, %lzma_memcmplen.exit.thread.i ], [ %storemerge.i, %bb.v ] ; 2 uses
  %i.na = phi i32 [ %i.md, %.thread215.1.i ], [ %i.md, %.preheader229.1.i ], [ %i.mj, %lzma_memcmplen.exit.thread.i ], [ %i.md, %bb.v ]
  %.2.i.1.i = phi i32 [ %i.my, %.thread215.1.i ], [ 2, %.preheader229.1.i ], [ 2, %lzma_memcmplen.exit.thread.i ], [ %i.le, %bb.v ] ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %.2.i.1.i, ptr %i.nb, align 4, !tbaa !64, !noalias !78
  %i.nc = icmp ugt i32 %.2.i.1.i, %storemerge291293.i
  %spec.select.1.i = zext i1 %i.nc to i32
  br label %bb.w

bb.w:                                             ; preds = %lzma_memcmplen.exit.1.i, %bb.u
  %i.nd = phi i32 [ %i.mo, %bb.u ], [ %i.na, %lzma_memcmplen.exit.1.i ]
  %storemerge289.i = phi i32 [ %storemerge290.i, %bb.u ], [ %storemerge291293.i, %lzma_memcmplen.exit.1.i ] ; 4 uses
  %i.ne = phi i32 [ 0, %bb.u ], [ %.2.i.1.i, %lzma_memcmplen.exit.1.i ] ; 3 uses
  %.2174.1.i = phi i32 [ 0, %bb.u ], [ %spec.select.1.i, %lzma_memcmplen.exit.1.i ] ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 724
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !64, !alias.scope !75, !noalias !76 ; 2 uses
  %i.nh = zext i32 %i.ng to i64
  %i.ni = sub nsw i64 0, %i.nh
  %i.nj = getelementptr inbounds i8, ptr %i.lh, i64 %i.ni
  %i.nk = getelementptr inbounds i8, ptr %i.nj, i64 -1 ; 2 uses
  %.val205.2.i = load i16, ptr %i.nk, align 1, !noalias !89
  %.not197.2.i = icmp eq i16 %.val206.i, %.val205.2.i
  br i1 %.not197.2.i, label %.preheader229.2.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.nl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.nl, align 8, !tbaa !64, !noalias !78
  br label %bb.z

.preheader229.2.i:                                ; preds = %bb.w
  br i1 %i.lj, label %.lr.ph.2.i67, label %lzma_memcmplen.exit.2.i

.lr.ph.2.i67:                                     ; preds = %.preheader229.2.i, %bb.y
  %indvars.iv.2.i68 = phi i64 [ %indvars.iv.next.2.i69, %bb.y ], [ 2, %.preheader229.2.i ] ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.lh, i64 %indvars.iv.2.i68
  %.val208.2.i = load i64, ptr %i.nm, align 1, !noalias !89 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 %indvars.iv.2.i68
  %.val207.2.i = load i64, ptr %i.nn, align 1, !noalias !89 ; 2 uses
  %.not.i.not.2.i = icmp eq i64 %.val208.2.i, %.val207.2.i
  br i1 %.not.i.not.2.i, label %bb.y, label %.thread215.2.i

.thread215.2.i:                                   ; preds = %.lr.ph.2.i67
  %i.no = trunc nuw nsw i64 %indvars.iv.2.i68 to i32
  %i.np = sub i64 %.val208.2.i, %.val207.2.i
  %i.nq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.np, i1 true)
  %i.nr = trunc nuw nsw i64 %i.nq to i32
  %i.ns = lshr i32 %i.nr, 3
  %i.nt = add i32 %i.ns, %i.no
  %i.nu = call i32 @llvm.umin.i32(i32 %i.nt, i32 %i.le)
  br label %lzma_memcmplen.exit.2.i

bb.y:                                             ; preds = %.lr.ph.2.i67
  %indvars.iv.next.2.i69 = add nuw nsw i64 %indvars.iv.2.i68, 8 ; 2 uses
  %i.nv = icmp samesign ult i64 %indvars.iv.next.2.i69, %i.lk
  br i1 %i.nv, label %.lr.ph.2.i67, label %lzma_memcmplen.exit.2.i

lzma_memcmplen.exit.2.i:                          ; preds = %bb.y, %.thread215.2.i, %.preheader229.2.i
  %.2.i.2.i = phi i32 [ %i.nu, %.thread215.2.i ], [ 2, %.preheader229.2.i ], [ %i.le, %bb.y ] ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.2.i.2.i, ptr %i.nw, align 8, !tbaa !64, !noalias !78
  %i.nx = zext nneg i32 %.2174.1.i to i64
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.nx
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !64, !noalias !78
  %i.oa = icmp ugt i32 %.2.i.2.i, %i.nz
  %spec.select.2.i = select i1 %i.oa, i32 2, i32 %.2174.1.i
  br label %bb.z

bb.z:                                             ; preds = %lzma_memcmplen.exit.2.i, %bb.x
  %i.ob = phi i32 [ 0, %bb.x ], [ %.2.i.2.i, %lzma_memcmplen.exit.2.i ] ; 3 uses
  %.2174.2.i = phi i32 [ %.2174.1.i, %bb.x ], [ %spec.select.2.i, %lzma_memcmplen.exit.2.i ] ; 4 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !64, !alias.scope !75, !noalias !76 ; 2 uses
  %i.oe = zext i32 %i.od to i64
  %i.of = sub nsw i64 0, %i.oe
  %i.og = getelementptr inbounds i8, ptr %i.lh, i64 %i.of
  %i.oh = getelementptr inbounds i8, ptr %i.og, i64 -1 ; 2 uses
  %.val205.3.i = load i16, ptr %i.oh, align 1, !noalias !89
  %.not197.3.i = icmp eq i16 %.val206.i, %.val205.3.i
  br i1 %.not197.3.i, label %.preheader229.3.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.oi = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.oi, align 4, !tbaa !64, !noalias !78
  %.phi.trans.insert.i60 = zext nneg i32 %.2174.2.i to i64
  %.phi.trans.insert256.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.phi.trans.insert.i60
  %.pre.i61 = load i32, ptr %.phi.trans.insert256.i, align 4, !tbaa !64, !noalias !78
  br label %bb.ac

.preheader229.3.i:                                ; preds = %bb.z
  br i1 %i.lj, label %.lr.ph.3.i64, label %lzma_memcmplen.exit.3.i

.lr.ph.3.i64:                                     ; preds = %.preheader229.3.i, %bb.ab
  %indvars.iv.3.i65 = phi i64 [ %indvars.iv.next.3.i66, %bb.ab ], [ 2, %.preheader229.3.i ] ; 4 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.lh, i64 %indvars.iv.3.i65
  %.val208.3.i = load i64, ptr %i.oj, align 1, !noalias !89 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 %indvars.iv.3.i65
  %.val207.3.i = load i64, ptr %i.ok, align 1, !noalias !89 ; 2 uses
  %.not.i.not.3.i = icmp eq i64 %.val208.3.i, %.val207.3.i
  br i1 %.not.i.not.3.i, label %bb.ab, label %.thread215.3.i

.thread215.3.i:                                   ; preds = %.lr.ph.3.i64
  %i.ol = trunc nuw nsw i64 %indvars.iv.3.i65 to i32
  %i.om = sub i64 %.val208.3.i, %.val207.3.i
  %i.on = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.om, i1 true)
  %i.oo = trunc nuw nsw i64 %i.on to i32
  %i.op = lshr i32 %i.oo, 3
  %i.oq = add i32 %i.op, %i.ol
  %i.or = call i32 @llvm.umin.i32(i32 %i.oq, i32 %i.le)
  br label %lzma_memcmplen.exit.3.i

bb.ab:                                            ; preds = %.lr.ph.3.i64
  %indvars.iv.next.3.i66 = add nuw nsw i64 %indvars.iv.3.i65, 8 ; 2 uses
  %i.os = icmp samesign ult i64 %indvars.iv.next.3.i66, %i.lk
  br i1 %i.os, label %.lr.ph.3.i64, label %lzma_memcmplen.exit.3.i

lzma_memcmplen.exit.3.i:                          ; preds = %bb.ab, %.thread215.3.i, %.preheader229.3.i
  %.2.i.3.i = phi i32 [ %i.or, %.thread215.3.i ], [ 2, %.preheader229.3.i ], [ %i.le, %bb.ab ] ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %.2.i.3.i, ptr %i.ot, align 4, !tbaa !64, !noalias !78
  %i.ou = zext nneg i32 %.2174.2.i to i64
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ou
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !64, !noalias !78 ; 2 uses
  %i.ox = icmp ugt i32 %.2.i.3.i, %i.ow
  %spec.select.3.i = select i1 %i.ox, i32 3, i32 %.2174.2.i
  %i.oy = call i32 @llvm.umax.i32(i32 %.2.i.3.i, i32 %i.ow)
  br label %bb.ac

bb.ac:                                            ; preds = %lzma_memcmplen.exit.3.i, %bb.aa
  %i.oz = phi i32 [ %.pre.i61, %bb.aa ], [ %i.oy, %lzma_memcmplen.exit.3.i ] ; 5 uses
  %i.pa = phi i32 [ 0, %bb.aa ], [ %.2.i.3.i, %lzma_memcmplen.exit.3.i ] ; 3 uses
  %.2174.3.i = phi i32 [ %.2174.2.i, %bb.aa ], [ %spec.select.3.i, %lzma_memcmplen.exit.3.i ]
  %.not.i62 = icmp ult i32 %i.oz, %i.kw
  br i1 %.not.i62, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 %.2174.3.i, ptr %2, align 4, !tbaa !64, !alias.scope !86, !noalias !92
  store i32 %i.oz, ptr %3, align 4, !tbaa !64, !alias.scope !87, !noalias !93
  %i.pb = add i32 %i.oz, -1                       ; 3 uses
  %.not.i209.i = icmp eq i32 %i.pb, 0
  br i1 %.not.i209.i, label %helper1.exit.thread109, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !95, !alias.scope !85, !noalias !88
  call void %i.pd(ptr noundef nonnull %1, i32 noundef %i.pb) #7, !noalias !89, !inline_history !24
  %i.pe = load i32, ptr %i.p, align 4, !tbaa !69, !alias.scope !85, !noalias !88
  %i.pf = add i32 %i.pe, %i.pb
  store i32 %i.pf, ptr %i.p, align 4, !tbaa !69, !alias.scope !85, !noalias !88
  br label %helper1.exit.thread109

bb.af:                                            ; preds = %bb.ac
  %.not194.i = icmp ult i32 %.0176.i, %i.kw
  br i1 %.not194.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.pg = load i32, ptr %i.a, align 4, !tbaa !64, !noalias !78
  %i.ph = add i32 %i.pg, -1
  %i.pi = zext i32 %i.ph to i64
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.pi
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 736
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !97, !alias.scope !75, !noalias !76
  %i.pm = add i32 %i.pl, 4
  store i32 %i.pm, ptr %2, align 4, !tbaa !64, !alias.scope !86, !noalias !92
  store i32 %.0176.i, ptr %3, align 4, !tbaa !64, !alias.scope !87, !noalias !93
  %i.pn = add i32 %.0176.i, -1                    ; 3 uses
  %.not.i210.i = icmp eq i32 %i.pn, 0
  br i1 %.not.i210.i, label %helper1.exit.thread109, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !95, !alias.scope !85, !noalias !88
  call void %i.pp(ptr noundef nonnull %1, i32 noundef %i.pn) #7, !noalias !89, !inline_history !24
  %i.pq = load i32, ptr %i.p, align 4, !tbaa !69, !alias.scope !85, !noalias !88
  %i.pr = add i32 %i.pq, %i.pn
  store i32 %i.pr, ptr %i.p, align 4, !tbaa !69, !alias.scope !85, !noalias !88
  br label %helper1.exit.thread109

bb.ai:                                            ; preds = %bb.af
  %.not195.i = icmp ne i8 %i.lq, %i.lr            ; 2 uses
  %i.ps = or i32 %i.oz, %.0176.i
  %i.pt = icmp ult i32 %i.ps, 2
  %or.cond198.i = and i1 %.not195.i, %i.pt
  br i1 %or.cond198.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 -1, ptr %2, align 4, !tbaa !64, !alias.scope !86, !noalias !92
  store i32 1, ptr %3, align 4, !tbaa !64, !alias.scope !87, !noalias !93
  br label %helper1.exit.thread109

bb.ak:                                            ; preds = %bb.ai
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.pv = load i32, ptr %i.pu, align 8, !tbaa !98, !alias.scope !75, !noalias !76 ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 69324 ; 80 uses
  store i32 %i.pv, ptr %i.pw, align 4, !tbaa !99, !alias.scope !75, !noalias !76
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 2936 ; 2 uses
  %i.py = load i32, ptr %i.px, align 8, !tbaa !100, !alias.scope !75, !noalias !76
  %i.pz = and i32 %i.py, %4
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 27524 ; 5 uses
  %i.qb = zext i32 %i.pv to i64                   ; 8 uses
  %i.qc = getelementptr inbounds nuw [32 x i8], ptr %i.qa, i64 %i.qb
  %i.qd = zext i32 %i.pz to i64                   ; 5 uses
  %i.qe = getelementptr inbounds nuw [2 x i8], ptr %i.qc, i64 %i.qd
  %i.qf = load i16, ptr %i.qe, align 2, !tbaa !81, !alias.scope !75, !noalias !76
  %i.qg = lshr i16 %i.qf, 4                       ; 2 uses
  %i.qh = zext nneg i16 %i.qg to i64
  %i.qi = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.qh
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !82, !noalias !78
  %i.qk = zext i8 %i.qj to i32
  %i.ql = getelementptr inbounds i8, ptr %i.lg, i64 -2
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !82, !noalias !89
  %i.qn = zext i8 %i.qm to i32
  %i.qo = icmp ugt i32 %i.pv, 6
  %.mask284.i = and i16 %.val206.i, 255
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 2948 ; 4 uses
  %i.qq = shl i32 %4, 8
  %i.qr = or disjoint i32 %i.qq, %i.qn
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 2944 ; 2 uses
  %i.qt = load i32, ptr %i.qs, align 8, !tbaa !101, !alias.scope !75, !noalias !76
  %i.qu = and i32 %i.qr, %i.qt
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 2940 ; 2 uses
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !102, !alias.scope !75, !noalias !76
  %i.qx = shl i32 %i.qu, %i.qw
  %i.qy = mul i32 %i.qx, 3
  %i.qz = zext i32 %i.qy to i64
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %i.qz ; 2 uses
  %i.rb = or disjoint i16 %.mask284.i, 256
  %i.rc = zext nneg i16 %i.rb to i32              ; 2 uses
  br i1 %i.qo, label %.preheader226.preheader.i, label %.preheader227.i

.preheader226.preheader.i:                        ; preds = %bb.ak
  %i.rd = zext i16 %.val205.i to i32
  br label %.preheader226.i

.preheader227.i:                                  ; preds = %bb.ak, %.preheader227.i
  %.09.i.i.i = phi i32 [ %i.rr, %.preheader227.i ], [ 0, %bb.ak ]
  %.0.i.i.i = phi i32 [ %i.rf, %.preheader227.i ], [ %i.rc, %bb.ak ] ; 2 uses
  %i.re = and i32 %.0.i.i.i, 1
  %i.rf = lshr i32 %.0.i.i.i, 1                   ; 3 uses
  %i.rg = zext nneg i32 %i.rf to i64
  %i.rh = getelementptr inbounds nuw [2 x i8], ptr %i.ra, i64 %i.rg
  %i.ri = load i16, ptr %i.rh, align 2, !tbaa !81, !alias.scope !75, !noalias !76
  %i.rj = zext i16 %i.ri to i64
  %i.rk = icmp eq i32 %i.re, 0
  %i.rl = select i1 %i.rk, i64 0, i64 2032
  %i.rm = xor i64 %i.rl, %i.rj
  %i.rn = lshr i64 %i.rm, 4
  %i.ro = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.rn
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !82, !noalias !78
  %i.rq = zext i8 %i.rp to i32
  %i.rr = add i32 %.09.i.i.i, %i.rq               ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.rf, 1
  br i1 %.not.i.i.i, label %get_literal_price.exit.i, label %.preheader227.i, !llvm.loop !18

.preheader226.i:                                  ; preds = %.preheader226.i, %.preheader226.preheader.i
  %.027.i.i = phi i32 [ %i.sh, %.preheader226.i ], [ 0, %.preheader226.preheader.i ]
  %.026.i.i = phi i32 [ %i.sl, %.preheader226.i ], [ 256, %.preheader226.preheader.i ] ; 3 uses
  %.025.i.i = phi i32 [ %i.si, %.preheader226.i ], [ %i.rc, %.preheader226.preheader.i ] ; 4 uses
  %.0.i.i63 = phi i32 [ %i.rs, %.preheader226.i ], [ %i.rd, %.preheader226.preheader.i ]
  %i.rs = shl i32 %.0.i.i63, 1                    ; 3 uses
  %i.rt = and i32 %i.rs, %.026.i.i
  %i.ru = lshr i32 %.025.i.i, 8
  %i.rv = add nuw nsw i32 %i.ru, %.026.i.i
  %i.rw = add nuw nsw i32 %i.rv, %i.rt
  %i.rx = zext nneg i32 %i.rw to i64
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %i.ra, i64 %i.rx
  %i.rz = load i16, ptr %i.ry, align 2, !tbaa !81, !alias.scope !75, !noalias !76
  %i.sa = zext i16 %i.rz to i64
  %.mask.i.i = and i32 %.025.i.i, 128
  %isneg.not.i.i = icmp eq i32 %.mask.i.i, 0
  %i.sb = select i1 %isneg.not.i.i, i64 0, i64 2032
  %i.sc = xor i64 %i.sb, %i.sa
  %i.sd = lshr i64 %i.sc, 4
  %i.se = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.sd
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !82, !noalias !78
  %i.sg = zext i8 %i.sf to i32
  %i.sh = add i32 %.027.i.i, %i.sg                ; 2 uses
  %i.si = shl nuw nsw i32 %.025.i.i, 1            ; 2 uses
  %i.sj = xor i32 %i.si, %i.rs
  %i.sk = xor i32 %i.sj, -1
  %i.sl = and i32 %.026.i.i, %i.sk
  %i.sm = icmp samesign ult i32 %.025.i.i, 32768
  br i1 %i.sm, label %.preheader226.i, label %get_literal_price.exit.i, !llvm.loop !25

get_literal_price.exit.i:                         ; preds = %.preheader227.i, %.preheader226.i
  %.1.i212.i = phi i32 [ %i.sh, %.preheader226.i ], [ %i.rr, %.preheader227.i ]
  %i.sn = add i32 %.1.i212.i, %i.qk               ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 69384 ; 2 uses
  store i32 %i.sn, ptr %i.so, align 8, !tbaa !103, !alias.scope !75, !noalias !76
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 69392 ; 2 uses
  store i32 -1, ptr %i.sp, align 8, !tbaa !65, !alias.scope !75, !noalias !76
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 69372
  store i8 0, ptr %i.sq, align 4, !tbaa !104, !alias.scope !75, !noalias !76
  %i.sr = xor i16 %i.qg, 127
  %i.ss = zext nneg i16 %i.sr to i64
  %i.st = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.ss
  %i.su = load i8, ptr %i.st, align 1, !tbaa !82, !noalias !78
  %i.sv = zext i8 %i.su to i32                    ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 27908 ; 3 uses
  %i.sx = getelementptr inbounds nuw [2 x i8], ptr %i.sw, i64 %i.qb
  %i.sy = load i16, ptr %i.sx, align 2, !tbaa !81, !alias.scope !75, !noalias !76
  %i.sz = lshr i16 %i.sy, 4                       ; 2 uses
  %i.ta = xor i16 %i.sz, 127
  %i.tb = zext nneg i16 %i.ta to i64
  %i.tc = getelementptr inbounds nuw i8, ptr @lzma_rc_prices, i64 %i.tb
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !82, !noalias !78
  %i.te = zext i8 %i.td to i32
  %i.tf = add nuw nsw i32 %i.te, %i.sv            ; 5 uses
end_hunk_0
