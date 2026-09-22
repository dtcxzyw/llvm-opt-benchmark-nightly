Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/trees?download=true
inline.NumInlined: 18
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@build_tree:bb.a

bb.af:                                            ; preds = %bb.ae, %bb.ac
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %._crit_edge65.i113
  %.pre-phi.i115 = phi i64 [ %.pre.i114, %._crit_edge65.i113 ], [ %i.fw, %bb.af ], [ %i.gc, %bb.ae ], [ %i.gc, %bb.ad ]
  %.1.i116 = phi i32 [ %.060.i111, %._crit_edge65.i113 ], [ %i.fv, %bb.af ], [ %.060.i111, %bb.ae ], [ %.060.i111, %bb.ad ] ; 3 uses
  %i.go = load i16, ptr %i.fh, align 2, !tbaa !24 ; 2 uses
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.az, i64 %.pre-phi.i115
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !31 ; 2 uses
  %i.gr = sext i32 %i.gq to i64                   ; 2 uses
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.gr
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !24 ; 2 uses
  %i.gu = icmp ult i16 %i.go, %i.gt
  br i1 %i.gu, label %pqdownheap.exit122.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gv = icmp eq i16 %i.go, %i.gt
  br i1 %i.gv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gw = load i8, ptr %i.fn, align 1, !tbaa !24
  %i.gx = getelementptr inbounds i8, ptr %i.bb, i64 %i.gr
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !24
  %.not56.i120 = icmp ugt i8 %i.gw, %i.gy
  br i1 %.not56.i120, label %bb.aj, label %pqdownheap.exit122.loopexit

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gz = sext i32 %.04959.i112 to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.gz
  store i32 %i.gq, ptr %i.ha, align 4, !tbaa !31
  %.0.i117 = shl i32 %.1.i116, 1                  ; 2 uses
  %i.hb = load i32, ptr %i.h, align 4, !tbaa !69  ; 2 uses
  %.not.i118 = icmp sgt i32 %.0.i117, %i.hb
  br i1 %.not.i118, label %pqdownheap.exit122.loopexit, label %.lr.ph.i110, !llvm.loop !52

pqdownheap.exit122.loopexit:                      ; preds = %bb.aj, %bb.ai, %bb.ag
  %.049.lcssa.i119.ph = phi i32 [ %.04959.i112, %bb.ag ], [ %.04959.i112, %bb.ai ], [ %.1.i116, %bb.aj ]
  %i.hc = sext i32 %.049.lcssa.i119.ph to i64
  br label %pqdownheap.exit122

pqdownheap.exit122:                               ; preds = %pqdownheap.exit122.loopexit, %pqdownheap.exit108
  %.049.lcssa.i119 = phi i64 [ 1, %pqdownheap.exit108 ], [ %i.hc, %pqdownheap.exit122.loopexit ]
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.az, i64 %.049.lcssa.i119
  store i32 %i.fo, ptr %i.hd, align 4, !tbaa !31
  %i.he = load i32, ptr %i.h, align 4, !tbaa !69  ; 2 uses
  %i.hf = icmp sgt i32 %i.he, 1
  br i1 %i.hf, label %bb.s, label %bb.ak, !llvm.loop !54

bb.ak:                                            ; preds = %pqdownheap.exit122
  %i.hg = load i32, ptr %i.ba, align 4, !tbaa !31
  %i.hh = load i32, ptr %i.i, align 8, !tbaa !70
  %i.hi = add nsw i32 %i.hh, -1                   ; 2 uses
  store i32 %i.hi, ptr %i.i, align 8, !tbaa !70
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.hj
  store i32 %i.hg, ptr %i.hk, align 4, !tbaa !31
  %i.hl = load ptr, ptr %1, align 8, !tbaa !63    ; 4 uses
  %i.hm = load i32, ptr %i.au, align 8, !tbaa !71 ; 2 uses
  %i.hn = load ptr, ptr %i.c, align 8, !tbaa !64  ; 4 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !67 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !72
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !73 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !74 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 2976 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hv, i8 0, i64 32, i1 false), !tbaa !75
  %i.hw = load i32, ptr %i.i, align 8, !tbaa !70
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !31
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  store i16 0, ptr %i.ic, align 2, !tbaa !24
  %i.id = load i32, ptr %i.i, align 8, !tbaa !70  ; 2 uses
  %i.ie = icmp slt i32 %i.id, 572
  br i1 %i.ie, label %.lr.ph.i123, label %gen_bitlen.exit

