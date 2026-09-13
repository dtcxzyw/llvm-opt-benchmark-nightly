Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/kinsol?download=true
inline.NumInlined: 21
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@KINPrintInfo:bb.a
  br label %bb.q

bb.n:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(24) @.str.28, i64 24, i1 false)
  br label %bb.q

bb.o:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(23) %i.c, ptr noundef nonnull align 1 dereferenceable(23) @.str.29, i64 23, i1 false)
  br label %bb.q

bb.p:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %i.c, ptr noundef nonnull align 1 dereferenceable(25) @.str.30, i64 25, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.q = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %4, i32 noundef %i.p) #13 ; 0 uses
  %i.r = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.31, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #13 ; 0 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.a
  %i.s = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef %4, ptr noundef nonnull %5) #13 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.t = load ptr, ptr %0, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.w = call i32 (ptr, i32, ptr, ptr, ptr, ...) @SUNLogger_QueueMsg(ptr noundef %i.v, i32 noundef 3, ptr noundef %3, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.a) #13 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #8

declare i32 @SUNLogger_QueueMsg(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

declare void @SUNGlobalFallbackErrHandler(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #5

declare i32 @SUNContext_GetLastError(ptr noundef) local_unnamed_addr #5

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #5

declare double @N_VMin(ptr noundef) local_unnamed_addr #5

declare i32 @N_VConstrMask(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare double @N_VWL2Norm(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc double @KINScFNorm(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  tail call void @N_VProd(ptr noundef %2, ptr noundef %1, ptr noundef %i.b) #13
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.d = tail call double @N_VMaxNorm(ptr noundef %i.c) #13
  ret double %i.d
}

declare void @N_VProd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare double @N_VMaxNorm(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -996, 1) i32 @KINConstraint(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.b, double noundef 1.000000e+00, ptr noundef %i.d, ptr noundef %i.f) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45
  %i.l = tail call i32 @N_VConstrMask(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.k) #13
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !44
  tail call void @N_VAbs(ptr noundef %i.m, ptr noundef %i.n) #13
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !45
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  tail call void @N_VProd(ptr noundef %i.o, ptr noundef %i.p, ptr noundef %i.p) #13
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !45
  tail call void @N_VAbs(ptr noundef %i.q, ptr noundef %i.r) #13
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !45
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.u = tail call double @N_VMinQuotient(ptr noundef %i.s, ptr noundef %i.t) #13
  %i.v = fmul double %i.u, 9.000000e-01
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %i.v, ptr %i.w, align 8, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ -996, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @N_VAbs(ptr noundef, ptr noundef) local_unnamed_addr #5

declare double @N_VMinQuotient(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

declare void @N_VInv(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @N_VDiv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -19, 1) i32 @AndersonAcc(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef range(i64 -9223372036854775808, 9223372036854775807) %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !162  ; 10 uses
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %1, double noundef -1.000000e+00, ptr noundef %4, ptr noundef %2) #13
  %i.f = icmp sgt i64 %5, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !163  ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.j = load i64, ptr %i.i, align 8, !tbaa !49
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !164  ; 12 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !165  ; 12 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !57
  %i.r = icmp sgt i64 %i.h, 1
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = add nsw i64 %i.h, -1                     ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 7
  br i1 %min.iters.check, label %.lr.ph.preheader412, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.t = shl i64 %i.h, 3                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.t
  %scevgep358 = getelementptr i8, ptr %i.p, i64 %i.t
  %bound0 = icmp ult ptr %i.m, %scevgep358
  %bound1 = icmp ult ptr %i.p, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader412, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, -4                       ; 3 uses
  %i.u = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.v = or disjoint i64 %index, 1                ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <2 x ptr>, ptr %i.w, align 8, !tbaa !57, !alias.scope !166, !noalias !167
  %wide.load359 = load <2 x ptr>, ptr %i.x, align 8, !tbaa !57, !alias.scope !166, !noalias !167
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x ptr> %wide.load, ptr %i.y, align 8, !tbaa !57, !alias.scope !166, !noalias !167
  store <2 x ptr> %wide.load359, ptr %i.z, align 8, !tbaa !57, !alias.scope !166, !noalias !167
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.v ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load360 = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !57, !alias.scope !167
  %wide.load361 = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !57, !alias.scope !167
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x ptr> %wide.load360, ptr %i.ac, align 8, !tbaa !57, !alias.scope !167
  store <2 x ptr> %wide.load361, ptr %i.ad, align 8, !tbaa !57, !alias.scope !167
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader412

.lr.ph.preheader412:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.0251295.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.u, %middle.block ] ; 6 uses
  %.neg = add i64 %.0251295.ph, 1
  %i.af = and i64 %i.h, 1
  %lcmp.mod.not.not = icmp eq i64 %i.af, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader412
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.0251295.ph
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57
  %i.ai = add nsw i64 %.0251295.ph, -1            ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ai
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !57
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.0251295.ph
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.al, ptr %i.am, align 8, !tbaa !57
  %i.an = add nuw nsw i64 %.0251295.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader412
  %.0251295.unr = phi i64 [ %.0251295.ph, %.lr.ph.preheader412 ], [ %i.an, %.lr.ph.prol ]
  %i.ao = icmp eq i64 %i.h, %.neg
  br i1 %i.ao, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  %i.ap = getelementptr [8 x i8], ptr %i.m, i64 %i.h
  %i.aq = getelementptr i8, ptr %i.ap, i64 -8
  store ptr %i.n, ptr %i.aq, align 8, !tbaa !57
  %i.ar = getelementptr [8 x i8], ptr %i.p, i64 %i.h
  %i.as = getelementptr i8, ptr %i.ar, i64 -8
  store ptr %i.q, ptr %i.as, align 8, !tbaa !57
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !168
  %i.av = trunc i64 %i.h to i32
  tail call fastcc void @AndersonAccQRDelete(ptr noundef %0, ptr noundef %i.au, ptr noundef %6, i32 noundef %i.av)
  %i.aw = load i64, ptr %i.g, align 8, !tbaa !163
  %i.ax = add nsw i64 %i.aw, -1                   ; 2 uses
  store i64 %i.ax, ptr %i.g, align 8, !tbaa !163
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0251295 = phi i64 [ %i.bm, %.lr.ph ], [ %.0251295.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.0251295
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !57
  %i.ba = add nsw i64 %.0251295, -1               ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ba
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !57
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.0251295
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !57
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ba
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !57
  %i.bf = add nuw nsw i64 %.0251295, 1            ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !57
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.0251295
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !57
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bf
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !57
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.0251295
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !57
  %i.bm = add nuw nsw i64 %.0251295, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bm, %i.h
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !148

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.bn = phi i64 [ %i.ax, %._crit_edge ], [ %i.h, %bb.b ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !169
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !164
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bn
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !57
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %1, double noundef -1.000000e+00, ptr noundef %i.bp, ptr noundef %i.bt) #13
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !170
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !165
  %i.by = load i64, ptr %i.g, align 8, !tbaa !163
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !57
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef -1.000000e+00, ptr noundef %i.bv, ptr noundef %i.ca) #13
  %i.cb = load i64, ptr %i.g, align 8, !tbaa !163
  %i.cc = add nsw i64 %i.cb, 1
  store i64 %i.cc, ptr %i.g, align 8, !tbaa !163
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !169
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %1, ptr noundef %i.ce) #13
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !170
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %2, ptr noundef %i.cg) #13
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 6 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !163 ; 3 uses
  switch i64 %i.ci, label %bb.q [
    i64 0, label %bb.f
    i64 1, label %bb.n
  ]

bb.f:                                             ; preds = %bb.e
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !53
  %.not284 = icmp eq i32 %i.ck, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !52 ; 2 uses
  %.not285 = icmp eq ptr %i.cm, null              ; 2 uses
  br i1 %.not284, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %.not285, label %bb.m, label %.thread351

bb.h:                                             ; preds = %bb.f
  br i1 %.not285, label %._crit_edge326, label %.thread351

._crit_edge326:                                   ; preds = %bb.h
  %.phi.trans.insert327 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.pre328 = load double, ptr %.phi.trans.insert327, align 8, !tbaa !21
  br label %bb.l

.thread351:                                       ; preds = %bb.g, %bb.h
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !50
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !51
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.cs = tail call i32 %i.cm(i64 noundef %i.co, ptr noundef %4, ptr noundef %1, ptr noundef null, i64 noundef 0, ptr noundef %i.cq, ptr noundef nonnull %i.cr) #13
  %.not287 = icmp eq i32 %i.cs, 0
  br i1 %.not287, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread351
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -18, i32 noundef 2756, ptr noundef nonnull @__func__.AndersonAcc, ptr noundef nonnull @.str, ptr noundef nonnull @.str.43)
  br label %bb.ao

bb.j:                                             ; preds = %.thread351
  %i.ct = load double, ptr %i.cr, align 8, !tbaa !21 ; 3 uses
  %i.cu = fcmp ole double %i.ct, 0.000000e+00
  %i.cv = fcmp ogt double %i.ct, 1.000000e+00
  %or.cond = or i1 %i.cu, %i.cv
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -18, i32 noundef 2762, ptr noundef nonnull @__func__.AndersonAcc, ptr noundef nonnull @.str, ptr noundef nonnull @.str.44)
  br label %bb.ao

