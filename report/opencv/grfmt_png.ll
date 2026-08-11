inline.NumInlined: 1698
inline.NumDeleted: 682
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2cv10PngEncoder11processRectEPhiiiiS1_:bb.a
  %i.jw = add i32 %i.jv, %.9239.ph                ; 2 uses
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
  %i.b = add i32 %1, -1                           ; 8 uses
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
  %12 = sub nuw nsw i64 -4, %i.e
  %i.f = zext i32 %1 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %i.f, 4294967292               ; 4 uses
  %i.g = shl nuw nsw i64 %n.vec, 2                ; 3 uses
  %i.h = trunc nuw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.f
  br label %.preheader327.us

.preheader327.us:                                 ; preds = %.preheader327.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.preheader327.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %.0168357.us = phi ptr [ %5, %.preheader327.us.preheader ], [ %.lcssa706, %._crit_edge.us ] ; 5 uses
  %.0169356.us = phi ptr [ %4, %.preheader327.us.preheader ], [ %.lcssa705, %._crit_edge.us ] ; 5 uses
  %.0171355.us = phi ptr [ %3, %.preheader327.us.preheader ], [ %scevgep, %._crit_edge.us ] ; 5 uses
  %.3186354.us = phi i32 [ 0, %.preheader327.us.preheader ], [ %i.an, %._crit_edge.us ] ; 4 uses
  %.12353.us = phi i32 [ %spec.store.select, %.preheader327.us.preheader ], [ %.15.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.9213352.us = phi i32 [ 0, %.preheader327.us.preheader ], [ %.11215.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.9226351.us = phi i32 [ 0, %.preheader327.us.preheader ], [ %.11228.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.12242350.us = phi i32 [ 0, %.preheader327.us.preheader ], [ %.15245.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.12259349.us = phi i32 [ %i.c, %.preheader327.us.preheader ], [ %.15262.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.12276348.us = phi i32 [ %i.b, %.preheader327.us.preheader ], [ %.15279.us.lcssa, %._crit_edge.us ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader327.us
  %.0169356.us708 = ptrtoaddr ptr %.0169356.us to i64
  %13 = mul i64 %12, %indvar
  %14 = sub i64 %13, %i.a
  %.0168357.us707 = ptrtoaddr ptr %.0168357.us to i64 ; 2 uses
  %15 = add i64 %14, %.0168357.us707
  %16 = add i64 %15, -1
  %diff.check = icmp ult i64 %16, 15
  %17 = sub i64 %.0169356.us708, %.0168357.us707
  %diff.check709 = icmp ugt i64 %17, -16
  %conflict.rdx = or i1 %diff.check, %diff.check709
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.i = getelementptr i8, ptr %.0168357.us, i64 %i.g ; 2 uses
  %i.j = getelementptr i8, ptr %.0169356.us, i64 %i.g ; 2 uses
  %i.k = getelementptr i8, ptr %.0171355.us, i64 %i.g
  %i.l = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.9213352.us, i64 0
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
  %vec.phi718.a = phi <4 x i32> [ %i.l, %vector.ph ], [ %predphi729.a, %vector.body ]
  %vec.phi719.a = phi <4 x i32> [ %broadcast.splat711.a, %vector.ph ], [ %predphi728.a, %vector.body ] ; 2 uses
  %vec.phi720.a = phi <4 x i32> [ %broadcast.splat713.a, %vector.ph ], [ %predphi727.a, %vector.body ] ; 2 uses
  %vec.phi721 = phi <4 x i32> [ %broadcast.splat715.a, %vector.ph ], [ %predphi726.a, %vector.body ] ; 2 uses
  %vec.phi722 = phi <4 x i32> [ %broadcast.splat717, %vector.ph ], [ %predphi, %vector.body ] ; 2 uses
  %i.m = shl i64 %index, 2                        ; 3 uses
  %next.gep = getelementptr i8, ptr %.0168357.us, i64 %i.m
  %next.gep723 = getelementptr i8, ptr %.0169356.us, i64 %i.m
  %next.gep724 = getelementptr i8, ptr %.0171355.us, i64 %i.m
  %wide.load = load <4 x i32>, ptr %next.gep724, align 4, !tbaa !8 ; 2 uses
  %wide.load725 = load <4 x i32>, ptr %next.gep723, align 4, !tbaa !8 ; 4 uses
  %i.n = icmp ne <4 x i32> %wide.load, %wide.load725
  %i.o = or <4 x i32> %wide.load725, %wide.load
  %i.p = icmp ugt <4 x i32> %i.o, splat (i32 16777215)
  %.not918.a = and <4 x i1> %i.n, %i.p            ; 7 uses
  %i.q = icmp ult <4 x i32> %wide.load725, splat (i32 -16777216)
  %i.r = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.ind, <4 x i32> %vec.phi722)
  %i.s = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.ind, <4 x i32> %vec.phi720.a)
  %i.t = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %broadcast.splat, <4 x i32> %vec.phi721)
  %i.u = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %broadcast.splat, <4 x i32> %vec.phi719.a)
  %predphi = select <4 x i1> %.not918.a, <4 x i32> %i.r, <4 x i32> %vec.phi722 ; 2 uses
  %predphi726.a = select <4 x i1> %.not918.a, <4 x i32> %i.t, <4 x i32> %vec.phi721 ; 2 uses
  %predphi727.a = select <4 x i1> %.not918.a, <4 x i32> %i.s, <4 x i32> %vec.phi720.a ; 2 uses
  %predphi728.a = select <4 x i1> %.not918.a, <4 x i32> %i.u, <4 x i32> %vec.phi719.a ; 2 uses
  %i.v = zext <4 x i1> %.not918.a to <4 x i32>
  %predphi729.a = add <4 x i32> %vec.phi718.a, %i.v ; 2 uses
  %i.w = and <4 x i1> %.not918.a, %i.q
  %.fr = freeze <4 x i1> %i.w
  %predphi730 = or <4 x i1> %vec.phi, %.fr        ; 2 uses
  %predphi731 = select <4 x i1> %.not918.a, <4 x i32> %wide.load725, <4 x i32> zeroinitializer
  store <4 x i32> %predphi731, ptr %next.gep, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !358

middle.block:                                     ; preds = %vector.body
  %i.y = bitcast <4 x i1> %predphi730 to i4
  %.not919 = icmp eq i4 %i.y, 0
  %rdx.select = select i1 %.not919, i32 %.12353.us, i32 0 ; 2 uses
  %i.z = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi729.a) ; 2 uses
  %i.aa = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %predphi728.a) ; 2 uses
  %i.ab = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %predphi727.a) ; 2 uses
  %i.ac = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %predphi726.a) ; 2 uses
  %i.ad = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %predphi) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader327.us, %middle.block
  %.1339.us.ph = phi ptr [ %.0168357.us, %vector.memcheck ], [ %.0168357.us, %.preheader327.us ], [ %i.i, %middle.block ]
  %.1170338.us.ph = phi ptr [ %.0169356.us, %vector.memcheck ], [ %.0169356.us, %.preheader327.us ], [ %i.j, %middle.block ]
  %.1172337.us.ph = phi ptr [ %.0171355.us, %vector.memcheck ], [ %.0171355.us, %.preheader327.us ], [ %i.k, %middle.block ]
  %.3336.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader327.us ], [ %i.h, %middle.block ]
  %.13335.us.ph = phi i32 [ %.12353.us, %vector.memcheck ], [ %.12353.us, %.preheader327.us ], [ %rdx.select, %middle.block ]
  %.10214334.us.ph = phi i32 [ %.9213352.us, %vector.memcheck ], [ %.9213352.us, %.preheader327.us ], [ %i.z, %middle.block ]
  %.10227333.us.ph = phi i32 [ %.9226351.us, %vector.memcheck ], [ %.9226351.us, %.preheader327.us ], [ %i.aa, %middle.block ]
  %.13243332.us.ph = phi i32 [ %.12242350.us, %vector.memcheck ], [ %.12242350.us, %.preheader327.us ], [ %i.ab, %middle.block ]
  %.13260331.us.ph = phi i32 [ %.12259349.us, %vector.memcheck ], [ %.12259349.us, %.preheader327.us ], [ %i.ac, %middle.block ]
  %.13277330.us.ph = phi i32 [ %.12276348.us, %vector.memcheck ], [ %.12276348.us, %.preheader327.us ], [ %i.ad, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %.1339.us = phi ptr [ %i.ak, %bb.c ], [ %.1339.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.1170338.us = phi ptr [ %i.ag, %bb.c ], [ %.1170338.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.1172337.us = phi ptr [ %i.ae, %bb.c ], [ %.1172337.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.3336.us = phi i32 [ %i.al, %bb.c ], [ %.3336.us.ph, %scalar.ph.preheader ] ; 3 uses
  %.13335.us = phi i32 [ %.15.us, %bb.c ], [ %.13335.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.10214334.us = phi i32 [ %.11215.us, %bb.c ], [ %.10214334.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.10227333.us = phi i32 [ %.11228.us, %bb.c ], [ %.10227333.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.13243332.us = phi i32 [ %.15245.us, %bb.c ], [ %.13243332.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.13260331.us = phi i32 [ %.15262.us, %bb.c ], [ %.13260331.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.13277330.us = phi i32 [ %.15279.us, %bb.c ], [ %.13277330.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.1172337.us, i64 4
  %i.af = load i32, ptr %.1172337.us, align 4, !tbaa !8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.1170338.us, i64 4 ; 2 uses
  %i.ah = load i32, ptr %.1170338.us, align 4, !tbaa !8 ; 4 uses
  %.not289.us = icmp eq i32 %i.af, %i.ah
  %i.ai = or i32 %i.ah, %i.af
  %or.cond302.us = icmp ult i32 %i.ai, 16777216
  %or.cond319.us = or i1 %.not289.us, %or.cond302.us
  br i1 %or.cond319.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.aj = add i32 %.10214334.us, 1
  %.not292.us = icmp ugt i32 %i.ah, -16777217
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
  %.11215.us = phi i32 [ %.10214334.us, %scalar.ph ], [ %i.aj, %bb.b ] ; 2 uses
  %.15.us = phi i32 [ %.13335.us, %scalar.ph ], [ %spec.select303.us, %bb.b ] ; 2 uses
  %.0.us = phi i32 [ 0, %scalar.ph ], [ %i.ah, %bb.b ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.1339.us, i64 4 ; 2 uses
  store i32 %.0.us, ptr %.1339.us, align 4, !tbaa !8
  %i.al = add nuw i32 %.3336.us, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.al, %1
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !359

._crit_edge.us:                                   ; preds = %bb.c, %middle.block
  %.15279.us.lcssa = phi i32 [ %i.ad, %middle.block ], [ %.15279.us, %bb.c ] ; 2 uses
  %.15262.us.lcssa = phi i32 [ %i.ac, %middle.block ], [ %.15262.us, %bb.c ] ; 2 uses
  %.15245.us.lcssa = phi i32 [ %i.ab, %middle.block ], [ %.15245.us, %bb.c ] ; 2 uses
  %.11228.us.lcssa = phi i32 [ %i.aa, %middle.block ], [ %.11228.us, %bb.c ] ; 2 uses
  %.11215.us.lcssa = phi i32 [ %i.z, %middle.block ], [ %.11215.us, %bb.c ] ; 2 uses
  %.15.us.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %.15.us, %bb.c ] ; 2 uses
  %.lcssa706 = phi ptr [ %i.i, %middle.block ], [ %i.ak, %bb.c ]
  %.lcssa705 = phi ptr [ %i.j, %middle.block ], [ %i.ag, %bb.c ]
  %i.am = getelementptr i8, ptr %.0171355.us, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.am, i64 4
  %i.an = add nuw i32 %.3186354.us, 1             ; 2 uses
  %exitcond625.not = icmp eq i32 %i.an, %2
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond625.not, label %.loopexit, label %.preheader327.us, !llvm.loop !360

.preheader325:                                    ; preds = %bb.a
  %.not593 = icmp eq i32 %2, 0
  %.not594 = icmp eq i32 %1, 0
  %or.cond687 = or i1 %.not593, %.not594
  br i1 %or.cond687, label %.thread, label %.preheader324.lr.ph.split.us

.preheader324.lr.ph.split.us:                     ; preds = %.preheader325
  br i1 %.not, label %.preheader324.us.us, label %.preheader324.us

.preheader324.us.us:                              ; preds = %.preheader324.lr.ph.split.us, %._crit_edge.split.us431.us
  %.0176407.us.us = phi ptr [ %i.bg, %._crit_edge.split.us431.us ], [ %5, %.preheader324.lr.ph.split.us ]
  %.0178406.us.us = phi ptr [ %i.bf, %._crit_edge.split.us431.us ], [ %4, %.preheader324.lr.ph.split.us ]
  %.0180405.us.us = phi ptr [ %i.be, %._crit_edge.split.us431.us ], [ %3, %.preheader324.lr.ph.split.us ]
  %.2185403.us.us = phi i32 [ %i.bi, %._crit_edge.split.us431.us ], [ 0, %.preheader324.lr.ph.split.us ] ; 3 uses
  %.8402.us.us = phi i32 [ %.11.us.us, %._crit_edge.split.us431.us ], [ 1, %.preheader324.lr.ph.split.us ]
  %.6210401.us.us = phi i32 [ %.8212.us428.us, %._crit_edge.split.us431.us ], [ 0, %.preheader324.lr.ph.split.us ]
  %.6223400.us.us = phi i32 [ %.8225.us427.us, %._crit_edge.split.us431.us ], [ 0, %.preheader324.lr.ph.split.us ]
  %.8238399.us.us = phi i32 [ %.11241.us426.us, %._crit_edge.split.us431.us ], [ 0, %.preheader324.lr.ph.split.us ]
  %.8255398.us.us = phi i32 [ %.11258.us425.us, %._crit_edge.split.us431.us ], [ %i.c, %.preheader324.lr.ph.split.us ]
  %.8272397.us.us = phi i32 [ %.11275.us424.us, %._crit_edge.split.us431.us ], [ %i.b, %.preheader324.lr.ph.split.us ]
  br label %bb.d

bb.d:                                             ; preds = %.preheader324.us.us, %bb.f
  %.2378.us414.us = phi i32 [ 0, %.preheader324.us.us ], [ %i.bh, %bb.f ] ; 3 uses
  %.1177377.us415.us = phi ptr [ %.0176407.us.us, %.preheader324.us.us ], [ %i.bg, %bb.f ] ; 2 uses
  %.1179376.us416.us = phi ptr [ %.0178406.us.us, %.preheader324.us.us ], [ %i.bf, %bb.f ] ; 3 uses
  %.1181375.us417.us = phi ptr [ %.0180405.us.us, %.preheader324.us.us ], [ %i.be, %bb.f ] ; 3 uses
  %.9374.us.us = phi i32 [ %.8402.us.us, %.preheader324.us.us ], [ %.11.us.us, %bb.f ] ; 2 uses
  %.7211373.us418.us = phi i32 [ %.6210401.us.us, %.preheader324.us.us ], [ %.8212.us428.us, %bb.f ] ; 2 uses
  %.7224372.us419.us = phi i32 [ %.6223400.us.us, %.preheader324.us.us ], [ %.8225.us427.us, %bb.f ] ; 2 uses
  %.9239371.us420.us = phi i32 [ %.8238399.us.us, %.preheader324.us.us ], [ %.11241.us426.us, %bb.f ] ; 2 uses
  %.9256370.us421.us = phi i32 [ %.8255398.us.us, %.preheader324.us.us ], [ %.11258.us425.us, %bb.f ] ; 2 uses
  %.9273369.us422.us = phi i32 [ %.8272397.us.us, %.preheader324.us.us ], [ %.11275.us424.us, %bb.f ] ; 2 uses
  %i.ao = getelementptr i8, ptr %.1181375.us417.us, i64 1
  %i.ap = load i16, ptr %i.ao, align 1
  %i.aq = zext i16 %i.ap to i32
  %i.ar = shl nuw nsw i32 %i.aq, 8
  %i.as = load i8, ptr %.1181375.us417.us, align 1, !tbaa !119
  %i.at = zext i8 %i.as to i32
  %i.au = or disjoint i32 %i.ar, %i.at
  %i.av = getelementptr i8, ptr %.1179376.us416.us, i64 1
  %i.aw = load i16, ptr %i.av, align 1
  %i.ax = zext i16 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 8
  %i.az = load i8, ptr %.1179376.us416.us, align 1, !tbaa !119
  %i.ba = zext i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ay, %i.ba            ; 3 uses
  %.not293.us423.us = icmp eq i32 %i.au, %i.bb
  br i1 %.not293.us423.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = add i32 %.7211373.us418.us, 1
  %i.bd = icmp eq i32 %i.bb, %10
  %spec.select = select i1 %i.bd, i32 0, i32 %.9374.us.us
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
  %.8212.us428.us = phi i32 [ %.7211373.us418.us, %bb.d ], [ %i.bc, %bb.e ] ; 3 uses
  %.11.us.us = phi i32 [ %.9374.us.us, %bb.d ], [ %spec.select, %bb.e ] ; 3 uses
  %.0173.us429.us = phi i32 [ %10, %bb.d ], [ %i.bb, %bb.e ]
  %.0.extract.trunc.us430.us = trunc i32 %.0173.us429.us to i24
  store i24 %.0.extract.trunc.us430.us, ptr %.1177377.us415.us, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %.1181375.us417.us, i64 3 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.1179376.us416.us, i64 3 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.1177377.us415.us, i64 3 ; 2 uses
  %i.bh = add nuw i32 %.2378.us414.us, 1          ; 2 uses
  %exitcond628.not = icmp eq i32 %i.bh, %1
  br i1 %exitcond628.not, label %._crit_edge.split.us431.us, label %bb.d, !llvm.loop !361

._crit_edge.split.us431.us:                       ; preds = %bb.f
  %i.bi = add nuw i32 %.2185403.us.us, 1          ; 2 uses
  %exitcond629.not = icmp eq i32 %i.bi, %2
  br i1 %exitcond629.not, label %.loopexit, label %.preheader324.us.us, !llvm.loop !362

.preheader324.us:                                 ; preds = %.preheader324.lr.ph.split.us, %._crit_edge.split.us.us
  %.0176407.us = phi ptr [ %i.ca, %._crit_edge.split.us.us ], [ %5, %.preheader324.lr.ph.split.us ]
  %.0178406.us = phi ptr [ %i.bz, %._crit_edge.split.us.us ], [ %4, %.preheader324.lr.ph.split.us ]
  %.0180405.us = phi ptr [ %i.by, %._crit_edge.split.us.us ], [ %3, %.preheader324.lr.ph.split.us ]
  %.2185403.us = phi i32 [ %i.cc, %._crit_edge.split.us.us ], [ 0, %.preheader324.lr.ph.split.us ] ; 3 uses
  %.6210401.us = phi i32 [ %.8212.us.us, %._crit_edge.split.us.us ], [ 0, %.preheader324.lr.ph.split.us ]
  %.6223400.us = phi i32 [ %.8225.us.us, %._crit_edge.split.us.us ], [ 0, %.preheader324.lr.ph.split.us ]
  %.8238399.us = phi i32 [ %.11241.us.us, %._crit_edge.split.us.us ], [ 0, %.preheader324.lr.ph.split.us ]
  %.8255398.us = phi i32 [ %.11258.us.us, %._crit_edge.split.us.us ], [ %i.c, %.preheader324.lr.ph.split.us ]
  %.8272397.us = phi i32 [ %.11275.us.us, %._crit_edge.split.us.us ], [ %i.b, %.preheader324.lr.ph.split.us ]
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.preheader324.us
  %.2378.us.us = phi i32 [ 0, %.preheader324.us ], [ %i.cb, %bb.i ] ; 3 uses
  %.1177377.us.us = phi ptr [ %.0176407.us, %.preheader324.us ], [ %i.ca, %bb.i ] ; 2 uses
  %.1179376.us.us = phi ptr [ %.0178406.us, %.preheader324.us ], [ %i.bz, %bb.i ] ; 3 uses
  %.1181375.us.us = phi ptr [ %.0180405.us, %.preheader324.us ], [ %i.by, %bb.i ] ; 3 uses
  %.7211373.us.us = phi i32 [ %.6210401.us, %.preheader324.us ], [ %.8212.us.us, %bb.i ] ; 2 uses
  %.7224372.us.us = phi i32 [ %.6223400.us, %.preheader324.us ], [ %.8225.us.us, %bb.i ] ; 2 uses
  %.9239371.us.us = phi i32 [ %.8238399.us, %.preheader324.us ], [ %.11241.us.us, %bb.i ] ; 2 uses
  %.9256370.us.us = phi i32 [ %.8255398.us, %.preheader324.us ], [ %.11258.us.us, %bb.i ] ; 2 uses
  %.9273369.us.us = phi i32 [ %.8272397.us, %.preheader324.us ], [ %.11275.us.us, %bb.i ] ; 2 uses
  %i.bj = getelementptr i8, ptr %.1181375.us.us, i64 1
  %i.bk = load i16, ptr %i.bj, align 1
  %i.bl = zext i16 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 8
  %i.bn = load i8, ptr %.1181375.us.us, align 1, !tbaa !119
  %i.bo = zext i8 %i.bn to i32
  %i.bp = or disjoint i32 %i.bm, %i.bo
  %i.bq = getelementptr i8, ptr %.1179376.us.us, i64 1
  %i.br = load i16, ptr %i.bq, align 1
  %i.bs = zext i16 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, 8
  %i.bu = load i8, ptr %.1179376.us.us, align 1, !tbaa !119
  %i.bv = zext i8 %i.bu to i32
  %i.bw = or disjoint i32 %i.bt, %i.bv            ; 2 uses
  %.not293.us.us = icmp eq i32 %i.bp, %i.bw
  br i1 %.not293.us.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = add i32 %.7211373.us.us, 1
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
  %.8212.us.us = phi i32 [ %.7211373.us.us, %bb.g ], [ %i.bx, %bb.h ] ; 3 uses
  %.0173.us.us = phi i32 [ %10, %bb.g ], [ %i.bw, %bb.h ]
  %.0.extract.trunc.us.us = trunc i32 %.0173.us.us to i24
  store i24 %.0.extract.trunc.us.us, ptr %.1177377.us.us, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %.1181375.us.us, i64 3 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.1179376.us.us, i64 3 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.1177377.us.us, i64 3 ; 2 uses
  %i.cb = add nuw i32 %.2378.us.us, 1             ; 2 uses
  %exitcond626.not = icmp eq i32 %i.cb, %1
  br i1 %exitcond626.not, label %._crit_edge.split.us.us, label %bb.g, !llvm.loop !361

._crit_edge.split.us.us:                          ; preds = %bb.i
  %i.cc = add nuw i32 %.2185403.us, 1             ; 2 uses
  %exitcond627.not = icmp eq i32 %i.cc, %2
  br i1 %exitcond627.not, label %.loopexit, label %.preheader324.us, !llvm.loop !362

.preheader322:                                    ; preds = %bb.a
  %.not595 = icmp eq i32 %2, 0
  %.not596 = icmp eq i32 %1, 0
  %or.cond688 = or i1 %.not595, %.not596
  br i1 %or.cond688, label %.thread, label %.preheader321.us.preheader

.preheader321.us.preheader:                       ; preds = %.preheader322
  %i.cd = zext i32 %i.b to i64
  %i.ce = shl nuw nsw i64 %i.cd, 1                ; 2 uses
  %i.cf = sub nuw nsw i64 -2, %i.ce
  %i.cg = zext i32 %1 to i64                      ; 2 uses
  %min.iters.check749 = icmp ult i32 %1, 4
  %n.vec751 = and i64 %i.cg, 4294967292           ; 4 uses
  %i.ch = trunc nuw i64 %n.vec751 to i32
  %i.ci = shl nuw nsw i64 %n.vec751, 1            ; 3 uses
  %cmp.n787 = icmp eq i64 %n.vec751, %i.cg
  br label %.preheader321.us

.preheader321.us:                                 ; preds = %.preheader321.us.preheader, %._crit_edge.us492
  %indvar742 = phi i64 [ 0, %.preheader321.us.preheader ], [ %indvar.next743, %._crit_edge.us492 ] ; 2 uses
  %.1184485.us = phi i32 [ 0, %.preheader321.us.preheader ], [ %i.dt, %._crit_edge.us492 ] ; 4 uses
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
  %i.cj = mul i64 %i.cf, %indvar742
  %i.ck = sub i64 %i.cj, %i.a
  %.0187484.us741 = ptrtoaddr ptr %.0187484.us to i64 ; 2 uses
  %i.cl = add i64 %i.ck, %.0187484.us741
  %i.cm = add i64 %i.cl, -1
  %diff.check744 = icmp ult i64 %i.cm, 7
  %i.cn = sub i64 %.0189483.us745, %.0187484.us741
  %diff.check746 = icmp ugt i64 %i.cn, -8
  %conflict.rdx747 = or i1 %diff.check744, %diff.check746
  br i1 %conflict.rdx747, label %scalar.ph748.preheader, label %vector.ph750

vector.ph750:                                     ; preds = %vector.memcheck740
  %i.co = getelementptr i8, ptr %.0187484.us, i64 %i.ci ; 2 uses
  %i.cp = getelementptr i8, ptr %.0189483.us, i64 %i.ci ; 2 uses
end_hunk_0