.lr.ph.i123:                                      ; preds = %bb.ak
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 5912 ; 4 uses
  %.not103.i = icmp eq ptr %i.ho, null
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 2 uses
  %i.ih = sext i32 %i.id to i64
  %i.ii = add nsw i64 %i.ih, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.aq, %.lr.ph.i123
  %indvars.iv.i = phi i64 [ %i.ii, %.lr.ph.i123 ], [ %indvars.iv.next.i, %bb.aq ] ; 2 uses
  %.0113.i = phi i32 [ 0, %.lr.ph.i123 ], [ %spec.select104.i, %bb.aq ]
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !31 ; 4 uses
  %i.il = sext i32 %i.ik to i64                   ; 2 uses
  %i.im = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.il ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 2 ; 2 uses
  %i.io = load i16, ptr %i.in, align 2, !tbaa !24
  %i.ip = zext i16 %i.io to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !24
  %i.it = zext i16 %i.is to i32                   ; 2 uses
  %i.iu = add nuw nsw i32 %i.it, 1
  %.not101.i = icmp sle i32 %i.hu, %i.it          ; 2 uses
  %spec.select.i = select i1 %.not101.i, i32 %i.hu, i32 %i.iu ; 3 uses
  %i.iv = zext i1 %.not101.i to i32
  %spec.select104.i = add nuw nsw i32 %.0113.i, %i.iv ; 3 uses
  %i.iw = trunc i32 %spec.select.i to i16
  store i16 %i.iw, ptr %i.in, align 2, !tbaa !24
  %i.ix = icmp sgt i32 %i.ik, %i.hm
  br i1 %i.ix, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.iy = sext i32 %spec.select.i to i64
  %i.iz = getelementptr inbounds [2 x i8], ptr %i.hv, i64 %i.iy ; 2 uses
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !75
  %i.jb = add i16 %i.ja, 1
  store i16 %i.jb, ptr %i.iz, align 2, !tbaa !75
  %.not102.i = icmp slt i32 %i.ik, %i.hs
  br i1 %.not102.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jc = sub nsw i32 %i.ik, %i.hs
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !31
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.084.i = phi i32 [ %i.jf, %bb.an ], [ 0, %bb.am ] ; 2 uses
  %i.jg = load i16, ptr %i.im, align 2, !tbaa !24
  %i.jh = zext i16 %i.jg to i64                   ; 2 uses
  %i.ji = add nsw i32 %.084.i, %spec.select.i
  %i.jj = zext i32 %i.ji to i64
  %i.jk = mul nuw nsw i64 %i.jh, %i.jj
  %i.jl = load i64, ptr %i.if, align 8, !tbaa !29
  %i.jm = add i64 %i.jk, %i.jl
  store i64 %i.jm, ptr %i.if, align 8, !tbaa !29
  br i1 %.not103.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.il
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 2
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !24
  %i.jq = zext i16 %i.jp to i32
  %i.jr = add nsw i32 %.084.i, %i.jq
  %i.js = zext i32 %i.jr to i64
  %i.jt = mul nuw nsw i64 %i.js, %i.jh
  %i.ju = load i64, ptr %i.ig, align 8, !tbaa !30
  %i.jv = add i64 %i.jt, %i.ju
  store i64 %i.jv, ptr %i.ig, align 8, !tbaa !30
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.al
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jw = and i64 %indvars.iv.next.i, 4294967295
  %exitcond.not.i = icmp eq i64 %i.jw, 573
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.al, !llvm.loop !55