bb.l:                                             ; preds = %._crit_edge326, %bb.j
  %i.cw = phi double [ %.pre328, %._crit_edge326 ], [ %i.ct, %bb.j ] ; 2 uses
  %i.cx = fsub double 1.000000e+00, %i.cw
  tail call void @N_VLinearSum(double noundef %i.cx, ptr noundef %4, double noundef %i.cw, ptr noundef %1, ptr noundef %3) #13
  br label %bb.ao

bb.m:                                             ; preds = %bb.g
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %1, ptr noundef %3) #13
  br label %bb.ao

bb.n:                                             ; preds = %bb.e
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !165
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !57 ; 2 uses
  %i.db = tail call double @N_VDotProd(ptr noundef %i.da, ptr noundef %i.da) #13
  %i.dc = fcmp ugt double %i.db, 0.000000e+00
  br i1 %i.dc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dd = load ptr, ptr %i.cy, align 8, !tbaa !165
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !57 ; 2 uses
  %i.df = tail call double @N_VDotProd(ptr noundef %i.de, ptr noundef %i.de) #13
  %i.dg = tail call double @sqrt(double noundef %i.df) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.dh = phi double [ %i.dg, %bb.o ], [ 0.000000e+00, %bb.n ] ; 2 uses
  store double %i.dh, ptr %6, align 8, !tbaa !27
  %i.di = fdiv double 1.000000e+00, %i.dh
  %i.dj = load ptr, ptr %i.cy, align 8, !tbaa !165
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !57
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !168
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !57
  tail call void @N_VScale(double noundef %i.di, ptr noundef %i.dk, ptr noundef %i.dn) #13
  br label %bb.r

bb.q:                                             ; preds = %bb.e
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !171
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !168
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !165
  %i.du = getelementptr [8 x i8], ptr %i.dt, i64 %i.ci
  %i.dv = getelementptr i8, ptr %i.du, i64 -8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !57
  %i.dx = trunc i64 %i.ci to i32
  %i.dy = add nsw i32 %i.dx, -1
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !49
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !172
  %i.ee = tail call i32 %i.dp(ptr noundef %i.dr, ptr noundef %6, ptr noundef %i.dw, i32 noundef %i.dy, i32 noundef %i.eb, ptr noundef %i.ed) #13 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !173 ; 2 uses
  %.not = icmp eq ptr %i.eg, null
  %.pre335 = load i64, ptr %i.ch, align 8, !tbaa !163 ; 3 uses
  br i1 %.not, label %bb.af, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %.pre335, ptr %i.a, align 8, !tbaa !40
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !50
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !165
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !51
  %i.en = call i32 %i.eg(i64 noundef %i.ei, ptr noundef %4, ptr noundef %1, ptr noundef %2, ptr noundef %i.ek, ptr noundef %6, i64 noundef %.pre335, ptr noundef %i.em, ptr noundef nonnull %i.a, ptr noundef null) #13
  %.not272 = icmp eq i32 %i.en, 0
  br i1 %.not272, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -19, i32 noundef 2808, ptr noundef nonnull @__func__.AndersonAcc, ptr noundef nonnull @.str, ptr noundef nonnull @.str.45)
  br label %.thread

bb.u:                                             ; preds = %bb.s
  %i.eo = load i64, ptr %i.a, align 8, !tbaa !40
  %i.ep = load i64, ptr %i.ch, align 8, !tbaa !163 ; 4 uses
  %. = call i64 @llvm.smin.i64(i64 %i.eo, i64 %i.ep) ; 2 uses
  %i.eq = call i64 @llvm.smax.i64(i64 %., i64 0)  ; 2 uses
  store i64 %i.eq, ptr %i.a, align 8, !tbaa !40
  %i.er = icmp slt i64 %., 1
  br i1 %i.er, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  store i64 0, ptr %i.ch, align 8, !tbaa !163
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.et = load i32, ptr %i.es, align 8, !tbaa !53
  %.not273 = icmp eq i32 %i.et, 0
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !52 ; 2 uses
  %.not274 = icmp eq ptr %i.ev, null              ; 2 uses
  br i1 %.not273, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  br i1 %.not274, label %bb.ac, label %.thread353

bb.x:                                             ; preds = %bb.v
  br i1 %.not274, label %._crit_edge332, label %.thread353

._crit_edge332:                                   ; preds = %bb.x
  %.phi.trans.insert333 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.pre334 = load double, ptr %.phi.trans.insert333, align 8, !tbaa !21
  br label %bb.ab

.thread353:                                       ; preds = %bb.w, %bb.x
  %i.ew = load i64, ptr %i.eh, align 8, !tbaa !50
  %i.ex = load ptr, ptr %i.el, align 8, !tbaa !51
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.ez = call i32 %i.ev(i64 noundef %i.ew, ptr noundef %4, ptr noundef %1, ptr noundef null, i64 noundef 0, ptr noundef %i.ex, ptr noundef nonnull %i.ey) #13
  %.not276 = icmp eq i32 %i.ez, 0
  br i1 %.not276, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.thread353
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -18, i32 noundef 2835, ptr noundef nonnull @__func__.AndersonAcc, ptr noundef nonnull @.str, ptr noundef nonnull @.str.43)
  br label %.thread

bb.z:                                             ; preds = %.thread353
  %i.fa = load double, ptr %i.ey, align 8, !tbaa !21 ; 3 uses
  %i.fb = fcmp ole double %i.fa, 0.000000e+00
  %i.fc = fcmp ogt double %i.fa, 1.000000e+00
  %or.cond288 = or i1 %i.fb, %i.fc
  br i1 %or.cond288, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -18, i32 noundef 2841, ptr noundef nonnull @__func__.AndersonAcc, ptr noundef nonnull @.str, ptr noundef nonnull @.str.44)
  br label %.thread

bb.ab:                                            ; preds = %._crit_edge332, %bb.z
  %i.fd = phi double [ %.pre334, %._crit_edge332 ], [ %i.fa, %bb.z ] ; 2 uses
  %i.fe = fsub double 1.000000e+00, %i.fd
  call void @N_VLinearSum(double noundef %i.fe, ptr noundef %4, double noundef %i.fd, ptr noundef %1, ptr noundef %3) #13
  br label %.thread

bb.ac:                                            ; preds = %bb.w
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %1, ptr noundef %3) #13
  br label %.thread

bb.ad:                                            ; preds = %bb.u
  %i.ff = icmp slt i64 %i.eq, %i.ep
  br i1 %i.ff, label %.lr.ph301, label %.loopexit294

.lr.ph301:                                        ; preds = %bb.ad
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 408
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph301, %._crit_edge299
  %indvars.iv = phi i64 [ 0, %.lr.ph301 ], [ %indvars.iv.next, %._crit_edge299 ]
  %i.fi = phi i64 [ %i.ep, %.lr.ph301 ], [ %i.gs, %._crit_edge299 ] ; 10 uses
  %i.fj = load ptr, ptr %i.fg, align 8, !tbaa !164 ; 12 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !57
  %i.fl = load ptr, ptr %i.ej, align 8, !tbaa !165 ; 12 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !57
  %i.fn = icmp sgt i64 %i.fi, 1
  br i1 %i.fn, label %.lr.ph298.preheader, label %._crit_edge299

.lr.ph298.preheader:                              ; preds = %bb.ae
  %i.fo = add nsw i64 %i.fi, -1                   ; 2 uses
  %min.iters.check369 = icmp ult i64 %i.fi, 5
  br i1 %min.iters.check369, label %.lr.ph298.preheader410, label %vector.memcheck362

