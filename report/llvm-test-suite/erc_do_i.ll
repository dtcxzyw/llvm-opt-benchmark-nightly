inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0_@ercPixConcealIMB:bb.a
  %i.hl = add nuw nsw i32 %.075.us.us.us.us.i, 1  ; 2 uses
  %exitcond145.not.i = icmp eq i32 %i.hl, %i.ao
  %indvar.next152 = add i64 %indvar151, 1
  br i1 %exitcond145.not.i, label %pixMeanInterpolateBlock.exit, label %iter.check168, !llvm.loop !33

.lr.ph.split.us.us.us.split.us.us.split.us.split.split.us.us.i: ; preds = %.lr.ph.split.us.us.us.split.us.us.split.us.split.split.us.us.i, %.lr.ph.split.us.us.us.split.us.us.split.us.split.split.us.us.i.preheader
  %indvars.iv137.i = phi i64 [ %indvars.iv137.i.ph, %.lr.ph.split.us.us.us.split.us.us.split.us.split.split.us.us.i.preheader ], [ %indvars.iv.next138.i.3, %.lr.ph.split.us.us.us.split.us.us.split.us.split.split.us.us.i ] ; 6 uses
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv137.i
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !30
  %i.ho = and i16 %i.hn, 255
  %gep179.i = getelementptr [2 x i8], ptr %invariant.gep178.i, i64 %indvars.iv137.i
  store i16 %i.ho, ptr %gep179.i, align 2, !tbaa !30
  %indvars.iv.next138.i = or disjoint i64 %indvars.iv137.i, 1 ; 2 uses
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.next138.i
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !30
  %i.hr = and i16 %i.hq, 255
  %gep179.i.1 = getelementptr [2 x i8], ptr %invariant.gep178.i, i64 %indvars.iv.next138.i
  store i16 %i.hr, ptr %gep179.i.1, align 2, !tbaa !30
  %indvars.iv.next138.i.1 = or disjoint i64 %indvars.iv137.i, 2 ; 2 uses
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.next138.i.1
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !30
  %i.hu = and i16 %i.ht, 255
  %gep179.i.2 = getelementptr [2 x i8], ptr %invariant.gep178.i, i64 %indvars.iv.next138.i.1
  store i16 %i.hu, ptr %gep179.i.2, align 2, !tbaa !30
  %indvars.iv.next138.i.2 = or disjoint i64 %indvars.iv137.i, 3 ; 2 uses
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.next138.i.2
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !30
  %i.hx = and i16 %i.hw, 255
  %gep179.i.3 = getelementptr [2 x i8], ptr %invariant.gep178.i, i64 %indvars.iv.next138.i.2
  store i16 %i.hx, ptr %gep179.i.3, align 2, !tbaa !30
  %indvars.iv.next138.i.3 = add nuw nsw i64 %indvars.iv137.i, 4 ; 2 uses
  %exitcond141.not.i.3 = icmp eq i64 %indvars.iv.next138.i.3, %wide.trip.count149.i
  br i1 %exitcond141.not.i.3, label %._crit_edge.split.us.us.us.split.us.us.split.us.split.us93.i, label %.lr.ph.split.us.us.us.split.us.us.split.us.split.split.us.us.i, !llvm.loop !42

.preheader.us.us.us.i.split.split.us.preheader:   ; preds = %._crit_edge.split.us.us.us.split.us.us.split.i.split, %.preheader.us.us.us.i.preheader93
  %indvars.iv128.i = phi i64 [ %indvars.iv.next129.i, %._crit_edge.split.us.us.us.split.us.us.split.i.split ], [ 0, %.preheader.us.us.us.i.preheader93 ] ; 2 uses
  %.075.us.us.us.i = phi i32 [ %i.hz, %._crit_edge.split.us.us.us.split.us.us.split.i.split ], [ 0, %.preheader.us.us.us.i.preheader93 ] ; 2 uses
  %i.hy = sub nsw i32 %i.ao, %.075.us.us.us.i     ; 2 uses
  %i.hz = add nuw nsw i32 %.075.us.us.us.i, 1     ; 4 uses
  %invariant.gep176.sink.i = getelementptr [2 x i8], ptr %i.an, i64 %indvars.iv128.i ; 2 uses
  br label %.preheader.us.us.us.i.split.split.us