._crit_edge.i:                                    ; preds = %bb.aq
  %i.jx = icmp eq i32 %spec.select104.i, 0
  br i1 %i.jx, label %gen_bitlen.exit, label %.preheader105.i

.preheader105.i:                                  ; preds = %._crit_edge.i
  %i.jy = sext i32 %i.hu to i64                   ; 3 uses
  %i.jz = getelementptr inbounds [2 x i8], ptr %i.hv, i64 %i.jy ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.at, %.preheader105.i
  %.2.i = phi i32 [ %i.kk, %bb.at ], [ %spec.select104.i, %.preheader105.i ] ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %bb.ar
  %indvars.iv132.i = phi i64 [ %indvars.iv.next133.i, %bb.as ], [ %i.jy, %bb.ar ] ; 2 uses
  %indvars.iv.next133.i = add nsw i64 %indvars.iv132.i, -1 ; 3 uses
  %i.ka = getelementptr inbounds [2 x i8], ptr %i.hv, i64 %indvars.iv.next133.i
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !75 ; 2 uses
  %i.kc = icmp eq i16 %i.kb, 0
  br i1 %i.kc, label %bb.as, label %bb.at, !llvm.loop !56

bb.at:                                            ; preds = %bb.as
  %i.kd = getelementptr inbounds [2 x i8], ptr %i.hv, i64 %indvars.iv.next133.i
  %i.ke = add i16 %i.kb, -1
  store i16 %i.ke, ptr %i.kd, align 2, !tbaa !75
  %i.kf = getelementptr inbounds [2 x i8], ptr %i.hv, i64 %indvars.iv132.i ; 2 uses
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !75
  %i.kh = add i16 %i.kg, 2
  store i16 %i.kh, ptr %i.kf, align 2, !tbaa !75
  %i.ki = load i16, ptr %i.jz, align 2, !tbaa !75
  %i.kj = add i16 %i.ki, -1
  store i16 %i.kj, ptr %i.jz, align 2, !tbaa !75
  %i.kk = add nsw i32 %.2.i, -2
  %i.kl = icmp sgt i32 %.2.i, 2
  br i1 %i.kl, label %bb.ar, label %.preheader.i, !llvm.loop !57

.preheader.i:                                     ; preds = %bb.at
  %.not122.i = icmp eq i32 %i.hu, 0
  br i1 %.not122.i, label %gen_bitlen.exit, label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %.preheader.i, %.outer._crit_edge.i
  %indvars.iv138.i = phi i64 [ %indvars.iv.next139.i, %.outer._crit_edge.i ], [ %i.jy, %.preheader.i ] ; 5 uses
  %.190123.i = phi i32 [ %.291.lcssa.i, %.outer._crit_edge.i ], [ 573, %.preheader.i ] ; 2 uses
  %i.km = getelementptr inbounds [2 x i8], ptr %i.hv, i64 %indvars.iv138.i
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !75 ; 2 uses
  %.not99118.i = icmp eq i16 %i.kn, 0
  br i1 %.not99118.i, label %.outer._crit_edge.i, label %.outer.split.lr.ph.i

.outer.split.lr.ph.i:                             ; preds = %.lr.ph125.i
  %i.ko = zext i16 %i.kn to i32
  %i.kp = trunc i64 %indvars.iv138.i to i16
  %i.kq = sext i32 %.190123.i to i64
  br label %.outer.split.i

.outer.split.i:                                   ; preds = %.outer.i, %.outer.split.lr.ph.i
  %.088.ph120.i = phi i32 [ %i.ko, %.outer.split.lr.ph.i ], [ %i.lf, %.outer.i ]
  %.291.ph119.i = phi i64 [ %i.kq, %.outer.split.lr.ph.i ], [ %indvars.iv.next136.i, %.outer.i ]
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.outer.split.i
  %indvars.iv135.i = phi i64 [ %.291.ph119.i, %.outer.split.i ], [ %indvars.iv.next136.i, %bb.au ]
  %indvars.iv.next136.i = add nsw i64 %indvars.iv135.i, -1 ; 4 uses
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.az, i64 %indvars.iv.next136.i
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !31 ; 2 uses
  %i.kt = icmp sgt i32 %i.ks, %i.hm
  br i1 %i.kt, label %bb.au, label %bb.av, !llvm.loop !58