vector.memcheck362:                               ; preds = %.lr.ph298.preheader
  %i.fp = shl i64 %i.fi, 3                        ; 2 uses
  %scevgep363 = getelementptr i8, ptr %i.fj, i64 %i.fp
  %scevgep364 = getelementptr i8, ptr %i.fl, i64 %i.fp
  %bound0365 = icmp ult ptr %i.fj, %scevgep364
  %bound1366 = icmp ult ptr %i.fl, %scevgep363
  %found.conflict367 = and i1 %bound0365, %bound1366
  br i1 %found.conflict367, label %.lr.ph298.preheader410, label %vector.ph370

vector.ph370:                                     ; preds = %vector.memcheck362
  %n.vec371 = and i64 %i.fo, -4                   ; 3 uses
  %i.fq = or disjoint i64 %n.vec371, 1
  br label %vector.body372

vector.body372:                                   ; preds = %vector.body372, %vector.ph370
  %index373 = phi i64 [ 0, %vector.ph370 ], [ %index.next378, %vector.body372 ] ; 4 uses
  %i.fr = or disjoint i64 %index373, 1            ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fr ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %wide.load374 = load <2 x ptr>, ptr %i.fs, align 8, !tbaa !57, !alias.scope !174, !noalias !175
  %wide.load375 = load <2 x ptr>, ptr %i.ft, align 8, !tbaa !57, !alias.scope !174, !noalias !175
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %index373 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store <2 x ptr> %wide.load374, ptr %i.fu, align 8, !tbaa !57, !alias.scope !174, !noalias !175
  store <2 x ptr> %wide.load375, ptr %i.fv, align 8, !tbaa !57, !alias.scope !174, !noalias !175
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fr ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %wide.load376 = load <2 x ptr>, ptr %i.fw, align 8, !tbaa !57, !alias.scope !175
  %wide.load377 = load <2 x ptr>, ptr %i.fx, align 8, !tbaa !57, !alias.scope !175
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %index373 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store <2 x ptr> %wide.load376, ptr %i.fy, align 8, !tbaa !57, !alias.scope !175
  store <2 x ptr> %wide.load377, ptr %i.fz, align 8, !tbaa !57, !alias.scope !175
  %index.next378 = add nuw i64 %index373, 4       ; 2 uses
  %i.ga = icmp eq i64 %index.next378, %n.vec371
  br i1 %i.ga, label %middle.block379, label %vector.body372, !llvm.loop !152

middle.block379:                                  ; preds = %vector.body372
  %cmp.n380 = icmp eq i64 %i.fo, %n.vec371
  br i1 %cmp.n380, label %._crit_edge299, label %.lr.ph298.preheader410

.lr.ph298.preheader410:                           ; preds = %vector.memcheck362, %.lr.ph298.preheader, %middle.block379
  %.0248296.ph = phi i64 [ 1, %vector.memcheck362 ], [ 1, %.lr.ph298.preheader ], [ %i.fq, %middle.block379 ] ; 6 uses
  %.neg419 = add i64 %.0248296.ph, 1
  %i.gb = and i64 %i.fi, 1
  %lcmp.mod414.not.not = icmp eq i64 %i.gb, 0
  br i1 %lcmp.mod414.not.not, label %.lr.ph298.prol, label %.lr.ph298.prol.loopexit

.lr.ph298.prol:                                   ; preds = %.lr.ph298.preheader410
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.0248296.ph
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !57
  %i.ge = add nsw i64 %.0248296.ph, -1            ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.ge
  store ptr %i.gd, ptr %i.gf, align 8, !tbaa !57
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.0248296.ph
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !57
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.ge
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !57
  %i.gj = add nuw nsw i64 %.0248296.ph, 1
  br label %.lr.ph298.prol.loopexit

.lr.ph298.prol.loopexit:                          ; preds = %.lr.ph298.prol, %.lr.ph298.preheader410
  %.0248296.unr = phi i64 [ %.0248296.ph, %.lr.ph298.preheader410 ], [ %i.gj, %.lr.ph298.prol ]
  %i.gk = icmp eq i64 %i.fi, %.neg419
  br i1 %i.gk, label %._crit_edge299, label %.lr.ph298

._crit_edge299:                                   ; preds = %.lr.ph298.prol.loopexit, %.lr.ph298, %middle.block379, %bb.ae
  %i.gl = getelementptr [8 x i8], ptr %i.fj, i64 %i.fi
  %i.gm = getelementptr i8, ptr %i.gl, i64 -8
  store ptr %i.fk, ptr %i.gm, align 8, !tbaa !57
  %i.gn = getelementptr [8 x i8], ptr %i.fl, i64 %i.fi
  %i.go = getelementptr i8, ptr %i.gn, i64 -8
  store ptr %i.fm, ptr %i.go, align 8, !tbaa !57
  %i.gp = load ptr, ptr %i.fh, align 8, !tbaa !168
  %i.gq = trunc i64 %i.fi to i32
  call fastcc void @AndersonAccQRDelete(ptr noundef %0, ptr noundef %i.gp, ptr noundef %6, i32 noundef %i.gq)
  %i.gr = load i64, ptr %i.ch, align 8, !tbaa !163
  %i.gs = add nsw i64 %i.gr, -1                   ; 4 uses
  store i64 %i.gs, ptr %i.ch, align 8, !tbaa !163
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gt = load i64, ptr %i.a, align 8, !tbaa !40
  %i.gu = sub nsw i64 %i.gs, %i.gt
  %i.gv = icmp sgt i64 %i.gu, %indvars.iv.next
  br i1 %i.gv, label %bb.ae, label %.loopexit294

.lr.ph298:                                        ; preds = %.lr.ph298.prol.loopexit, %.lr.ph298
  %.0248296 = phi i64 [ %i.hk, %.lr.ph298 ], [ %.0248296.unr, %.lr.ph298.prol.loopexit ] ; 7 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.0248296
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !57
  %i.gy = add nsw i64 %.0248296, -1               ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.gy
  store ptr %i.gx, ptr %i.gz, align 8, !tbaa !57
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.0248296
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !57
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.gy
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !57
  %i.hd = add nuw nsw i64 %.0248296, 1            ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.hd
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !57
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.0248296
  store ptr %i.hf, ptr %i.hg, align 8, !tbaa !57
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.hd
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !57
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.0248296
  store ptr %i.hi, ptr %i.hj, align 8, !tbaa !57
  %i.hk = add nuw nsw i64 %.0248296, 2            ; 2 uses
  %exitcond315.not.1 = icmp eq i64 %i.hk, %i.fi
  br i1 %exitcond315.not.1, label %._crit_edge299, label %.lr.ph298, !llvm.loop !153

.thread:                                          ; preds = %bb.t, %bb.y, %bb.aa, %bb.ab, %bb.ac
  %.5.ph = phi i32 [ 0, %bb.ac ], [ 0, %bb.ab ], [ -18, %bb.aa ], [ -18, %bb.y ], [ -19, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.ao

.loopexit294:                                     ; preds = %._crit_edge299, %bb.ad
  %i.hl = phi i64 [ %i.ep, %bb.ad ], [ %i.gs, %._crit_edge299 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.af

bb.af:                                            ; preds = %.loopexit294, %bb.r
  %i.hm = phi i64 [ %i.hl, %.loopexit294 ], [ %.pre335, %bb.r ] ; 12 uses
  %i.hn = trunc i64 %i.hm to i32
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !168
  %i.hq = call i32 @N_VDotProdMulti(i32 noundef %i.hn, ptr noundef %2, ptr noundef %i.hp, ptr noundef %7) #13
  %.not277 = icmp eq i32 %i.hq, 0
  br i1 %.not277, label %bb.ag, label %bb.ao

bb.ag:                                            ; preds = %bb.af
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !52 ; 2 uses
  %.not278 = icmp eq ptr %i.hs, null
  br i1 %.not278, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !50
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !51
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.hy = call i32 %i.hs(i64 noundef %i.hu, ptr noundef %4, ptr noundef %1, ptr noundef %7, i64 noundef %i.hm, ptr noundef %i.hw, ptr noundef nonnull %i.hx) #13
  %.not279 = icmp eq i32 %i.hy, 0
  br i1 %.not279, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -18, i32 noundef 2906, ptr noundef nonnull @__func__.AndersonAcc, ptr noundef nonnull @.str, ptr noundef nonnull @.str.43)
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ah
  %i.hz = load double, ptr %i.hx, align 8, !tbaa !21 ; 2 uses
  %i.ia = fcmp ole double %i.hz, 0.000000e+00
  %i.ib = fcmp ogt double %i.hz, 1.000000e+00
  %or.cond289 = or i1 %i.ia, %i.ib
  br i1 %or.cond289, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -18, i32 noundef 2912, ptr noundef nonnull @__func__.AndersonAcc, ptr noundef nonnull @.str, ptr noundef nonnull @.str.44)
  br label %bb.ao