.preheader.us.us.us.i.split.split.us:             ; preds = %.preheader.us.us.us.i.split.split.us, %.preheader.us.us.us.i.split.split.us.preheader
  %indvars.iv123.i.us85 = phi i64 [ 0, %.preheader.us.us.us.i.split.split.us.preheader ], [ %indvars.iv.next124.i.us88.1, %.preheader.us.us.us.i.split.split.us ] ; 5 uses
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv123.i.us85
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !30
  %i.ic = zext i16 %i.ib to i32
  %i.id = mul nsw i32 %i.hy, %i.ic
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %.sroa.11.0, i64 %indvars.iv123.i.us85
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !30
  %i.ig = zext i16 %i.if to i32
  %i.ih = mul nuw nsw i32 %i.hz, %i.ig
  %i.ii = add nsw i32 %i.ih, %i.id
  %i.ij = sdiv i32 %i.ii, %i.fa
  %i.ik = trunc i32 %i.ij to i16
  %i.il = and i16 %i.ik, 255
  %gep177.i.us87 = getelementptr [2 x i8], ptr %invariant.gep176.sink.i, i64 %indvars.iv123.i.us85
  store i16 %i.il, ptr %gep177.i.us87, align 2, !tbaa !30
  %indvars.iv.next124.i.us88 = or disjoint i64 %indvars.iv123.i.us85, 1 ; 3 uses
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.next124.i.us88
  %i.in = load i16, ptr %i.im, align 2, !tbaa !30
  %i.io = zext i16 %i.in to i32
  %i.ip = mul nsw i32 %i.hy, %i.io
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.11.0, i64 %indvars.iv.next124.i.us88
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !30
  %i.is = zext i16 %i.ir to i32
  %i.it = mul nuw nsw i32 %i.hz, %i.is
  %i.iu = add nsw i32 %i.it, %i.ip
  %i.iv = sdiv i32 %i.iu, %i.fa
  %i.iw = trunc i32 %i.iv to i16
  %i.ix = and i16 %i.iw, 255
  %gep177.i.us87.1 = getelementptr [2 x i8], ptr %invariant.gep176.sink.i, i64 %indvars.iv.next124.i.us88
  store i16 %i.ix, ptr %gep177.i.us87.1, align 2, !tbaa !30
  %indvars.iv.next124.i.us88.1 = add nuw nsw i64 %indvars.iv123.i.us85, 2 ; 2 uses
  %exitcond127.not.i.us89.1 = icmp eq i64 %indvars.iv.next124.i.us88.1, %wide.trip.count149.i
  br i1 %exitcond127.not.i.us89.1, label %._crit_edge.split.us.us.us.split.us.us.split.i.split, label %.preheader.us.us.us.i.split.split.us, !llvm.loop !32

._crit_edge.split.us.us.us.split.us.us.split.i.split: ; preds = %.preheader.us.us.us.i.split.split.us
  %indvars.iv.next129.i = add nsw i64 %indvars.iv128.i, %i.ay
  %exitcond131.not.i = icmp eq i32 %i.hz, %i.ao
  br i1 %exitcond131.not.i, label %pixMeanInterpolateBlock.exit, label %.preheader.us.us.us.i.split.split.us.preheader, !llvm.loop !33