bb.av:                                            ; preds = %bb.au
  %i.ku = sext i32 %i.ks to i64
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.ku ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 2 ; 2 uses
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !24
  %i.ky = zext i16 %i.kx to i64                   ; 2 uses
  %.not100.i = icmp eq i64 %indvars.iv138.i, %i.ky
  br i1 %.not100.i, label %.outer.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kz = sub nsw i64 %indvars.iv138.i, %i.ky
  %i.la = load i16, ptr %i.kv, align 2, !tbaa !24
  %i.lb = zext i16 %i.la to i64
  %i.lc = mul nsw i64 %i.kz, %i.lb
  %i.ld = load i64, ptr %i.if, align 8, !tbaa !29
  %i.le = add i64 %i.lc, %i.ld
  store i64 %i.le, ptr %i.if, align 8, !tbaa !29
  store i16 %i.kp, ptr %i.kw, align 2, !tbaa !24
  br label %.outer.i

.outer.i:                                         ; preds = %bb.aw, %bb.av
  %i.lf = add nsw i32 %.088.ph120.i, -1           ; 2 uses
  %.not99.i = icmp eq i32 %i.lf, 0
  br i1 %.not99.i, label %.outer._crit_edge.loopexit.i, label %.outer.split.i, !llvm.loop !58

.outer._crit_edge.loopexit.i:                     ; preds = %.outer.i
  %2 = trunc nsw i64 %indvars.iv.next136.i to i32
  br label %.outer._crit_edge.i

.outer._crit_edge.i:                              ; preds = %.outer._crit_edge.loopexit.i, %.lr.ph125.i
  %.291.lcssa.i = phi i32 [ %.190123.i, %.lr.ph125.i ], [ %2, %.outer._crit_edge.loopexit.i ]
  %indvars.iv.next139.i = add nsw i64 %indvars.iv138.i, -1 ; 2 uses
  %.not.i124 = icmp eq i64 %indvars.iv.next139.i, 0
  br i1 %.not.i124, label %gen_bitlen.exit, label %.lr.ph125.i, !llvm.loop !59