bb.al:                                            ; preds = %bb.aj, %bb.ag
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !27
  store ptr %1, ptr %i.e, align 8, !tbaa !57
  %i.ic = add nsw i64 %i.hm, -1                   ; 5 uses
  %i.id = icmp sgt i64 %i.hm, 0                   ; 2 uses
  br i1 %i.id, label %.preheader.lr.ph, label %._crit_edge308

.preheader.lr.ph:                                 ; preds = %bb.al
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !49 ; 4 uses
  %.0247283 = add i64 %i.if, 1
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !164
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge305
  %indvar = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next, %._crit_edge305 ] ; 3 uses
  %indvars.iv318 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next319, %._crit_edge305 ] ; 4 uses
  %.0247307 = phi i64 [ %i.ic, %.preheader.lr.ph ], [ %i.jg, %._crit_edge305 ] ; 8 uses
  %invariant.gep = getelementptr [8 x i8], ptr %6, i64 %.0247307 ; 3 uses
  %.0246302 = add nuw nsw i64 %.0247307, 1        ; 4 uses
  %i.ii = icmp slt i64 %.0246302, %i.hm
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0247307 ; 4 uses
  %.promoted = load double, ptr %i.ij, align 8, !tbaa !27 ; 3 uses
  br i1 %i.ii, label %.lr.ph304.preheader, label %._crit_edge305

.lr.ph304.preheader:                              ; preds = %.preheader
  %xtraiter415 = and i64 %indvar, 1
  %lcmp.mod416.not = icmp eq i64 %xtraiter415, 0
  br i1 %lcmp.mod416.not, label %.lr.ph304.prol.loopexit, label %.lr.ph304.prol

.lr.ph304.prol:                                   ; preds = %.lr.ph304.preheader
  %i.ik = mul nsw i64 %i.if, %.0246302
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ik
  %i.il = load double, ptr %gep.prol, align 8, !tbaa !27
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0246302
  %i.in = load double, ptr %i.im, align 8, !tbaa !27
  %i.io = fneg double %i.il
  %i.ip = call double @llvm.fmuladd.f64(double %i.io, double %i.in, double %.promoted) ; 3 uses
  store double %i.ip, ptr %i.ij, align 8, !tbaa !27
  %.0246.prol = add nuw nsw i64 %.0247307, 2
  br label %.lr.ph304.prol.loopexit

.lr.ph304.prol.loopexit:                          ; preds = %.lr.ph304.prol, %.lr.ph304.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph304.preheader ], [ %i.ip, %.lr.ph304.prol ]
  %.unr = phi double [ %.promoted, %.lr.ph304.preheader ], [ %i.ip, %.lr.ph304.prol ]
  %.0246303.unr = phi i64 [ %.0246302, %.lr.ph304.preheader ], [ %.0246.prol, %.lr.ph304.prol ]
  %i.iq = icmp eq i64 %indvar, 1
  br i1 %i.iq, label %._crit_edge305, label %.lr.ph304

._crit_edge308.loopexit:                          ; preds = %._crit_edge305
  %i.ir = trunc i64 %i.hm to i32
  %i.is = add i32 %i.ir, 1
  br label %._crit_edge308

._crit_edge308:                                   ; preds = %._crit_edge308.loopexit, %bb.al
  %.0252.lcssa = phi i32 [ 1, %bb.al ], [ %i.is, %._crit_edge308.loopexit ] ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !53
  %.not280 = icmp eq i32 %i.iu, 0
  br i1 %.not280, label %bb.am, label %bb.an

._crit_edge305:                                   ; preds = %.lr.ph304.prol.loopexit, %.lr.ph304, %.preheader
  %i.iv = phi double [ %.promoted, %.preheader ], [ %.lcssa.unr, %.lr.ph304.prol.loopexit ], [ %i.jt, %.lr.ph304 ]
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0247307
  %i.ix = mul i64 %.0247283, %.0247307
  %i.iy = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ix
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !27
  %i.ja = fdiv double %i.iv, %i.iz                ; 2 uses
  store double %i.ja, ptr %i.iw, align 8, !tbaa !27
  %i.jb = fneg double %i.ja
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv318
  store double %i.jb, ptr %i.jc, align 8, !tbaa !27
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.0247307
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !57
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv318
  store ptr %i.je, ptr %i.jf, align 8, !tbaa !57
  %indvars.iv.next319 = add nuw i64 %indvars.iv318, 1
  %i.jg = add nsw i64 %.0247307, -1
  %exitcond321.not = icmp eq i64 %indvars.iv318, %i.hm
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond321.not, label %._crit_edge308.loopexit, label %.preheader

.lr.ph304:                                        ; preds = %.lr.ph304.prol.loopexit, %.lr.ph304
  %i.jh = phi double [ %i.jt, %.lr.ph304 ], [ %.unr, %.lr.ph304.prol.loopexit ]
  %.0246303 = phi i64 [ %.0246.1, %.lr.ph304 ], [ %.0246303.unr, %.lr.ph304.prol.loopexit ] ; 4 uses
  %i.ji = mul nsw i64 %i.if, %.0246303
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ji
  %i.jj = load double, ptr %gep, align 8, !tbaa !27
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0246303
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !27
  %i.jm = fneg double %i.jj
  %i.jn = call double @llvm.fmuladd.f64(double %i.jm, double %i.jl, double %i.jh) ; 2 uses
  store double %i.jn, ptr %i.ij, align 8, !tbaa !27
  %.0246 = add nuw nsw i64 %.0246303, 1           ; 2 uses
  %i.jo = mul nsw i64 %i.if, %.0246
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.jo
  %i.jp = load double, ptr %gep.1, align 8, !tbaa !27
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0246
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !27
  %i.js = fneg double %i.jp
  %i.jt = call double @llvm.fmuladd.f64(double %i.js, double %i.jr, double %i.jn) ; 3 uses
  store double %i.jt, ptr %i.ij, align 8, !tbaa !27
  %.0246.1 = add nuw nsw i64 %.0246303, 2         ; 2 uses
  %exitcond317.not.1 = icmp eq i64 %.0246.1, %i.hm
  br i1 %exitcond317.not.1, label %._crit_edge305, label %.lr.ph304

bb.am:                                            ; preds = %._crit_edge308
  %i.ju = load ptr, ptr %i.hr, align 8, !tbaa !52
  %.not281 = icmp eq ptr %i.ju, null
  br i1 %.not281, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge308
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !21
  %i.jx = fsub double 1.000000e+00, %i.jw         ; 5 uses
  %i.jy = fneg double %i.jx
  %i.jz = zext nneg i32 %.0252.lcssa to i64       ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.jz
  store double %i.jy, ptr %i.ka, align 8, !tbaa !27
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.jz
  store ptr %2, ptr %i.kb, align 8, !tbaa !57
  %.1253309 = add i32 %.0252.lcssa, 1             ; 2 uses
  br i1 %i.id, label %.lr.ph313, label %.loopexit

.lr.ph313:                                        ; preds = %bb.an
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !165 ; 6 uses
  %i.ke = zext i32 %.1253309 to i64               ; 5 uses
  %min.iters.check396 = icmp ult i64 %i.hm, 12
  br i1 %min.iters.check396, label %scalar.ph395.preheader, label %vector.memcheck382

