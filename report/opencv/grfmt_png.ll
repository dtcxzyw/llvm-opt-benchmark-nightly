inline.NumInlined: 1698
inline.NumDeleted: 682
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2cv10PngEncoder11processRectEPhiiiiS1_:bb.a
  %indvars.iv.next289.prol = or disjoint i64 %indvars.iv288.ph, 1
  br label %.lr.ph241.prol.loopexit

.lr.ph241.prol.loopexit:                          ; preds = %.lr.ph241.prol, %.lr.ph241.preheader381
  %.lcssa398.unr = phi i32 [ poison, %.lr.ph241.preheader381 ], [ %i.jw, %.lr.ph241.prol ]
  %indvars.iv288.unr = phi i64 [ %indvars.iv288.ph, %.lr.ph241.preheader381 ], [ %indvars.iv.next289.prol, %.lr.ph241.prol ]
  %.9239.unr = phi i32 [ %.9239.ph, %.lr.ph241.preheader381 ], [ %i.jw, %.lr.ph241.prol ]
  %i.jx = icmp eq i64 %indvars.iv288.ph, %i.y
  br i1 %i.jx, label %.preheader, label %.lr.ph241

.preheader:                                       ; preds = %.lr.ph241.prol.loopexit, %.lr.ph241, %middle.block, %bb.i
  %.9.lcssa = phi i32 [ 0, %bb.i ], [ %i.jl, %middle.block ], [ %.lcssa398.unr, %.lr.ph241.prol.loopexit ], [ %i.kt, %.lr.ph241 ] ; 2 uses
  br i1 %i.g, label %.lr.ph245, label %._crit_edge246

.lr.ph241:                                        ; preds = %.lr.ph241.prol.loopexit, %.lr.ph241
  %indvars.iv288 = phi i64 [ %indvars.iv.next289.1, %.lr.ph241 ], [ %indvars.iv288.unr, %.lr.ph241.prol.loopexit ] ; 5 uses
  %.9239 = phi i32 [ %i.kt, %.lr.ph241 ], [ %.9239.unr, %.lr.ph241.prol.loopexit ]
  %i.jy = getelementptr inbounds nuw i8, ptr %.0178251, i64 %indvars.iv288
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !119
  %i.ka = getelementptr inbounds nuw i8, ptr %.0177252, i64 %indvars.iv288
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !119
  %i.kc = sub i8 %i.jz, %i.kb                     ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.io, i64 %indvars.iv288
  store i8 %i.kc, ptr %i.kd, align 1, !tbaa !119
  %i.ke = zext i8 %i.kc to i32                    ; 2 uses
  %i.kf = sub nuw nsw i32 256, %i.ke
  %i.kg = icmp slt i8 %i.kc, 0
  %i.kh = select i1 %i.kg, i32 %i.kf, i32 %i.ke
  %i.ki = add i32 %i.kh, %.9239
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.0178251, i64 %indvars.iv.next289
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !119
  %i.kl = getelementptr inbounds nuw i8, ptr %.0177252, i64 %indvars.iv.next289
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !119
  %i.kn = sub i8 %i.kk, %i.km                     ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.io, i64 %indvars.iv.next289
  store i8 %i.kn, ptr %i.ko, align 1, !tbaa !119
  %i.kp = zext i8 %i.kn to i32                    ; 2 uses
  %i.kq = sub nuw nsw i32 256, %i.kp
  %i.kr = icmp slt i8 %i.kn, 0
  %i.ks = select i1 %i.kr, i32 %i.kq, i32 %i.kp
  %i.kt = add i32 %i.ks, %i.ki                    ; 2 uses
  %indvars.iv.next289.1 = add nuw nsw i64 %indvars.iv288, 2 ; 2 uses
  %exitcond292.not.1 = icmp eq i64 %indvars.iv.next289.1, %wide.trip.count291
  br i1 %exitcond292.not.1, label %.preheader, label %.lr.ph241, !llvm.loop !334

.lr.ph245:                                        ; preds = %.preheader, %.lr.ph245
  %indvars.iv293 = phi i64 [ %indvars.iv.next294, %.lr.ph245 ], [ %i.s, %.preheader ] ; 5 uses
  %.10244 = phi i32 [ %i.lu, %.lr.ph245 ], [ %.9.lcssa, %.preheader ]
  %i.ku = sub nsw i64 %indvars.iv293, %i.s        ; 2 uses
  %i.kv = getelementptr inbounds i8, ptr %.0178251, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !119 ; 2 uses
  %i.kx = zext i8 %i.kw to i32
  %i.ky = getelementptr inbounds i8, ptr %.0177252, i64 %indvars.iv293
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !119 ; 2 uses
  %i.la = zext i8 %i.kz to i32
  %i.lb = getelementptr inbounds i8, ptr %.0177252, i64 %i.ku
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !119 ; 2 uses
  %i.ld = zext i8 %i.lc to i32                    ; 2 uses
  %i.le = sub nsw i32 %i.la, %i.ld                ; 2 uses
  %i.lf = sub nsw i32 %i.kx, %i.ld                ; 2 uses
  %i.lg = tail call i32 @llvm.abs.i32(i32 %i.le, i1 true) ; 2 uses
  %i.lh = tail call i32 @llvm.abs.i32(i32 %i.lf, i1 true) ; 2 uses
  %i.li = add nsw i32 %i.le, %i.lf
  %i.lj = tail call i32 @llvm.abs.i32(i32 %i.li, i1 true) ; 2 uses
  %.not199 = icmp samesign ugt i32 %i.lg, %i.lh
  %.not200 = icmp samesign ugt i32 %i.lg, %i.lj
  %or.cond = select i1 %.not199, i1 true, i1 %.not200
  %.not201 = icmp samesign ugt i32 %i.lh, %i.lj
  %i.lk = select i1 %.not201, i8 %i.lc, i8 %i.kz
  %i.ll = select i1 %or.cond, i8 %i.lk, i8 %i.kw
  %i.lm = getelementptr inbounds i8, ptr %.0178251, i64 %indvars.iv293
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !119
  %i.lo = sub i8 %i.ln, %i.ll                     ; 3 uses
  %i.lp = getelementptr inbounds i8, ptr %i.io, i64 %indvars.iv293
  store i8 %i.lo, ptr %i.lp, align 1, !tbaa !119
  %i.lq = zext i8 %i.lo to i32                    ; 2 uses
  %i.lr = sub nuw nsw i32 256, %i.lq
  %i.ls = icmp slt i8 %i.lo, 0
  %i.lt = select i1 %i.ls, i32 %i.lr, i32 %i.lq
  %i.lu = add i32 %i.lt, %.10244                  ; 3 uses
  %i.lv = icmp ule i32 %i.lu, %.2
  %indvars.iv.next294 = add nsw i64 %indvars.iv293, 1 ; 2 uses
  %i.lw = icmp slt i64 %indvars.iv.next294, %i.t
  %or.cond260 = select i1 %i.lv, i1 %i.lw, i1 false
  br i1 %or.cond260, label %.lr.ph245, label %._crit_edge246, !llvm.loop !335

