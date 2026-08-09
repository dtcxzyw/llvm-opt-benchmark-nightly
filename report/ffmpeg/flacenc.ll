inline.NumInlined: 99
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 22
begin_hunk_0_@encode_frame:bb.a
  store i32 %i.xn, ptr %i.xo, align 4, !tbaa !151
  %i.xp = icmp sgt i32 %i.nj, 0
  br i1 %i.xp, label %.lr.ph574.i, label %._crit_edge575.i

.lr.ph574.i:                                      ; preds = %.loopexit.i16
  %i.xq = getelementptr [128 x i8], ptr %i.a, i64 %.pre-phi630.i
  %i.xr = getelementptr i8, ptr %i.xq, i64 -128
  %smax = call i64 @llvm.smax.i64(i64 %.pre-phi630.i, i64 1)
  %i.xs = shl nuw nsw i64 %smax, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 16 dereferenceable(1) %i.xr, i64 %i.xs, i1 false), !tbaa !47
  %.pre626.i = load i32, ptr %i.xo, align 4, !tbaa !151
  br label %._crit_edge575.i

._crit_edge575.i:                                 ; preds = %.lr.ph574.i, %.loopexit.i16
  %i.xt = phi i32 [ %.pre626.i, %.lr.ph574.i ], [ %i.xn, %.loopexit.i16 ]
  %i.xu = load i32, ptr %i.bk, align 8, !tbaa !89
  %i.xv = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.xw = call fastcc i32 @lpc_encode_choose_datapath(ptr noundef nonnull %0, i32 noundef %i.xu, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.at, i32 noundef %i.bj, i32 noundef %i.nj, ptr noundef nonnull %i.xv, i32 noundef %i.xt)
  %.not364.i = icmp eq i32 %i.xw, 0
  br i1 %.not364.i, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge575.i
  store i32 1, ptr %i.xk, align 4, !tbaa !141
  store i32 1, ptr %i.bg, align 8, !tbaa !142
  %i.xx = load i32, ptr %i.bk, align 8, !tbaa !89 ; 2 uses
  %i.xy = icmp slt i32 %i.xx, 33
  br i1 %i.xy, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.xz = zext nneg i32 %i.bj to i64
  %i.ya = shl nuw nsw i64 %i.xz, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bh, ptr nonnull align 4 %i.bi, i64 %i.ya, i1 false)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.yb = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !86
  %i.yd = add i32 %i.yc, 8
  %i.ye = load i32, ptr %i.au, align 16, !tbaa !84
  %i.yf = mul nsw i32 %i.ye, %i.xx
  %i.yg = add i32 %i.yd, %i.yf
  br label %encode_residual_ch.exit