vector.memcheck382:                               ; preds = %.lr.ph313
  %i.kf = shl nuw nsw i64 %i.ke, 3                ; 3 uses
  %scevgep383 = getelementptr i8, ptr %i.c, i64 %i.kf
  %i.kg = shl i64 %i.hm, 3                        ; 3 uses
  %i.kh = add i64 %i.kg, %i.kf                    ; 2 uses
  %scevgep384 = getelementptr i8, ptr %i.c, i64 %i.kh
  %scevgep385 = getelementptr i8, ptr %7, i64 %i.kg
  %scevgep386 = getelementptr i8, ptr %i.e, i64 %i.kf
  %scevgep387 = getelementptr i8, ptr %i.e, i64 %i.kh
  %scevgep388 = getelementptr i8, ptr %i.kd, i64 %i.kg
  %bound0389 = icmp ult ptr %scevgep383, %scevgep385
  %bound1390 = icmp ult ptr %7, %scevgep384
  %found.conflict391 = and i1 %bound0389, %bound1390
  %bound0392 = icmp ult ptr %scevgep386, %scevgep388
  %bound1393 = icmp ult ptr %i.kd, %scevgep387
  %found.conflict394 = and i1 %bound0392, %bound1393
  %conflict.rdx = or i1 %found.conflict391, %found.conflict394
  br i1 %conflict.rdx, label %scalar.ph395.preheader, label %vector.ph397

vector.ph397:                                     ; preds = %vector.memcheck382
  %n.vec398 = and i64 %i.hm, 9223372036854775806  ; 4 uses
  %i.ki = add nuw i64 %n.vec398, %i.ke            ; 2 uses
  %i.kj = sub nsw i64 %i.ic, %n.vec398
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.jx, i64 0
  %i.kk = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body399

vector.body399:                                   ; preds = %vector.body399, %vector.ph397
  %index400 = phi i64 [ 0, %vector.ph397 ], [ %index.next404, %vector.body399 ] ; 3 uses
  %i.kl = add nuw i64 %index400, %i.ke            ; 2 uses
  %i.km = sub i64 %i.ic, %index400                ; 2 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.km
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 -8
  %wide.load401 = load <2 x double>, ptr %i.ko, align 8, !tbaa !27, !alias.scope !176
  %i.kp = shufflevector <2 x double> %wide.load401, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse = fmul <2 x double> %i.kk, %i.kp
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.kl
  store <2 x double> %reverse, ptr %i.kq, align 8, !tbaa !27, !alias.scope !177, !noalias !176
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.km
  %i.ks = getelementptr inbounds i8, ptr %i.kr, i64 -8
  %wide.load402 = load <2 x ptr>, ptr %i.ks, align 8, !tbaa !57, !alias.scope !178
  %reverse403 = shufflevector <2 x ptr> %wide.load402, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.kl
  store <2 x ptr> %reverse403, ptr %i.kt, align 8, !tbaa !57, !alias.scope !179, !noalias !178
  %index.next404 = add nuw i64 %index400, 2       ; 2 uses
  %i.ku = icmp eq i64 %index.next404, %n.vec398
  br i1 %i.ku, label %middle.block405, label %vector.body399, !llvm.loop !159

middle.block405:                                  ; preds = %vector.body399
  %cmp.n406 = icmp eq i64 %i.hm, %n.vec398
  br i1 %cmp.n406, label %.loopexit.loopexit, label %scalar.ph395.preheader

scalar.ph395.preheader:                           ; preds = %vector.memcheck382, %.lr.ph313, %middle.block405
  %indvars.iv322.ph = phi i64 [ %i.ke, %vector.memcheck382 ], [ %i.ke, %.lr.ph313 ], [ %i.ki, %middle.block405 ] ; 4 uses
  %.0310.ph = phi i64 [ %i.ic, %vector.memcheck382 ], [ %i.ic, %.lr.ph313 ], [ %i.kj, %middle.block405 ] ; 6 uses
  %i.kv = and i64 %.0310.ph, 1
  %lcmp.mod418.not.not = icmp eq i64 %i.kv, 0
  br i1 %lcmp.mod418.not.not, label %scalar.ph395.prol, label %scalar.ph395.prol.loopexit

scalar.ph395.prol:                                ; preds = %scalar.ph395.preheader
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0310.ph
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !27
  %i.ky = fmul double %i.jx, %i.kx
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv322.ph
  store double %i.ky, ptr %i.kz, align 8, !tbaa !27
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %.0310.ph
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !57
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv322.ph
  store ptr %i.lb, ptr %i.lc, align 8, !tbaa !57
  %i.ld = add nsw i64 %.0310.ph, -1
  %indvars.iv.next323.prol = add nuw nsw i64 %indvars.iv322.ph, 1 ; 2 uses
  br label %scalar.ph395.prol.loopexit

scalar.ph395.prol.loopexit:                       ; preds = %scalar.ph395.prol, %scalar.ph395.preheader
  %indvars.iv.next323.lcssa409.unr = phi i64 [ poison, %scalar.ph395.preheader ], [ %indvars.iv.next323.prol, %scalar.ph395.prol ]
  %indvars.iv322.unr = phi i64 [ %indvars.iv322.ph, %scalar.ph395.preheader ], [ %indvars.iv.next323.prol, %scalar.ph395.prol ]
  %.0310.unr = phi i64 [ %.0310.ph, %scalar.ph395.preheader ], [ %i.ld, %scalar.ph395.prol ]
  %i.le = icmp eq i64 %.0310.ph, 0
  br i1 %i.le, label %.loopexit.loopexit, label %scalar.ph395

scalar.ph395:                                     ; preds = %scalar.ph395.prol.loopexit, %scalar.ph395
  %indvars.iv322 = phi i64 [ %indvars.iv.next323.1, %scalar.ph395 ], [ %indvars.iv322.unr, %scalar.ph395.prol.loopexit ] ; 4 uses
  %.0310 = phi i64 [ %i.lu, %scalar.ph395 ], [ %.0310.unr, %scalar.ph395.prol.loopexit ] ; 4 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0310
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !27
  %i.lh = fmul double %i.jx, %i.lg
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv322
  store double %i.lh, ptr %i.li, align 8, !tbaa !27
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %.0310
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !57
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv322
  store ptr %i.lk, ptr %i.ll, align 8, !tbaa !57
  %i.lm = add nsw i64 %.0310, -1                  ; 3 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.lm
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !27
  %i.lp = fmul double %i.jx, %i.lo
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next323
  store double %i.lp, ptr %i.lq, align 8, !tbaa !27
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.lm
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !57
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next323
  store ptr %i.ls, ptr %i.lt, align 8, !tbaa !57
  %i.lu = add nsw i64 %.0310, -2
  %indvars.iv.next323.1 = add nuw nsw i64 %indvars.iv322, 2 ; 2 uses
  %.not356.1 = icmp eq i64 %i.lm, 0
  br i1 %.not356.1, label %.loopexit.loopexit, label %scalar.ph395, !llvm.loop !160

.loopexit.loopexit:                               ; preds = %scalar.ph395.prol.loopexit, %scalar.ph395, %middle.block405
  %indvars.iv.next323.lcssa = phi i64 [ %i.ki, %middle.block405 ], [ %indvars.iv.next323.lcssa409.unr, %scalar.ph395.prol.loopexit ], [ %indvars.iv.next323.1, %scalar.ph395 ]
  %i.lv = trunc nuw i64 %indvars.iv.next323.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.an, %bb.am
  %.2254 = phi i32 [ %.0252.lcssa, %bb.am ], [ %.1253309, %bb.an ], [ %i.lv, %.loopexit.loopexit ]
  %i.lw = call i32 @N_VLinearCombination(i32 noundef %.2254, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef %3) #13
  %.not282 = icmp eq i32 %i.lw, 0
  %.290 = select i1 %.not282, i32 0, i32 -16
  br label %bb.ao