._crit_edge246:                                   ; preds = %.lr.ph245, %.preheader
  %.11 = phi i32 [ %.9.lcssa, %.preheader ], [ %i.lu, %.lr.ph245 ]
  %i.lx = icmp ult i32 %.11, %.2
  br i1 %i.lx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge246
  %i.ly = load ptr, ptr %i.j, align 8, !tbaa !235
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge246, %bb.j, %bb.d
  %.3 = phi ptr [ %i.ly, %bb.j ], [ %.2170, %._crit_edge246 ], [ %.0168, %bb.d ] ; 2 uses
  br i1 %i.k, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.lz = load ptr, ptr %i.c, align 8, !tbaa !235
  store ptr %i.lz, ptr %i.n, align 8, !tbaa !336
  store i32 %i.l, ptr %i.o, align 8, !tbaa !337
  %i.ma = tail call i32 @deflate(ptr noundef nonnull %i.n, i32 noundef 0) ; 0 uses
  store ptr %.3, ptr %i.p, align 8, !tbaa !338
  store i32 %i.l, ptr %i.q, align 8, !tbaa !339
  %i.mb = tail call i32 @deflate(ptr noundef nonnull %i.p, i32 noundef 0) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0175253, ptr align 1 %.3, i64 %i.m, i1 false)
  %i.mc = getelementptr inbounds i8, ptr %.0175253, i64 %i.m
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1176 = phi ptr [ %.0175253, %bb.l ], [ %i.mc, %bb.m ]
  %i.md = getelementptr inbounds i8, ptr %.0178251, i64 %i.r
  %i.me = add nuw nsw i32 %.0187250, 1            ; 2 uses
  %exitcond296.not = icmp eq i32 %i.me, %5
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond296.not, label %._crit_edge256, label %bb.b, !llvm.loop !340

._crit_edge256:                                   ; preds = %bb.n, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #21

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv10PngEncoder13deflateRectOpEPhiiiiiiii(ptr noundef nonnull align 8 dereferenceable(9064) initializes((7568, 7580), (7632, 7636), (7680, 7692), (7744, 7748)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = mul nsw i32 %7, %3
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = mul nsw i32 %6, %2
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e
  %i.g = mul nsw i32 %6, %4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 7544 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 7632
  store i32 0, ptr %i.i, align 8, !tbaa !341
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !235
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 7568
  store ptr %i.k, ptr %i.l, align 8, !tbaa !342
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 7576
  store i32 %8, ptr %i.m, align 8, !tbaa !343
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7656 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 7744
  store i32 0, ptr %i.o, align 8, !tbaa !344
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !235
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 7680
  store ptr %i.q, ptr %i.r, align 8, !tbaa !345
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 7688
  store i32 %8, ptr %i.s, align 8, !tbaa !346
  tail call void @_ZN2cv10PngEncoder11processRectEPhiiiiS1_(ptr noundef nonnull align 8 dereferenceable(9064) %0, ptr noundef %i.f, i32 noundef %i.g, i32 noundef %6, i32 noundef %7, i32 noundef %5, ptr noundef null)
  %i.t = tail call i32 @deflate(ptr noundef nonnull %i.h, i32 noundef 4) ; 0 uses
  %i.u = tail call i32 @deflate(ptr noundef nonnull %i.n, i32 noundef 4) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 7768
  %i.w = sext i32 %9 to i64
  %i.x = getelementptr inbounds [40 x i8], ptr %i.v, i64 %i.w ; 8 uses
  store ptr %1, ptr %i.x, align 8, !tbaa !347
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 7584
  %i.z = load i64, ptr %i.y, align 8, !tbaa !349  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 7696
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !350 ; 2 uses
  %i.ac = icmp uge i64 %i.z, %i.ab
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.ab)
  %spec.select32 = zext i1 %i.ac to i32
  %.sink30 = trunc i64 %spec.select to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 %.sink30, ptr %i.ad, align 8, !tbaa !351
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i32 %spec.select32, ptr %i.ae, align 8, !tbaa !352
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 %2, ptr %i.af, align 4, !tbaa !353
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i32 %3, ptr %i.ag, align 8, !tbaa !354
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  store i32 %4, ptr %i.ah, align 4, !tbaa !355
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i32 %5, ptr %i.ai, align 8, !tbaa !356
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  store i32 1, ptr %i.aj, align 4, !tbaa !357
  %i.ak = tail call i32 @deflateReset(ptr noundef nonnull %i.h) ; 0 uses
  %i.al = tail call i32 @deflateReset(ptr noundef nonnull %i.n) ; 0 uses
  ret void
}