.preheader.us.us.i:                               ; preds = %.preheader.us.us.i.preheader.a, %._crit_edge.split.us.us.us.split.i.split
  %indvars.iv116.i = phi i64 [ %indvars.iv.next117.i, %._crit_edge.split.us.us.us.split.i.split ], [ 0, %.preheader.us.us.i.preheader.a ] ; 2 uses
  %indvars.iv114.i = phi i64 [ %indvars.iv.next115.i, %._crit_edge.split.us.us.us.split.i.split ], [ 0, %.preheader.us.us.i.preheader.a ] ; 3 uses
  %indvars.iv.next115.i = add nuw nsw i64 %indvars.iv114.i, 1 ; 3 uses
  %i.iy = mul nsw i64 %indvars.iv114.i, %i.ay
  %i.iz = getelementptr inbounds [2 x i8], ptr %i.aj, i64 %i.iy
  %i.ja = trunc i64 %indvars.iv114.i to i32
  %i.jb = sub i32 %i.ao, %i.ja                    ; 2 uses
  %i.jc = trunc nuw nsw i64 %indvars.iv.next115.i to i32 ; 2 uses
  %invariant.gep172.sink.i = getelementptr [2 x i8], ptr %i.an, i64 %indvars.iv116.i
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ai, %.preheader.us.us.i
  %indvars.iv109.i = phi i64 [ %indvars.iv.next110.i, %bb.ai ], [ 0, %.preheader.us.us.i ] ; 4 uses
  br i1 %.not.us.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv109.i
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !30
  %i.jf = zext i16 %i.je to i32
  %i.jg = mul nsw i32 %i.jb, %i.jf
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.058.us.us.us.i = phi i32 [ %i.jg, %bb.ae ], [ 0, %bb.ad ]
  %.057.us.us.us.i = phi i32 [ %i.jb, %bb.ae ], [ 0, %bb.ad ]
  %i.jh = add nsw i32 %.057.us.us.us.i, %i.jc
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 3 uses
  %i.ji = trunc nuw nsw i64 %indvars.iv.next110.i to i32 ; 2 uses
  %i.jj = add nsw i32 %i.jh, %i.ji                ; 2 uses
  %i.jk = icmp sgt i32 %i.jj, 0
  br i1 %i.jk, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jl = load ptr, ptr @img, align 8
  %.in.us.us.us.i = getelementptr inbounds nuw i8, ptr %i.jl, i64 %.in.v.i
  %i.jm = load i32, ptr %.in.us.us.us.i, align 4, !tbaa !4
  %i.jn = trunc i32 %i.jm to i16
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.11.0, i64 %indvars.iv109.i
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !30
  %i.jq = zext i16 %i.jp to i32
  %i.jr = mul nuw nsw i32 %i.jq, %i.jc
  %i.js = add nsw i32 %i.jr, %.058.us.us.us.i
  %i.jt = load i16, ptr %i.iz, align 2, !tbaa !30
  %i.ju = zext i16 %i.jt to i32
  %i.jv = mul nuw nsw i32 %i.ju, %i.ji
  %i.jw = add nsw i32 %i.jv, %i.js
  %i.jx = sdiv i32 %i.jw, %i.jj
  %i.jy = trunc i32 %i.jx to i16
  %i.jz = and i16 %i.jy, 255
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sink182.i = phi i16 [ %i.jz, %bb.ah ], [ %i.jn, %bb.ag ]
  %gep173.i = getelementptr [2 x i8], ptr %invariant.gep172.sink.i, i64 %indvars.iv109.i
  store i16 %.sink182.i, ptr %gep173.i, align 2, !tbaa !30
  %exitcond113.not.i = icmp eq i64 %indvars.iv.next110.i, %wide.trip.count149.i
  br i1 %exitcond113.not.i, label %._crit_edge.split.us.us.us.split.i.split, label %bb.ad, !llvm.loop !32