bb.ao:                                            ; preds = %.thread, %.loopexit, %bb.af, %bb.l, %bb.m, %bb.ak, %bb.ai, %bb.k, %bb.i
  %.6 = phi i32 [ -18, %bb.i ], [ -18, %bb.k ], [ %.5.ph, %.thread ], [ 0, %bb.l ], [ -18, %bb.ai ], [ -18, %bb.ak ], [ %.290, %.loopexit ], [ -16, %bb.af ], [ 0, %bb.m ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal fastcc void @AndersonAccQRDelete(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %3, -1                           ; 3 uses
  %i.b = icmp sgt i32 %3, 1                       ; 2 uses
  br i1 %i.b, label %.lr.ph149, label %._crit_edge154.split

.lr.ph149:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.d = zext nneg i32 %3 to i64                  ; 8 uses
  %i.e = zext nneg i32 %3 to i64
  %wide.trip.count172 = zext i32 %i.a to i64      ; 5 uses
  %i.f = add nsw i64 %i.d, -3
  br label %bb.b

.preheader144.preheader:                          ; preds = %._crit_edge
  %i.g = zext nneg i32 %3 to i64                  ; 2 uses
  %wide.trip.count185 = zext i32 %i.a to i64
  %4 = mul nsw i64 %i.d, -8
  %min.iters.check = icmp ult i32 %3, 5
  %5 = shl nuw nsw i64 %i.d, 3
  %n.vec = and i64 %wide.trip.count172, 4294967292 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count172
  %xtraiter5 = and i64 %wide.trip.count172, 3     ; 2 uses
  %cmp.n.a = icmp eq i64 %xtraiter5, 0
  br label %.preheader144

bb.b:                                             ; preds = %.lr.ph149, %._crit_edge
  %indvars.iv169 = phi i64 [ 0, %.lr.ph149 ], [ %indvars.iv.next170, %._crit_edge ] ; 7 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph149 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 4 uses
  %indvars = trunc i64 %indvars.iv.next170 to i32
  %i.h = mul nuw nsw i32 %3, %indvars
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv169
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i ; 2 uses
  %i.l = load <2 x double>, ptr %i.k, align 8, !tbaa !27 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.l, %i.l
  %i.m = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.n = extractelement <2 x double> %i.l, i64 0  ; 2 uses
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %i.n, double %i.m) ; 2 uses
  %i.p = fcmp ugt double %i.o, 0.000000e+00
  %sqrt = tail call double @llvm.sqrt.f64(double %i.o)
  %i.q = select i1 %i.p, double %sqrt, double 0.000000e+00 ; 2 uses
  %i.r = insertelement <2 x double> poison, double %i.q, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fdiv <2 x double> %i.l, %i.s             ; 6 uses
  %i.u = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.q, i64 0
  store <2 x double> %i.u, ptr %i.k, align 8, !tbaa !27
  %i.v = add nuw nsw i64 %indvars.iv169, 2
  %i.w = icmp samesign ult i64 %i.v, %i.e
  %i.x = extractelement <2 x double> %i.t, i64 1  ; 2 uses
  %i.y = fneg double %i.x                         ; 2 uses
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.z = sub nsw i64 %i.d, %indvars.iv169
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv169 ; 3 uses
  %i.aa = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ab = insertelement <2 x double> %i.aa, double %i.y, i64 0 ; 3 uses
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.ac = mul nuw nsw i64 %indvars.iv, %i.d
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ac ; 2 uses
  %i.ad = load <2 x double>, ptr %gep.prol, align 8, !tbaa !27 ; 2 uses
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.af = fmul <2 x double> %i.t, %i.ae
  %i.ag = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ag, <2 x double> %i.af)
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ai, ptr %gep.prol, align 8, !tbaa !27
  %indvars.iv.next167.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv166.unr = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next167.prol, %.prol.loopexit.unr-lcssa ]
  %i.aj = icmp eq i64 %i.f, %indvars.iv169
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv166 = phi i64 [ %indvars.iv.next167.1, %.lr.ph.new ], [ %indvars.iv166.unr, %.prol.loopexit ] ; 3 uses
  %i.ak = mul nuw nsw i64 %indvars.iv166, %i.d
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ak ; 2 uses
  %i.al = load <2 x double>, ptr %gep, align 8, !tbaa !27 ; 2 uses
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.an = fmul <2 x double> %i.t, %i.am
  %i.ao = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ao, <2 x double> %i.an)
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.aq, ptr %gep, align 8, !tbaa !27
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1
  %i.ar = mul nuw nsw i64 %indvars.iv.next167, %i.d
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ar ; 2 uses
  %i.as = load <2 x double>, ptr %gep.1, align 8, !tbaa !27 ; 2 uses
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.au = fmul <2 x double> %i.t, %i.at
  %i.av = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.av, <2 x double> %i.au)
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ax, ptr %gep.1, align 8, !tbaa !27
  %indvars.iv.next167.1 = add nuw nsw i64 %indvars.iv166, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next167.1, %i.d
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv169 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !57
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next170 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !57
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.bd = extractelement <2 x double> %i.t, i64 0 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.bd, ptr noundef %i.az, double noundef %i.x, ptr noundef %i.bb, ptr noundef %i.bc) #13
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !57
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !57 ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.y, ptr noundef %i.be, double noundef %i.bd, ptr noundef %i.bf, ptr noundef %i.bf) #13
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !57
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bg, ptr noundef %i.bh) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond173.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count172
  br i1 %exitcond173.not, label %.preheader144.preheader, label %bb.b

.preheader144:                                    ; preds = %.preheader144.preheader, %._crit_edge152
  %indvar = phi i64 [ 0, %.preheader144.preheader ], [ %indvar.next, %._crit_edge152 ] ; 3 uses
  %indvars.iv181 = phi i64 [ 1, %.preheader144.preheader ], [ %indvars.iv.next182, %._crit_edge152 ] ; 3 uses
  %i.bi = mul nuw nsw i64 %indvars.iv181, %i.g
  %6 = trunc i64 %indvars.iv181 to i32
  %7 = add i32 %6, -1
  %8 = mul i32 %7, %3
  %9 = zext i32 %8 to i64
  %invariant.gep206 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bi ; 6 uses
  %invariant.gep208 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %9 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader144
  %10 = mul i64 %4, %indvar
  %11 = sub i64 %10, %5
  %12 = trunc i64 %indvar to i32
  %13 = mul i32 %3, %12
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = add i64 %11, %15
  %17 = add i64 %16, -1
  %diff.check = icmp ult i64 %17, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep206, i64 %index ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load = load <2 x double>, ptr %i.bj, align 8, !tbaa !27
  %wide.load2 = load <2 x double>, ptr %i.bk, align 8, !tbaa !27
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep208, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <2 x double> %wide.load, ptr %i.bl, align 8, !tbaa !27
  store <2 x double> %wide.load2, ptr %i.bm, align 8, !tbaa !27
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge152, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader144, %middle.block
  %indvars.iv175.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader144 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %cmp.n.a, label %scalar.ph.preheader.a, label %middle.block.a

middle.block.a:                                   ; preds = %scalar.ph.preheader, %middle.block.a
  %indvars.iv175.prol = phi i64 [ %indvars.iv.next176.prol, %middle.block.a ], [ %indvars.iv175.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %middle.block.a ], [ 0, %scalar.ph.preheader ]
  %gep207.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep206, i64 %indvars.iv175.prol
  %18 = load double, ptr %gep207.prol, align 8, !tbaa !27
  %gep209.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep208, i64 %indvars.iv175.prol
  store double %18, ptr %gep209.prol, align 8, !tbaa !27
  %indvars.iv.next176.prol = add nuw nsw i64 %indvars.iv175.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter5
  br i1 %prol.iter.cmp.not, label %scalar.ph.preheader.a, label %middle.block.a, !llvm.loop !181

scalar.ph.preheader.a:                            ; preds = %middle.block.a, %scalar.ph.preheader
  %indvars.iv175.ph.a = phi i64 [ %indvars.iv175.ph, %scalar.ph.preheader ], [ %indvars.iv.next176.prol, %middle.block.a ]
  %19 = sub nsw i64 %indvars.iv175.ph, %wide.trip.count172
  %20 = icmp ugt i64 %19, -4
  br i1 %20, label %._crit_edge152, label %scalar.ph

._crit_edge154.split:                             ; preds = %._crit_edge152, %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !185
  %i.bq = icmp eq i32 %i.bp, 1
  br i1 %i.bq, label %bb.c, label %.loopexit

._crit_edge152:                                   ; preds = %scalar.ph.preheader.a, %scalar.ph, %middle.block
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next182, %i.g
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond186.not, label %._crit_edge154.split, label %.preheader144