declare i32 @deflateReset(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv10PngEncoder7getRectEjjPhS1_S1_jjijji(ptr noundef nonnull align 8 dereferenceable(9064) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64                  ; 4 uses
  %i.b = add i32 %1, -1                           ; 9 uses
  %i.c = add i32 %2, -1                           ; 6 uses
  %.not = icmp ne i32 %9, 0                       ; 3 uses
  %spec.store.select = zext i1 %.not to i32       ; 4 uses
  switch i32 %6, label %.thread [
    i32 1, label %.preheader320
    i32 2, label %.preheader322
    i32 3, label %.preheader325
    i32 4, label %.preheader328
  ]

.preheader328:                                    ; preds = %bb.a
  %.not591 = icmp eq i32 %2, 0
  %.not592 = icmp eq i32 %1, 0
  %or.cond = or i1 %.not591, %.not592
  br i1 %or.cond, label %.thread, label %.preheader327.us.preheader

.preheader327.us.preheader:                       ; preds = %.preheader328
  %i.d = zext i32 %i.b to i64
  %i.e = shl nuw nsw i64 %i.d, 2                  ; 2 uses
  %i.f = sub nuw nsw i64 -4, %i.e
  %i.g = zext i32 %1 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %i.g, 4294967292               ; 4 uses
  %i.h = shl nuw nsw i64 %n.vec, 2                ; 3 uses
  %i.i = trunc nuw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br label %.preheader327.us

.preheader327.us:                                 ; preds = %.preheader327.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.preheader327.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %.0168357.us = phi ptr [ %5, %.preheader327.us.preheader ], [ %.lcssa706, %._crit_edge.us ] ; 5 uses
  %.0169356.us = phi ptr [ %4, %.preheader327.us.preheader ], [ %.lcssa705, %._crit_edge.us ] ; 5 uses
  %.0171355.us = phi ptr [ %3, %.preheader327.us.preheader ], [ %scevgep, %._crit_edge.us ] ; 5 uses
  %.3186354.us = phi i32 [ 0, %.preheader327.us.preheader ], [ %i.at, %._crit_edge.us ] ; 4 uses
  %.12353.us = phi i32 [ %spec.store.select, %.preheader327.us.preheader ], [ %.15.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.9213352.us = phi i32 [ 0, %.preheader327.us.preheader ], [ %.11215.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.9226351.us = phi i32 [ 0, %.preheader327.us.preheader ], [ %.11228.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.12242350.us = phi i32 [ 0, %.preheader327.us.preheader ], [ %.15245.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.12259349.us = phi i32 [ %i.c, %.preheader327.us.preheader ], [ %.15262.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.12276348.us = phi i32 [ %i.b, %.preheader327.us.preheader ], [ %.15279.us.lcssa, %._crit_edge.us ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader327.us
  %.0169356.us708 = ptrtoaddr ptr %.0169356.us to i64
  %i.j = mul i64 %i.f, %indvar
  %i.k = sub i64 %i.j, %i.a
  %.0168357.us707 = ptrtoaddr ptr %.0168357.us to i64 ; 2 uses
  %i.l = add i64 %i.k, %.0168357.us707
  %i.m = add i64 %i.l, -1
  %diff.check = icmp ult i64 %i.m, 15
  %i.n = sub i64 %.0169356.us708, %.0168357.us707
  %diff.check709 = icmp ugt i64 %i.n, -16
  %conflict.rdx = or i1 %diff.check, %diff.check709
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.o = getelementptr i8, ptr %.0168357.us, i64 %i.h ; 2 uses
  %i.p = getelementptr i8, ptr %.0169356.us, i64 %i.h ; 2 uses
  %i.q = getelementptr i8, ptr %.0171355.us, i64 %i.h
  %i.r = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.9213352.us, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.3186354.us, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert710.a = insertelement <4 x i32> poison, i32 %.9226351.us, i64 0
  %broadcast.splat711.a = shufflevector <4 x i32> %broadcast.splatinsert710.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert712.a = insertelement <4 x i32> poison, i32 %.12242350.us, i64 0
  %broadcast.splat713.a = shufflevector <4 x i32> %broadcast.splatinsert712.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert714.a = insertelement <4 x i32> poison, i32 %.12259349.us, i64 0
  %broadcast.splat715.a = shufflevector <4 x i32> %broadcast.splatinsert714.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert716 = insertelement <4 x i32> poison, i32 %.12276348.us, i64 0
  %broadcast.splat717 = shufflevector <4 x i32> %broadcast.splatinsert716, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %predphi730, %vector.body ]
  %vec.phi718.a = phi <4 x i32> [ %i.r, %vector.ph ], [ %predphi729.a, %vector.body ]
  %vec.phi719.a = phi <4 x i32> [ %broadcast.splat711.a, %vector.ph ], [ %predphi728.a, %vector.body ] ; 2 uses
  %vec.phi720.a = phi <4 x i32> [ %broadcast.splat713.a, %vector.ph ], [ %predphi727.a, %vector.body ] ; 2 uses
  %vec.phi721 = phi <4 x i32> [ %broadcast.splat715.a, %vector.ph ], [ %predphi726.a, %vector.body ] ; 2 uses
  %vec.phi722 = phi <4 x i32> [ %broadcast.splat717, %vector.ph ], [ %predphi, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 2                        ; 3 uses
  %next.gep = getelementptr i8, ptr %.0168357.us, i64 %i.s
  %next.gep723 = getelementptr i8, ptr %.0169356.us, i64 %i.s
  %next.gep724 = getelementptr i8, ptr %.0171355.us, i64 %i.s
  %wide.load = load <4 x i32>, ptr %next.gep724, align 4, !tbaa !8 ; 2 uses
  %wide.load725 = load <4 x i32>, ptr %next.gep723, align 4, !tbaa !8 ; 4 uses
  %i.t = icmp ne <4 x i32> %wide.load, %wide.load725
  %i.u = or <4 x i32> %wide.load725, %wide.load
  %i.v = icmp ugt <4 x i32> %i.u, splat (i32 16777215)
  %.not918 = and <4 x i1> %i.t, %i.v              ; 7 uses
  %i.w = icmp ult <4 x i32> %wide.load725, splat (i32 -16777216)
  %i.x = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.ind, <4 x i32> %vec.phi722)
  %i.y = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.ind, <4 x i32> %vec.phi720.a)
  %i.z = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %broadcast.splat, <4 x i32> %vec.phi721)
  %i.aa = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %broadcast.splat, <4 x i32> %vec.phi719.a)
  %predphi = select <4 x i1> %.not918, <4 x i32> %i.x, <4 x i32> %vec.phi722 ; 2 uses
  %predphi726.a = select <4 x i1> %.not918, <4 x i32> %i.z, <4 x i32> %vec.phi721 ; 2 uses
  %predphi727.a = select <4 x i1> %.not918, <4 x i32> %i.y, <4 x i32> %vec.phi720.a ; 2 uses
  %predphi728.a = select <4 x i1> %.not918, <4 x i32> %i.aa, <4 x i32> %vec.phi719.a ; 2 uses
  %i.ab = zext <4 x i1> %.not918 to <4 x i32>
  %predphi729.a = add <4 x i32> %vec.phi718.a, %i.ab ; 2 uses
  %i.ac = and <4 x i1> %.not918, %i.w
  %.fr = freeze <4 x i1> %i.ac
  %predphi730 = or <4 x i1> %vec.phi, %.fr        ; 2 uses
  %predphi731 = select <4 x i1> %.not918, <4 x i32> %wide.load725, <4 x i32> zeroinitializer
  store <4 x i32> %predphi731, ptr %next.gep, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !358

middle.block:                                     ; preds = %vector.body
  %i.ae = bitcast <4 x i1> %predphi730 to i4
  %.not919 = icmp eq i4 %i.ae, 0
  %rdx.select = select i1 %.not919, i32 %.12353.us, i32 0 ; 2 uses
  %i.af = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi729.a) ; 2 uses
  %i.ag = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %predphi728.a) ; 2 uses
  %i.ah = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %predphi727.a) ; 2 uses
  %i.ai = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %predphi726.a) ; 2 uses
  %i.aj = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %predphi) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader327.us, %middle.block
  %.1339.us.ph = phi ptr [ %.0168357.us, %vector.memcheck ], [ %.0168357.us, %.preheader327.us ], [ %i.o, %middle.block ]
  %.1170338.us.ph = phi ptr [ %.0169356.us, %vector.memcheck ], [ %.0169356.us, %.preheader327.us ], [ %i.p, %middle.block ]
  %.1172337.us.ph = phi ptr [ %.0171355.us, %vector.memcheck ], [ %.0171355.us, %.preheader327.us ], [ %i.q, %middle.block ]
  %.3336.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader327.us ], [ %i.i, %middle.block ]
  %.13335.us.ph = phi i32 [ %.12353.us, %vector.memcheck ], [ %.12353.us, %.preheader327.us ], [ %rdx.select, %middle.block ]
  %.10214334.us.ph = phi i32 [ %.9213352.us, %vector.memcheck ], [ %.9213352.us, %.preheader327.us ], [ %i.af, %middle.block ]
  %.10227333.us.ph = phi i32 [ %.9226351.us, %vector.memcheck ], [ %.9226351.us, %.preheader327.us ], [ %i.ag, %middle.block ]
  %.13243332.us.ph = phi i32 [ %.12242350.us, %vector.memcheck ], [ %.12242350.us, %.preheader327.us ], [ %i.ah, %middle.block ]
  %.13260331.us.ph = phi i32 [ %.12259349.us, %vector.memcheck ], [ %.12259349.us, %.preheader327.us ], [ %i.ai, %middle.block ]
  %.13277330.us.ph = phi i32 [ %.12276348.us, %vector.memcheck ], [ %.12276348.us, %.preheader327.us ], [ %i.aj, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %.1339.us = phi ptr [ %i.aq, %bb.c ], [ %.1339.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.1170338.us = phi ptr [ %i.am, %bb.c ], [ %.1170338.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.1172337.us = phi ptr [ %i.ak, %bb.c ], [ %.1172337.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.3336.us = phi i32 [ %i.ar, %bb.c ], [ %.3336.us.ph, %scalar.ph.preheader ] ; 3 uses
  %.13335.us = phi i32 [ %.15.us, %bb.c ], [ %.13335.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.10214334.us = phi i32 [ %.11215.us, %bb.c ], [ %.10214334.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.10227333.us = phi i32 [ %.11228.us, %bb.c ], [ %.10227333.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.13243332.us = phi i32 [ %.15245.us, %bb.c ], [ %.13243332.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.13260331.us = phi i32 [ %.15262.us, %bb.c ], [ %.13260331.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.13277330.us = phi i32 [ %.15279.us, %bb.c ], [ %.13277330.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.1172337.us, i64 4
  %i.al = load i32, ptr %.1172337.us, align 4, !tbaa !8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.1170338.us, i64 4 ; 2 uses
  %i.an = load i32, ptr %.1170338.us, align 4, !tbaa !8 ; 4 uses
  %.not289.us = icmp eq i32 %i.al, %i.an
  %i.ao = or i32 %i.an, %i.al
  %or.cond302.us = icmp ult i32 %i.ao, 16777216
  %or.cond319.us = or i1 %.not289.us, %or.cond302.us
  br i1 %or.cond319.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.ap = add i32 %.10214334.us, 1
  %.not292.us = icmp ugt i32 %i.an, -16777217
  %spec.select303.us = select i1 %.not292.us, i32 %.13335.us, i32 0
  %.14278.us = tail call i32 @llvm.umin.i32(i32 %.3336.us, i32 %.13277330.us)
  %.14244.us = tail call i32 @llvm.umax.i32(i32 %.3336.us, i32 %.13243332.us)
  %.14261.us = tail call i32 @llvm.umin.i32(i32 %.3186354.us, i32 %.13260331.us)
  %spec.select307.us = tail call i32 @llvm.umax.i32(i32 %.3186354.us, i32 %.10227333.us)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %scalar.ph
  %.15279.us = phi i32 [ %.13277330.us, %scalar.ph ], [ %.14278.us, %bb.b ] ; 2 uses
  %.15262.us = phi i32 [ %.13260331.us, %scalar.ph ], [ %.14261.us, %bb.b ] ; 2 uses
  %.15245.us = phi i32 [ %.13243332.us, %scalar.ph ], [ %.14244.us, %bb.b ] ; 2 uses
  %.11228.us = phi i32 [ %.10227333.us, %scalar.ph ], [ %spec.select307.us, %bb.b ] ; 2 uses
  %.11215.us = phi i32 [ %.10214334.us, %scalar.ph ], [ %i.ap, %bb.b ] ; 2 uses
  %.15.us = phi i32 [ %.13335.us, %scalar.ph ], [ %spec.select303.us, %bb.b ] ; 2 uses
  %.0.us = phi i32 [ 0, %scalar.ph ], [ %i.an, %bb.b ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.1339.us, i64 4 ; 2 uses
  store i32 %.0.us, ptr %.1339.us, align 4, !tbaa !8
  %i.ar = add nuw i32 %.3336.us, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %1
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !359

._crit_edge.us:                                   ; preds = %bb.c, %middle.block
  %.15279.us.lcssa = phi i32 [ %i.aj, %middle.block ], [ %.15279.us, %bb.c ] ; 2 uses
  %.15262.us.lcssa = phi i32 [ %i.ai, %middle.block ], [ %.15262.us, %bb.c ] ; 2 uses
  %.15245.us.lcssa = phi i32 [ %i.ah, %middle.block ], [ %.15245.us, %bb.c ] ; 2 uses
  %.11228.us.lcssa = phi i32 [ %i.ag, %middle.block ], [ %.11228.us, %bb.c ] ; 2 uses
  %.11215.us.lcssa = phi i32 [ %i.af, %middle.block ], [ %.11215.us, %bb.c ] ; 2 uses
  %.15.us.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %.15.us, %bb.c ] ; 2 uses
  %.lcssa706 = phi ptr [ %i.o, %middle.block ], [ %i.aq, %bb.c ]
  %.lcssa705 = phi ptr [ %i.p, %middle.block ], [ %i.am, %bb.c ]
  %i.as = getelementptr i8, ptr %.0171355.us, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.as, i64 4
  %i.at = add nuw i32 %.3186354.us, 1             ; 2 uses
  %exitcond625.not = icmp eq i32 %i.at, %2
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond625.not, label %.loopexit, label %.preheader327.us, !llvm.loop !360

.preheader325:                                    ; preds = %bb.a
  %.not593 = icmp eq i32 %2, 0
  %.not594 = icmp eq i32 %1, 0
  %or.cond687 = or i1 %.not593, %.not594
  br i1 %or.cond687, label %.thread, label %.preheader324.lr.ph.split.us

.preheader324.lr.ph.split.us:                     ; preds = %.preheader325
  %12 = zext i32 %i.b to i64
  %13 = mul nuw nsw i64 %12, 3                    ; 2 uses
  br i1 %.not, label %.preheader324.us.us, label %.preheader324.us

.preheader324.us.us:                              ; preds = %.preheader324.lr.ph.split.us, %._crit_edge.split.us431.us
  %.0176407.us.us = phi ptr [ %i.bm, %._crit_edge.split.us431.us ], [ %5, %.preheader324.lr.ph.split.us ]
  %.0178406.us.us = phi ptr [ %i.bl, %._crit_edge.split.us431.us ], [ %4, %.preheader324.lr.ph.split.us ]
  %.0180405.us.us = phi ptr [ %scevgep629, %._crit_edge.split.us431.us ], [ %3, %.preheader324.lr.ph.split.us ] ; 2 uses
  %.2185403.us.us = phi i32 [ %i.bo, %._crit_edge.split.us431.us ], [ 0, %.preheader324.lr.ph.split.us ] ; 3 uses
  %.8402.us.us = phi i32 [ %.11.us.us, %._crit_edge.split.us431.us ], [ 1, %.preheader324.lr.ph.split.us ]
  %.6210401.us.us = phi i32 [ %.8212.us428.us, %._crit_edge.split.us431.us ], [ 0, %.preheader324.lr.ph.split.us ]
  %.6223400.us.us = phi i32 [ %.8225.us427.us, %._crit_edge.split.us431.us ], [ 0, %.preheader324.lr.ph.split.us ]
  %.8238399.us.us = phi i32 [ %.11241.us426.us, %._crit_edge.split.us431.us ], [ 0, %.preheader324.lr.ph.split.us ]
  %.8255398.us.us = phi i32 [ %.11258.us425.us, %._crit_edge.split.us431.us ], [ %i.c, %.preheader324.lr.ph.split.us ]
  %.8272397.us.us = phi i32 [ %.11275.us424.us, %._crit_edge.split.us431.us ], [ %i.b, %.preheader324.lr.ph.split.us ]
  br label %bb.d

bb.d:                                             ; preds = %.preheader324.us.us, %bb.f
  %.2378.us414.us = phi i32 [ 0, %.preheader324.us.us ], [ %i.bn, %bb.f ] ; 3 uses
  %.1177377.us415.us = phi ptr [ %.0176407.us.us, %.preheader324.us.us ], [ %i.bm, %bb.f ] ; 2 uses
  %.1179376.us416.us = phi ptr [ %.0178406.us.us, %.preheader324.us.us ], [ %i.bl, %bb.f ] ; 3 uses
  %.1181375.us417.us = phi ptr [ %.0180405.us.us, %.preheader324.us.us ], [ %i.bk, %bb.f ] ; 3 uses
  %.9374.us.us = phi i32 [ %.8402.us.us, %.preheader324.us.us ], [ %.11.us.us, %bb.f ] ; 2 uses
  %.7211373.us418.us = phi i32 [ %.6210401.us.us, %.preheader324.us.us ], [ %.8212.us428.us, %bb.f ] ; 2 uses
  %.7224372.us419.us = phi i32 [ %.6223400.us.us, %.preheader324.us.us ], [ %.8225.us427.us, %bb.f ] ; 2 uses
  %.9239371.us420.us = phi i32 [ %.8238399.us.us, %.preheader324.us.us ], [ %.11241.us426.us, %bb.f ] ; 2 uses
  %.9256370.us421.us = phi i32 [ %.8255398.us.us, %.preheader324.us.us ], [ %.11258.us425.us, %bb.f ] ; 2 uses
  %.9273369.us422.us = phi i32 [ %.8272397.us.us, %.preheader324.us.us ], [ %.11275.us424.us, %bb.f ] ; 2 uses
  %i.au = getelementptr i8, ptr %.1181375.us417.us, i64 1
  %i.av = load i16, ptr %i.au, align 1
  %i.aw = zext i16 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 8
  %i.ay = load i8, ptr %.1181375.us417.us, align 1, !tbaa !119
  %i.az = zext i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = getelementptr i8, ptr %.1179376.us416.us, i64 1
  %i.bc = load i16, ptr %i.bb, align 1
  %i.bd = zext i16 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 8
  %i.bf = load i8, ptr %.1179376.us416.us, align 1, !tbaa !119
  %i.bg = zext i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.be, %i.bg            ; 3 uses
  %.not293.us423.us = icmp eq i32 %i.ba, %i.bh
  br i1 %.not293.us423.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bi = add i32 %.7211373.us418.us, 1
  %i.bj = icmp eq i32 %i.bh, %10
  %spec.select = select i1 %i.bj, i32 0, i32 %.9374.us.us
  %.10274.us440.us = tail call i32 @llvm.umin.i32(i32 %.2378.us414.us, i32 %.9273369.us422.us)
  %.10240.us441.us = tail call i32 @llvm.umax.i32(i32 %.2378.us414.us, i32 %.9239371.us420.us)
  %.10257.us442.us = tail call i32 @llvm.umin.i32(i32 %.2185403.us.us, i32 %.9256370.us421.us)
  %spec.select306.us443.us = tail call i32 @llvm.umax.i32(i32 %.2185403.us.us, i32 %.7224372.us419.us)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.11275.us424.us = phi i32 [ %.9273369.us422.us, %bb.d ], [ %.10274.us440.us, %bb.e ] ; 3 uses
  %.11258.us425.us = phi i32 [ %.9256370.us421.us, %bb.d ], [ %.10257.us442.us, %bb.e ] ; 3 uses
  %.11241.us426.us = phi i32 [ %.9239371.us420.us, %bb.d ], [ %.10240.us441.us, %bb.e ] ; 3 uses
  %.8225.us427.us = phi i32 [ %.7224372.us419.us, %bb.d ], [ %spec.select306.us443.us, %bb.e ] ; 3 uses
  %.8212.us428.us = phi i32 [ %.7211373.us418.us, %bb.d ], [ %i.bi, %bb.e ] ; 3 uses
  %.11.us.us = phi i32 [ %.9374.us.us, %bb.d ], [ %spec.select, %bb.e ] ; 3 uses
  %.0173.us429.us = phi i32 [ %10, %bb.d ], [ %i.bh, %bb.e ]
  %.0.extract.trunc.us430.us = trunc i32 %.0173.us429.us to i24
  store i24 %.0.extract.trunc.us430.us, ptr %.1177377.us415.us, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.1181375.us417.us, i64 3
  %i.bl = getelementptr inbounds nuw i8, ptr %.1179376.us416.us, i64 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1177377.us415.us, i64 3 ; 2 uses
  %i.bn = add nuw i32 %.2378.us414.us, 1          ; 2 uses
  %exitcond628.not.a = icmp eq i32 %i.bn, %1
  br i1 %exitcond628.not.a, label %._crit_edge.split.us431.us, label %bb.d, !llvm.loop !361

._crit_edge.split.us431.us:                       ; preds = %bb.f
  %14 = getelementptr i8, ptr %.0180405.us.us, i64 %13
  %scevgep629 = getelementptr i8, ptr %14, i64 3
  %i.bo = add nuw i32 %.2185403.us.us, 1          ; 2 uses
  %exitcond629.not = icmp eq i32 %i.bo, %2
  br i1 %exitcond629.not, label %.loopexit, label %.preheader324.us.us, !llvm.loop !362

.preheader324.us:                                 ; preds = %.preheader324.lr.ph.split.us, %._crit_edge.split.us.us
  %.0176407.us = phi ptr [ %i.cg, %._crit_edge.split.us.us ], [ %5, %.preheader324.lr.ph.split.us ]
  %.0178406.us = phi ptr [ %i.cf, %._crit_edge.split.us.us ], [ %4, %.preheader324.lr.ph.split.us ]
  %.0180405.us = phi ptr [ %scevgep626, %._crit_edge.split.us.us ], [ %3, %.preheader324.lr.ph.split.us ] ; 2 uses
  %.2185403.us = phi i32 [ %i.ci, %._crit_edge.split.us.us ], [ 0, %.preheader324.lr.ph.split.us ] ; 3 uses
  %.6210401.us = phi i32 [ %.8212.us.us, %._crit_edge.split.us.us ], [ 0, %.preheader324.lr.ph.split.us ]
  %.6223400.us = phi i32 [ %.8225.us.us, %._crit_edge.split.us.us ], [ 0, %.preheader324.lr.ph.split.us ]
  %.8238399.us = phi i32 [ %.11241.us.us, %._crit_edge.split.us.us ], [ 0, %.preheader324.lr.ph.split.us ]
  %.8255398.us = phi i32 [ %.11258.us.us, %._crit_edge.split.us.us ], [ %i.c, %.preheader324.lr.ph.split.us ]
  %.8272397.us = phi i32 [ %.11275.us.us, %._crit_edge.split.us.us ], [ %i.b, %.preheader324.lr.ph.split.us ]
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.preheader324.us
  %.2378.us.us = phi i32 [ 0, %.preheader324.us ], [ %i.ch, %bb.i ] ; 3 uses
  %.1177377.us.us = phi ptr [ %.0176407.us, %.preheader324.us ], [ %i.cg, %bb.i ] ; 2 uses
  %.1179376.us.us = phi ptr [ %.0178406.us, %.preheader324.us ], [ %i.cf, %bb.i ] ; 3 uses
  %.1181375.us.us = phi ptr [ %.0180405.us, %.preheader324.us ], [ %i.ce, %bb.i ] ; 3 uses
  %.7211373.us.us = phi i32 [ %.6210401.us, %.preheader324.us ], [ %.8212.us.us, %bb.i ] ; 2 uses
  %.7224372.us.us = phi i32 [ %.6223400.us, %.preheader324.us ], [ %.8225.us.us, %bb.i ] ; 2 uses
  %.9239371.us.us = phi i32 [ %.8238399.us, %.preheader324.us ], [ %.11241.us.us, %bb.i ] ; 2 uses
  %.9256370.us.us = phi i32 [ %.8255398.us, %.preheader324.us ], [ %.11258.us.us, %bb.i ] ; 2 uses
  %.9273369.us.us = phi i32 [ %.8272397.us, %.preheader324.us ], [ %.11275.us.us, %bb.i ] ; 2 uses
  %i.bp = getelementptr i8, ptr %.1181375.us.us, i64 1
  %i.bq = load i16, ptr %i.bp, align 1
  %i.br = zext i16 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 8
  %i.bt = load i8, ptr %.1181375.us.us, align 1, !tbaa !119
  %i.bu = zext i8 %i.bt to i32
  %i.bv = or disjoint i32 %i.bs, %i.bu
  %i.bw = getelementptr i8, ptr %.1179376.us.us, i64 1
  %i.bx = load i16, ptr %i.bw, align 1
  %i.by = zext i16 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 8
  %i.ca = load i8, ptr %.1179376.us.us, align 1, !tbaa !119
  %i.cb = zext i8 %i.ca to i32
  %i.cc = or disjoint i32 %i.bz, %i.cb            ; 2 uses
  %.not293.us.us = icmp eq i32 %i.bv, %i.cc
  br i1 %.not293.us.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = add i32 %.7211373.us.us, 1
  %.10274.us.us = tail call i32 @llvm.umin.i32(i32 %.2378.us.us, i32 %.9273369.us.us)
  %.10240.us.us = tail call i32 @llvm.umax.i32(i32 %.2378.us.us, i32 %.9239371.us.us)
  %.10257.us.us = tail call i32 @llvm.umin.i32(i32 %.2185403.us, i32 %.9256370.us.us)
  %spec.select306.us.us = tail call i32 @llvm.umax.i32(i32 %.2185403.us, i32 %.7224372.us.us)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.11275.us.us = phi i32 [ %.9273369.us.us, %bb.g ], [ %.10274.us.us, %bb.h ] ; 3 uses
  %.11258.us.us = phi i32 [ %.9256370.us.us, %bb.g ], [ %.10257.us.us, %bb.h ] ; 3 uses
  %.11241.us.us = phi i32 [ %.9239371.us.us, %bb.g ], [ %.10240.us.us, %bb.h ] ; 3 uses
  %.8225.us.us = phi i32 [ %.7224372.us.us, %bb.g ], [ %spec.select306.us.us, %bb.h ] ; 3 uses
  %.8212.us.us = phi i32 [ %.7211373.us.us, %bb.g ], [ %i.cd, %bb.h ] ; 3 uses
  %.0173.us.us = phi i32 [ %10, %bb.g ], [ %i.cc, %bb.h ]
  %.0.extract.trunc.us.us = trunc i32 %.0173.us.us to i24
  store i24 %.0.extract.trunc.us.us, ptr %.1177377.us.us, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.1181375.us.us, i64 3
  %i.cf = getelementptr inbounds nuw i8, ptr %.1179376.us.us, i64 3 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.1177377.us.us, i64 3 ; 2 uses
  %i.ch = add nuw i32 %.2378.us.us, 1             ; 2 uses
  %exitcond626.not = icmp eq i32 %i.ch, %1
  br i1 %exitcond626.not, label %._crit_edge.split.us.us, label %bb.g, !llvm.loop !361

._crit_edge.split.us.us:                          ; preds = %bb.i
  %15 = getelementptr i8, ptr %.0180405.us, i64 %13
  %scevgep626 = getelementptr i8, ptr %15, i64 3
  %i.ci = add nuw i32 %.2185403.us, 1             ; 2 uses
  %exitcond627.not = icmp eq i32 %i.ci, %2
  br i1 %exitcond627.not, label %.loopexit, label %.preheader324.us, !llvm.loop !362

.preheader322:                                    ; preds = %bb.a
  %.not595 = icmp eq i32 %2, 0
  %.not596 = icmp eq i32 %1, 0
  %or.cond688 = or i1 %.not595, %.not596
  br i1 %or.cond688, label %.thread, label %.preheader321.us.preheader

.preheader321.us.preheader:                       ; preds = %.preheader322
  %i.cj = zext i32 %i.b to i64
  %i.ck = shl nuw nsw i64 %i.cj, 1                ; 2 uses
  %i.cl = sub nuw nsw i64 -2, %i.ck
  %i.cm = zext i32 %1 to i64                      ; 2 uses
  %min.iters.check749 = icmp ult i32 %1, 4
  %n.vec751 = and i64 %i.cm, 4294967292           ; 4 uses
  %i.cn = trunc nuw i64 %n.vec751 to i32
  %i.co = shl nuw nsw i64 %n.vec751, 1            ; 3 uses
  %cmp.n787 = icmp eq i64 %n.vec751, %i.cm
  br label %.preheader321.us

.preheader321.us:                                 ; preds = %.preheader321.us.preheader, %._crit_edge.us492
  %indvar742 = phi i64 [ 0, %.preheader321.us.preheader ], [ %indvar.next743, %._crit_edge.us492 ] ; 2 uses
  %.1184485.us = phi i32 [ 0, %.preheader321.us.preheader ], [ %i.dz, %._crit_edge.us492 ] ; 4 uses
  %.0187484.us = phi ptr [ %5, %.preheader321.us.preheader ], [ %.lcssa698, %._crit_edge.us492 ] ; 5 uses
  %.0189483.us = phi ptr [ %4, %.preheader321.us.preheader ], [ %.lcssa697, %._crit_edge.us492 ] ; 5 uses
  %.0191482.us = phi ptr [ %3, %.preheader321.us.preheader ], [ %scevgep630, %._crit_edge.us492 ] ; 5 uses
  %.4481.us = phi i32 [ %spec.store.select, %.preheader321.us.preheader ], [ %.7.us.lcssa, %._crit_edge.us492 ] ; 3 uses
  %.3207480.us = phi i32 [ 0, %.preheader321.us.preheader ], [ %.5209.us.lcssa, %._crit_edge.us492 ] ; 3 uses
  %.3220479.us = phi i32 [ 0, %.preheader321.us.preheader ], [ %.5222.us.lcssa, %._crit_edge.us492 ] ; 3 uses
  %.4234478.us = phi i32 [ 0, %.preheader321.us.preheader ], [ %.7237.us.lcssa, %._crit_edge.us492 ] ; 3 uses
  %.4251477.us = phi i32 [ %i.c, %.preheader321.us.preheader ], [ %.7254.us.lcssa, %._crit_edge.us492 ] ; 3 uses
  %.4268476.us = phi i32 [ %i.b, %.preheader321.us.preheader ], [ %.7271.us.lcssa, %._crit_edge.us492 ] ; 3 uses
  br i1 %min.iters.check749, label %scalar.ph748.preheader, label %vector.memcheck740

vector.memcheck740:                               ; preds = %.preheader321.us
  %.0189483.us745 = ptrtoaddr ptr %.0189483.us to i64
  %i.cp = mul i64 %i.cl, %indvar742
  %i.cq = sub i64 %i.cp, %i.a
  %.0187484.us741 = ptrtoaddr ptr %.0187484.us to i64 ; 2 uses
  %i.cr = add i64 %i.cq, %.0187484.us741
  %i.cs = add i64 %i.cr, -1
  %diff.check744.a = icmp ult i64 %i.cs, 7
  %i.ct = sub i64 %.0189483.us745, %.0187484.us741
  %diff.check746 = icmp ugt i64 %i.ct, -8
  %conflict.rdx747 = or i1 %diff.check744.a, %diff.check746
  br i1 %conflict.rdx747, label %scalar.ph748.preheader, label %vector.ph750

vector.ph750:                                     ; preds = %vector.memcheck740
  %i.cu = getelementptr i8, ptr %.0187484.us, i64 %i.co ; 2 uses
  %i.cv = getelementptr i8, ptr %.0189483.us, i64 %i.co ; 2 uses
  %i.cw = getelementptr i8, ptr %.0191482.us, i64 %i.co
  %i.cx = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.3207480.us, i64 0
  %broadcast.splatinsert752.a = insertelement <4 x i32> poison, i32 %.1184485.us, i64 0
  %broadcast.splat753.a = shufflevector <4 x i32> %broadcast.splatinsert752.a, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert754.a = insertelement <4 x i32> poison, i32 %.3220479.us, i64 0
  %broadcast.splat755.a = shufflevector <4 x i32> %broadcast.splatinsert754.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert756.a = insertelement <4 x i32> poison, i32 %.4234478.us, i64 0
  %broadcast.splat757.a = shufflevector <4 x i32> %broadcast.splatinsert756.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert758.a = insertelement <4 x i32> poison, i32 %.4251477.us, i64 0
  %broadcast.splat759.a = shufflevector <4 x i32> %broadcast.splatinsert758.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert760 = insertelement <4 x i32> poison, i32 %.4268476.us, i64 0
  %broadcast.splat761 = shufflevector <4 x i32> %broadcast.splatinsert760, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body762

vector.body762:                                   ; preds = %vector.body762, %vector.ph750
  %index763 = phi i64 [ 0, %vector.ph750 ], [ %index.next783, %vector.body762 ] ; 2 uses
  %vec.ind764 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph750 ], [ %vec.ind.next784, %vector.body762 ] ; 3 uses
  %vec.phi765.a = phi <4 x i1> [ zeroinitializer, %vector.ph750 ], [ %predphi781, %vector.body762 ]
  %vec.phi766.a = phi <4 x i32> [ %i.cx, %vector.ph750 ], [ %predphi780.a, %vector.body762 ]
  %vec.phi767.a = phi <4 x i32> [ %broadcast.splat755.a, %vector.ph750 ], [ %predphi779.a, %vector.body762 ] ; 2 uses
  %vec.phi768.a = phi <4 x i32> [ %broadcast.splat757.a, %vector.ph750 ], [ %predphi778.a, %vector.body762 ] ; 2 uses
  %vec.phi769 = phi <4 x i32> [ %broadcast.splat759.a, %vector.ph750 ], [ %predphi777.a, %vector.body762 ] ; 2 uses
  %vec.phi770 = phi <4 x i32> [ %broadcast.splat761, %vector.ph750 ], [ %predphi776.a, %vector.body762 ] ; 2 uses
  %i.cy = shl i64 %index763, 1                    ; 3 uses
  %next.gep771.a = getelementptr i8, ptr %.0187484.us, i64 %i.cy
  %next.gep772 = getelementptr i8, ptr %.0189483.us, i64 %i.cy
  %next.gep773 = getelementptr i8, ptr %.0191482.us, i64 %i.cy
  %wide.load774 = load <4 x i16>, ptr %next.gep773, align 2, !tbaa !168 ; 2 uses
  %wide.load775 = load <4 x i16>, ptr %next.gep772, align 2, !tbaa !168 ; 4 uses
  %i.cz = icmp ne <4 x i16> %wide.load774, %wide.load775
  %i.da = or <4 x i16> %wide.load775, %wide.load774
  %i.db = icmp ugt <4 x i16> %i.da, splat (i16 255)
  %.not922 = and <4 x i1> %i.cz, %i.db            ; 7 uses
  %i.dc = icmp ult <4 x i16> %wide.load775, splat (i16 -256)
  %i.dd = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.ind764, <4 x i32> %vec.phi770)
  %i.de = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.ind764, <4 x i32> %vec.phi768.a)
  %i.df = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %broadcast.splat753.a, <4 x i32> %vec.phi769)
  %i.dg = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %broadcast.splat753.a, <4 x i32> %vec.phi767.a)
  %predphi776.a = select <4 x i1> %.not922, <4 x i32> %i.dd, <4 x i32> %vec.phi770 ; 2 uses
  %predphi777.a = select <4 x i1> %.not922, <4 x i32> %i.df, <4 x i32> %vec.phi769 ; 2 uses
  %predphi778.a = select <4 x i1> %.not922, <4 x i32> %i.de, <4 x i32> %vec.phi768.a ; 2 uses
  %predphi779.a = select <4 x i1> %.not922, <4 x i32> %i.dg, <4 x i32> %vec.phi767.a ; 2 uses
  %i.dh = zext <4 x i1> %.not922 to <4 x i32>
  %predphi780.a = add <4 x i32> %vec.phi766.a, %i.dh ; 2 uses
  %i.di = and <4 x i1> %.not922, %i.dc
  %.fr924 = freeze <4 x i1> %i.di
  %predphi781 = or <4 x i1> %vec.phi765.a, %.fr924 ; 2 uses
  %predphi782 = select <4 x i1> %.not922, <4 x i16> %wide.load775, <4 x i16> zeroinitializer
  store <4 x i16> %predphi782, ptr %next.gep771.a, align 2, !tbaa !168
  %index.next783 = add nuw i64 %index763, 4       ; 2 uses
  %vec.ind.next784 = add nuw <4 x i32> %vec.ind764, splat (i32 4)
  %i.dj = icmp eq i64 %index.next783, %n.vec751
  br i1 %i.dj, label %middle.block785, label %vector.body762, !llvm.loop !363

middle.block785:                                  ; preds = %vector.body762
  %i.dk = bitcast <4 x i1> %predphi781 to i4
  %.not925 = icmp eq i4 %i.dk, 0
  %rdx.select786 = select i1 %.not925, i32 %.4481.us, i32 0 ; 2 uses
  %i.dl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi780.a) ; 2 uses
  %i.dm = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %predphi779.a) ; 2 uses
  %i.dn = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %predphi778.a) ; 2 uses
  %i.do = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %predphi777.a) ; 2 uses
  %i.dp = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %predphi776.a) ; 2 uses
  br i1 %cmp.n787, label %._crit_edge.us492, label %scalar.ph748.preheader