._crit_edge.split.us.us.us.split.i.split:         ; preds = %bb.ai
  %indvars.iv.next117.i = add nsw i64 %indvars.iv116.i, %i.ay
  %exitcond122.not.i = icmp eq i64 %indvars.iv.next115.i, %wide.trip.count149.i
  br i1 %exitcond122.not.i, label %pixMeanInterpolateBlock.exit, label %.preheader.us.us.i, !llvm.loop !33

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader.a, %._crit_edge.split.us85.i.split
  %indvars.iv102.i = phi i64 [ %indvars.iv.next103.i, %._crit_edge.split.us85.i.split ], [ 0, %.preheader.us.i.preheader.a ] ; 2 uses
  %indvars.iv100.i = phi i64 [ %indvars.iv.next101.i, %._crit_edge.split.us85.i.split ], [ 0, %.preheader.us.i.preheader.a ] ; 3 uses
  %i.ka = mul nsw i64 %indvars.iv100.i, %i.ay     ; 2 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.ka
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1 ; 3 uses
  %i.kb = getelementptr inbounds [2 x i8], ptr %i.aj, i64 %i.ka
  %i.kc = trunc i64 %indvars.iv100.i to i32
  %i.kd = sub i32 %i.ao, %i.kc                    ; 2 uses
  %i.ke = trunc nuw nsw i64 %indvars.iv.next101.i to i32 ; 2 uses
  %invariant.gep168.sink.i = getelementptr [2 x i8], ptr %i.an, i64 %indvars.iv102.i
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aq, %.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %bb.aq ] ; 5 uses
  br i1 %.not.us.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !30
  %i.kh = zext i16 %i.kg to i32
  %i.ki = mul nsw i32 %i.kd, %i.kh
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.058.us78.i = phi i32 [ %i.ki, %bb.ak ], [ 0, %bb.aj ]
  %.057.us79.i = phi i32 [ %i.kd, %bb.ak ], [ 0, %bb.aj ]
  %i.kj = load i16, ptr %gep.i, align 2, !tbaa !30
  %i.kk = zext i16 %i.kj to i32
  %i.kl = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %i.km = sub i32 %i.ao, %i.kl                    ; 2 uses
  %i.kn = mul nsw i32 %i.km, %i.kk
  %i.ko = add nsw i32 %i.kn, %.058.us78.i         ; 2 uses
  %i.kp = add nsw i32 %.057.us79.i, %i.km         ; 2 uses
  br i1 %.not70.us.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.11.0, i64 %indvars.iv.i
  %i.kr = load i16, ptr %i.kq, align 2, !tbaa !30
  %i.ks = zext i16 %i.kr to i32
  %i.kt = mul nuw nsw i32 %i.ks, %i.ke
  %i.ku = add nsw i32 %i.kt, %i.ko
  %i.kv = add nsw i32 %i.kp, %i.ke
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.260.us80.i = phi i32 [ %i.ku, %bb.am ], [ %i.ko, %bb.al ]
  %.2.us81.i = phi i32 [ %i.kv, %bb.am ], [ %i.kp, %bb.al ]
  %i.kw = add i32 %i.kl, 1                        ; 2 uses
  %i.kx = add nsw i32 %.2.us81.i, %i.kw           ; 2 uses
  %i.ky = icmp sgt i32 %i.kx, 0
  br i1 %i.ky, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %6 = load i16, ptr %i.kb, align 2, !tbaa !30
  %7 = zext i16 %6 to i32
  %8 = mul nuw nsw i32 %i.kw, %7
  %9 = add nsw i32 %8, %.260.us80.i
  %10 = sdiv i32 %9, %i.kx
  %i.kz = trunc i32 %10 to i16
  %11 = and i16 %i.kz, 255
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %12 = load ptr, ptr @img, align 8
  %.in.i = getelementptr inbounds nuw i8, ptr %12, i64 %.in.v.i
  %13 = load i32, ptr %.in.i, align 4, !tbaa !4
  %i.la = trunc i32 %13 to i16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sink183.i = phi i16 [ %11, %bb.ao ], [ %i.la, %bb.ap ]
  %gep169.i = getelementptr [2 x i8], ptr %invariant.gep168.sink.i, i64 %indvars.iv.i
  store i16 %.sink183.i, ptr %gep169.i, align 2, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count149.i
  br i1 %exitcond.not.i, label %._crit_edge.split.us85.i.split, label %bb.aj, !llvm.loop !32