scalar.ph:                                        ; preds = %scalar.ph.preheader.a, %scalar.ph
  %indvars.iv175 = phi i64 [ %indvars.iv.next176.a, %scalar.ph ], [ %indvars.iv175.ph.a, %scalar.ph.preheader.a ] ; 6 uses
  %gep207 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep206, i64 %indvars.iv175
  %21 = load double, ptr %gep207, align 8, !tbaa !27
  %gep209 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep208, i64 %indvars.iv175
  store double %21, ptr %gep209, align 8, !tbaa !27
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %gep207.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep206, i64 %indvars.iv.next176
  %22 = load double, ptr %gep207.1, align 8, !tbaa !27
  %gep209.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep208, i64 %indvars.iv.next176
  store double %22, ptr %gep209.1, align 8, !tbaa !27
  %indvars.iv.next176.1 = add nuw nsw i64 %indvars.iv175, 2 ; 2 uses
  %gep207.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep206, i64 %indvars.iv.next176.1
  %23 = load double, ptr %gep207.2, align 8, !tbaa !27
  %gep209.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep208, i64 %indvars.iv.next176.1
  store double %23, ptr %gep209.2, align 8, !tbaa !27
  %indvars.iv.next176.2 = add nuw nsw i64 %indvars.iv175, 3 ; 2 uses
  %gep207.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep206, i64 %indvars.iv.next176.2
  %i.br = load double, ptr %gep207.a, align 8, !tbaa !27
  %gep209.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep208, i64 %indvars.iv.next176.2
  store double %i.br, ptr %gep209.a, align 8, !tbaa !27
  %indvars.iv.next176.a = add nuw nsw i64 %indvars.iv175, 4 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next176.a, %wide.trip.count185
  br i1 %exitcond180.not, label %._crit_edge152, label %scalar.ph, !llvm.loop !182

bb.c:                                             ; preds = %._crit_edge154.split
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !186
  %.not = icmp eq i32 %i.bt, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.b, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.d
  %.not164 = icmp eq i32 %3, 2
  br i1 %.not164, label %.lr.ph160, label %.lr.ph156

.lr.ph156:                                        ; preds = %.preheader
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.bv = zext nneg i32 %3 to i64
  %wide.trip.count191 = zext nneg i32 %3 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph156, %bb.e
  %indvars.iv187 = phi i64 [ 2, %.lr.ph156 ], [ %indvars.iv.next188, %bb.e ] ; 3 uses
  %i.bw = add nsw i64 %indvars.iv187, -1          ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !57
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !187
  %i.ca = mul nuw nsw i64 %i.bw, %i.bv
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = trunc nuw nsw i64 %indvars.iv187 to i32
  %i.cd = tail call i32 @N_VDotProdMultiLocal(i32 noundef %i.cc, ptr noundef %i.by, ptr noundef %1, ptr noundef %i.cb) #13 ; 0 uses
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next188, %wide.trip.count191
  br i1 %exitcond192.not, label %.lr.ph160, label %bb.e

.lr.ph160:                                        ; preds = %bb.e, %.preheader
  %i.ce = mul nuw nsw i32 %3, %3
  %i.cf = zext nneg i32 %i.a to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !57
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !187
  %i.ck = tail call i32 @N_VDotProdMultiAllReduce(i32 noundef %i.ce, ptr noundef %i.ch, ptr noundef %i.cj) #13 ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !187 ; 5 uses
  %i.cn = add nuw i32 %3, 1                       ; 5 uses
  %wide.trip.count197 = zext nneg i32 %3 to i64
  %i.co = add nsw i64 %wide.trip.count197, -1     ; 2 uses
  %xtraiter5.a = and i64 %i.co, 3                 ; 3 uses
  %i.cp = add nsw i32 %3, -2
  %i.cq = icmp ult i32 %i.cp, 3
  br i1 %i.cq, label %.epil.preheader, label %.lr.ph160.new

.lr.ph160.new:                                    ; preds = %.lr.ph160
  %unroll_iter = and i64 %i.co, -4
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph160.new
  %indvars.iv193 = phi i64 [ 1, %.lr.ph160.new ], [ %indvars.iv.next194.3, %bb.f ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph160.new ], [ %niter.next.3, %bb.f ]
  %i.cr = trunc i64 %indvars.iv193 to i32
  %i.cs = add nsw i32 %i.cr, -1
  %i.ct = mul i32 %i.cs, %i.cn
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.cu
  store double 1.000000e+00, ptr %i.cv, align 8, !tbaa !27
  %i.cw = trunc i64 %indvars.iv193 to i32
  %i.cx = mul i32 %i.cn, %i.cw
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.cy
  store double 1.000000e+00, ptr %i.cz, align 8, !tbaa !27
  %i.da = trunc i64 %indvars.iv193 to i32
  %i.db = add i32 %i.da, 1
  %i.dc = mul i32 %i.db, %i.cn
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.dd
  store double 1.000000e+00, ptr %i.de, align 8, !tbaa !27
  %i.df = trunc i64 %indvars.iv193 to i32
  %i.dg = add i32 %i.df, 2
  %i.dh = mul i32 %i.dg, %i.cn
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.di
  store double 1.000000e+00, ptr %i.dj, align 8, !tbaa !27
  %indvars.iv.next194.3 = add nuw nsw i64 %indvars.iv193, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit4.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.c
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !187 ; 2 uses
  store double 1.000000e+00, ptr %i.dl, align 8, !tbaa !27
  %i.dm = icmp sgt i32 %3, 2
  br i1 %i.dm, label %.lr.ph163.preheader, label %.loopexit

.lr.ph163.preheader:                              ; preds = %bb.g
  %i.dn = zext nneg i32 %3 to i64
  %wide.trip.count203 = zext nneg i32 %3 to i64
  br label %.lr.ph163

.lr.ph163:                                        ; preds = %.lr.ph163.preheader, %.lr.ph163
  %i.do = phi ptr [ %i.dl, %.lr.ph163.preheader ], [ %i.dw, %.lr.ph163 ]
  %indvars.iv199 = phi i64 [ 2, %.lr.ph163.preheader ], [ %indvars.iv.next200, %.lr.ph163 ] ; 2 uses
  %i.dp = add nsw i64 %indvars.iv199, -1          ; 4 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !57
  %i.ds = mul nuw nsw i64 %i.dp, %i.dn            ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.ds
  %i.du = trunc nuw nsw i64 %i.dp to i32
  %i.dv = tail call i32 @N_VDotProdMulti(i32 noundef %i.du, ptr noundef %i.dr, ptr noundef %1, ptr noundef %i.dt) #13 ; 0 uses
  %i.dw = load ptr, ptr %i.dk, align 8, !tbaa !187 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ds
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dp
  store double 1.000000e+00, ptr %i.dy, align 8, !tbaa !27
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next200, %wide.trip.count203
  br i1 %exitcond204.not, label %.loopexit, label %.lr.ph163

