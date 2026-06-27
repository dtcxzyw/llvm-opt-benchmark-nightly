inline.NumInlined: 115
inline.NumDeleted: 35
begin_hunk_0_@af_cjk_hints_detect_features:bb.a

bb.aq:                                            ; preds = %bb.ap
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gc, i64 72
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !93 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 2
  br label %bb.ar

bb.ar:                                            ; preds = %select.unfold.i, %bb.aq
  %.0177.i = phi ptr [ %i.go, %bb.aq ], [ %i.hc, %select.unfold.i ] ; 2 uses
  %.0174.i = phi i64 [ 0, %bb.aq ], [ %.2176.ph.i, %select.unfold.i ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.0177.i, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !147 ; 2 uses
  %.not227.i = icmp eq ptr %i.gr, null
  br i1 %.not227.i, label %select.unfold.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gs = load i16, ptr %i.gp, align 2, !tbaa !148 ; 2 uses
  %i.gt = sext i16 %i.gs to i64                   ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 2
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !148 ; 2 uses
  %i.gw = sext i16 %i.gv to i64                   ; 2 uses
  %i.gx = icmp sgt i16 %i.gs, %i.gv
  %i.gy = sub nsw i64 %i.gt, %i.gw
  %i.gz = sub nsw i64 %i.gw, %i.gt
  %i.ha = select i1 %i.gx, i64 %i.gy, i64 %i.gz   ; 3 uses
  %.not228.i = icmp slt i64 %i.ha, %.0169.i
  br i1 %.not228.i, label %select.unfold.i, label %bb.at

select.unfold.i:                                  ; preds = %bb.as, %bb.ar
  %.2176.ph.i = phi i64 [ %.0174.i, %bb.ar ], [ %i.ha, %bb.as ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.0177.i, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !104 ; 2 uses
  %.not229.i = icmp eq ptr %i.hc, %i.go
  br i1 %.not229.i, label %bb.at, label %bb.ar, !llvm.loop !380

bb.at:                                            ; preds = %select.unfold.i, %bb.as
  %.2176241.i = phi i64 [ %.2176.ph.i, %select.unfold.i ], [ %i.ha, %bb.as ]
  %.not230.i = icmp slt i64 %.2176241.i, %.0169.i
  br i1 %.not230.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at, %bb.ap
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.ao, %bb.an
  %.3181.i = phi i64 [ %.0178263.i, %bb.ao ], [ %.0178263.i, %bb.an ], [ %spec.select.i, %bb.au ], [ %.0178263.i, %bb.at ]
  %.3173.i = phi ptr [ %.0170264.i, %bb.ao ], [ %.0170264.i, %bb.an ], [ %i.gc, %bb.au ], [ %.0170264.i, %bb.at ] ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i19, label %bb.an, !llvm.loop !381

._crit_edge.i19:                                  ; preds = %bb.av
  %.not223.i.a = icmp eq ptr %.3173.i, null
  br i1 %.not223.i.a, label %._crit_edge.thread.i, label %bb.aw

._crit_edge.thread.i:                             ; preds = %.preheader261.i.._crit_edge.thread.i_crit_edge, %._crit_edge.i19
  %i.hd = phi i8 [ %.pre, %.preheader261.i.._crit_edge.thread.i_crit_edge ], [ %i.fz, %._crit_edge.i19 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.he = getelementptr inbounds nuw i8, ptr %.0166265.i, i64 2 ; 2 uses
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !148
  %i.hg = sext i16 %i.hf to i32
  %i.hh = sext i8 %i.hd to i32
  %i.hi = call fastcc i32 @af_axis_hints_new_edge(ptr noundef nonnull %i.d, i32 noundef %i.hg, i32 noundef %i.hh, i8 noundef zeroext 0, ptr noundef %i.ey, ptr noundef %i.a) ; 2 uses
  %.not224.i = icmp eq i32 %i.hi, 0
  br i1 %.not224.i, label %select.unfold242.i, label %bb.ax

bb.aw:                                            ; preds = %._crit_edge.i19
  %i.hj = getelementptr inbounds nuw i8, ptr %.3173.i, i64 72
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !93
  %i.hl = getelementptr inbounds nuw i8, ptr %.0166265.i, i64 24
  store ptr %i.hk, ptr %i.hl, align 8, !tbaa !104
  %i.hm = getelementptr inbounds nuw i8, ptr %.3173.i, i64 80 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !382
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  store ptr %.0166265.i, ptr %i.ho, align 8, !tbaa !104
  store ptr %.0166265.i, ptr %i.hm, align 8, !tbaa !382
  br label %.thread244.i

select.unfold242.i:                               ; preds = %._crit_edge.thread.i
  %i.hp = getelementptr inbounds nuw i8, ptr %.0166265.i, i64 1
  %i.hq = load ptr, ptr %i.a, align 8, !tbaa !339 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.hq, i8 0, i64 72, i1 false)
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 72
  store ptr %.0166265.i, ptr %i.hr, align 8, !tbaa !93
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 80
  store ptr %.0166265.i, ptr %i.hs, align 8, !tbaa !382
  %i.ht = load i8, ptr %i.hp, align 1, !tbaa !343
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 25
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !201
  %i.hv = load i16, ptr %i.he, align 2, !tbaa !148 ; 2 uses
  store i16 %i.hv, ptr %i.hq, align 8, !tbaa !203
  %i.hw = sext i16 %i.hv to i64
  %i.hx = mul nsw i64 %i.fl, %i.hw                ; 2 uses
  %i.hy = ashr i64 %i.hx, 63
  %i.hz = add nsw i64 %i.hx, 32768
  %i.ia = add nsw i64 %i.hz, %i.hy
  %i.ib = ashr i64 %i.ia, 16                      ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store i64 %i.ib, ptr %i.ic, align 8, !tbaa !97
  %i.id = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store i64 %i.ib, ptr %i.id, align 8, !tbaa !96
  %i.ie = getelementptr inbounds nuw i8, ptr %.0166265.i, i64 24
  store ptr %.0166265.i, ptr %i.ie, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread244.i

bb.ax:                                            ; preds = %._crit_edge.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %af_cjk_hints_compute_edges.exit

.thread244.i:                                     ; preds = %select.unfold242.i, %bb.aw
  %i.if = getelementptr inbounds nuw i8, ptr %.0166265.i, i64 80 ; 2 uses
  %i.ig = icmp ult ptr %i.if, %i.ff
  br i1 %i.ig, label %.preheader261.i, label %._crit_edge266.i, !llvm.loop !383

._crit_edge266.i:                                 ; preds = %.thread244.i, %bb.am
  %i.ih = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !87 ; 4 uses
  %.not212.i = icmp eq ptr %i.ii, null
  br i1 %.not212.i, label %af_cjk_hints_compute_edges.exit, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge266.i
  %i.ij = load i32, ptr %i.fg, align 8, !tbaa !92 ; 2 uses
  %i.ik = zext i32 %i.ij to i64
  %.idx.i14 = mul nuw nsw i64 %i.ik, 88
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 %.idx.i14 ; 2 uses
  %.not298.i = icmp eq i32 %i.ij, 0
  br i1 %.not298.i, label %af_cjk_hints_compute_edges.exit, label %.lr.ph269.i

.lr.ph269.i:                                      ; preds = %bb.ay, %.loopexit260.i
  %.0164267.i = phi ptr [ %i.ir, %.loopexit260.i ], [ %i.ii, %bb.ay ] ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.0164267.i, i64 72
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !93 ; 3 uses
  %.not221.i.a = icmp eq ptr %i.in, null
  br i1 %.not221.i.a, label %.loopexit260.i, label %.preheader259.i

.preheader259.i:                                  ; preds = %.lr.ph269.i, %.preheader259.i
  %.1167.i = phi ptr [ %i.iq, %.preheader259.i ], [ %i.in, %.lr.ph269.i ] ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.1167.i, i64 16
  store ptr %.0164267.i, ptr %i.io, align 8, !tbaa !207
  %i.ip = getelementptr inbounds nuw i8, ptr %.1167.i, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !104 ; 2 uses
  %.not222.i = icmp eq ptr %i.iq, %i.in
  br i1 %.not222.i, label %.loopexit260.i, label %.preheader259.i, !llvm.loop !384

.loopexit260.i:                                   ; preds = %.preheader259.i, %.lr.ph269.i
  %i.ir = getelementptr inbounds nuw i8, ptr %.0164267.i, i64 88 ; 2 uses
  %i.is = icmp ult ptr %i.ir, %i.il
  br i1 %i.is, label %.lr.ph269.i, label %.lr.ph271.i, !llvm.loop !385

.lr.ph271.i:                                      ; preds = %.loopexit260.i, %bb.bk
  %.1165270.i = phi ptr [ %i.kt, %bb.bk ], [ %i.ii, %.loopexit260.i ] ; 9 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.1165270.i, i64 72
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !93 ; 3 uses
  %.not213.i = icmp eq ptr %i.iu, null
  br i1 %.not213.i, label %.loopexit.i, label %.preheader.i15

.preheader.i15:                                   ; preds = %.lr.ph271.i
  %i.iv = getelementptr inbounds nuw i8, ptr %.1165270.i, i64 48 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.1165270.i, i64 56 ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.bh, %.preheader.i15
  %.2168.i = phi ptr [ %i.kj, %bb.bh ], [ %i.iu, %.preheader.i15 ] ; 6 uses
  %.0161.i = phi i32 [ %.1162.i, %bb.bh ], [ 0, %.preheader.i15 ]
  %.0158.i = phi i32 [ %.1159.i, %bb.bh ], [ 0, %.preheader.i15 ]
  %i.ix = load i8, ptr %.2168.i, align 8, !tbaa !334
  %i.iy = and i8 %i.ix, 1                         ; 2 uses
  %i.iz = zext nneg i8 %i.iy to i32
  %.1162.i = add nuw nsw i32 %.0161.i, %i.iz      ; 3 uses
  %i.ja = xor i8 %i.iy, 1
  %i.jb = zext nneg i8 %i.ja to i32
  %.1159.i = add nuw nsw i32 %.0158.i, %i.jb      ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.2168.i, i64 40
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !349 ; 3 uses
  %.not215.i = icmp eq ptr %i.jd, null
  br i1 %.not215.i, label %.thread248.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !207
  %i.jg = icmp ne ptr %i.jf, %.1165270.i          ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.2168.i, i64 32
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !147 ; 2 uses
  %i.jj = icmp ne ptr %i.ji, null
  %or.cond.i16 = select i1 %i.jj, i1 true, i1 %i.jg
  br i1 %or.cond.i16, label %bb.bb, label %bb.bh

.thread248.i:                                     ; preds = %bb.az
  %i.jk = getelementptr inbounds nuw i8, ptr %.2168.i, i64 32
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !147 ; 2 uses
  %.not254.i = icmp eq ptr %i.jl, null
  br i1 %.not254.i, label %bb.bh, label %.thread250.i

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.jg, label %bb.bc, label %.thread250.i

bb.bc:                                            ; preds = %bb.bb
  br label %.thread250.i

.thread250.i:                                     ; preds = %bb.bc, %bb.bb, %.thread248.i
  %i.jm = phi i1 [ true, %bb.bc ], [ false, %bb.bb ], [ false, %.thread248.i ]
  %.0154.in.i = phi ptr [ %i.iw, %bb.bc ], [ %i.iv, %bb.bb ], [ %i.iv, %.thread248.i ]
  %.0153.i = phi ptr [ %i.jd, %bb.bc ], [ %i.ji, %bb.bb ], [ %i.jl, %.thread248.i ] ; 2 uses
  %.0154.i = load ptr, ptr %.0154.in.i, align 8, !tbaa !339 ; 3 uses
  %.not216.i = icmp eq ptr %.0154.i, null
  br i1 %.not216.i, label %.sink.split.i17, label %bb.bd

bb.bd:                                            ; preds = %.thread250.i
  %i.jn = load i16, ptr %.1165270.i, align 8, !tbaa !203
  %i.jo = sext i16 %i.jn to i64
  %i.jp = load i16, ptr %.0154.i, align 8, !tbaa !203
  %i.jq = sext i16 %i.jp to i64
  %i.jr = sub nsw i64 %i.jo, %i.jq
  %spec.select234.i = tail call i64 @llvm.abs.i64(i64 %i.jr, i1 true)
  %i.js = getelementptr inbounds nuw i8, ptr %.2168.i, i64 2
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !148 ; 2 uses
  %i.ju = sext i16 %i.jt to i64                   ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.0153.i, i64 2
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !148 ; 2 uses
  %i.jx = sext i16 %i.jw to i64                   ; 2 uses
  %i.jy = icmp sgt i16 %i.jt, %i.jw
  %i.jz = sub nsw i64 %i.ju, %i.jx
  %i.ka = sub nsw i64 %i.jx, %i.ju
  %i.kb = select i1 %i.jy, i64 %i.jz, i64 %i.ka
  %i.kc = icmp slt i64 %i.kb, %spec.select234.i
  br i1 %i.kc, label %.sink.split.i17, label %bb.be

.sink.split.i17:                                  ; preds = %bb.bd, %.thread250.i
  %i.kd = getelementptr inbounds nuw i8, ptr %.0153.i, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !207
  br label %bb.be

bb.be:                                            ; preds = %.sink.split.i17, %bb.bd
  %.2.i = phi ptr [ %.0154.i, %bb.bd ], [ %i.ke, %.sink.split.i17 ] ; 3 uses
  br i1 %i.jm, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store ptr %.2.i, ptr %i.iw, align 8, !tbaa !386
  %i.kf = getelementptr inbounds nuw i8, ptr %.2.i, i64 24 ; 2 uses
  %i.kg = load i8, ptr %i.kf, align 8, !tbaa !199
  %i.kh = or i8 %i.kg, 2
  store i8 %i.kh, ptr %i.kf, align 8, !tbaa !199
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  store ptr %.2.i, ptr %i.iv, align 8, !tbaa !387
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %.thread248.i, %bb.ba
  %i.ki = getelementptr inbounds nuw i8, ptr %.2168.i, i64 24
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !104 ; 2 uses
  %.not217.i = icmp eq ptr %i.kj, %i.iu
  br i1 %.not217.i, label %.loopexit.loopexit.i, label %bb.az, !llvm.loop !388

.loopexit.loopexit.i:                             ; preds = %bb.bh
  %i.kk = icmp samesign uge i32 %.1162.i, %.1159.i
  %i.kl = icmp ne i32 %.1162.i, 0
  %i.km = select i1 %i.kl, i1 %i.kk, i1 false
  %i.kn = zext i1 %i.km to i8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.lr.ph271.i
  %.2163.i = phi i8 [ 0, %.lr.ph271.i ], [ %i.kn, %.loopexit.loopexit.i ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.1165270.i, i64 24
  store i8 %.2163.i, ptr %i.ko, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %.1165270.i, i64 56 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !386
  %.not219.i = icmp eq ptr %i.kq, null
  br i1 %.not219.i, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %.loopexit.i
  %i.kr = getelementptr inbounds nuw i8, ptr %.1165270.i, i64 48
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !387
  %.not220.i = icmp eq ptr %i.ks, null
  br i1 %.not220.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store ptr null, ptr %i.kp, align 8, !tbaa !386
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %.loopexit.i
  %i.kt = getelementptr inbounds nuw i8, ptr %.1165270.i, i64 88 ; 2 uses
  %i.ku = icmp ult ptr %i.kt, %i.il
  br i1 %i.ku, label %.lr.ph271.i, label %af_cjk_hints_compute_edges.exit, !llvm.loop !389

af_cjk_hints_compute_edges.exit:                  ; preds = %bb.bk, %bb.b, %bb.ay, %._crit_edge266.i, %bb.ax, %af_cjk_hints_compute_segments.exit
  %.0 = phi i32 [ %i.ac, %af_cjk_hints_compute_segments.exit ], [ 0, %bb.ay ], [ %i.hi, %bb.ax ], [ %i.j, %bb.b ], [ 0, %._crit_edge266.i ], [ 0, %bb.bk ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @af_cjk_hints_compute_blue_edges(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = zext nneg i32 %2 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw [2536 x i8], ptr %i.a, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87   ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !92
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = getelementptr inbounds nuw [15344 x i8], ptr %i.k, i64 %i.b ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !361
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load i32, ptr %i.n, align 8, !tbaa !28
  %i.p = udiv i32 %i.o, 40
  %i.q = zext nneg i32 %i.p to i64
  %sext = shl i64 %i.m, 32
  %i.r = ashr exact i64 %sext, 32                 ; 2 uses
  %i.s = mul nsw i64 %i.r, %i.q                   ; 2 uses
  %i.t = ashr i64 %i.s, 63
  %i.u = add nsw i64 %i.s, 32768
  %i.v = add nsw i64 %i.u, %i.t
  %i.w = lshr i64 %i.v, 16
  %i.x = trunc i64 %i.w to i32
  %i.y = tail call i32 @llvm.smin.i32(i32 %i.x, i32 32)
  %spec.store.select = sext i32 %i.y to i64
  %i.z = icmp ult ptr %i.e, %i.j
  br i1 %i.z, label %.preheader.lr.ph, label %._crit_edge78

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 428
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !71 ; 2 uses
  %.not79 = icmp eq i32 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 432
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br i1 %.not79, label %._crit_edge78, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext i32 %i.ab to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.e
  %.05477.us = phi ptr [ %i.ag, %bb.e ], [ %i.e, %.preheader.us.preheader ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05477.us, i64 25
  br label %bb.f

bb.d:                                             ; preds = %._crit_edge.us
  %i.af = getelementptr inbounds nuw i8, ptr %.05477.us, i64 40
  store ptr %.360.us, ptr %i.af, align 8, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.us
  %i.ag = getelementptr inbounds nuw i8, ptr %.05477.us, i64 88 ; 2 uses
  %i.ah = icmp ult ptr %i.ag, %i.j
  br i1 %i.ah, label %.preheader.us, label %._crit_edge78, !llvm.loop !390

bb.f:                                             ; preds = %.preheader.us, %bb.i
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.05675.us = phi i64 [ %spec.store.select, %.preheader.us ], [ %.3.us, %bb.i ] ; 4 uses
  %.05774.us = phi ptr [ null, %.preheader.us ], [ %.360.us, %bb.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %i.ac, i64 %indvars.iv ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !370 ; 2 uses
  %i.al = and i32 %i.ak, 1
  %.not70.us = icmp eq i32 %i.al, 0
  br i1 %.not70.us, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = load i8, ptr %i.ae, align 1, !tbaa !201
  %i.an = sext i8 %i.am to i32
  %i.ao = load i32, ptr %i.ad, align 8, !tbaa !202
  %i.ap = icmp eq i32 %i.ao, %i.an
  %i.aq = and i32 %i.ak, 2
  %i.ar = icmp eq i32 %i.aq, 0
  %.not71.us = xor i1 %i.ar, %i.ap
  br i1 %.not71.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load i16, ptr %.05477.us, align 8, !tbaa !203
  %i.at = sext i16 %i.as to i64                   ; 3 uses
  %i.au = load i64, ptr %i.ai, align 8, !tbaa !363 ; 2 uses
  %i.av = sub nsw i64 %i.at, %i.au
  %i.aw = tail call i64 @llvm.abs.i64(i64 %i.av, i1 true)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !367 ; 2 uses
  %i.az = sub nsw i64 %i.at, %i.ay
  %i.ba = tail call i64 @llvm.abs.i64(i64 %i.az, i1 true)
  %i.bb = icmp samesign ugt i64 %i.aw, %i.ba      ; 2 uses
  %.0.us = select i1 %i.bb, ptr %i.ax, ptr %i.ai
  %i.bc = select i1 %i.bb, i64 %i.ay, i64 %i.au
  %i.bd = sub nsw i64 %i.at, %i.bc
  %.053.us = tail call i64 @llvm.abs.i64(i64 %i.bd, i1 true)
  %sext72.us = shl i64 %.053.us, 32
  %i.be = ashr exact i64 %sext72.us, 32
  %i.bf = mul nsw i64 %i.be, %i.r                 ; 2 uses
  %i.bg = ashr i64 %i.bf, 63
  %i.bh = add nsw i64 %i.bf, 32768
  %i.bi = add nsw i64 %i.bh, %i.bg
  %i.bj = shl i64 %i.bi, 16
  %i.bk = ashr i64 %i.bj, 32                      ; 2 uses
  %i.bl = icmp sgt i64 %.05675.us, %i.bk
  %.158.us = select i1 %i.bl, ptr %.0.us, ptr %.05774.us
  %.1.us = tail call i64 @llvm.smin.i64(i64 %.05675.us, i64 %i.bk)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.360.us = phi ptr [ %.05774.us, %bb.f ], [ %.158.us, %bb.h ], [ %.05774.us, %bb.g ] ; 3 uses
  %.3.us = phi i64 [ %.05675.us, %bb.f ], [ %.1.us, %bb.h ], [ %.05675.us, %bb.g ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.f, !llvm.loop !391

._crit_edge.us:                                   ; preds = %bb.i
  %.not69.us = icmp eq ptr %.360.us, null
  br i1 %.not69.us, label %bb.e, label %bb.d

._crit_edge78:                                    ; preds = %bb.e, %.preheader.lr.ph, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @af_cjk_hint_edges(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr inbounds nuw [2536 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87   ; 14 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !92   ; 2 uses
  %i.h = zext i32 %i.g to i64
  %.idx = mul nuw nsw i64 %i.h, 88
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 4 uses
  %.not338 = icmp eq i32 %i.g, 0
  br i1 %.not338, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 5148
  %i.k = getelementptr i8, ptr %0, i64 5152
  br label %bb.c

.lr.ph285:                                        ; preds = %.thread
  %i.l = getelementptr i8, ptr %0, i64 5148       ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 5152       ; 2 uses
  %2 = icmp ne i32 %1, 0
  br label %bb.k

bb.c:                                             ; preds = %.lr.ph, %.thread
  %.0175277 = phi ptr [ %i.e, %.lr.ph ], [ %i.at, %.thread ] ; 8 uses
  %.0176276 = phi ptr [ null, %.lr.ph ], [ %.2178, %.thread ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0175277, i64 24 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !199   ; 2 uses
  %i.p = and i8 %i.o, 4
  %.not232 = icmp eq i8 %i.p, 0
  br i1 %.not232, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.0175277, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !198  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0175277, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !387  ; 8 uses
  %.not233 = icmp eq ptr %i.r, null
  br i1 %.not233, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not234 = icmp eq ptr %i.t, null
  br i1 %.not234, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !198  ; 2 uses
  %.not235 = icmp eq ptr %i.v, null
  br i1 %.not235, label %.thread, label %.thread324

.thread324:                                       ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !392  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.x, ptr %i.y, align 8, !tbaa !96
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !199
  %i.ab = or i8 %i.aa, 4
  store i8 %i.ab, ptr %i.z, align 8, !tbaa !199
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !392 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0175277, i64 16
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !96
  %i.af = or disjoint i8 %i.o, 4
  store i8 %i.af, ptr %i.n, align 8, !tbaa !199
  %.not237 = icmp eq ptr %i.t, null
  br i1 %.not237, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !198
  %i.ag = icmp eq ptr %.pre, null
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread324, %bb.h
  %.0187261329 = phi ptr [ %i.t, %.thread324 ], [ %.0175277, %bb.h ]
  %.0186262328 = phi ptr [ %.0175277, %.thread324 ], [ %i.t, %bb.h ] ; 3 uses
  %i.ah = phi i64 [ %i.x, %.thread324 ], [ %i.ad, %bb.h ]
  %.val244 = load i32, ptr %i.j, align 4, !tbaa !86
  %.val245 = load ptr, ptr %i.k, align 8, !tbaa !77
  %i.ai = getelementptr inbounds nuw i8, ptr %.0186262328, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !97
  %i.ak = getelementptr inbounds nuw i8, ptr %.0187261329, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !97
  %i.am = sub nsw i64 %i.aj, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.0186262328, i64 24 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !199
  %i.ap = tail call fastcc i64 @af_cjk_compute_stem_width(i32 %.val244, ptr readonly %.val245, i32 noundef range(i32 0, 2) %1, i64 noundef %i.am)
  %i.aq = add nsw i64 %i.ap, %i.ah
  %i.ar = getelementptr inbounds nuw i8, ptr %.0186262328, i64 16
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !96
  %i.as = or i8 %i.ao, 4
  store i8 %i.as, ptr %i.an, align 8, !tbaa !199
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.not239 = icmp eq ptr %.0176276, null
  %spec.select = select i1 %.not239, ptr %.0175277, ptr %.0176276
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.c, %bb.j
  %.2178 = phi ptr [ %.0176276, %bb.c ], [ %spec.select, %bb.j ], [ %.0176276, %bb.e ], [ %.0176276, %bb.f ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0175277, i64 88 ; 2 uses
  %i.au = icmp ult ptr %i.at, %i.i
  br i1 %i.au, label %bb.c, label %.lr.ph285, !llvm.loop !393

bb.k:                                             ; preds = %.lr.ph285, %bb.z
  %.1283 = phi ptr [ %i.e, %.lr.ph285 ], [ %i.cs, %bb.z ] ; 12 uses
  %.3179282 = phi ptr [ %.2178, %.lr.ph285 ], [ %.4, %bb.z ] ; 6 uses
  %.0183281 = phi i64 [ 0, %.lr.ph285 ], [ %.2185, %bb.z ] ; 7 uses
  %.0189280 = phi i64 [ 0, %.lr.ph285 ], [ %.1190, %bb.z ] ; 5 uses
  %.0191279 = phi i8 [ 0, %.lr.ph285 ], [ %.1192, %bb.z ] ; 4 uses
  %.0193278 = phi i32 [ 0, %.lr.ph285 ], [ %.1194, %bb.z ] ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.1283, i64 24 ; 5 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !199 ; 3 uses
  %i.ax = and i8 %i.aw, 4
  %.not228 = icmp eq i8 %i.ax, 0
  br i1 %.not228, label %bb.l, label %bb.z

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %.1283, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !387 ; 12 uses
  %.not229 = icmp eq ptr %i.az, null
  br i1 %.not229, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ba = add nsw i32 %.0193278, 1
  br label %bb.z

bb.n:                                             ; preds = %bb.l
  %.not230 = icmp eq i8 %.0191279, 0
  br i1 %.not230, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %.1283, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !96
  %i.bd = add nsw i64 %.0189280, 64               ; 2 uses
  %i.be = icmp slt i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !96
  %i.bh = icmp slt i64 %i.bg, %i.bd
  br i1 %i.bh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bi = add nsw i32 %.0193278, 1
  br label %bb.z

bb.r:                                             ; preds = %bb.p, %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !198
  %.not231 = icmp eq ptr %i.bk, null
  br i1 %.not231, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val242 = load i32, ptr %i.l, align 4, !tbaa !86
  %.val243 = load ptr, ptr %i.m, align 8, !tbaa !77
  %i.bl = getelementptr inbounds nuw i8, ptr %.1283, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !97
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !97
  %i.bp = sub nsw i64 %i.bm, %i.bo
  %i.bq = tail call fastcc i64 @af_cjk_compute_stem_width(i32 %.val242, ptr readonly %.val243, i32 noundef range(i32 0, 2) %1, i64 noundef %i.bp)
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !96
  %i.bt = add nsw i64 %i.bs, %i.bq
  %i.bu = getelementptr inbounds nuw i8, ptr %.1283, i64 16
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !96
  %i.bv = or disjoint i8 %i.aw, 4
  store i8 %i.bv, ptr %i.av, align 8, !tbaa !199
  br label %bb.z

bb.t:                                             ; preds = %bb.r
  %i.bw = icmp ult ptr %i.az, %.1283
  br i1 %i.bw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.val = load i32, ptr %i.l, align 4, !tbaa !86
  %.val241 = load ptr, ptr %i.m, align 8, !tbaa !77
  %i.bx = getelementptr inbounds nuw i8, ptr %.1283, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !97
  %i.bz = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !97
  %i.cb = sub nsw i64 %i.by, %i.ca
  %i.cc = tail call fastcc i64 @af_cjk_compute_stem_width(i32 %.val, ptr readonly %.val241, i32 noundef range(i32 0, 2) %1, i64 noundef %i.cb)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !96
  %i.cf = add nsw i64 %i.ce, %i.cc                ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.1283, i64 16
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !96
  %i.ch = or disjoint i8 %i.aw, 4
  store i8 %i.ch, ptr %i.av, align 8, !tbaa !199
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.ci = icmp ne ptr %.3179282, null
  %or.cond = select i1 %2, i1 true, i1 %i.ci
  br i1 %or.cond, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = tail call fastcc i64 @af_hint_normal_stem(ptr noundef %0, ptr noundef nonnull %.1283, ptr noundef %i.az, i64 noundef 0, i32 noundef 0)
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ck = tail call fastcc i64 @af_hint_normal_stem(ptr noundef %0, ptr noundef nonnull %.1283, ptr noundef %i.az, i64 noundef %.0183281, i32 noundef %1) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1184 = phi i64 [ %.0183281, %bb.x ], [ %i.cj, %bb.w ]
  %i.cl = load i8, ptr %i.av, align 8, !tbaa !199
  %i.cm = or i8 %i.cl, 4
  store i8 %i.cm, ptr %i.av, align 8, !tbaa !199
  %i.cn = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !199
  %i.cp = or i8 %i.co, 4
  store i8 %i.cp, ptr %i.cn, align 8, !tbaa !199
end_hunk_0
begin_hunk_1_@af_cjk_compute_stem_width:bb.a
  %.127.i.1 = tail call i64 @llvm.umin.i64(i64 %spec.select.i.1, i64 %.127.i) ; 2 uses
  %.1.i.1 = select i1 %i.an, i64 %i.al, i64 %.1.i ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !417

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  %.02534.i.epil.init = phi i64 [ %spec.select, %.lr.ph.preheader.i ], [ %.1.i.1, %._crit_edge.i.unr-lcssa ]
  %.02633.i.epil.init = phi i64 [ 98, %.lr.ph.preheader.i ], [ %.127.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod2 = trunc i32 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod2)
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv.i.epil.init
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !416 ; 2 uses
  %i.ar = sub nsw i64 %spec.select, %i.aq
  %spec.select.i.epil = tail call i64 @llvm.abs.i64(i64 %i.ar, i1 true)
  %i.as = icmp samesign ult i64 %spec.select.i.epil, %.02633.i.epil.init
  %.1.i.epil = select i1 %i.as, i64 %i.aq, i64 %.02534.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.1.i.lcssa = phi i64 [ %.1.i.1, %._crit_edge.i.unr-lcssa ], [ %.1.i.epil, %.lr.ph.i.epil.preheader ] ; 4 uses
  %i.at = add nsw i64 %.1.i.lcssa, 32
  %i.au = and i64 %i.at, -64                      ; 2 uses
  %.not.i = icmp slt i64 %spec.select, %.1.i.lcssa
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %i.av = phi i64 [ %i.ac, %._crit_edge.thread.i ], [ %i.au, %._crit_edge.i ]
  %.025.lcssa42.i = phi i64 [ %spec.select, %._crit_edge.thread.i ], [ %.1.i.lcssa, %._crit_edge.i ]
  %i.aw = or disjoint i64 %i.av, 48
  %i.ax = icmp slt i64 %spec.select, %i.aw
  %spec.select31.i = select i1 %i.ax, i64 %.025.lcssa42.i, i64 %spec.select
  br label %af_cjk_snap_width.exit

bb.q:                                             ; preds = %._crit_edge.i
  %i.ay = add nsw i64 %i.au, -48
  %i.az = icmp sgt i64 %spec.select, %i.ay
  %spec.select32.i = select i1 %i.az, i64 %.1.i.lcssa, i64 %spec.select
  br label %af_cjk_snap_width.exit

af_cjk_snap_width.exit:                           ; preds = %bb.p, %bb.q
  %.023.i = phi i64 [ %spec.select31.i, %bb.p ], [ %spec.select32.i, %bb.q ] ; 9 uses
  br i1 %.not71, label %bb.t, label %bb.r

bb.r:                                             ; preds = %af_cjk_snap_width.exit
  %i.ba = icmp sgt i64 %.023.i, 63
  br i1 %i.ba, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bb = add nuw nsw i64 %.023.i, 16
  %i.bc = and i64 %i.bb, 9223372036854775744
  br label %bb.ab

bb.t:                                             ; preds = %af_cjk_snap_width.exit
  %i.bd = and i32 %.5148.val, 8
  %.not76 = icmp eq i32 %i.bd, 0
  br i1 %.not76, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = icmp slt i64 %.023.i, 64
  br i1 %i.be, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = add nuw nsw i64 %.023.i, 32
  %i.bg = and i64 %i.bf, 9223372036854775744
  br label %bb.ab

bb.w:                                             ; preds = %bb.t
  %i.bh = icmp slt i64 %.023.i, 48
  br i1 %i.bh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bi = add nsw i64 %.023.i, 64
  %i.bj = ashr i64 %i.bi, 1
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.bk = icmp samesign ult i64 %.023.i, 128
  br i1 %i.bk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bl = add nuw nsw i64 %.023.i, 22
  %i.bm = and i64 %i.bl, 192
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.bn = add nuw nsw i64 %.023.i, 32
  %i.bo = and i64 %i.bn, 9223372036854775744
  br label %bb.ab

bb.ab:                                            ; preds = %bb.n, %bb.u, %bb.r, %bb.m, %bb.k, %bb.j, %bb.i, %bb.v, %bb.z, %bb.aa, %bb.x, %bb.s, %bb.g
  %.2 = phi i64 [ %i.bc, %bb.s ], [ 64, %bb.u ], [ 64, %bb.r ], [ %i.bg, %bb.v ], [ %i.bj, %bb.x ], [ %i.bm, %bb.z ], [ %i.bo, %bb.aa ], [ %spec.store.select, %bb.g ], [ %i.q, %bb.i ], [ %spec.select, %bb.j ], [ %spec.select79, %bb.n ], [ %i.w, %bb.m ], [ %spec.select, %bb.k ] ; 2 uses
  %i.bp = sub nsw i64 0, %.2
  %i.bq = icmp slt i64 %1, 0
  %spec.select78 = select i1 %i.bq, i64 %i.bp, i64 %.2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  %.0 = phi i64 [ %spec.select78, %bb.ab ], [ %1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @af_latin_metrics_scale_dim(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 0                        ; 5 uses
  %.0156.in.v = select i1 %i.a, i64 24, i64 32
  %.0156.in = getelementptr inbounds nuw i8, ptr %1, i64 %.0156.in.v
  %.0.in.v = select i1 %i.a, i64 8, i64 16
  %.0.in = getelementptr inbounds nuw i8, ptr %1, i64 %.0.in.v
  %.0 = load i64, ptr %.0.in, align 8, !tbaa !68  ; 8 uses
  %.0156 = load i64, ptr %.0156.in, align 8, !tbaa !68 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = zext nneg i32 %2 to i64
  %i.d = getelementptr inbounds nuw [19600 x i8], ptr %i.b, i64 %i.c ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 19584 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !418
  %i.g = icmp eq i64 %i.f, %.0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 19592
  %i.i = load i64, ptr %i.h, align 8, !tbaa !419
  %i.j = icmp eq i64 %i.i, %.0156
  br i1 %i.j, label %.loopexit209, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 %.0, ptr %i.e, align 8, !tbaa !418
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 19592
  store i64 %.0156, ptr %i.k, align 8, !tbaa !419
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20108 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !167  ; 2 uses
  %.not228 = icmp eq i32 %i.m, 0
  br i1 %.not228, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20112 ; 4 uses
  %wide.trip.count = zext i32 %i.m to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.e, !llvm.loop !420

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = load i32, ptr %i.p, align 8, !tbaa !171
  %i.r = and i32 %i.q, 16
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !205
  %sext = shl i64 %i.t, 32
  %i.u = ashr exact i64 %sext, 32
  %sext193 = shl i64 %.0, 32
  %i.v = ashr exact i64 %sext193, 32
  %i.w = mul nsw i64 %i.u, %i.v                   ; 2 uses
  %i.x = ashr i64 %i.w, 63
  %i.y = add nsw i64 %i.w, 32768
  %i.z = add nsw i64 %i.y, %i.x
  %i.aa = shl i64 %i.z, 16
  %i.ab = ashr i64 %i.aa, 32                      ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !182
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !421 ; 2 uses
  %.not176 = icmp eq i32 %i.af, 0
  br i1 %.not176, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !194
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 160
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !223
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i16, ptr %i.ak, align 8, !tbaa !422 ; 2 uses
  %i.am = zext i16 %i.al to i32
  %i.an = icmp uge i32 %i.af, %i.am
  %i.ao = icmp ugt i16 %i.al, 5
  %or.cond = and i1 %i.ao, %i.an
  %spec.select = select i1 %or.cond, i64 52, i64 40
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0166 = phi i64 [ 40, %bb.f ], [ %spec.select, %bb.g ]
  %i.ap = add nsw i64 %.0166, %i.ab
  %i.aq = and i64 %i.ap, -64                      ; 2 uses
  %i.ar = icmp ne i64 %i.aq, %i.ab
  %3 = icmp ne i32 %2, 0
  %or.cond5 = and i1 %3, %i.ar
  br i1 %or.cond5, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.as = tail call i64 @FT_MulDiv(i64 noundef %.0, i64 noundef %i.aq, i64 noundef %i.ab) #18 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = load i32, ptr %i.at, align 8, !tbaa !119
  %i.av = zext i32 %i.au to i64                   ; 3 uses
  %i.aw = load i32, ptr %i.l, align 4, !tbaa !167 ; 4 uses
  %.not229 = icmp eq i32 %i.aw, 0
  br i1 %.not229, label %.thread.thread, label %.lr.ph217

.lr.ph217:                                        ; preds = %bb.i
  %wide.trip.count239 = zext i32 %i.aw to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count239, 1
  %i.ax = icmp eq i32 %i.aw, 1
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph217.new

.lr.ph217.new:                                    ; preds = %.lr.ph217
  %unroll_iter = and i64 %wide.trip.count239, 4294967294
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph217.new
  %indvars.iv236 = phi i64 [ 0, %.lr.ph217.new ], [ %indvars.iv.next237.1, %bb.j ] ; 3 uses
  %.0167215 = phi i64 [ %i.av, %.lr.ph217.new ], [ %i.bl, %bb.j ]
  %niter = phi i64 [ 0, %.lr.ph217.new ], [ %niter.next.1, %bb.j ]
  %i.ay = getelementptr inbounds nuw [72 x i8], ptr %i.n, i64 %indvars.iv236 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !168
  %.0167. = tail call i64 @llvm.smax.i64(i64 %.0167215, i64 %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !170
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = tail call i64 @llvm.smax.i64(i64 %.0167., i64 %i.bd)
  %i.bf = getelementptr inbounds nuw [72 x i8], ptr %i.n, i64 %indvars.iv236 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 120
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !168
  %.0167..1 = tail call i64 @llvm.smax.i64(i64 %i.be, i64 %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !170
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = tail call i64 @llvm.smax.i64(i64 %.0167..1, i64 %i.bk) ; 3 uses
  %indvars.iv.next237.1 = add nuw nsw i64 %indvars.iv236, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread.thread.loopexit.unr-lcssa, label %bb.j, !llvm.loop !423

.thread.thread.loopexit.unr-lcssa:                ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %.thread.thread.loopexit.unr-lcssa, %.lr.ph217
  %indvars.iv236.epil.init = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next237.1, %.thread.thread.loopexit.unr-lcssa ]
  %.0167215.epil.init = phi i64 [ %i.av, %.lr.ph217 ], [ %i.bl, %.thread.thread.loopexit.unr-lcssa ]
  %lcmp.mod283 = trunc i32 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod283)
  %i.bm = getelementptr inbounds nuw [72 x i8], ptr %i.n, i64 %indvars.iv236.epil.init ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !168
  %.0167..epil = tail call i64 @llvm.smax.i64(i64 %.0167215.epil.init, i64 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !170
  %i.br = sub nsw i64 0, %i.bq
  %i.bs = tail call i64 @llvm.smax.i64(i64 %.0167..epil, i64 %i.br)
  br label %.thread.thread

.thread.thread:                                   ; preds = %.epil.preheader, %.thread.thread.loopexit.unr-lcssa, %bb.i
  %.0167.lcssa = phi i64 [ %i.av, %bb.i ], [ %i.bl, %.thread.thread.loopexit.unr-lcssa ], [ %i.bs, %.epil.preheader ]
  %i.bt = sub nsw i64 %i.as, %.0
  %sext195 = shl i64 %.0167.lcssa, 32
  %i.bu = ashr exact i64 %sext195, 32
  %sext196 = shl i64 %i.bt, 32
  %i.bv = ashr exact i64 %sext196, 32
  %i.bw = mul nsw i64 %i.bu, %i.bv                ; 2 uses
  %i.bx = ashr i64 %i.bw, 63
  %i.by = add nsw i64 %i.bw, 32768
  %i.bz = add nsw i64 %i.by, %i.bx
  %i.ca = lshr i64 %i.bz, 16
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = add i32 %i.cb, 127
  %i.cd = icmp ult i32 %i.cc, 255
  %spec.select184 = select i1 %i.cd, i64 %i.as, i64 %.0 ; 2 uses
  store i64 %spec.select184, ptr %i.d, align 8, !tbaa !197
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.0156, ptr %i.ce, align 8, !tbaa !424
  br label %bb.k

.thread:                                          ; preds = %bb.d, %bb.c, %bb.h
  store i64 %.0, ptr %i.d, align 8, !tbaa !197
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.0156, ptr %i.cf, align 8, !tbaa !424
  %spec.select276 = select i1 %i.a, i64 16, i64 24
  %spec.select277 = select i1 %i.a, i64 32, i64 40
  br label %bb.k

bb.k:                                             ; preds = %.thread, %.thread.thread
  %.sink275 = phi i64 [ %spec.select276, %.thread ], [ 24, %.thread.thread ]
  %.0.sink = phi i64 [ %.0, %.thread ], [ %spec.select184, %.thread.thread ] ; 3 uses
  %.sink274 = phi i64 [ %spec.select277, %.thread ], [ 40, %.thread.thread ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %.sink275
  store i64 %.0.sink, ptr %i.cg, align 8, !tbaa !68
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %.sink274
  store i64 %.0156, ptr %i.ch, align 8, !tbaa !68
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !123 ; 4 uses
  %.not230 = icmp eq i32 %i.cj, 0
  br i1 %.not230, label %.._crit_edge221_crit_edge, label %.lr.ph220

.._crit_edge221_crit_edge:                        ; preds = %bb.k
  %.pre = shl i64 %.0.sink, 32
  %.pre261 = ashr exact i64 %.pre, 32
  br label %._crit_edge221

.lr.ph220:                                        ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %sext206 = shl i64 %.0.sink, 32
  %i.cl = ashr exact i64 %sext206, 32             ; 5 uses
  %wide.trip.count244 = zext i32 %i.cj to i64     ; 2 uses
  %xtraiter285 = and i64 %wide.trip.count244, 1
  %i.cm = icmp eq i32 %i.cj, 1
  br i1 %i.cm, label %.epil.preheader284, label %.lr.ph220.new

.lr.ph220.new:                                    ; preds = %.lr.ph220
  %unroll_iter288 = and i64 %wide.trip.count244, 4294967294
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph220.new
  %indvars.iv241 = phi i64 [ 0, %.lr.ph220.new ], [ %indvars.iv.next242.1, %bb.l ] ; 3 uses
  %niter289 = phi i64 [ 0, %.lr.ph220.new ], [ %niter289.next.1, %bb.l ]
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %indvars.iv241 ; 3 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !149
  %sext205 = shl i64 %i.co, 32
  %i.cp = ashr exact i64 %sext205, 32
  %i.cq = mul nsw i64 %i.cp, %i.cl                ; 2 uses
  %i.cr = ashr i64 %i.cq, 63
  %i.cs = add nsw i64 %i.cq, 32768
  %i.ct = add nsw i64 %i.cs, %i.cr
  %i.cu = shl i64 %i.ct, 16
  %i.cv = ashr i64 %i.cu, 32                      ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !416
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i64 %i.cv, ptr %i.cx, align 8, !tbaa !392
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %indvars.iv241 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !149
  %sext205.1 = shl i64 %i.da, 32
  %i.db = ashr exact i64 %sext205.1, 32
  %i.dc = mul nsw i64 %i.db, %i.cl                ; 2 uses
  %i.dd = ashr i64 %i.dc, 63
  %i.de = add nsw i64 %i.dc, 32768
  %i.df = add nsw i64 %i.de, %i.dd
  %i.dg = shl i64 %i.df, 16
  %i.dh = ashr i64 %i.dg, 32                      ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !416
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  store i64 %i.dh, ptr %i.dj, align 8, !tbaa !392
  %indvars.iv.next242.1 = add nuw nsw i64 %indvars.iv241, 2 ; 2 uses
  %niter289.next.1 = add i64 %niter289, 2         ; 2 uses
  %niter289.ncmp.1 = icmp eq i64 %niter289.next.1, %unroll_iter288
  br i1 %niter289.ncmp.1, label %._crit_edge221.loopexit.unr-lcssa, label %bb.l, !llvm.loop !425

._crit_edge221.loopexit.unr-lcssa:                ; preds = %bb.l
  %lcmp.mod286.not = icmp eq i64 %xtraiter285, 0
  br i1 %lcmp.mod286.not, label %._crit_edge221, label %.epil.preheader284

.epil.preheader284:                               ; preds = %._crit_edge221.loopexit.unr-lcssa, %.lr.ph220
  %indvars.iv241.epil.init = phi i64 [ 0, %.lr.ph220 ], [ %indvars.iv.next242.1, %._crit_edge221.loopexit.unr-lcssa ]
  %lcmp.mod287 = trunc i32 %i.cj to i1
  tail call void @llvm.assume(i1 %lcmp.mod287)
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %indvars.iv241.epil.init ; 3 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !149
  %sext205.epil = shl i64 %i.dl, 32
  %i.dm = ashr exact i64 %sext205.epil, 32
  %i.dn = mul nsw i64 %i.dm, %i.cl                ; 2 uses
  %i.do = ashr i64 %i.dn, 63
  %i.dp = add nsw i64 %i.dn, 32768
  %i.dq = add nsw i64 %i.dp, %i.do
  %i.dr = shl i64 %i.dq, 16
  %i.ds = ashr i64 %i.dr, 32                      ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !416
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i64 %i.ds, ptr %i.du, align 8, !tbaa !392
  br label %._crit_edge221

._crit_edge221:                                   ; preds = %.epil.preheader284, %._crit_edge221.loopexit.unr-lcssa, %.._crit_edge221_crit_edge
  %.pre-phi = phi i64 [ %.pre261, %.._crit_edge221_crit_edge ], [ %i.cl, %._crit_edge221.loopexit.unr-lcssa ], [ %i.cl, %.epil.preheader284 ] ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !153
  %sext197 = shl i64 %i.dw, 32
  %i.dx = ashr exact i64 %sext197, 32
  %i.dy = mul nsw i64 %i.dx, %.pre-phi            ; 2 uses
  %i.dz = ashr i64 %i.dy, 63
  %i.ea = add nsw i64 %i.dy, 32768
  %i.eb = add nsw i64 %i.ea, %i.dz
  %i.ec = lshr i64 %i.eb, 16
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = icmp slt i32 %i.ed, 40
  %i.ef = zext i1 %i.ee to i8
end_hunk_1
begin_hunk_2_@af_latin_hints_detect_features:bb.a
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !201
  %i.bx = icmp eq i8 %i.bw, %i.bd
  br i1 %i.bx, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.n, !llvm.loop !434

._crit_edge.i:                                    ; preds = %bb.p, %.._crit_edge_crit_edge.i
  %i.by = phi i16 [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %i.bo, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.bz = sext i16 %i.by to i32
  %i.ca = sext i8 %i.bd to i32
  %i.cb = call fastcc i32 @af_axis_hints_new_edge(ptr noundef nonnull %i.e, i32 noundef %i.bz, i32 noundef %i.ca, i8 noundef zeroext %.0182248.i, ptr noundef %i.f, ptr noundef %i.a) ; 2 uses
  %.not237.i = icmp eq i32 %i.cb, 0
  br i1 %.not237.i, label %select.unfold.i, label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !93
  %i.ce = getelementptr inbounds nuw i8, ptr %.0184272.i, i64 24
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !104
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 80 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !382
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store ptr %.0184272.i, ptr %i.ch, align 8, !tbaa !104
  store ptr %.0184272.i, ptr %i.cf, align 8, !tbaa !382
  br label %.thread257.i

select.unfold.i:                                  ; preds = %._crit_edge.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.0184272.i, i64 2
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !339 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cj, i8 0, i64 72, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  store ptr %.0184272.i, ptr %i.ck, align 8, !tbaa !93
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 80
  store ptr %.0184272.i, ptr %i.cl, align 8, !tbaa !382
  %i.cm = load i8, ptr %i.bc, align 1, !tbaa !343
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 25
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !201
  %i.co = load i16, ptr %i.ci, align 2, !tbaa !148 ; 2 uses
  store i16 %i.co, ptr %i.cj, align 8, !tbaa !203
  %i.cp = sext i16 %i.co to i64
  %i.cq = mul nsw i64 %i.ai, %i.cp                ; 2 uses
  %i.cr = ashr i64 %i.cq, 63
  %i.cs = add nsw i64 %i.cq, 32768
  %i.ct = add nsw i64 %i.cs, %i.cr
  %i.cu = ashr i64 %i.ct, 16                      ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !97
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i64 %i.cu, ptr %i.cw, align 8, !tbaa !96
  %i.cx = getelementptr inbounds nuw i8, ptr %.0184272.i, i64 24
  store ptr %.0184272.i, ptr %i.cx, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread257.i

bb.r:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %af_latin_hints_compute_edges.exit

.thread257.i:                                     ; preds = %select.unfold.i, %bb.q, %bb.l, %bb.j, %bb.i, %bb.h
  %i.cy = getelementptr inbounds nuw i8, ptr %.0184272.i, i64 80 ; 2 uses
  %i.cz = icmp ult ptr %i.cy, %i.u
  br i1 %i.cz, label %bb.h, label %.preheader269.i, !llvm.loop !435

.preheader269.i:                                  ; preds = %.thread257.i, %._crit_edge277.thread.i
  %.1185280.i = phi ptr [ %i.ds, %._crit_edge277.thread.i ], [ %i.q, %.thread257.i ] ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.1185280.i, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !343
  %.not233.i = icmp eq i8 %i.db, 4
  br i1 %.not233.i, label %.preheader268.i, label %._crit_edge277.thread.i

.preheader268.i:                                  ; preds = %.preheader269.i
  %i.dc = load i32, ptr %i.v, align 8, !tbaa !92  ; 2 uses
  %.not289.i = icmp eq i32 %i.dc, 0
  br i1 %.not289.i, label %._crit_edge277.thread.i, label %.lr.ph276.i

.lr.ph276.i:                                      ; preds = %.preheader268.i
  %i.dd = load ptr, ptr %i.at, align 8, !tbaa !87
  %i.de = getelementptr inbounds nuw i8, ptr %.1185280.i, i64 2
  %i.df = load i16, ptr %i.de, align 2, !tbaa !148
  %i.dg = sext i16 %i.df to i64
  %wide.trip.count296.i = zext i32 %i.dc to i64
  br label %bb.t

bb.s:                                             ; preds = %bb.t
  %indvars.iv.next294.i = add nuw nsw i64 %indvars.iv293.i, 1 ; 2 uses
  %exitcond297.not.i = icmp eq i64 %indvars.iv.next294.i, %wide.trip.count296.i
  br i1 %exitcond297.not.i, label %._crit_edge277.thread.i, label %bb.t, !llvm.loop !436

bb.t:                                             ; preds = %bb.s, %.lr.ph276.i
  %indvars.iv293.i = phi i64 [ 0, %.lr.ph276.i ], [ %indvars.iv.next294.i, %bb.s ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [88 x i8], ptr %i.dd, i64 %indvars.iv293.i ; 3 uses
  %i.di = load i16, ptr %i.dh, align 8, !tbaa !203
  %i.dj = sext i16 %i.di to i64
  %i.dk = sub nsw i64 %i.dg, %i.dj
  %spec.select240.i = tail call i64 @llvm.abs.i64(i64 %i.dk, i1 true)
  %i.dl = icmp slt i64 %spec.select240.i, %i.aq
  br i1 %i.dl, label %._crit_edge277.i, label %bb.s

._crit_edge277.i:                                 ; preds = %bb.t
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 72
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !93
  %i.do = getelementptr inbounds nuw i8, ptr %.1185280.i, i64 24
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !104
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 80 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !382
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  store ptr %.1185280.i, ptr %i.dr, align 8, !tbaa !104
  store ptr %.1185280.i, ptr %i.dp, align 8, !tbaa !382
  br label %._crit_edge277.thread.i

._crit_edge277.thread.i:                          ; preds = %bb.s, %._crit_edge277.i, %.preheader268.i, %.preheader269.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.1185280.i, i64 80 ; 2 uses
  %i.dt = icmp ult ptr %i.ds, %i.u
  br i1 %i.dt, label %.preheader269.i, label %._crit_edge282.i, !llvm.loop !437

._crit_edge282.i:                                 ; preds = %._crit_edge277.thread.i, %bb.g
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !87 ; 4 uses
  %.not220.i = icmp eq ptr %i.dv, null
  br i1 %.not220.i, label %af_latin_hints_compute_edges.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge282.i
  %i.dw = load i32, ptr %i.v, align 8, !tbaa !92  ; 2 uses
  %i.dx = zext i32 %i.dw to i64
  %.idx.i = mul nuw nsw i64 %i.dx, 88
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx.i ; 2 uses
  %.not327.i = icmp eq i32 %i.dw, 0
  br i1 %.not327.i, label %af_latin_hints_compute_edges.exit, label %.lr.ph285.i

.lr.ph285.i:                                      ; preds = %bb.u, %.loopexit267.i
  %.0177283.i = phi ptr [ %i.ee, %.loopexit267.i ], [ %i.dv, %bb.u ] ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0177283.i, i64 72
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !93 ; 3 uses
  %.not231.i = icmp eq ptr %i.ea, null
  br i1 %.not231.i, label %.loopexit267.i, label %.preheader266.i

.preheader266.i:                                  ; preds = %.lr.ph285.i, %.preheader266.i
  %.2186.i = phi ptr [ %i.ed, %.preheader266.i ], [ %i.ea, %.lr.ph285.i ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.2186.i, i64 16
  store ptr %.0177283.i, ptr %i.eb, align 8, !tbaa !207
  %i.ec = getelementptr inbounds nuw i8, ptr %.2186.i, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !104 ; 2 uses
  %.not232.i = icmp eq ptr %i.ed, %i.ea
  br i1 %.not232.i, label %.loopexit267.i, label %.preheader266.i, !llvm.loop !438

.loopexit267.i:                                   ; preds = %.preheader266.i, %.lr.ph285.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.0177283.i, i64 88 ; 2 uses
  %i.ef = icmp ult ptr %i.ee, %i.dy
  br i1 %i.ef, label %.lr.ph285.i, label %.lr.ph287.i, !llvm.loop !439

.lr.ph287.i:                                      ; preds = %.loopexit267.i, %bb.ak
  %.1178286.i = phi ptr [ %i.fz, %bb.ak ], [ %i.dv, %.loopexit267.i ] ; 7 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.1178286.i, i64 72
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !93 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.1178286.i, i64 48 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.1178286.i, i64 56 ; 4 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.ag, %.lr.ph287.i
  %.3187.i = phi ptr [ %i.eh, %.lr.ph287.i ], [ %i.fu, %bb.ag ] ; 5 uses
  %.0175.i = phi i32 [ 0, %.lr.ph287.i ], [ %.1176.i, %bb.ag ]
  %.0173.i = phi i32 [ 0, %.lr.ph287.i ], [ %.1174.i, %bb.ag ]
  %i.ek = load i8, ptr %.3187.i, align 8, !tbaa !334
  %i.el = and i8 %i.ek, 1                         ; 2 uses
  %i.em = zext nneg i8 %i.el to i32
  %.1176.i = add nuw nsw i32 %.0175.i, %i.em      ; 3 uses
  %i.en = xor i8 %i.el, 1
  %i.eo = zext nneg i8 %i.en to i32
  %.1174.i = add nuw nsw i32 %.0173.i, %i.eo      ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.3187.i, i64 40 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !349 ; 2 uses
  %.not222.i = icmp eq ptr %i.eq, null
  br i1 %.not222.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !207 ; 2 uses
  %.not223.i = icmp eq ptr %i.es, null
  br i1 %.not223.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.et = icmp ne ptr %i.es, %.1178286.i
  %i.eu = zext i1 %i.et to i8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.ev = phi i8 [ 0, %bb.w ], [ 0, %bb.v ], [ %i.eu, %bb.x ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.3187.i, i64 32 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !147 ; 2 uses
  %.not224.i = icmp eq ptr %i.ex, null
  br i1 %.not224.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !207
  %i.fa = icmp ne ptr %i.ez, null
  %4 = icmp ne i8 %i.ev, 0
  %or.cond.i = or i1 %4, %i.fa
  br i1 %or.cond.i, label %bb.ab, label %bb.ag

bb.aa:                                            ; preds = %bb.y
  %.old2.not.i = icmp eq i8 %i.ev, 0
  br i1 %.old2.not.i, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.not225.i = icmp eq i8 %i.ev, 0                ; 3 uses
  %spec.select241.i = select i1 %.not225.i, ptr %i.ei, ptr %i.ej
  %spec.select242.i = select i1 %.not225.i, ptr %i.ew, ptr %i.ep
  %.0170.i = load ptr, ptr %spec.select242.i, align 8, !tbaa !340 ; 2 uses
  %.0171.i = load ptr, ptr %spec.select241.i, align 8, !tbaa !339 ; 3 uses
  %.not226.i = icmp eq ptr %.0171.i, null
  br i1 %.not226.i, label %.sink.split.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fb = load i16, ptr %.1178286.i, align 8, !tbaa !203
  %i.fc = sext i16 %i.fb to i64
  %i.fd = load i16, ptr %.0171.i, align 8, !tbaa !203
  %i.fe = sext i16 %i.fd to i64
  %i.ff = sub nsw i64 %i.fc, %i.fe
  %spec.select243.i = tail call i64 @llvm.abs.i64(i64 %i.ff, i1 true)
  %i.fg = getelementptr inbounds nuw i8, ptr %.3187.i, i64 2
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !148
  %i.fi = sext i16 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %.0170.i, i64 2
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !148
  %i.fl = sext i16 %i.fk to i64
  %i.fm = sub nsw i64 %i.fi, %i.fl
  %.0.i = tail call i64 @llvm.abs.i64(i64 %i.fm, i1 true)
  %i.fn = icmp samesign ult i64 %.0.i, %spec.select243.i
  br i1 %i.fn, label %.sink.split.i, label %bb.ad

.sink.split.i:                                    ; preds = %bb.ac, %bb.ab
  %i.fo = getelementptr inbounds nuw i8, ptr %.0170.i, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !207
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split.i, %bb.ac
  %.2.i = phi ptr [ %.0171.i, %bb.ac ], [ %i.fp, %.sink.split.i ] ; 3 uses
  br i1 %.not225.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr %.2.i, ptr %i.ej, align 8, !tbaa !386
  %i.fq = getelementptr inbounds nuw i8, ptr %.2.i, i64 24 ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 8, !tbaa !199
  %i.fs = or i8 %i.fr, 2
  store i8 %i.fs, ptr %i.fq, align 8, !tbaa !199
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  store ptr %.2.i, ptr %i.ei, align 8, !tbaa !387
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.aa, %bb.z
  %i.ft = getelementptr inbounds nuw i8, ptr %.3187.i, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !104 ; 2 uses
  %.not227.i = icmp eq ptr %i.fu, %i.eh
  br i1 %.not227.i, label %bb.ah, label %bb.v, !llvm.loop !440

bb.ah:                                            ; preds = %bb.ag
  %i.fv = getelementptr inbounds nuw i8, ptr %.1178286.i, i64 24
  %i.fw = icmp ne i32 %.1176.i, 0
  %.not228.i = icmp samesign uge i32 %.1176.i, %.1174.i
  %or.cond244.not.i = select i1 %i.fw, i1 %.not228.i, i1 false
  %spec.store.select246.i = zext i1 %or.cond244.not.i to i8
  store i8 %spec.store.select246.i, ptr %i.fv, align 8
  %i.fx = load ptr, ptr %i.ej, align 8, !tbaa !386
  %.not229.i = icmp eq ptr %i.fx, null
  br i1 %.not229.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fy = load ptr, ptr %i.ei, align 8, !tbaa !387
  %.not230.i = icmp eq ptr %i.fy, null
  br i1 %.not230.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store ptr null, ptr %i.ej, align 8, !tbaa !386
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.fz = getelementptr inbounds nuw i8, ptr %.1178286.i, i64 88 ; 2 uses
  %i.ga = icmp ult ptr %i.fz, %i.dy
  br i1 %i.ga, label %.lr.ph287.i, label %af_latin_hints_compute_edges.exit, !llvm.loop !441

af_latin_hints_compute_edges.exit:                ; preds = %bb.ak, %bb.u, %._crit_edge282.i, %bb.r, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.cb, %bb.r ], [ 0, %bb.u ], [ 0, %._crit_edge282.i ], [ 0, %bb.ak ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @af_latin_hint_edges(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr inbounds nuw [2536 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87   ; 17 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !92
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 8 uses
  %.not399 = icmp eq i32 %1, 0                    ; 2 uses
  br i1 %.not399, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 5152
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !252
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !126
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @af_script_classes, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !127
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load i8, ptr %i.s, align 8, !tbaa !433
  %i.u = icmp eq i8 %i.t, 0                       ; 2 uses
  %i.v = icmp ult ptr %i.e, %i.j
  br i1 %i.v, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.d
  %i.w = getelementptr i8, ptr %0, i64 5148
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.thread460
  %.0330496 = phi ptr [ %i.e, %.lr.ph ], [ %i.bu, %.thread460 ] ; 8 uses
  %.0332495 = phi ptr [ null, %.lr.ph ], [ %.2334, %.thread460 ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0330496, i64 24 ; 4 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !199   ; 3 uses
  %i.z = and i8 %i.y, 4
  %.not422 = icmp eq i8 %i.z, 0
  br i1 %.not422, label %bb.f, label %.thread460

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.0330496, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !387 ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0330496, i64 40 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !198 ; 4 uses
  %i.ae = icmp ne ptr %i.ad, null
  %i.af = icmp ne ptr %i.ab, null                 ; 2 uses
  %or.cond = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !198
  %.not423 = icmp eq ptr %i.ah, null
  br i1 %.not423, label %.thread550, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !199 ; 2 uses
  %i.ak = and i8 %i.aj, 8
  %.not424 = icmp eq i8 %i.ak, 0
  br i1 %.not424, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.ag, align 8, !tbaa !198
  %i.al = and i8 %i.aj, -9
  store i8 %i.al, ptr %i.ai, align 8, !tbaa !199
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !198
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.am = and i8 %i.y, 8
  %.not425 = icmp eq i8 %i.am, 0
  br i1 %.not425, label %.thread550, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.ac, align 8, !tbaa !198
  %i.an = and i8 %i.y, -13
  store i8 %i.an, ptr %i.x, align 8, !tbaa !199
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.f
  %i.ao = phi ptr [ %.pre, %bb.i ], [ null, %bb.k ], [ %i.ad, %bb.f ] ; 2 uses
  %.not426 = icmp eq ptr %i.ao, null              ; 2 uses
  %brmerge.not = select i1 %.not426, i1 %i.af, i1 false
  br i1 %brmerge.not, label %bb.m, label %.thread550

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !198 ; 2 uses
  %.not427 = icmp eq ptr %i.aq, null
  br i1 %.not427, label %.thread460, label %.thread554

.thread554:                                       ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !392 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %i.as, ptr %i.at, align 8, !tbaa !96
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
end_hunk_2
begin_hunk_3_@af_latin_hint_edges:bb.a
  br label %bb.bi

.thread480:                                       ; preds = %bb.ax, %bb.ay
  %.not404 = icmp eq ptr %.7503, null
  br i1 %.not404, label %bb.ba, label %.preheader

bb.ba:                                            ; preds = %.thread480
  %i.jd = getelementptr inbounds nuw i8, ptr %.2504, i64 8
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !97
  %i.jf = add nsw i64 %i.je, 32
  %i.jg = and i64 %i.jf, -64                      ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.2504, i64 16
  store i64 %i.jg, ptr %i.jh, align 8, !tbaa !96
  br label %bb.bi

.preheader:                                       ; preds = %.thread480, %bb.bb
  %.2.pn = phi ptr [ %.0328, %bb.bb ], [ %.2504, %.thread480 ] ; 4 uses
  %.0328 = getelementptr inbounds i8, ptr %.2.pn, i64 -88 ; 3 uses
  %.not405 = icmp ult ptr %.0328, %i.e            ; 2 uses
  br i1 %.not405, label %.preheader571, label %bb.bb

bb.bb:                                            ; preds = %.preheader
  %i.ji = getelementptr inbounds i8, ptr %.2.pn, i64 -64
  %i.jj = load i8, ptr %i.ji, align 8, !tbaa !199
  %i.jk = and i8 %i.jj, 4
  %.not406 = icmp eq i8 %i.jk, 0
  br i1 %.not406, label %.preheader, label %.preheader571, !llvm.loop !444

.preheader571:                                    ; preds = %bb.bb, %.preheader
  br label %bb.bc

bb.bc:                                            ; preds = %.preheader571, %bb.bd
  %.2.pn408 = phi ptr [ %.0, %bb.bd ], [ %.2504, %.preheader571 ] ; 4 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.2.pn408, i64 88 ; 3 uses
  %.not511.not.not = icmp ult ptr %.0, %i.j
  br i1 %.not511.not.not, label %bb.bd, label %.thread560

bb.bd:                                            ; preds = %bb.bc
  %i.jl = getelementptr inbounds nuw i8, ptr %.2.pn408, i64 112
  %i.jm = load i8, ptr %i.jl, align 8, !tbaa !199
  %i.jn = and i8 %i.jm, 4
  %.not407 = icmp eq i8 %i.jn, 0
  br i1 %.not407, label %bb.bc, label %bb.be, !llvm.loop !445

bb.be:                                            ; preds = %bb.bd
  %i.jo = icmp uge ptr %.0328, %.2504
  %i.jp = icmp ule ptr %.0, %.2504
  %i.jq = or i1 %i.jo, %i.jp
  %i.jr = or i1 %.not405, %i.jq
  br i1 %i.jr, label %.thread560, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.js = getelementptr inbounds nuw i8, ptr %.2.pn408, i64 96
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !97 ; 2 uses
  %i.ju = getelementptr inbounds i8, ptr %.2.pn, i64 -80
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !97 ; 3 uses
  %i.jw = icmp eq i64 %i.jt, %i.jv
  %i.jx = getelementptr inbounds i8, ptr %.2.pn, i64 -72
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !96 ; 4 uses
  br i1 %i.jw, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jz = getelementptr inbounds nuw i8, ptr %.2504, i64 16
  store i64 %i.jy, ptr %i.jz, align 8, !tbaa !96
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.ka = getelementptr inbounds nuw i8, ptr %.2504, i64 8
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !97
  %i.kc = sub nsw i64 %i.kb, %i.jv
  %i.kd = getelementptr inbounds nuw i8, ptr %.2.pn408, i64 104
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !96
  %i.kf = sub nsw i64 %i.ke, %i.jy
  %i.kg = sub nsw i64 %i.jt, %i.jv
  %i.kh = tail call i64 @FT_MulDiv(i64 noundef %i.kc, i64 noundef %i.kf, i64 noundef %i.kg) #18
  %i.ki = add nsw i64 %i.kh, %i.jy                ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.2504, i64 16
  store i64 %i.ki, ptr %i.kj, align 8, !tbaa !96
  %.pre516 = load i8, ptr %i.in, align 8, !tbaa !199
  br label %bb.bi

.thread560:                                       ; preds = %bb.bc, %bb.be
  %i.kk = getelementptr inbounds nuw i8, ptr %.7503, i64 16
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !96
  %i.km = getelementptr inbounds nuw i8, ptr %.2504, i64 8
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !97
  %i.ko = getelementptr inbounds nuw i8, ptr %.7503, i64 8
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !97
  %i.kq = add i64 %i.kn, 16
  %i.kr = sub i64 %i.kq, %i.kp
  %i.ks = and i64 %i.kr, -32
  %i.kt = add nsw i64 %i.ks, %i.kl                ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.2504, i64 16
  store i64 %i.kt, ptr %i.ku, align 8, !tbaa !96
  br label %bb.bi

bb.bi:                                            ; preds = %.thread560, %bb.bg, %bb.bh, %bb.ba, %bb.az
  %i.kv = phi i64 [ %i.jb, %bb.az ], [ %i.jg, %bb.ba ], [ %i.ki, %bb.bh ], [ %i.jy, %bb.bg ], [ %i.kt, %.thread560 ] ; 7 uses
  %i.kw = phi i8 [ %i.io, %bb.az ], [ %i.io, %bb.ba ], [ %.pre516, %bb.bh ], [ %i.io, %bb.bg ], [ %i.io, %.thread560 ]
  %.8 = phi ptr [ %.7503, %bb.az ], [ %.2504, %bb.ba ], [ %.7503, %bb.bh ], [ %.7503, %bb.bg ], [ %.7503, %.thread560 ] ; 7 uses
  %i.kx = or i8 %i.kw, 4
  store i8 %i.kx, ptr %i.in, align 8, !tbaa !199
  %i.ky = icmp ugt ptr %.2504, %i.e
  br i1 %i.ky, label %bb.bj, label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  %i.kz = getelementptr inbounds i8, ptr %.2504, i64 -72
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !96 ; 5 uses
  br i1 %.0346459, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lb = icmp sgt i64 %i.kv, %i.la
  br i1 %i.lb, label %bb.bm, label %bb.bp

bb.bl:                                            ; preds = %bb.bj
  %i.lc = icmp slt i64 %i.kv, %i.la
  br i1 %i.lc, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.ld = getelementptr inbounds nuw i8, ptr %.2504, i64 48
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !387 ; 2 uses
  %.not410 = icmp eq ptr %i.le, null
  br i1 %.not410, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !96
  %i.lh = add i64 %i.lg, -17
  %i.li = sub i64 %i.lh, %i.la
  %i.lj = icmp ult i64 %i.li, -33
  br i1 %i.lj, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.lk = getelementptr inbounds nuw i8, ptr %.2504, i64 16
  store i64 %i.la, ptr %i.lk, align 8, !tbaa !96
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bm, %bb.bn, %bb.bo, %bb.bl, %bb.bk, %bb.bi
  %i.ll = phi i64 [ %i.kv, %bb.bm ], [ %i.kv, %bb.bn ], [ %i.la, %bb.bo ], [ %i.kv, %bb.bl ], [ %i.kv, %bb.bk ], [ %i.kv, %bb.bi ] ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.2504, i64 88
  %i.ln = icmp ult ptr %i.lm, %i.j
  br i1 %i.ln, label %bb.bq, label %bb.bx

bb.bq:                                            ; preds = %bb.bp
  %i.lo = getelementptr inbounds nuw i8, ptr %.2504, i64 112
  %i.lp = load i8, ptr %i.lo, align 8, !tbaa !199
  %i.lq = and i8 %i.lp, 4
  %.not411 = icmp eq i8 %i.lq, 0
  br i1 %.not411, label %bb.bx, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lr = getelementptr inbounds nuw i8, ptr %.2504, i64 104
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !96 ; 3 uses
  br i1 %.0346459, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lt = icmp slt i64 %i.ll, %i.ls
  br i1 %i.lt, label %bb.bu, label %bb.bx

bb.bt:                                            ; preds = %bb.br
  %i.lu = icmp sgt i64 %i.ll, %i.ls
  br i1 %i.lu, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.lv = getelementptr inbounds nuw i8, ptr %.2504, i64 48
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !387 ; 2 uses
  %.not413 = icmp eq ptr %i.lw, null
  br i1 %.not413, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !96
  %i.lz = getelementptr inbounds i8, ptr %.2504, i64 -72
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !96
  %i.mb = add i64 %i.ly, -17
  %i.mc = sub i64 %i.mb, %i.ma
  %i.md = icmp ult i64 %i.mc, -33
  br i1 %i.md, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.me = getelementptr inbounds nuw i8, ptr %.2504, i64 16
  store i64 %i.ls, ptr %i.me, align 8, !tbaa !96
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bp, %bb.bq, %bb.bs, %bb.bt, %bb.bw, %bb.bv, %bb.bu, %.lr.ph506
  %.9 = phi ptr [ %.7503, %.lr.ph506 ], [ %.8, %bb.bu ], [ %.8, %bb.bv ], [ %.8, %bb.bw ], [ %.8, %bb.bt ], [ %.8, %bb.bs ], [ %.8, %bb.bq ], [ %.8, %bb.bp ]
  %i.mf = getelementptr inbounds nuw i8, ptr %.2504, i64 88 ; 2 uses
  %i.mg = icmp ult ptr %i.mf, %i.j
  br i1 %i.mg, label %.lr.ph506, label %.loopexit, !llvm.loop !446

.loopexit:                                        ; preds = %bb.bx, %bb.aw
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @af_latin_compute_stem_width(i32 %.5148.val, ptr nofree readonly captures(none) %.5152.val, i32 noundef range(i32 0, 2) %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 0, 256) %3, i32 noundef range(i32 0, 256) %4) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.5152.val, i64 80
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [19600 x i8], ptr %i.a, i64 %i.b ; 7 uses
  %.not7 = icmp eq i32 %0, 0                      ; 2 uses
  %i.d = and i32 %.5148.val, 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 424
  %i.f = load i8, ptr %i.e, align 8, !tbaa !154
  %.not111 = icmp eq i8 %i.f, 0
  br i1 %.not111, label %bb.c, label %bb.ak

bb.c:                                             ; preds = %bb.b
  %spec.select = tail call i64 @llvm.abs.i64(i64 %1, i1 true) ; 21 uses
  br i1 %.not7, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %.5148.val, 2
  %.not112 = icmp eq i32 %i.g, 0
  br i1 %.not112, label %bb.e, label %bb.u

.critedge:                                        ; preds = %bb.c
  %i.h = and i32 %.5148.val, 1
  %.not113 = icmp eq i32 %i.h, 0
  br i1 %.not113, label %.thread, label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.i = and i32 %4, 2
  %i.j = icmp ne i32 %i.i, 0
  %i.k = icmp samesign ult i64 %spec.select, 192
  %or.cond3 = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond3, label %bb.aj, label %.thread

.thread:                                          ; preds = %.critedge, %bb.e
  %i.l = and i32 %3, 1
  %.not114 = icmp eq i32 %i.l, 0
  br i1 %.not114, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.m = icmp samesign ult i64 %spec.select, 80
  %spec.store.select = select i1 %i.m, i64 64, i64 %spec.select
  br label %bb.h

bb.g:                                             ; preds = %.thread
  %spec.store.select4 = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 56)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.1 = phi i64 [ %spec.store.select, %bb.f ], [ %spec.store.select4, %bb.g ] ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !123
  %.not115 = icmp eq i32 %i.o, 0
  br i1 %.not115, label %bb.aj, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !416  ; 2 uses
  %i.r = add nuw i64 %.1, 39
  %i.s = sub i64 %i.r, %i.q
  %i.t = icmp ult i64 %i.s, 79
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %spec.store.select5 = tail call i64 @llvm.smax.i64(i64 %i.q, i64 48)
  br label %bb.aj

bb.k:                                             ; preds = %bb.i
  %i.u = icmp samesign ult i64 %.1, 192
  br i1 %i.u, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.v = and i64 %.1, 63                          ; 3 uses
  %i.w = and i64 %.1, 192                         ; 2 uses
  %i.x = icmp samesign ult i64 %i.v, 10
  br i1 %i.x, label %bb.aj, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = icmp samesign ult i64 %i.v, 32
  br i1 %i.y, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.z = or disjoint i64 %i.w, 10
  br label %bb.aj

bb.o:                                             ; preds = %bb.m
  %i.aa = icmp samesign ult i64 %i.v, 54
  %i.ab = or disjoint i64 %i.w, 54
  %spec.select123 = select i1 %i.aa, i64 %i.ab, i64 %.1
  br label %bb.aj

bb.p:                                             ; preds = %bb.k
  %i.ac = icmp slt i64 %1, 1
  %i.ad = icmp slt i64 %2, 1
  %or.cond7.not10 = or i1 %i.ac, %i.ad
  %i.ae = and i64 %2, %1
  %or.cond9.not = icmp sgt i64 %i.ae, -1
  %or.cond119 = and i1 %or.cond7.not10, %or.cond9.not
  br i1 %or.cond119, label %.thread3, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %.5152.val, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !194
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 160
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !223
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load i16, ptr %i.aj, align 8, !tbaa !422
  %.fr = freeze i16 %i.ak                         ; 3 uses
  %i.al = icmp ult i16 %.fr, 10
  br i1 %i.al, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = icmp ult i16 %.fr, 30
  br i1 %i.am, label %bb.s, label %.thread3

bb.s:                                             ; preds = %bb.r
  %narrow = sub nuw nsw i16 30, %.fr
  %i.an = zext nneg i16 %narrow to i64
  %i.ao = mul i64 %2, %i.an
  %i.ap = sdiv i64 %i.ao, 20
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s
  %.092 = phi i64 [ %2, %bb.q ], [ %i.ap, %bb.s ]
  %spec.select6 = tail call i64 @llvm.abs.i64(i64 %.092, i1 true)
  br label %.thread3

.thread3:                                         ; preds = %bb.t, %bb.r, %bb.p
  %.294 = phi i64 [ 0, %bb.p ], [ 0, %bb.r ], [ %spec.select6, %bb.t ]
  %i.aq = add nuw i64 %.1, 32
  %i.ar = sub i64 %i.aq, %.294
  %i.as = and i64 %i.ar, -64
  br label %bb.aj

bb.u:                                             ; preds = %bb.d, %.critedge
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !123 ; 4 uses
  %.not36.i = icmp eq i32 %i.au, 0
  br i1 %.not36.i, label %._crit_edge.thread.i, label %.lr.ph.preheader.i

._crit_edge.thread.i:                             ; preds = %bb.u
  %i.av = add nuw nsw i64 %spec.select, 32
  %i.aw = and i64 %i.av, 9223372036854775744
  br label %bb.v

.lr.ph.preheader.i:                               ; preds = %bb.u
  %wide.trip.count.i = zext i32 %i.au to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ax = icmp eq i32 %i.au, 1
  br i1 %i.ax, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.02534.i = phi i64 [ %spec.select, %.lr.ph.preheader.i.new ], [ %.1.i.1, %.lr.ph.i ]
  %.02633.i = phi i64 [ 98, %.lr.ph.preheader.i.new ], [ %.127.i.1, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !416 ; 2 uses
  %i.bb = sub nsw i64 %spec.select, %i.ba
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %i.bb, i1 true) ; 2 uses
  %i.bc = icmp samesign ult i64 %spec.select.i, %.02633.i
  %.127.i = tail call i64 @llvm.umin.i64(i64 %spec.select.i, i64 %.02633.i) ; 2 uses
  %.1.i = select i1 %i.bc, i64 %i.ba, i64 %.02534.i
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !416 ; 2 uses
  %i.bg = sub nsw i64 %spec.select, %i.bf
  %spec.select.i.1 = tail call i64 @llvm.abs.i64(i64 %i.bg, i1 true) ; 2 uses
  %i.bh = icmp samesign ult i64 %spec.select.i.1, %.127.i
  %.127.i.1 = tail call i64 @llvm.umin.i64(i64 %spec.select.i.1, i64 %.127.i) ; 2 uses
  %.1.i.1 = select i1 %i.bh, i64 %i.bf, i64 %.1.i ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !447

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  %.02534.i.epil.init = phi i64 [ %spec.select, %.lr.ph.preheader.i ], [ %.1.i.1, %._crit_edge.i.unr-lcssa ]
  %.02633.i.epil.init = phi i64 [ 98, %.lr.ph.preheader.i ], [ %.127.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod14 = trunc i32 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod14)
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv.i.epil.init
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !416 ; 2 uses
  %i.bl = sub nsw i64 %spec.select, %i.bk
  %spec.select.i.epil = tail call i64 @llvm.abs.i64(i64 %i.bl, i1 true)
  %i.bm = icmp samesign ult i64 %spec.select.i.epil, %.02633.i.epil.init
  %.1.i.epil = select i1 %i.bm, i64 %i.bk, i64 %.02534.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.1.i.lcssa = phi i64 [ %.1.i.1, %._crit_edge.i.unr-lcssa ], [ %.1.i.epil, %.lr.ph.i.epil.preheader ] ; 4 uses
  %i.bn = add nsw i64 %.1.i.lcssa, 32
  %i.bo = and i64 %i.bn, -64                      ; 2 uses
  %.not.i = icmp slt i64 %spec.select, %.1.i.lcssa
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %i.bp = phi i64 [ %i.aw, %._crit_edge.thread.i ], [ %i.bo, %._crit_edge.i ]
  %.025.lcssa42.i = phi i64 [ %spec.select, %._crit_edge.thread.i ], [ %.1.i.lcssa, %._crit_edge.i ]
  %i.bq = or disjoint i64 %i.bp, 48
  %i.br = icmp slt i64 %spec.select, %i.bq
  %spec.select31.i = select i1 %i.br, i64 %.025.lcssa42.i, i64 %spec.select
  br label %af_latin_snap_width.exit

bb.w:                                             ; preds = %._crit_edge.i
  %i.bs = add nsw i64 %i.bo, -48
  %i.bt = icmp sgt i64 %spec.select, %i.bs
  %spec.select32.i = select i1 %i.bt, i64 %.1.i.lcssa, i64 %spec.select
  br label %af_latin_snap_width.exit

af_latin_snap_width.exit:                         ; preds = %bb.v, %bb.w
  %.023.i = phi i64 [ %spec.select31.i, %bb.v ], [ %spec.select32.i, %bb.w ] ; 9 uses
  br i1 %.not7, label %bb.z, label %bb.x

bb.x:                                             ; preds = %af_latin_snap_width.exit
  %i.bu = icmp sgt i64 %.023.i, 63
  br i1 %i.bu, label %bb.y, label %bb.aj

bb.y:                                             ; preds = %bb.x
  %i.bv = add nuw nsw i64 %.023.i, 16
  %i.bw = and i64 %i.bv, 9223372036854775744
  br label %bb.aj

bb.z:                                             ; preds = %af_latin_snap_width.exit
  %i.bx = and i32 %.5148.val, 8
  %.not116 = icmp eq i32 %i.bx, 0
  br i1 %.not116, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.by = icmp slt i64 %.023.i, 64
  br i1 %i.by, label %bb.aj, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = add nuw nsw i64 %.023.i, 32
  %i.ca = and i64 %i.bz, 9223372036854775744
  br label %bb.aj

bb.ac:                                            ; preds = %bb.z
  %i.cb = icmp slt i64 %.023.i, 48
  br i1 %i.cb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cc = add nsw i64 %.023.i, 64
  %i.cd = ashr i64 %i.cc, 1
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  %i.ce = icmp samesign ult i64 %.023.i, 128
  br i1 %i.ce, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.cf = add nuw nsw i64 %.023.i, 22
  %i.cg = and i64 %i.cf, 192                      ; 2 uses
  %reass.sub = sub nsw i64 %i.cg, %spec.select
  %i.ch = add nsw i64 %reass.sub, -16
  %i.ci = icmp ult i64 %i.ch, -31
  br i1 %i.ci, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.cj = icmp samesign ult i64 %spec.select, 48
  br i1 %i.cj, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ck = lshr i64 %spec.select, 1
  %i.cl = or disjoint i64 %i.ck, 32
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ae
  %i.cm = add nuw nsw i64 %.023.i, 32
  %i.cn = and i64 %i.cm, 9223372036854775744
  br label %bb.aj

bb.aj:                                            ; preds = %bb.o, %bb.y, %bb.ad, %bb.ai, %bb.ab, %bb.x, %bb.aa, %bb.ag, %bb.ah, %bb.af, %bb.j, %bb.l, %bb.n, %.thread3, %bb.h, %bb.e
  %.6 = phi i64 [ %spec.select123, %bb.o ], [ %spec.select, %bb.e ], [ %.1, %bb.h ], [ %spec.store.select5, %bb.j ], [ %i.as, %.thread3 ], [ %i.z, %bb.n ], [ %i.cg, %bb.af ], [ %.1, %bb.l ], [ %i.bw, %bb.y ], [ %i.cn, %bb.ai ], [ 64, %bb.x ], [ %i.ca, %bb.ab ], [ %i.cd, %bb.ad ], [ 64, %bb.aa ], [ %i.cl, %bb.ah ], [ %spec.select, %bb.ag ] ; 2 uses
  %i.co = sub nsw i64 0, %.6
  %i.cp = icmp slt i64 %1, 0
  %spec.select122 = select i1 %i.cp, i64 %i.co, i64 %.6
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %bb.b, %bb.aj
  %.090 = phi i64 [ %1, %bb.a ], [ %spec.select122, %bb.aj ], [ %1, %bb.b ]
  ret i64 %.090
}

; Function Attrs: nounwind uwtable
define internal fastcc void @af_loader_embolden_glyph_in_slot(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %3 = alloca %struct.FT_Matrix_, align 8         ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !243  ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !223
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !224  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 0, ptr %i.b, align 8, !tbaa !68
  %i.l = load i16, ptr %i.k, align 8, !tbaa !448
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 728 ; 3 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !449
  %.not46 = icmp eq i16 %i.l, %i.n                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.p = load i16, ptr %i.o, align 8, !tbaa !27   ; 2 uses
  %i.q = zext i16 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 16                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) @__const.af_loader_embolden_glyph_in_slot.scale_down_matrix, i64 24, i1 false)
  %.not = icmp eq i16 %i.p, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %2, align 8, !tbaa !252
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !247
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @af_writing_system_classes, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !248
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !450  ; 2 uses
  %.not45 = icmp eq ptr %i.z, null
  br i1 %.not45, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void %i.z(ptr noundef nonnull %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #18
  %.pre = load i64, ptr %i.a, align 8, !tbaa !68  ; 3 uses
  br i1 %.not46, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp sgt i64 %.pre, 0
  br i1 %i.aa, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 736
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !451
  %.not47 = icmp eq i64 %.pre, %i.ac
  br i1 %.not47, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.val52 = load ptr, ptr %i.e, align 8, !tbaa !243
  %.val53 = load i16, ptr %i.o, align 8, !tbaa !27
  %.val54 = load ptr, ptr %i.g, align 8, !tbaa !223
  %i.ad = getelementptr i8, ptr %.val52, i64 776
  %.val52.val = load ptr, ptr %i.ad, align 8, !tbaa !452
  %i.ae = getelementptr i8, ptr %.val54, i64 24
  %.val54.val = load i16, ptr %i.ae, align 8, !tbaa !422
  %i.af = call fastcc i64 @af_loader_compute_darkening(ptr %.val52.val, i16 %.val53, i16 %.val54.val, i64 noundef %.pre)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !453
  %sext55 = shl i64 %i.af, 32
  %i.ai = ashr exact i64 %sext55, 32
  %sext56 = shl i64 %i.ah, 32
  %i.aj = ashr exact i64 %sext56, 32
  %i.ak = mul nsw i64 %i.aj, %i.ai                ; 2 uses
  %i.al = ashr i64 %i.ak, 63
  %i.am = add nsw i64 %i.ak, 32768
  %i.an = add nsw i64 %i.am, %i.al
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !68
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 736
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !451
  %i.aq = load i16, ptr %i.k, align 8, !tbaa !448
  store i16 %i.aq, ptr %i.m, align 8, !tbaa !449
  %i.ar = shl i64 %i.an, 16
  %i.as = add i64 %i.ar, 140737488355328
  %i.at = ashr i64 %i.as, 48
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 752
  store i64 %i.at, ptr %i.au, align 8, !tbaa !454
  br i1 %.not46, label %.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre59 = load i64, ptr %i.b, align 8, !tbaa !68
  br label %bb.h

.thread:                                          ; preds = %bb.d, %bb.e, %bb.f
  %i.av = load i64, ptr %i.b, align 8, !tbaa !68  ; 3 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 744
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !455
  %.not48 = icmp eq i64 %i.av, %i.ay
  br i1 %.not48, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.az = phi i64 [ %.pre59, %._crit_edge ], [ %i.av, %bb.g ]
  %.val = load ptr, ptr %i.e, align 8, !tbaa !243
  %.val50 = load i16, ptr %i.o, align 8, !tbaa !27
  %.val51 = load ptr, ptr %i.g, align 8, !tbaa !223
  %i.ba = getelementptr i8, ptr %.val, i64 776
  %.val.val = load ptr, ptr %i.ba, align 8, !tbaa !452
  %i.bb = getelementptr i8, ptr %.val51, i64 24
  %.val51.val = load i16, ptr %i.bb, align 8, !tbaa !422
  %i.bc = call fastcc i64 @af_loader_compute_darkening(ptr %.val.val, i16 %.val50, i16 %.val51.val, i64 noundef %i.az) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !456
  %sext = shl i64 %i.bc, 32
  %i.bf = ashr exact i64 %sext, 32
  %sext57 = shl i64 %i.be, 32
  %i.bg = ashr exact i64 %sext57, 32
  %i.bh = mul nsw i64 %i.bg, %i.bf                ; 2 uses
  %i.bi = ashr i64 %i.bh, 63
  %i.bj = add nsw i64 %i.bh, 32768
  %i.bk = add nsw i64 %i.bj, %i.bi
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !68
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 744
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !455
  %i.bn = load i16, ptr %i.k, align 8, !tbaa !448
end_hunk_3