scalar.ph748.preheader:                           ; preds = %vector.memcheck740, %.preheader321.us, %middle.block785
  %.1175467.us.ph = phi i32 [ 0, %vector.memcheck740 ], [ 0, %.preheader321.us ], [ %i.cn, %middle.block785 ]
  %.1188466.us.ph = phi ptr [ %.0187484.us, %vector.memcheck740 ], [ %.0187484.us, %.preheader321.us ], [ %i.cu, %middle.block785 ]
  %.1190465.us.ph = phi ptr [ %.0189483.us, %vector.memcheck740 ], [ %.0189483.us, %.preheader321.us ], [ %i.cv, %middle.block785 ]
  %.1192464.us.ph = phi ptr [ %.0191482.us, %vector.memcheck740 ], [ %.0191482.us, %.preheader321.us ], [ %i.cw, %middle.block785 ]
  %.5463.us.ph = phi i32 [ %.4481.us, %vector.memcheck740 ], [ %.4481.us, %.preheader321.us ], [ %rdx.select786, %middle.block785 ]
  %.4208462.us.ph = phi i32 [ %.3207480.us, %vector.memcheck740 ], [ %.3207480.us, %.preheader321.us ], [ %i.dl, %middle.block785 ]
  %.4221461.us.ph = phi i32 [ %.3220479.us, %vector.memcheck740 ], [ %.3220479.us, %.preheader321.us ], [ %i.dm, %middle.block785 ]
  %.5235460.us.ph = phi i32 [ %.4234478.us, %vector.memcheck740 ], [ %.4234478.us, %.preheader321.us ], [ %i.dn, %middle.block785 ]
  %.5252459.us.ph = phi i32 [ %.4251477.us, %vector.memcheck740 ], [ %.4251477.us, %.preheader321.us ], [ %i.do, %middle.block785 ]
  %.5269458.us.ph = phi i32 [ %.4268476.us, %vector.memcheck740 ], [ %.4268476.us, %.preheader321.us ], [ %i.dp, %middle.block785 ]
  br label %scalar.ph748