.loopexit.loopexit4.unr-lcssa:                    ; preds = %bb.f
  %lcmp.mod6.not = icmp eq i64 %xtraiter5.a, 0
  br i1 %lcmp.mod6.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit4.unr-lcssa, %.lr.ph160
  %indvars.iv193.epil.init = phi i64 [ 1, %.lr.ph160 ], [ %indvars.iv.next194.3, %.loopexit.loopexit4.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter5.a, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv193.epil = phi i64 [ %indvars.iv193.epil.init, %.epil.preheader ], [ %indvars.iv.next194.epil, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.dz = trunc i64 %indvars.iv193.epil to i32
  %i.ea = add i32 %i.dz, -1
  %i.eb = mul i32 %i.ea, %i.cn
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.ec
  store double 1.000000e+00, ptr %i.ed, align 8, !tbaa !27
  %indvars.iv.next194.epil = add nuw nsw i64 %indvars.iv193.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter5.a
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.h, !llvm.loop !183

.loopexit:                                        ; preds = %.loopexit.loopexit4.unr-lcssa, %bb.h, %.lr.ph163, %bb.d, %bb.g, %._crit_edge154.split
  ret void
}

declare double @N_VDotProd(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @N_VDotProdMulti(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @N_VLinearCombination(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @N_VDotProdMultiLocal(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @N_VDotProdMultiAllReduce(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS11SUNContext_", !8, i64 0}
!10 = !{!"double", !4, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"p1 _ZTS17_generic_N_Vector", !8, i64 0}
!13 = !{!"any p2 pointer", !8, i64 0}
!14 = !{!"p2 _ZTS17_generic_N_Vector", !13, i64 0}
!15 = !{!"p1 double", !8, i64 0}
!16 = !{!"p1 _ZTS10_SUNQRData", !8, i64 0}
!17 = !{!"KINMemRec", !9, i64 0, !8, i64 8, !10, i64 16, !8, i64 24, !8, i64 32, !10, i64 40, !10, i64 48, !5, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !5, i64 200, !10, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !12, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !5, i64 360, !5, i64 364, !10, i64 368, !12, i64 376, !12, i64 384, !14, i64 392, !14, i64 400, !14, i64 408, !10, i64 416, !15, i64 424, !15, i64 432, !15, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !8, i64 480, !8, i64 488, !5, i64 496, !11, i64 504, !8, i64 512, !16, i64 520, !5, i64 528, !5, i64 532, !15, i64 536, !14, i64 544, !11, i64 552, !11, i64 560, !11, i64 568, !11, i64 576, !8, i64 584, !8, i64 592, !8, i64 600, !8, i64 608, !5, i64 616, !8, i64 624, !10, i64 632, !10, i64 640, !10, i64 648, !10, i64 656, !10, i64 664, !5, i64 672, !10, i64 680, !10, i64 688, !10, i64 696, !5, i64 704}
!18 = !{!17, !9, i64 0}
!19 = !{!17, !10, i64 16}
!20 = !{!17, !10, i64 368}
!21 = !{!17, !10, i64 416}
!22 = !{!17, !11, i64 64}
!23 = !{!17, !11, i64 72}
!24 = !{!17, !11, i64 80}
!25 = !{!17, !11, i64 88}
!26 = !{!17, !10, i64 208}
!27 = !{!10, !10, i64 0}
!28 = !{!17, !5, i64 96}
!29 = !{!17, !10, i64 192}
!30 = !{!17, !5, i64 672}
!31 = !{!"p1 _ZTS12SUNProfiler_", !8, i64 0}
!32 = !{!"p1 _ZTS10SUNLogger_", !8, i64 0}
!33 = !{!"p1 _ZTS14SUNErrHandler_", !8, i64 0}
!34 = !{!"SUNContext_", !8, i64 0, !31, i64 8, !5, i64 16, !32, i64 24, !5, i64 32, !5, i64 36, !33, i64 40, !5, i64 48}
!35 = !{!34, !32, i64 24}
!36 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !8, i64 0}
!37 = !{!"_generic_N_Vector", !8, i64 0, !36, i64 8, !9, i64 16}
!38 = !{!37, !36, i64 8}
!39 = !{!"_generic_N_Vector_Ops", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !8, i64 336, !8, i64 344, !8, i64 352, !8, i64 360, !8, i64 368, !8, i64 376, !8, i64 384, !8, i64 392, !8, i64 400, !8, i64 408, !8, i64 416, !8, i64 424, !8, i64 432, !8, i64 440}
!40 = !{!11, !11, i64 0}
!41 = !{!17, !12, i64 280}
!42 = !{!17, !12, i64 288}
!43 = !{!17, !12, i64 320}
!44 = !{!17, !12, i64 336}
!45 = !{!17, !12, i64 344}
!46 = !{!17, !8, i64 24}
!47 = !{!17, !5, i64 704}
!48 = !{!17, !12, i64 272}
!49 = !{!17, !11, i64 448}
!50 = !{!17, !11, i64 216}
!51 = !{!17, !8, i64 32}
!52 = !{!17, !8, i64 480}
!53 = !{!17, !5, i64 528}
!54 = !{!17, !12, i64 328}
!55 = !{!17, !12, i64 296}
!56 = !{!17, !10, i64 160}
!57 = !{!12, !12, i64 0}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = !{!17, !10, i64 144}
!61 = !{!17, !11, i64 568}
!62 = !{!17, !11, i64 576}
!63 = distinct !{null}
!64 = !{!34, !5, i64 36}
!65 = !{!33, !33, i64 0}
!66 = !{!"SUNErrHandler_", !33, i64 0, !8, i64 8, !8, i64 16}
!67 = !{!66, !8, i64 8}
!68 = !{!66, !8, i64 16}
!69 = !{!39, !8, i64 8}
!70 = !{!39, !8, i64 24}
!71 = !{!39, !8, i64 88}
!72 = !{!39, !8, i64 104}
!73 = !{!39, !8, i64 112}
!74 = !{!39, !8, i64 120}
!75 = !{!39, !8, i64 128}
!76 = !{!39, !8, i64 136}
!77 = !{!39, !8, i64 160}
!78 = !{!39, !8, i64 184}
!79 = !{!39, !8, i64 192}
!80 = !{!39, !8, i64 32}
!81 = !{!17, !11, i64 552}
!82 = !{!17, !11, i64 560}
!83 = !{!17, !8, i64 624}
!84 = distinct !{null}
!85 = distinct !{null}
!86 = distinct !{null, null}
!87 = distinct !{!87, !129}
!88 = distinct !{null}
!89 = distinct !{null}
!90 = distinct !{!90, !129}
!91 = distinct !{null}
!92 = distinct !{!92, !129}
!93 = distinct !{null}
!94 = distinct !{!94, !129}
!95 = !{!17, !12, i64 304}
!96 = !{!17, !12, i64 312}
!97 = !{!17, !5, i64 56}
!98 = !{!17, !5, i64 104}
!99 = !{!17, !11, i64 224}
!100 = !{!17, !11, i64 464}
!101 = !{!17, !5, i64 364}
!102 = !{!17, !15, i64 432}
!103 = !{!17, !15, i64 424}
!104 = !{!17, !10, i64 632}
!105 = !{!17, !10, i64 40}
!106 = !{!17, !5, i64 360}
!107 = !{!39, !8, i64 224}
!108 = !{!39, !8, i64 232}
!109 = !{!17, !10, i64 136}
!110 = !{!17, !10, i64 128}
!111 = !{!17, !5, i64 616}
!112 = !{!17, !5, i64 112}
!113 = !{!17, !10, i64 176}
!114 = !{!17, !5, i64 116}
!115 = !{!17, !8, i64 584}
!116 = !{!17, !10, i64 640}
!117 = !{!17, !10, i64 664}
!118 = !{!17, !11, i64 264}
!119 = !{!17, !5, i64 200}
!120 = !{!17, !5, i64 100}
!121 = !{!17, !10, i64 680}
!122 = !{!17, !10, i64 168}
!123 = !{!17, !11, i64 232}
!124 = !{!17, !5, i64 124}
!125 = !{!17, !5, i64 108}
!126 = !{!17, !8, i64 592}
!127 = !{!17, !11, i64 240}
!128 = !{!17, !8, i64 600}
!129 = !{!"llvm.loop.peeled.count", i32 1}
!130 = !{!17, !10, i64 648}
!131 = !{!17, !10, i64 656}
!132 = !{!17, !10, i64 184}
!133 = !{!17, !5, i64 120}
!134 = !{!17, !10, i64 152}
!135 = !{!17, !10, i64 48}
!136 = !{!17, !11, i64 248}
!137 = !{!17, !11, i64 256}
!138 = !{!17, !10, i64 696}
!139 = !{!17, !10, i64 688}
!140 = !{!8, !8, i64 0}
!141 = !{!17, !8, i64 608}
!142 = !{!17, !8, i64 8}
!143 = !{!5, !5, i64 0}
!144 = distinct !{!144, !"LVerDomain"}
!145 = distinct !{!145, !144}
!146 = distinct !{!146, !144}
!147 = distinct !{!147, !58, !59}
!148 = distinct !{!148, !58}
!149 = distinct !{!149, !"LVerDomain"}
!150 = distinct !{!150, !149}
!151 = distinct !{!151, !149}
!152 = distinct !{!152, !58, !59}
!153 = distinct !{!153, !58}
!154 = distinct !{!154, !"LVerDomain"}
!155 = distinct !{!155, !154}
!156 = distinct !{!156, !154}
!157 = distinct !{!157, !154}
!158 = distinct !{!158, !154}
!159 = distinct !{!159, !58, !59}
!160 = distinct !{!160, !58}
!161 = !{!17, !15, i64 536}
!162 = !{!17, !14, i64 544}
!163 = !{!17, !11, i64 472}
!164 = !{!17, !14, i64 400}
!165 = !{!17, !14, i64 392}
!166 = !{!145}
!167 = !{!146}
!168 = !{!17, !14, i64 408}
!169 = !{!17, !12, i64 384}
!170 = !{!17, !12, i64 376}
!171 = !{!17, !8, i64 512}
!172 = !{!17, !16, i64 520}
!173 = !{!17, !8, i64 488}
!174 = !{!150}
!175 = !{!151}
!176 = !{!155}
!177 = !{!156}
!178 = !{!157}
!179 = !{!158}
!180 = distinct !{!180, !58, !59}
!181 = distinct !{!181, !184}
!182 = distinct !{!182, !58}
!183 = distinct !{!183, !184}
!184 = !{!"llvm.loop.unroll.disable"}
!185 = !{!17, !5, i64 496}
!186 = !{!17, !5, i64 532}
!187 = !{!17, !15, i64 440}
end_hunk_0