._crit_edge.split.us85.i.split:                   ; preds = %bb.aq
  %indvars.iv.next103.i = add nsw i64 %indvars.iv102.i, %i.ay
  %exitcond108.not.i = icmp eq i64 %indvars.iv.next101.i, %wide.trip.count149.i
  br i1 %exitcond108.not.i, label %pixMeanInterpolateBlock.exit, label %.preheader.us.i, !llvm.loop !33

pixMeanInterpolateBlock.exit:                     ; preds = %._crit_edge.split.us85.i.split, %._crit_edge.split.us85.i.split.us.us.split, %._crit_edge.split.us85.i.split.us.us.split.us.split.us75, %._crit_edge.split.us85.i.split.us.us.split.us.split.us.us.us, %._crit_edge.split.us.us.us.split.i.split, %._crit_edge.split.us.us.us.split.i.split.us.split.us83, %._crit_edge.split.us.us.us.split.i.split.us.split.us.us.us, %._crit_edge.split.us.us.us.split.us.us.split.i.split, %._crit_edge.split.us.us.us.split.us.us.split.i.split.us.us, %._crit_edge.split.us.us.us.split.us.us.split.us.split.us93.i, %._crit_edge.split.us.us.us.split.us.us.split.us.split.us.us.us.i, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 9) i32 @ercCollect8PredBlocks(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext %7) local_unnamed_addr #4 {
.peel.begin:
  %.not = icmp eq i8 %7, 0                        ; 5 uses
  %i.a = select i1 %.not, i32 4, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.b = icmp sgt i32 %1, 0                       ; 6 uses
  %i.c = sub nsw i32 %4, %6
  %i.d = icmp slt i32 %1, %i.c                    ; 6 uses
  %i.e = icmp sgt i32 %2, 0                       ; 2 uses
  %i.f = sub nsw i32 %5, %6
  %i.g = icmp slt i32 %2, %i.f                    ; 2 uses
  %invariant.op = add i32 %2, %6                  ; 3 uses
  %i.h = add nsw i32 %1, -1
  %i.i = mul nsw i32 %5, %i.h                     ; 2 uses
  %i.j = add nsw i32 %i.i, %2
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr [4 x i8], ptr %3, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = add nsw i32 %6, %1
  %i.o = mul nsw i32 %i.n, %5                     ; 2 uses
  %i.p = add nsw i32 %i.o, %2
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr [4 x i8], ptr %3, i64 %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = mul nsw i32 %5, %1                       ; 2 uses
  %i.u = add nsw i32 %i.t, %2
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr [4 x i8], ptr %3, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -4       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.z = getelementptr i8, ptr %i.l, i64 -4       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.r, i64 -4      ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.reass = add i32 %i.t, %invariant.op
  %i.ad = sext i32 %.reass to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.reass154 = add i32 %i.i, %invariant.op
  %i.ag = sext i32 %.reass154 to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ag ; 2 uses
  %i.ai = add i32 %invariant.op, %i.o
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %3, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br i1 %i.b, label %bb.a, label %bb.c