gen_bitlen.exit:                                  ; preds = %.outer._crit_edge.i, %bb.ak, %._crit_edge.i, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.lg = load i16, ptr %i.hv, align 8, !tbaa !75
  %i.lh = shl i16 %i.lg, 1                        ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %i.lh, ptr %i.li, align 2, !tbaa !75
  %i.lj = getelementptr i8, ptr %0, i64 2978
  %i.lk = load i16, ptr %i.lj, align 2, !tbaa !75
  %i.ll = add i16 %i.lk, %i.lh
  %i.lm = shl i16 %i.ll, 1                        ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %i.lm, ptr %i.ln, align 4, !tbaa !75
  %i.lo = getelementptr i8, ptr %0, i64 2980
  %i.lp = load i16, ptr %i.lo, align 4, !tbaa !75
  %i.lq = add i16 %i.lp, %i.lm
  %i.lr = shl i16 %i.lq, 1                        ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 %i.lr, ptr %i.ls, align 2, !tbaa !75
  %i.lt = getelementptr i8, ptr %0, i64 2982
  %i.lu = load i16, ptr %i.lt, align 2, !tbaa !75
  %i.lv = add i16 %i.lu, %i.lr
  %i.lw = shl i16 %i.lv, 1                        ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %i.lw, ptr %i.lx, align 8, !tbaa !75
  %i.ly = getelementptr i8, ptr %0, i64 2984
  %i.lz = load i16, ptr %i.ly, align 8, !tbaa !75
  %i.ma = add i16 %i.lz, %i.lw
  %i.mb = shl i16 %i.ma, 1                        ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 %i.mb, ptr %i.mc, align 2, !tbaa !75
  %i.md = getelementptr i8, ptr %0, i64 2986
  %i.me = load i16, ptr %i.md, align 2, !tbaa !75
  %i.mf = add i16 %i.me, %i.mb
  %i.mg = shl i16 %i.mf, 1                        ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i16 %i.mg, ptr %i.mh, align 4, !tbaa !75
  %i.mi = getelementptr i8, ptr %0, i64 2988
  %i.mj = load i16, ptr %i.mi, align 4, !tbaa !75
  %i.mk = add i16 %i.mj, %i.mg
  %i.ml = shl i16 %i.mk, 1                        ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i16 %i.ml, ptr %i.mm, align 2, !tbaa !75
  %i.mn = getelementptr i8, ptr %0, i64 2990
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !75
  %i.mp = add i16 %i.mo, %i.ml
  %i.mq = shl i16 %i.mp, 1                        ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 %i.mq, ptr %i.mr, align 16, !tbaa !75
  %i.ms = getelementptr i8, ptr %0, i64 2992
  %i.mt = load i16, ptr %i.ms, align 8, !tbaa !75
  %i.mu = add i16 %i.mt, %i.mq
  %i.mv = shl i16 %i.mu, 1                        ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 %i.mv, ptr %i.mw, align 2, !tbaa !75
  %i.mx = getelementptr i8, ptr %0, i64 2994
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !75
  %i.mz = add i16 %i.my, %i.mv
  %i.na = shl i16 %i.mz, 1                        ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i16 %i.na, ptr %i.nb, align 4, !tbaa !75
  %i.nc = getelementptr i8, ptr %0, i64 2996
  %i.nd = load i16, ptr %i.nc, align 4, !tbaa !75
  %i.ne = add i16 %i.nd, %i.na
  %i.nf = shl i16 %i.ne, 1                        ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i16 %i.nf, ptr %i.ng, align 2, !tbaa !75
  %i.nh = getelementptr i8, ptr %0, i64 2998
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !75
  %i.nj = add i16 %i.ni, %i.nf
  %i.nk = shl i16 %i.nj, 1                        ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i16 %i.nk, ptr %i.nl, align 8, !tbaa !75
  %i.nm = getelementptr i8, ptr %0, i64 3000
  %i.nn = load i16, ptr %i.nm, align 8, !tbaa !75
  %i.no = add i16 %i.nn, %i.nk
  %i.np = shl i16 %i.no, 1                        ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i16 %i.np, ptr %i.nq, align 2, !tbaa !75
  %i.nr = getelementptr i8, ptr %0, i64 3002
  %i.ns = load i16, ptr %i.nr, align 2, !tbaa !75
  %i.nt = add i16 %i.ns, %i.np
  %i.nu = shl i16 %i.nt, 1                        ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i16 %i.nu, ptr %i.nv, align 4, !tbaa !75
  %i.nw = getelementptr i8, ptr %0, i64 3004
  %i.nx = load i16, ptr %i.nw, align 4, !tbaa !75
  %i.ny = add i16 %i.nx, %i.nu
  %i.nz = shl i16 %i.ny, 1
  %i.oa = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  store i16 %i.nz, ptr %i.oa, align 2, !tbaa !75
  %.not21.i = icmp slt i32 %.2.lcssa, 0
  br i1 %.not21.i, label %gen_codes.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %gen_bitlen.exit
  %i.ob = add nuw i32 %.2.lcssa, 1
  %wide.trip.count.i = zext i32 %i.ob to i64
  br label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %bb.ba, %.lr.ph.preheader.i
  %indvars.iv.i127 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i128, %bb.ba ] ; 2 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i127 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 2
  %i.oe = load i16, ptr %i.od, align 2, !tbaa !24 ; 4 uses
  %i.of = icmp eq i16 %i.oe, 0
  br i1 %i.of, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i126
  %i.og = zext i16 %i.oe to i32                   ; 2 uses
  %i.oh = zext i16 %i.oe to i64
  %i.oi = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.oh ; 2 uses
  %i.oj = load i16, ptr %i.oi, align 2, !tbaa !75 ; 3 uses
  %i.ok = add i16 %i.oj, 1
  store i16 %i.ok, ptr %i.oi, align 2, !tbaa !75
  %xtraiter = and i32 %i.og, 3                    ; 3 uses
  %i.ol = icmp ult i16 %i.oe, 4
  br i1 %i.ol, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ax
  %unroll_iter = and i32 %i.og, 65532
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.new
  %.07.i.i = phi i16 [ %i.oj, %.new ], [ %i.oy, %bb.ay ] ; 5 uses
  %.0.i.i = phi i16 [ 0, %.new ], [ %i.oz, %bb.ay ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %bb.ay ]
  %i.om = and i16 %.07.i.i, 1
  %i.on = or disjoint i16 %.0.i.i, %i.om
  %i.oo = shl i16 %i.on, 2
  %i.op = and i16 %.07.i.i, 2
  %i.oq = or disjoint i16 %i.oo, %i.op
  %i.or = lshr i16 %.07.i.i, 2
  %i.os = and i16 %i.or, 1
  %i.ot = or disjoint i16 %i.oq, %i.os
  %i.ou = lshr i16 %.07.i.i, 3
  %i.ov = shl i16 %i.ot, 1
  %i.ow = and i16 %i.ou, 1
  %i.ox = or disjoint i16 %i.ov, %i.ow            ; 2 uses
  %i.oy = lshr i16 %.07.i.i, 4                    ; 2 uses
  %i.oz = shl i16 %i.ox, 1                        ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %bi_reverse.exit.i.unr-lcssa, label %bb.ay, !llvm.loop !60