scalar.ph748:                                     ; preds = %scalar.ph748.preheader, %bb.k
  %.1175467.us = phi i32 [ %i.dx, %bb.k ], [ %.1175467.us.ph, %scalar.ph748.preheader ] ; 3 uses
  %.1188466.us = phi ptr [ %i.dw, %bb.k ], [ %.1188466.us.ph, %scalar.ph748.preheader ] ; 2 uses
  %.1190465.us = phi ptr [ %i.ds, %bb.k ], [ %.1190465.us.ph, %scalar.ph748.preheader ] ; 2 uses
  %.1192464.us = phi ptr [ %i.dq, %bb.k ], [ %.1192464.us.ph, %scalar.ph748.preheader ] ; 2 uses
  %.5463.us = phi i32 [ %.7.us, %bb.k ], [ %.5463.us.ph, %scalar.ph748.preheader ] ; 2 uses
  %.4208462.us = phi i32 [ %.5209.us, %bb.k ], [ %.4208462.us.ph, %scalar.ph748.preheader ] ; 2 uses
  %.4221461.us = phi i32 [ %.5222.us, %bb.k ], [ %.4221461.us.ph, %scalar.ph748.preheader ] ; 2 uses
  %.5235460.us = phi i32 [ %.7237.us, %bb.k ], [ %.5235460.us.ph, %scalar.ph748.preheader ] ; 2 uses
  %.5252459.us = phi i32 [ %.7254.us, %bb.k ], [ %.5252459.us.ph, %scalar.ph748.preheader ] ; 2 uses
  %.5269458.us = phi i32 [ %.7271.us, %bb.k ], [ %.5269458.us.ph, %scalar.ph748.preheader ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.1192464.us, i64 2
  %i.dr = load i16, ptr %.1192464.us, align 2, !tbaa !168 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.1190465.us, i64 2 ; 2 uses
  %i.dt = load i16, ptr %.1190465.us, align 2, !tbaa !168 ; 4 uses
  %.not294.us = icmp eq i16 %i.dr, %i.dt
  %i.du = or i16 %i.dt, %i.dr
  %or.cond300.us = icmp ult i16 %i.du, 256
  %or.cond318.us = or i1 %.not294.us, %or.cond300.us
  br i1 %or.cond318.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %scalar.ph748
  %i.dv = add i32 %.4208462.us, 1
  %.not297.us = icmp ugt i16 %i.dt, -257
  %spec.select.us = select i1 %.not297.us, i32 %.5463.us, i32 0
  %.6270.us = tail call i32 @llvm.umin.i32(i32 %.1175467.us, i32 %.5269458.us)
  %.6236.us = tail call i32 @llvm.umax.i32(i32 %.1175467.us, i32 %.5235460.us)
  %.6253.us = tail call i32 @llvm.umin.i32(i32 %.1184485.us, i32 %.5252459.us)
  %spec.select305.us = tail call i32 @llvm.umax.i32(i32 %.1184485.us, i32 %.4221461.us)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %scalar.ph748
  %.7271.us = phi i32 [ %.5269458.us, %scalar.ph748 ], [ %.6270.us, %bb.j ] ; 2 uses
  %.7254.us = phi i32 [ %.5252459.us, %scalar.ph748 ], [ %.6253.us, %bb.j ] ; 2 uses
  %.7237.us = phi i32 [ %.5235460.us, %scalar.ph748 ], [ %.6236.us, %bb.j ] ; 2 uses
  %.5222.us = phi i32 [ %.4221461.us, %scalar.ph748 ], [ %spec.select305.us, %bb.j ] ; 2 uses
  %.5209.us = phi i32 [ %.4208462.us, %scalar.ph748 ], [ %i.dv, %bb.j ] ; 2 uses
  %.7.us = phi i32 [ %.5463.us, %scalar.ph748 ], [ %spec.select.us, %bb.j ] ; 2 uses
  %.0182.us = phi i16 [ 0, %scalar.ph748 ], [ %i.dt, %bb.j ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.1188466.us, i64 2 ; 2 uses
  store i16 %.0182.us, ptr %.1188466.us, align 2, !tbaa !168
  %i.dx = add nuw i32 %.1175467.us, 1             ; 2 uses
  %exitcond631.not = icmp eq i32 %i.dx, %1
  br i1 %exitcond631.not, label %._crit_edge.us492, label %scalar.ph748, !llvm.loop !364

._crit_edge.us492:                                ; preds = %bb.k, %middle.block785
  %.7271.us.lcssa = phi i32 [ %i.dp, %middle.block785 ], [ %.7271.us, %bb.k ] ; 2 uses
  %.7254.us.lcssa = phi i32 [ %i.do, %middle.block785 ], [ %.7254.us, %bb.k ] ; 2 uses
  %.7237.us.lcssa = phi i32 [ %i.dn, %middle.block785 ], [ %.7237.us, %bb.k ] ; 2 uses
  %.5222.us.lcssa = phi i32 [ %i.dm, %middle.block785 ], [ %.5222.us, %bb.k ] ; 2 uses
  %.5209.us.lcssa = phi i32 [ %i.dl, %middle.block785 ], [ %.5209.us, %bb.k ] ; 2 uses
  %.7.us.lcssa = phi i32 [ %rdx.select786, %middle.block785 ], [ %.7.us, %bb.k ] ; 2 uses
  %.lcssa698 = phi ptr [ %i.cu, %middle.block785 ], [ %i.dw, %bb.k ]
  %.lcssa697 = phi ptr [ %i.cv, %middle.block785 ], [ %i.ds, %bb.k ]
  %i.dy = getelementptr i8, ptr %.0191482.us, i64 %i.ck
  %scevgep630 = getelementptr i8, ptr %i.dy, i64 2
  %i.dz = add nuw i32 %.1184485.us, 1             ; 2 uses
  %exitcond632.not = icmp eq i32 %i.dz, %2
  %indvar.next743 = add i64 %indvar742, 1
  br i1 %exitcond632.not, label %.loopexit, label %.preheader321.us, !llvm.loop !365

.preheader320:                                    ; preds = %bb.a
  %.not597 = icmp eq i32 %2, 0
  br i1 %.not597, label %.thread, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader320
  %.not598 = icmp eq i32 %1, 0
  %i.ea = trunc i32 %10 to i8                     ; 4 uses
  br i1 %.not598, label %.thread, label %.preheader.lr.ph.split.us

end_hunk_0