bb.a:                                             ; preds = %.peel.begin
  %i.am = load i32, ptr %i.l, align 4, !tbaa !4   ; 2 uses
  %.not142.peel = icmp slt i32 %i.am, 3
  br i1 %.not142.peel, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.am, ptr %i.m, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %.peel.begin
  %.0124.peel = phi i32 [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %.peel.begin ] ; 3 uses
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.an = load i32, ptr %i.r, align 4, !tbaa !4   ; 2 uses
  %.not143.peel = icmp slt i32 %i.an, 3
  br i1 %.not143.peel, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.an, ptr %i.s, align 4, !tbaa !4
  %i.ao = add nuw nsw i32 %.0124.peel, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.1.peel = phi i32 [ %i.ao, %bb.e ], [ %.0124.peel, %bb.d ], [ %.0124.peel, %bb.c ] ; 3 uses
  br i1 %i.e, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.ap = load i32, ptr %i.x, align 4, !tbaa !4   ; 2 uses
  %.not144.peel = icmp slt i32 %i.ap, 3
  br i1 %.not144.peel, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.ap, ptr %i.y, align 4, !tbaa !4
  %i.aq = add nuw nsw i32 %.1.peel, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2.peel = phi i32 [ %i.aq, %bb.h ], [ %.1.peel, %bb.g ] ; 4 uses
  br i1 %.not, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  br i1 %i.b, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ar = load i32, ptr %i.z, align 4, !tbaa !4   ; 2 uses
  %.not146.peel = icmp slt i32 %i.ar, 3
  br i1 %.not146.peel, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.ar, ptr %i.aa, align 4, !tbaa !4
  %i.as = add nuw nsw i32 %.2.peel, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.3.peel = phi i32 [ %i.as, %bb.l ], [ %.2.peel, %bb.k ], [ %.2.peel, %bb.j ] ; 3 uses
  br i1 %i.d, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.at = load i32, ptr %i.ab, align 4, !tbaa !4  ; 2 uses
  %.not147.peel = icmp slt i32 %i.at, 3
  br i1 %.not147.peel, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.at, ptr %i.ac, align 4, !tbaa !4
  %i.au = add nuw nsw i32 %.3.peel, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.i, %bb.f
  %.4.peel = phi i32 [ %.2.peel, %bb.i ], [ %i.au, %bb.o ], [ %.3.peel, %bb.n ], [ %.3.peel, %bb.m ], [ %.1.peel, %bb.f ] ; 3 uses
  br i1 %i.g, label %bb.q, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.av = load i32, ptr %i.ae, align 4, !tbaa !4  ; 2 uses
  %.not148.peel = icmp slt i32 %i.av, 3
  br i1 %.not148.peel, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.av, ptr %i.af, align 4, !tbaa !4
  %i.aw = add nuw nsw i32 %.4.peel, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.5.peel = phi i32 [ %i.aw, %bb.r ], [ %.4.peel, %bb.q ] ; 4 uses
  br i1 %.not, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  br i1 %i.b, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ax = load i32, ptr %i.ah, align 4, !tbaa !4  ; 2 uses
  %.not150.peel = icmp slt i32 %i.ax, 3
  br i1 %.not150.peel, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.ax, ptr %0, align 4, !tbaa !4
  %i.ay = add nuw nsw i32 %.5.peel, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.6.peel = phi i32 [ %i.ay, %bb.v ], [ %.5.peel, %bb.u ], [ %.5.peel, %bb.t ] ; 3 uses
  br i1 %i.d, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.az = load i32, ptr %i.ak, align 4, !tbaa !4  ; 2 uses
  %.not151.peel = icmp slt i32 %i.az, 3
  br i1 %.not151.peel, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 %i.az, ptr %i.al, align 4, !tbaa !4
  %i.ba = add nuw nsw i32 %.6.peel, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.s, %bb.p
  %.7.peel = phi i32 [ %.5.peel, %bb.s ], [ %i.ba, %bb.y ], [ %.6.peel, %bb.x ], [ %.6.peel, %bb.w ], [ %.4.peel, %bb.p ] ; 2 uses
  %i.bb = icmp samesign ult i32 %.7.peel, %i.a
  br i1 %i.bb, label %.peel.next, label %.loopexit

.peel.next:                                       ; preds = %bb.z
  br i1 %i.b, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.peel.next
  %i.bc = load i32, ptr %i.l, align 4, !tbaa !4   ; 2 uses
  %.not142 = icmp slt i32 %i.bc, 2
  br i1 %.not142, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.bc, ptr %i.m, align 4, !tbaa !4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.peel.next
  %.0124 = phi i32 [ 1, %bb.ab ], [ 0, %bb.aa ], [ 0, %.peel.next ] ; 3 uses
  br i1 %i.d, label %bb.ad, label %bb.af

end_hunk_0