bb.ce:                                            ; preds = %._crit_edge575.i
  %i.yh = load i32, ptr %i.xh, align 8, !tbaa !146
  %i.yi = call fastcc i64 @find_subframe_rice_params(ptr noundef nonnull %0, ptr noundef nonnull %i.bg, i32 noundef %i.yh) ; 0 uses
  %i.yj = load i32, ptr %i.xh, align 8, !tbaa !146 ; 3 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !86
  %i.ym = add i32 %i.yl, 8                        ; 3 uses
  %i.yn = load i32, ptr %i.bg, align 8, !tbaa !142 ; 2 uses
  switch i32 %i.yn, label %bb.ch [
    i32 0, label %bb.cf
    i32 1, label %bb.cg
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.yo = load i32, ptr %i.bk, align 8, !tbaa !89
  %i.yp = add i32 %i.yo, %i.ym
  br label %encode_residual_ch.exit

bb.cg:                                            ; preds = %bb.ce
  %i.yq = load i32, ptr %i.au, align 16, !tbaa !84
  %i.yr = load i32, ptr %i.bk, align 8, !tbaa !89
  %i.ys = mul nsw i32 %i.yr, %i.yq
  %i.yt = add i32 %i.ys, %i.ym
  br label %encode_residual_ch.exit

bb.ch:                                            ; preds = %bb.ce
  %i.yu = load i32, ptr %i.bk, align 8, !tbaa !89
  %i.yv = mul nsw i32 %i.yu, %i.yj
  %i.yw = add i32 %i.yv, %i.ym                    ; 2 uses
  %i.yx = icmp eq i32 %i.yn, 32
  br i1 %i.yx, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.yy = load i32, ptr %i.ba, align 8, !tbaa !150
  %i.yz = mul nsw i32 %i.yy, %i.yj
  %i.za = add i32 %i.yw, 9
  %i.zb = add i32 %i.za, %i.yz
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.1.i486.i = phi i32 [ %i.zb, %bb.ci ], [ %i.yw, %bb.ch ]
  %i.zc = getelementptr inbounds nuw i8, ptr %i.bg, i64 156
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !153 ; 3 uses
  %i.ze = load i32, ptr %i.au, align 16, !tbaa !84 ; 2 uses
  %i.zf = ashr i32 %i.ze, %i.zd                   ; 2 uses
  %i.zg = add i32 %.1.i486.i, 6                   ; 2 uses
  %.not.i487.i = icmp eq i32 %i.zd, 31
  br i1 %.not.i487.i, label %encode_residual_ch.exit, label %.lr.ph.i488.i

.lr.ph.i488.i:                                    ; preds = %bb.cj
  %i.zh = shl nuw nsw i32 1, %i.zd
  %i.zi = getelementptr inbounds nuw i8, ptr %i.bg, i64 152
  %i.zj = getelementptr inbounds nuw i8, ptr %i.bg, i64 160
  %i.zk = load i32, ptr %i.zi, align 8, !tbaa !90
  %wide.trip.count.i489.i = zext nneg i32 %i.zh to i64
  br label %bb.ck

bb.ck:                                            ; preds = %rice_count_exact.exit.i494.i, %.lr.ph.i488.i
  %indvars.iv.i490.i = phi i64 [ 0, %.lr.ph.i488.i ], [ %indvars.iv.next.i497.i, %rice_count_exact.exit.i494.i ] ; 2 uses
  %.254.i491.i = phi i32 [ %i.zg, %.lr.ph.i488.i ], [ %i.aar, %rice_count_exact.exit.i494.i ]
  %.04653.i492.i = phi i32 [ %i.zf, %.lr.ph.i488.i ], [ %..i496.i, %rice_count_exact.exit.i494.i ] ; 3 uses
  %.04752.i493.i = phi i32 [ %i.yj, %.lr.ph.i488.i ], [ %.04653.i492.i, %rice_count_exact.exit.i494.i ] ; 2 uses
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %indvars.iv.i490.i
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !47 ; 3 uses
  %i.zn = add i32 %.254.i491.i, %i.zk
  %i.zo = sext i32 %.04752.i493.i to i64
  %i.zp = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.zo ; 2 uses
  %i.zq = sub nsw i32 %.04653.i492.i, %.04752.i493.i ; 3 uses
  %i.zr = icmp sgt i32 %i.zq, 0
  br i1 %i.zr, label %.lr.ph.i.i499.i, label %rice_count_exact.exit.i494.i

.lr.ph.i.i499.i:                                  ; preds = %bb.ck
  %i.zs = add i32 %i.zm, 1                        ; 2 uses
  %wide.trip.count.i.i500.i = zext nneg i32 %i.zq to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.zq, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i499.i
  %n.vec = and i64 %wide.trip.count.i.i500.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.zs, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert200 = insertelement <4 x i32> poison, i32 %i.zm, i64 0
  %broadcast.splat201 = shufflevector <4 x i32> %broadcast.splatinsert200, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aaf, %vector.body ]
  %vec.phi202 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aag, %vector.body ]
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %index ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  %wide.load = load <4 x i32>, ptr %i.zt, align 4, !tbaa !47 ; 2 uses
  %wide.load203 = load <4 x i32>, ptr %i.zu, align 4, !tbaa !47 ; 2 uses
  %i.zv = shl <4 x i32> %wide.load, splat (i32 1)
  %i.zw = shl <4 x i32> %wide.load203, splat (i32 1)
  %i.zx = ashr <4 x i32> %wide.load, splat (i32 31)
  %i.zy = ashr <4 x i32> %wide.load203, splat (i32 31)
  %i.zz = xor <4 x i32> %i.zv, %i.zx
  %i.aaa = xor <4 x i32> %i.zw, %i.zy
  %i.aab = lshr <4 x i32> %i.zz, %broadcast.splat201
  %i.aac = lshr <4 x i32> %i.aaa, %broadcast.splat201
  %i.aad = add <4 x i32> %broadcast.splat, %vec.phi
  %i.aae = add <4 x i32> %broadcast.splat, %vec.phi202
  %i.aaf = add <4 x i32> %i.aad, %i.aab           ; 2 uses
  %i.aag = add <4 x i32> %i.aae, %i.aac           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aah = icmp eq i64 %index.next, %n.vec
  br i1 %i.aah, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aag, %i.aaf
  %i.aai = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i500.i
  br i1 %cmp.n, label %rice_count_exact.exit.i494.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i499.i, %middle.block
  %indvars.iv.i.i501.i.ph = phi i64 [ 0, %.lr.ph.i.i499.i ], [ %n.vec, %middle.block ]
  %.01112.i.i502.i.ph = phi i32 [ 0, %.lr.ph.i.i499.i ], [ %i.aai, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i501.i = phi i64 [ %indvars.iv.next.i.i503.i, %scalar.ph ], [ %indvars.iv.i.i501.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.01112.i.i502.i = phi i32 [ %i.aaq, %scalar.ph ], [ %.01112.i.i502.i.ph, %scalar.ph.preheader ]
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %indvars.iv.i.i501.i
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !47 ; 2 uses
  %i.aal = shl i32 %i.aak, 1
  %i.aam = ashr i32 %i.aak, 31
  %i.aan = xor i32 %i.aal, %i.aam
  %i.aao = lshr i32 %i.aan, %i.zm
  %i.aap = add i32 %i.zs, %.01112.i.i502.i
  %i.aaq = add i32 %i.aap, %i.aao                 ; 2 uses
  %indvars.iv.next.i.i503.i = add nuw nsw i64 %indvars.iv.i.i501.i, 1 ; 2 uses
  %exitcond.not.i.i504.i = icmp eq i64 %indvars.iv.next.i.i503.i, %wide.trip.count.i.i500.i
  br i1 %exitcond.not.i.i504.i, label %rice_count_exact.exit.i494.i, label %scalar.ph, !llvm.loop !203

rice_count_exact.exit.i494.i:                     ; preds = %scalar.ph, %middle.block, %bb.ck
  %.011.lcssa.i.i495.i = phi i32 [ 0, %bb.ck ], [ %i.aai, %middle.block ], [ %i.aaq, %scalar.ph ]
  %i.aar = add i32 %i.zn, %.011.lcssa.i.i495.i    ; 2 uses
  %i.aas = add nsw i32 %.04653.i492.i, %i.zf
  %..i496.i = call i32 @llvm.smin.i32(i32 %i.ze, i32 %i.aas)
  %indvars.iv.next.i497.i = add nuw nsw i64 %indvars.iv.i490.i, 1 ; 2 uses
  %exitcond.not.i498.i = icmp eq i64 %indvars.iv.next.i497.i, %wide.trip.count.i489.i
  br i1 %exitcond.not.i498.i, label %encode_residual_ch.exit, label %bb.ck, !llvm.loop !176

encode_residual_ch.exit:                          ; preds = %rice_count_exact.exit.i494.i, %._crit_edge521.thread.i, %._crit_edge.thread.i, %bb.m, %subframe_count_exact.exit442.i, %bb.cd, %bb.cf, %bb.cg, %bb.cj
  %.1.in.i = phi i32 [ %i.yp, %bb.cf ], [ %i.zg, %bb.cj ], [ %.0.in.i, %subframe_count_exact.exit442.i ], [ %i.cv, %bb.m ], [ %i.yg, %bb.cd ], [ %i.by, %._crit_edge521.thread.i ], [ %i.ci, %._crit_edge.thread.i ], [ %i.yt, %bb.cg ], [ %i.aar, %rice_count_exact.exit.i494.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.aat = sext i32 %.1.in.i to i64
  %i.aau = add i64 %.0123, %i.aat                 ; 2 uses
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.aav = load i32, ptr %i.ap, align 8, !tbaa !46
  %i.aaw = sext i32 %i.aav to i64
  %i.aax = icmp slt i64 %indvar.next, %i.aaw
  br i1 %i.aax, label %bb.e, label %._crit_edge, !llvm.loop !204

._crit_edge:                                      ; preds = %encode_residual_ch.exit, %count_frame_header.exit
  %.0.lcssa = phi i64 [ %i.ao, %count_frame_header.exit ], [ %i.aau, %encode_residual_ch.exit ]
  %i.aay = add i64 %.0.lcssa, 23                  ; 2 uses
  %i.aaz = icmp ugt i64 %i.aay, 17179869183
  %i.aba = lshr i64 %i.aay, 3
  %i.abb = trunc nuw nsw i64 %i.aba to i32
  %.014 = select i1 %i.aaz, i32 -558323010, i32 %i.abb
  ret i32 %.014
}

declare i32 @ff_get_encode_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @av_shrink_packet(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @encode_residual_fixed_with_residual_limit_33bps(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 5, -2147483648) %2, i32 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader219, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <2 x i64>, ptr %i.b, align 8, !tbaa !111
  %wide.load210 = load <2 x i64>, ptr %i.c, align 8, !tbaa !111
  %i.d = trunc <2 x i64> %wide.load to <2 x i32>
  %i.e = trunc <2 x i64> %wide.load210 to <2 x i32>
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store <2 x i32> %i.d, ptr %i.f, align 4, !tbaa !47
  store <2 x i32> %i.e, ptr %i.g, align 4, !tbaa !47
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !205

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader219

.lr.ph.preheader219:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  switch i32 %3, label %.preheader [
    i32 0, label %.preheader136.preheader
    i32 1, label %.preheader139.preheader
    i32 2, label %.preheader142.preheader
    i32 3, label %.preheader145.preheader
  ]

.preheader145.preheader:                          ; preds = %._crit_edge
  %wide.trip.count170 = zext nneg i32 %2 to i64
  br label %.preheader145

.preheader142.preheader:                          ; preds = %._crit_edge
  %wide.trip.count175 = zext nneg i32 %2 to i64
  br label %.preheader142

.preheader139.preheader:                          ; preds = %._crit_edge
  %wide.trip.count180 = zext nneg i32 %2 to i64
  br label %.preheader139

.preheader136.preheader:                          ; preds = %._crit_edge
  %wide.trip.count185 = zext nneg i32 %2 to i64
  br label %.preheader136

.preheader:                                       ; preds = %._crit_edge
  %i.i = icmp slt i32 %3, %2
  br i1 %i.i, label %.lr.ph154.preheader, label %.critedge

.lr.ph154.preheader:                              ; preds = %.preheader
  %i.j = sext i32 %3 to i64
  %wide.trip.count190 = zext nneg i32 %2 to i64
  br label %.lr.ph154

.lr.ph:                                           ; preds = %.lr.ph.preheader219, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader219 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.l = load i64, ptr %i.k, align 8, !tbaa !111
  %i.m = trunc i64 %i.l to i32
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.m, ptr %i.n, align 4, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !206

.preheader136:                                    ; preds = %.preheader136.preheader, %bb.b
  %indvars.iv182 = phi i64 [ 0, %.preheader136.preheader ], [ %indvars.iv.next183, %bb.b ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv182
  %i.p = load i64, ptr %i.o, align 8, !tbaa !111  ; 2 uses
  %i.q = icmp eq i64 %i.p, -2147483648
  br i1 %i.q, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.preheader136
  %i.r = trunc i64 %i.p to i32
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv182
  store i32 %i.r, ptr %i.s, align 4, !tbaa !47
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next183, %wide.trip.count185
  br i1 %exitcond186.not, label %.critedge, label %.preheader136, !llvm.loop !207

.preheader139:                                    ; preds = %.preheader139.preheader, %bb.c
  %indvars.iv177 = phi i64 [ 1, %.preheader139.preheader ], [ %indvars.iv.next178, %bb.c ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv177 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !111
  %i.v = getelementptr i8, ptr %i.t, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !111
  %i.x = sub nsw i64 %i.u, %i.w                   ; 2 uses
  %i.y = add i64 %i.x, 2147483647
  %or.cond = icmp ult i64 %i.y, 4294967295
  br i1 %or.cond, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.preheader139
  %i.z = trunc nsw i64 %i.x to i32
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv177
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !47
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %exitcond181.not = icmp eq i64 %indvars.iv.next178, %wide.trip.count180
  br i1 %exitcond181.not, label %.critedge, label %.preheader139, !llvm.loop !208

.preheader142:                                    ; preds = %.preheader142.preheader, %bb.d
  %indvars.iv172 = phi i64 [ 2, %.preheader142.preheader ], [ %indvars.iv.next173, %bb.d ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv172 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !111
  %i.ad = getelementptr i8, ptr %i.ab, i64 -8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !111
  %i.af = shl nsw i64 %i.ae, 1
  %i.ag = sub nsw i64 %i.ac, %i.af
  %i.ah = getelementptr i8, ptr %i.ab, i64 -16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !111
  %i.aj = add nsw i64 %i.ag, %i.ai                ; 2 uses
  %i.ak = add i64 %i.aj, 2147483647
  %or.cond6 = icmp ult i64 %i.ak, 4294967295
  br i1 %or.cond6, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.preheader142
  %i.al = trunc nsw i64 %i.aj to i32
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv172
  store i32 %i.al, ptr %i.am, align 4, !tbaa !47
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next173, %wide.trip.count175
  br i1 %exitcond176.not, label %.critedge, label %.preheader142, !llvm.loop !209

.preheader145:                                    ; preds = %.preheader145.preheader, %bb.e
  %indvars.iv167 = phi i64 [ 3, %.preheader145.preheader ], [ %indvars.iv.next168, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv167 ; 4 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !111
  %i.ap = getelementptr i8, ptr %i.an, i64 -8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !111
  %i.ar = getelementptr i8, ptr %i.an, i64 -16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !111
  %i.at = getelementptr i8, ptr %i.an, i64 -24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !111
  %reass.add = sub i64 %i.as, %i.aq
  %reass.mul = mul i64 %reass.add, 3
  %i.av = sub i64 %i.ao, %i.au
  %i.aw = add i64 %i.av, %reass.mul               ; 2 uses
  %i.ax = add i64 %i.aw, 2147483647
  %or.cond8 = icmp ult i64 %i.ax, 4294967295
  br i1 %or.cond8, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.preheader145
  %i.ay = trunc nsw i64 %i.aw to i32
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv167
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !47
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count170
  br i1 %exitcond171.not, label %.critedge, label %.preheader145, !llvm.loop !210

.lr.ph154:                                        ; preds = %.lr.ph154.preheader, %bb.f
  %indvars.iv187 = phi i64 [ %i.j, %.lr.ph154.preheader ], [ %indvars.iv.next188, %bb.f ] ; 3 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv187 ; 5 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !111
  %i.bc = getelementptr i8, ptr %i.ba, i64 -8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !111
  %i.be = getelementptr i8, ptr %i.ba, i64 -16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !111
  %i.bg = mul nsw i64 %i.bf, 6
  %i.bh = getelementptr i8, ptr %i.ba, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !111
  %i.bj = add i64 %i.bg, %i.bb
  %i.bk = add i64 %i.bi, %i.bd
  %i.bl = getelementptr i8, ptr %i.ba, i64 -32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !111
  %i.bn = add i64 %i.bj, %i.bm
  %i.bo = shl i64 %i.bk, 2
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = add i64 %i.bp, 2147483647
  %or.cond10 = icmp ult i64 %i.bq, 4294967295
  br i1 %or.cond10, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph154
end_hunk_0