bi_reverse.exit.i.unr-lcssa:                      ; preds = %bb.ay
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bi_reverse.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %bi_reverse.exit.i.unr-lcssa, %bb.ax
  %.07.i.i.epil.init = phi i16 [ %i.oj, %bb.ax ], [ %i.oy, %bi_reverse.exit.i.unr-lcssa ]
  %.0.i.i.epil.init = phi i16 [ 0, %bb.ax ], [ %i.oz, %bi_reverse.exit.i.unr-lcssa ]
  %lcmp.mod206 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod206)
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.epil.preheader
  %.07.i.i.epil = phi i16 [ %.07.i.i.epil.init, %.epil.preheader ], [ %i.pc, %bb.az ] ; 2 uses
  %.0.i.i.epil = phi i16 [ %.0.i.i.epil.init, %.epil.preheader ], [ %i.pd, %bb.az ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.az ]
  %i.pa = and i16 %.07.i.i.epil, 1
  %i.pb = or disjoint i16 %.0.i.i.epil, %i.pa     ; 2 uses
  %i.pc = lshr i16 %.07.i.i.epil, 1
  %i.pd = shl i16 %i.pb, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bi_reverse.exit.i, label %bb.az, !llvm.loop !61

bi_reverse.exit.i:                                ; preds = %bb.az, %bi_reverse.exit.i.unr-lcssa
  %.lcssa = phi i16 [ %i.ox, %bi_reverse.exit.i.unr-lcssa ], [ %i.pb, %bb.az ]
  store i16 %.lcssa, ptr %i.oc, align 2, !tbaa !24
  br label %bb.ba

bb.ba:                                            ; preds = %bi_reverse.exit.i, %.lr.ph.i126
  %indvars.iv.next.i128 = add nuw nsw i64 %indvars.iv.i127, 1 ; 2 uses
  %exitcond.not.i129 = icmp eq i64 %indvars.iv.next.i128, %wide.trip.count.i
  br i1 %exitcond.not.i129, label %gen_codes.exit, label %.lr.ph.i126, !llvm.loop !62

gen_codes.exit:                                   ; preds = %bb.ba, %gen_bitlen.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @compress_block(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5900 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %..loopexit_crit_edge, label %.preheader

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !22
  br label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 19 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 20 uses
  br label %bb.b
end_hunk_0
