inline.NumInlined: 1214
inline.NumDeleted: 188
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 75
loop-unroll.NumUnrolled: 171
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@Exa7_ManGenCnf:bb.a
  %exitcond362.not = icmp eq i64 %indvars.iv.next359, %wide.trip.count361
  br i1 %exitcond362.not, label %.lr.ph.preheader.i240, label %scalar.ph, !llvm.loop !728

.lr.ph.preheader.i240:                            ; preds = %scalar.ph, %middle.block
  %wide.trip.count.i241 = zext nneg i32 %.1116342 to i64
  br label %.lr.ph.i242

.lr.ph.i242:                                      ; preds = %bb.i, %.lr.ph.preheader.i240
  %indvars.iv.i243 = phi i64 [ 0, %.lr.ph.preheader.i240 ], [ %indvars.iv.next.i246, %bb.i ] ; 2 uses
  %.030.i244 = phi i32 [ 0, %.lr.ph.preheader.i240 ], [ %.1.i245, %bb.i ] ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i243
  %i.em = load i32, ptr %i.el, align 4, !tbaa !38 ; 2 uses
  switch i32 %i.em, label %bb.h [
    i32 1, label %Exa7_AddClause.exit258
    i32 0, label %bb.i
  ]

bb.h:                                             ; preds = %.lr.ph.i242
  %i.en = add nsw i32 %.030.i244, 1
  %i.eo = sext i32 %.030.i244 to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.eo
  store i32 %i.em, ptr %i.ep, align 4, !tbaa !38
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i242
  %.1.i245 = phi i32 [ %.030.i244, %.lr.ph.i242 ], [ %i.en, %bb.h ] ; 3 uses
  %indvars.iv.next.i246 = add nuw nsw i64 %indvars.iv.i243, 1 ; 2 uses
  %exitcond.not.i247 = icmp eq i64 %indvars.iv.next.i246, %wide.trip.count.i241
  br i1 %exitcond.not.i247, label %._crit_edge.i248, label %.lr.ph.i242, !llvm.loop !724

._crit_edge.i248:                                 ; preds = %bb.i
  br i1 %.not42.i237, label %Exa7_AddClause.exit258, label %.preheader.i250

._crit_edge.thread.i236:                          ; preds = %.preheader308
  br i1 %.not42.i237, label %Exa7_AddClause.exit258, label %._crit_edge33.i238

.preheader.i250:                                  ; preds = %._crit_edge.i248
  %i.eq = icmp sgt i32 %.1.i245, 0
  br i1 %i.eq, label %.lr.ph32.preheader.i251, label %._crit_edge33.i238

.lr.ph32.preheader.i251:                          ; preds = %.preheader.i250
  %wide.trip.count38.i252 = zext nneg i32 %.1.i245 to i64
  br label %.lr.ph32.i253

.lr.ph32.i253:                                    ; preds = %.lr.ph32.i253, %.lr.ph32.preheader.i251
  %indvars.iv35.i254 = phi i64 [ 0, %.lr.ph32.preheader.i251 ], [ %indvars.iv.next36.i256, %.lr.ph32.i253 ] ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv35.i254
  %i.es = load i32, ptr %i.er, align 4, !tbaa !38 ; 2 uses
  %i.et = and i32 %i.es, 1
  %.not27.i255 = icmp eq i32 %i.et, 0
  %i.eu = select i1 %.not27.i255, ptr @.str.57, ptr @.str.143
  %i.ev = ashr i32 %i.es, 1
  %i.ew = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.eu, i32 noundef %i.ev) #41 ; 0 uses
  %indvars.iv.next36.i256 = add nuw nsw i64 %indvars.iv35.i254, 1 ; 2 uses
  %exitcond39.not.i257 = icmp eq i64 %indvars.iv.next36.i256, %wide.trip.count38.i252
  br i1 %exitcond39.not.i257, label %._crit_edge33.i238, label %.lr.ph32.i253, !llvm.loop !722

._crit_edge33.i238:                               ; preds = %.lr.ph32.i253, %.preheader.i250, %._crit_edge.thread.i236
  %i.ex = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr nonnull %i.g) ; 0 uses
  br label %Exa7_AddClause.exit258

Exa7_AddClause.exit258:                           ; preds = %.lr.ph.i242, %._crit_edge.i248, %._crit_edge.thread.i236, %._crit_edge33.i238
  %.024.i239 = phi i32 [ 1, %._crit_edge.i248 ], [ 1, %._crit_edge33.i238 ], [ 1, %._crit_edge.thread.i236 ], [ 0, %.lr.ph.i242 ]
  %i.ey = add nsw i32 %.024.i239, %.4341          ; 2 uses
  %.not347 = icmp eq i32 %.1116342, 31
  %or.cond402 = or i1 %.not, %.not347
  br i1 %or.cond402, label %.loopexit, label %.lr.ph339

.lr.ph339:                                        ; preds = %Exa7_AddClause.exit258
  %i.ez = shl nuw nsw i32 1, %.1116342
  %i.fa = add i32 %.1116342, 1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph339, %bb.o
  %.1336 = phi i32 [ 0, %.lr.ph339 ], [ %i.fz, %bb.o ] ; 3 uses
  %.5335 = phi i32 [ %i.ey, %.lr.ph339 ], [ %.6, %bb.o ] ; 2 uses
  %i.fb = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %.1336)
  %.not132 = icmp eq i32 %i.fb, %i.ac
  br i1 %.not132, label %.preheader, label %bb.o

.preheader:                                       ; preds = %bb.j
  br i1 %i.dw, label %.lr.ph333, label %._crit_edge334

.lr.ph333:                                        ; preds = %.preheader, %bb.l
  %.3332 = phi i32 [ %i.fk, %bb.l ], [ 0, %.preheader ] ; 3 uses
  %.0119331 = phi i32 [ %.1120, %bb.l ], [ 0, %.preheader ] ; 3 uses
  %i.fc = shl nuw i32 1, %.3332
  %i.fd = and i32 %i.fc, %.1336
  %.not133 = icmp eq i32 %i.fd, 0
  br i1 %.not133, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph333
  %reass.mul.i260 = mul i32 %.3332, %i.f
  %i.fe = add i32 %i.fa, %reass.mul.i260
  %i.ff = shl nsw i32 %i.fe, 1
  %i.fg = or disjoint i32 %i.ff, 1
  %i.fh = add nsw i32 %.0119331, 1
  %i.fi = sext i32 %.0119331 to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.fi
  store i32 %i.fg, ptr %i.fj, align 4, !tbaa !38
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph333, %bb.k
  %.1120 = phi i32 [ %i.fh, %bb.k ], [ %.0119331, %.lr.ph333 ]
  %i.fk = add nuw nsw i32 %.3332, 1               ; 2 uses
  %exitcond363.not = icmp eq i32 %i.fk, %.1116342
  br i1 %exitcond363.not, label %._crit_edge334, label %.lr.ph333, !llvm.loop !729

._crit_edge334:                                   ; preds = %bb.l, %.preheader
  br i1 %i.ad, label %.lr.ph.i267, label %._crit_edge.thread.i261

.lr.ph.i267:                                      ; preds = %._crit_edge334, %bb.n
  %indvars.iv.i268 = phi i64 [ %indvars.iv.next.i271, %bb.n ], [ 0, %._crit_edge334 ] ; 2 uses
  %.030.i269 = phi i32 [ %.1.i270, %bb.n ], [ 0, %._crit_edge334 ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i268
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !38 ; 2 uses
  switch i32 %i.fm, label %bb.m [
    i32 1, label %Exa7_AddClause.exit283
    i32 0, label %bb.n
  ]

bb.m:                                             ; preds = %.lr.ph.i267
  %i.fn = add nsw i32 %.030.i269, 1
  %i.fo = sext i32 %.030.i269 to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.fo
  store i32 %i.fm, ptr %i.fp, align 4, !tbaa !38
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i267
  %.1.i270 = phi i32 [ %.030.i269, %.lr.ph.i267 ], [ %i.fn, %bb.m ] ; 3 uses
  %indvars.iv.next.i271 = add nuw nsw i64 %indvars.iv.i268, 1 ; 2 uses
  %exitcond.not.i272 = icmp eq i64 %indvars.iv.next.i271, %wide.trip.count.i266
  br i1 %exitcond.not.i272, label %._crit_edge.i273, label %.lr.ph.i267, !llvm.loop !724

._crit_edge.i273:                                 ; preds = %bb.n
  br i1 %.not42.i237, label %Exa7_AddClause.exit283, label %.preheader.i275

._crit_edge.thread.i261:                          ; preds = %._crit_edge334
  br i1 %.not42.i237, label %Exa7_AddClause.exit283, label %._crit_edge33.i263

.preheader.i275:                                  ; preds = %._crit_edge.i273
  %i.fq = icmp sgt i32 %.1.i270, 0
  br i1 %i.fq, label %.lr.ph32.preheader.i276, label %._crit_edge33.i263

.lr.ph32.preheader.i276:                          ; preds = %.preheader.i275
  %wide.trip.count38.i277 = zext nneg i32 %.1.i270 to i64
  br label %.lr.ph32.i278

.lr.ph32.i278:                                    ; preds = %.lr.ph32.i278, %.lr.ph32.preheader.i276
  %indvars.iv35.i279 = phi i64 [ 0, %.lr.ph32.preheader.i276 ], [ %indvars.iv.next36.i281, %.lr.ph32.i278 ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv35.i279
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !38 ; 2 uses
  %i.ft = and i32 %i.fs, 1
  %.not27.i280 = icmp eq i32 %i.ft, 0
  %i.fu = select i1 %.not27.i280, ptr @.str.57, ptr @.str.143
  %i.fv = ashr i32 %i.fs, 1
  %i.fw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.142, ptr noundef nonnull %i.fu, i32 noundef %i.fv) #41 ; 0 uses
  %indvars.iv.next36.i281 = add nuw nsw i64 %indvars.iv35.i279, 1 ; 2 uses
  %exitcond39.not.i282 = icmp eq i64 %indvars.iv.next36.i281, %wide.trip.count38.i277
  br i1 %exitcond39.not.i282, label %._crit_edge33.i263, label %.lr.ph32.i278, !llvm.loop !722

._crit_edge33.i263:                               ; preds = %.lr.ph32.i278, %.preheader.i275, %._crit_edge.thread.i261
  %i.fx = tail call i64 @fwrite(ptr nonnull @.str.144, i64 2, i64 1, ptr nonnull %i.g) ; 0 uses
  br label %Exa7_AddClause.exit283

Exa7_AddClause.exit283:                           ; preds = %.lr.ph.i267, %._crit_edge.i273, %._crit_edge.thread.i261, %._crit_edge33.i263
  %.024.i264 = phi i32 [ 1, %._crit_edge.i273 ], [ 1, %._crit_edge33.i263 ], [ 1, %._crit_edge.thread.i261 ], [ 0, %.lr.ph.i267 ]
  %i.fy = add nsw i32 %.024.i264, %.5335
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %Exa7_AddClause.exit283
  %.6 = phi i32 [ %.5335, %bb.j ], [ %i.fy, %Exa7_AddClause.exit283 ] ; 2 uses
  %i.fz = add nuw nsw i32 %.1336, 1               ; 2 uses
  %exitcond365.not = icmp eq i32 %i.fz, %i.ez
  br i1 %exitcond365.not, label %.loopexit, label %bb.j, !llvm.loop !730

.loopexit:                                        ; preds = %bb.o, %Exa7_AddClause.exit258
  %.7 = phi i32 [ %i.ey, %Exa7_AddClause.exit258 ], [ %.6, %bb.o ] ; 2 uses
  %i.ga = add nsw i32 %.1116342, 1                ; 2 uses
  %i.gb = icmp slt i32 %i.ga, %i.f
  br i1 %i.gb, label %.preheader308, label %._crit_edge344, !llvm.loop !731

._crit_edge344:                                   ; preds = %.loopexit, %.preheader309
  %.4.lcssa = phi i32 [ %.0121.lcssa, %.preheader309 ], [ %.7, %.loopexit ] ; 2 uses
  tail call void @rewind(ptr noundef %i.g)
  %i.gc = shl i32 %i.f, %2
  %i.gd = mul nsw i32 %i.gc, %i.f
  %i.ge = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.18, i32 noundef %i.gd, i32 noundef %.4.lcssa) #41 ; 0 uses
  %i.gf = tail call i32 @fclose(ptr noundef %i.g) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  ret i32 %.4.lcssa
}

; Function Attrs: nounwind uwtable
define void @Exa_ManDumpVerilog(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [1000 x i8], align 16             ; 6 uses
  %i.b = alloca [1100 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.c = add nsw i32 %2, %1                       ; 8 uses
  call void @Extra_PrintHexadecimalString(ptr noundef nonnull %i.a, ptr noundef %4, i32 noundef %1) #41
  %i.d = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.114, ptr noundef nonnull %i.a, i32 noundef %3, i32 noundef %2) #41 ; 0 uses
  %i.e = call noalias ptr @fopen(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.16) ; 11 uses
  %i.f = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.115, i32 noundef %1, ptr noundef nonnull %i.a, i32 noundef %2) #41 ; 0 uses
  %i.g = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.116, ptr noundef nonnull %i.a, i32 noundef %3, i32 noundef %2) #41 ; 0 uses
  %i.h = icmp sgt i32 %1, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04756 = phi i32 [ %i.k, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.i = add nuw nsw i32 %.04756, 97
  %i.j = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.117, i32 noundef %i.i) #41 ; 0 uses
  %i.k = add nuw nsw i32 %.04756, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.k, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !732

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.l = call i64 @fwrite(ptr nonnull @.str.118, i64 15, i64 1, ptr %i.e) ; 0 uses
  %i.m = icmp sgt i32 %2, 0
  br i1 %i.m, label %.preheader.lr.ph, label %._crit_edge67

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.n = getelementptr i8, ptr %0, i64 8          ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge65
  %.05066 = phi i32 [ %1, %.preheader.lr.ph ], [ %.pre-phi, %._crit_edge65 ] ; 9 uses
  %i.o = zext i32 %.05066 to i64                  ; 2 uses
  %i.p = icmp sgt i32 %.05066, 0
  br i1 %i.p, label %.lr.ph59, label %scalar.ph.preheader

.lr.ph59:                                         ; preds = %.preheader
  %i.q = add nuw i32 %.05066, 1                   ; 5 uses
  %.val54 = load ptr, ptr %i.n, align 8, !tbaa !49 ; 5 uses
  %xtraiter = and i64 %i.o, 3                     ; 3 uses
  %min.iters.check = icmp ult i32 %.05066, 4
  br i1 %min.iters.check, label %scalar.ph.prol.loopexit, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph59
  %n.vec = and i64 %i.o, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %indvars.iv.next.3, %vector.body ] ; 5 uses
  %.058 = phi i32 [ 0, %vector.ph ], [ %24, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.r = trunc nuw nsw i64 %index to i32
  %i.s = mul i32 %i.c, %i.r
  %i.t = add i32 %i.q, %i.s
  %5 = sext i32 %i.t to i64
  %6 = getelementptr inbounds [4 x i8], ptr %.val54, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !38
  %i.u = add nsw i32 %7, %.058
  %8 = trunc i64 %index to i32
  %9 = or disjoint i32 %8, 1
  %reass.mul.i.1 = mul i32 %i.c, %9
  %10 = add i32 %i.q, %reass.mul.i.1
  %i.v = sext i32 %10 to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %.val54, i64 %i.v
  %11 = load i32, ptr %i.w, align 4, !tbaa !38
  %12 = add nsw i32 %11, %i.u
  %13 = trunc i64 %index to i32
  %14 = or disjoint i32 %13, 2
  %reass.mul.i.2 = mul i32 %i.c, %14
  %15 = add i32 %i.q, %reass.mul.i.2
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr %.val54, i64 %16
  %i.x = load i32, ptr %17, align 4, !tbaa !38
  %18 = add nsw i32 %i.x, %12
  %19 = trunc i64 %index to i32
  %20 = or disjoint i32 %19, 3
  %reass.mul.i.3 = mul i32 %i.c, %20
  %21 = add i32 %i.q, %reass.mul.i.3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr %.val54, i64 %22
  %i.y = load i32, ptr %23, align 4, !tbaa !38
  %24 = add nsw i32 %i.y, %18                     ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %index, 4  ; 2 uses
  %index.next = add i64 %niter, 4                 ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %scalar.ph.prol, label %vector.body, !llvm.loop !733

scalar.ph.preheader:                              ; preds = %.preheader
  %25 = add nsw i32 %.05066, 97
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.119, i32 noundef %25) #41 ; 0 uses
  %.pre = add nsw i32 %.05066, 1
  br label %._crit_edge65

scalar.ph.prol:                                   ; preds = %vector.body
  %prol.iter.cmp.not = icmp eq i64 %xtraiter, 0
  br i1 %prol.iter.cmp.not, label %.lr.ph64, label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %.lr.ph59
  %indvars.iv.unr = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next.3, %scalar.ph.prol ]
  %.058.unr = phi i32 [ 0, %.lr.ph59 ], [ %24, %scalar.ph.prol ]
  %lcmp.mod78 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod78)
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.epil, %scalar.ph ] ; 2 uses
  %.058.a = phi i32 [ %.058.unr, %scalar.ph.prol.loopexit ], [ %i.af, %scalar.ph ]
  %epil.iter = phi i64 [ 0, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.3.a, %scalar.ph ]
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32
  %reass.mul.i.2.a = mul i32 %i.c, %i.aa
  %i.ab = add i32 %i.q, %reass.mul.i.2.a
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %.val54, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !38
  %i.af = add nsw i32 %i.ae, %.058.a              ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next.3.a = add i64 %epil.iter, 1    ; 2 uses
  %exitcond69.not.3 = icmp eq i64 %indvars.iv.next.3.a, %xtraiter
  br i1 %exitcond69.not.3, label %.lr.ph64, label %scalar.ph, !llvm.loop !734

.lr.ph64:                                         ; preds = %scalar.ph, %scalar.ph.prol
  %.lcssa = phi i32 [ %24, %scalar.ph.prol ], [ %i.af, %scalar.ph ]
  %i.ag = add nuw nsw i32 %.05066, 97
  %i.ah = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.119, i32 noundef %i.ag) #41 ; 0 uses
  %i.ai = add nuw i32 %.05066, 1                  ; 2 uses
  %wide.trip.count73 = zext nneg i32 %.05066 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph64, %bb.d
  %indvars.iv70 = phi i64 [ 0, %.lr.ph64 ], [ %indvars.iv.next71, %bb.d ] ; 3 uses
  %.04861 = phi i32 [ 0, %.lr.ph64 ], [ %.149, %bb.d ] ; 2 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv70 to i32
  %reass.mul.i55 = mul i32 %i.c, %i.aj
  %i.ak = add i32 %i.ai, %reass.mul.i55
  %.val = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !38
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = add nsw i32 %.04861, 1                  ; 2 uses
  %i.ap = icmp slt i32 %i.ao, %.lcssa
  %i.aq = select i1 %i.ap, ptr @.str.121, ptr @.str.57
  %i.ar = trunc i64 %indvars.iv70 to i32
  %i.as = add i32 %i.ar, 97
  %i.at = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.120, i32 noundef %i.as, ptr noundef nonnull %i.aq) #41 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.149 = phi i32 [ %i.ao, %bb.c ], [ %.04861, %bb.b ]
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %._crit_edge65, label %bb.b, !llvm.loop !735

._crit_edge65:                                    ; preds = %bb.d, %scalar.ph.preheader
  %.pre-phi = phi i32 [ %.pre, %scalar.ph.preheader ], [ %i.ai, %bb.d ] ; 2 uses
  %i.au = call i64 @fwrite(ptr nonnull @.str.122, i64 3, i64 1, ptr %i.e) ; 0 uses
  %i.av = icmp slt i32 %.pre-phi, %i.c
  br i1 %i.av, label %.preheader, label %._crit_edge67, !llvm.loop !736

._crit_edge67:                                    ; preds = %._crit_edge65, %._crit_edge
  %i.aw = add nsw i32 %i.c, 96
  %i.ax = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.123, i32 noundef %i.aw) #41 ; 0 uses
  %i.ay = call i64 @fwrite(ptr nonnull @.str.124, i64 11, i64 1, ptr %i.e) ; 0 uses
  %i.az = call i32 @fclose(ptr noundef %i.e)      ; 0 uses
  %i.ba = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef nonnull %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  ret void
}

; Function Attrs: nounwind uwtable
define void @Exa_ManExactSynthesis7(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [64 x i64], align 16              ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 7 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.d = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #41
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %3, align 8, !tbaa !72
  %.neg47 = mul i64 %i.f, -1000000
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !74
  %.neg = sdiv i64 %i.h, -1000
  %.neg48 = add i64 %.neg, %.neg47
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg48, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.i = load i32, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !110
  %i.l = add i32 %i.k, %i.i                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !115
  call fastcc void @Abc_TtReadHex(ptr noundef %i.a, ptr noundef %i.n)
  %i.o = call i32 @rand() #41
  %i.p = shl i32 %i.o, 12
  %i.q = call i32 @rand() #41
  %i.r = xor i32 %i.p, %i.q
  %i.s = and i32 %i.r, 1048575                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.t = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.85, i32 noundef %i.s) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  %i.u = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.86, i32 noundef %i.s) #41 ; 0 uses
  %i.v = load i32, ptr %0, align 8, !tbaa !109
  %i.w = load i32, ptr %i.j, align 4, !tbaa !110
  %i.x = call i32 @Exa7_ManGenCnf(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef %i.v, i32 noundef %i.w, i32 noundef %1)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !163
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.aa = shl i32 %i.l, %i.i
  %i.ab = mul nsw i32 %i.aa, %i.l
  %i.ac = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, i32 noundef %i.ab, i32 noundef %i.x, ptr noundef nonnull %i.b) ; 0 uses
  %.pre = load i32, ptr %i.y, align 4, !tbaa !163
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %Abc_Clock.exit
  %i.ad = phi i32 [ %.pre, %bb.c ], [ 0, %Abc_Clock.exit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !113
  %i.ag = call ptr @Exa4_ManSolve(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef %i.af, i32 noundef %i.ad) ; 6 uses
  %i.ah = load i32, ptr %i.y, align 4, !tbaa !163
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = icmp ne ptr %i.ag, null
  %or.cond = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ak = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125) ; 0 uses
  %i.al = icmp sgt i32 %i.l, 0
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.03649 = phi i32 [ %i.an, %.lr.ph ], [ 0, %bb.e ] ; 2 uses
  %i.am = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.126, i32 noundef %.03649) ; 0 uses
  %i.an = add nuw nsw i32 %.03649, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.an, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !737

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %i.ao = load i32, ptr %0, align 8, !tbaa !109   ; 2 uses
  %i.ap = icmp slt i32 %i.ao, %i.l
  br i1 %i.ap, label %.lr.ph56, label %.loopexit.thread

.lr.ph56:                                         ; preds = %._crit_edge
  %i.aq = getelementptr i8, ptr %i.ag, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph56, %._crit_edge53
  %.154 = phi i32 [ %i.ao, %.lr.ph56 ], [ %i.at, %._crit_edge53 ] ; 4 uses
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.127, i32 noundef %.154) ; 0 uses
  %i.as = icmp sgt i32 %.154, 0
  %i.at = add nsw i32 %.154, 1                    ; 3 uses
  br i1 %i.as, label %.lr.ph52, label %._crit_edge53

.lr.ph52:                                         ; preds = %bb.f
  %wide.trip.count = zext nneg i32 %.154 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph52, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph52 ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.au = trunc nuw nsw i64 %indvars.iv to i32
  %reass.mul.i = mul i32 %i.l, %i.au
  %i.av = add i32 %i.at, %reass.mul.i
  %.val = load ptr, ptr %i.aq, align 8, !tbaa !49
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !38
  %.not41 = icmp eq i32 %i.ay, 0
  %i.az = select i1 %.not41, i32 46, i32 49
  %i.ba = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.128, i32 noundef %i.az) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond58.not, label %._crit_edge53, label %bb.g, !llvm.loop !738

._crit_edge53:                                    ; preds = %bb.g, %bb.f
  %putchar40 = call i32 @putchar(i32 10)          ; 0 uses
  %exitcond59.not = icmp eq i32 %i.at, %i.l
  br i1 %exitcond59.not, label %.loopexit, label %bb.f, !llvm.loop !739

.loopexit:                                        ; preds = %._crit_edge53, %bb.d
  %.not39 = icmp eq ptr %i.ag, null
  br i1 %.not39, label %Vec_IntFreeP.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %._crit_edge, %.loopexit
  %i.bb = load i32, ptr %0, align 8, !tbaa !109
  %i.bc = load i32, ptr %i.j, align 4, !tbaa !110
  call void @Exa_ManDumpVerilog(ptr noundef nonnull %i.ag, i32 noundef %i.bb, i32 noundef %i.bc, i32 noundef %1, ptr noundef nonnull %i.a)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !49 ; 2 uses
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %bb.h, label %.thread.i

.thread.i:                                        ; preds = %.loopexit.thread
  call void @free(ptr noundef nonnull %i.be) #41
  br label %bb.h

bb.h:                                             ; preds = %.thread.i, %.loopexit.thread
  call void @free(ptr noundef nonnull %i.ag) #41
  br label %Vec_IntFreeP.exit

Vec_IntFreeP.exit:                                ; preds = %.loopexit, %bb.h
  %i.bf = call i32 @unlink(ptr noundef nonnull %i.b) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.bg = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #41
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %Abc_Clock.exit43, label %bb.i

bb.i:                                             ; preds = %Vec_IntFreeP.exit
  %i.bi = load i64, ptr %2, align 8, !tbaa !72
  %i.bj = mul nsw i64 %i.bi, 1000000
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !74
  %i.bm = sdiv i64 %i.bl, 1000
  %i.bn = add nsw i64 %i.bm, %i.bj
  br label %Abc_Clock.exit43

Abc_Clock.exit43:                                 ; preds = %Vec_IntFreeP.exit, %bb.i
  %.0.i42 = phi i64 [ %i.bn, %bb.i ], [ -1, %Vec_IntFreeP.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %i.bo = add i64 %.0.i42, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.14)
  %i.bp = sitofp i64 %i.bo to double
  %i.bq = fdiv double %i.bp, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.138, double noundef %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  ret void
}

; Function Attrs: nounwind uwtable
define void @Exa_NpnCascadeTest() local_unnamed_addr #3 {
.peel.next:
  %i.a = alloca [100 x i8], align 16              ; 9 uses
  %i.b = alloca [1000 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.c = tail call noalias ptr @fopen(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.130) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.e = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.c, ptr noundef nonnull @.str.131, ptr noundef nonnull %i.a) #41 ; 0 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.f, %.peel.next
  %.068 = phi i32 [ 1, %.peel.next ], [ %i.v, %bb.f ] ; 2 uses
  %i.f = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.c, ptr noundef nonnull @.str.131, ptr noundef nonnull %i.a) #41 ; 0 uses
  %i.g = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #42
  %i.h = getelementptr i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -1       ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !120
  %i.k = icmp eq i8 %i.j, 10
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.i, align 1, !tbaa !120
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #42
  %i.m = getelementptr i8, ptr %i.a, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -1       ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !120
  %i.p = icmp eq i8 %i.o, 13
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.n, align 1, !tbaa !120
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.132, ptr noundef nonnull %i.d) #41 ; 0 uses
  %i.r = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.133, i32 noundef %.068, ptr noundef nonnull %i.b) ; 0 uses
  %i.s = call ptr (...) @Abc_FrameGetGlobalFrame() #41
  %i.t = call i32 @Cmd_CommandExecute(ptr noundef %i.s, ptr noundef nonnull %i.b) #41
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.f, label %.loopexit

.loopexit:                                        ; preds = %bb.e
  %.pre = load ptr, ptr @stdout, align 8, !tbaa !75
  %i.u = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.pre, ptr noundef nonnull @.str.134, ptr noundef nonnull %i.b) #41 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = add nuw nsw i32 %.068, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, 14
  br i1 %exitcond.not, label %.loopexit10, label %bb.a, !llvm.loop !740

.loopexit10:                                      ; preds = %bb.f
  %i.w = call i32 @fclose(ptr noundef %i.c)       ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %.loopexit10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  ret void
}

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

declare i32 @Cmd_CommandExecute(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @Abc_FrameGetGlobalFrame(...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @Exa_NpnCascadeTest6() local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [1000 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.b = tail call i32 @Abc_Random(i32 noundef 1) #41 ; 0 uses
  br label %.critedge

bb.b:                                             ; preds = %.critedge
  %i.c = add nuw nsw i32 %.056, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.c, 10000
  br i1 %exitcond.not, label %.loopexit, label %.critedge, !llvm.loop !742

.critedge:                                        ; preds = %bb.a, %bb.b
  %.056 = phi i32 [ 0, %bb.a ], [ %i.c, %bb.b ]   ; 2 uses
  %i.d = call i64 @Abc_RandomW(i32 noundef 0) #41
  %i.e = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.135, i64 noundef %i.d) #41 ; 0 uses
  %i.f = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.136, i32 noundef %.056, ptr noundef nonnull %i.a) ; 0 uses
  %i.g = call ptr (...) @Abc_FrameGetGlobalFrame() #41
  %i.h = call i32 @Cmd_CommandExecute(ptr noundef %i.g, ptr noundef nonnull %i.a) #41
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !75
  %i.j = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.134, ptr noundef nonnull %i.a) #41 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #29

declare ptr @Extra_TimeStamp(...) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @Exa3_ManDumpVerilogName(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #17 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.b = load ptr, ptr %0, align 8, !tbaa !222    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !218  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 128, ptr noundef nonnull @.str.194, i32 noundef 15, ptr noundef nonnull %i.d) #41 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !115
  %i.h = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 128, ptr noundef nonnull @.str.195, i32 noundef 16, ptr noundef %i.g) #41 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !222    ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !270
  %.not33 = icmp eq i32 %i.k, 0
  br i1 %.not33, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 105, ptr %i.a, align 16, !tbaa !120
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.d ]        ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !162
  %.not34 = icmp eq i32 %i.m, 0
  br i1 %.not34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = add nuw nsw i32 %.0, 1
  %i.o = zext nneg i32 %.0 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  store i8 97, ptr %i.p, align 1, !tbaa !120
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i32 [ %i.n, %bb.g ], [ %.0, %bb.f ]   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  %i.r = load i32, ptr %i.q, align 4, !tbaa !101
  %.not35 = icmp eq i32 %i.r, 0
  br i1 %.not35, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = add nuw nsw i32 %.1, 1
  %i.t = zext nneg i32 %.1 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  store i8 111, ptr %i.u, align 1, !tbaa !120
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2 = phi i32 [ %i.s, %bb.i ], [ %.1, %bb.h ]   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.w = load i32, ptr %i.v, align 8, !tbaa !232
  %.not36 = icmp eq i32 %i.w, 0
  br i1 %.not36, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = add nuw nsw i32 %.2, 1
  %i.y = zext nneg i32 %.2 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  store i8 114, ptr %i.z, align 1, !tbaa !120
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.3 = phi i32 [ %i.x, %bb.k ], [ %.2, %bb.j ]   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !238
  %.not37 = icmp eq i32 %i.ab, 0
  br i1 %.not37, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = add nuw nsw i32 %.3, 1
  %i.ad = zext nneg i32 %.3 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ad
  store i8 102, ptr %i.ae, align 1, !tbaa !120
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.4 = phi i32 [ %i.ac, %bb.m ], [ %.3, %bb.l ]  ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !743
  %.not38 = icmp eq i32 %i.ag, 0
  br i1 %.not38, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = add nuw nsw i32 %.4, 1
  %i.ai = zext nneg i32 %.4 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ai
  store i8 103, ptr %i.aj, align 1, !tbaa !120
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.5 = phi i32 [ %i.ah, %bb.o ], [ %.4, %bb.n ]  ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !744
  %.not39 = icmp eq i32 %i.al, 0
  br i1 %.not39, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = add nuw nsw i32 %.5, 1
  %i.an = zext nneg i32 %.5 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.an
  store i8 99, ptr %i.ao, align 1, !tbaa !120
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.6 = phi i32 [ %i.am, %bb.q ], [ %.5, %bb.p ]  ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !745
  %.not40 = icmp eq i32 %i.aq, 0
  br i1 %.not40, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = add nuw nsw i32 %.6, 1
  %i.as = zext nneg i32 %.6 to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.as
  store i8 107, ptr %i.at, align 1, !tbaa !120
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.7 = phi i32 [ %i.ar, %bb.s ], [ %.6, %bb.r ]  ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 108
  %i.av = load i32, ptr %i.au, align 4, !tbaa !326
  %.not41 = icmp eq i32 %i.av, 0
  br i1 %.not41, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = add nuw nsw i32 %.7, 1
  %i.ax = zext nneg i32 %.7 to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  store i8 100, ptr %i.ay, align 1, !tbaa !120
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.8 = phi i32 [ %i.aw, %bb.u ], [ %.7, %bb.t ]  ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !746
  %.not42 = icmp eq i32 %i.ba, 0
  br i1 %.not42, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = add nuw nsw i32 %.8, 1
  %i.bc = zext nneg i32 %.8 to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bc
  store i8 109, ptr %i.bd, align 1, !tbaa !120
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.9 = phi i32 [ %i.bb, %bb.w ], [ %.8, %bb.v ]  ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 84
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !747
  %.not43 = icmp eq i32 %i.bf, 0
  br i1 %.not43, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bg = add nuw nsw i32 %.9, 1
  %i.bh = zext nneg i32 %.9 to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  store i8 112, ptr %i.bi, align 1, !tbaa !120
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.10 = phi i32 [ %i.bg, %bb.y ], [ %.9, %bb.x ]
  %i.bj = zext nneg i32 %.10 to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj
  store i8 0, ptr %i.bk, align 1, !tbaa !120
  %i.bl = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #42 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bl
  %i.bn = sub i64 128, %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !225
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !223
  %i.bs = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bm, i64 noundef %i.bn, ptr noundef nonnull @.str.196, i32 noundef %i.bp, i32 noundef %i.br, ptr noundef nonnull %i.a) #41 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #30

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #30

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #7

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #18

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @Gia_ManAppendObj(ptr nofree noundef captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !574  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !748
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = shl nsw i32 %i.b, 1
  %i.g = tail call noundef range(i32 -2147483648, 536870913) i32 @llvm.smin.i32(i32 %i.f, i32 536870912) ; 6 uses
  %i.h = icmp eq i32 %i.b, 536870912
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19) ; 0 uses
  tail call void @exit(i32 noundef 1) #43
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.j = load i32, ptr %i.i, align 4, !tbaa !749
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.214, i32 noundef %i.b, i32 noundef %i.g) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !557  ; 2 uses
  %.not33 = icmp eq ptr %i.m, null
  %i.n = sext i32 %i.g to i64
  %i.o = mul nsw i64 %i.n, 12                     ; 2 uses
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.o) #39
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #38
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !557
  %i.s = load i32, ptr %i.c, align 4, !tbaa !748  ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %i.r, i64 %i.t
  %i.v = sub nsw i32 %i.g, %i.s
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !750  ; 2 uses
  %.not34 = icmp eq ptr %i.z, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %i.g to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.ab) #39 ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !750
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !748 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = sub nsw i32 %i.g, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %i.ai, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.g, ptr %i.c, align 4, !tbaa !748
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.aj = getelementptr i8, ptr %0, i64 100
  %.val = load i32, ptr %i.aj, align 4, !tbaa !45
  %.not35 = icmp eq i32 %.val, 0
  br i1 %.not35, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !45 ; 7 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !48
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp slt i32 %i.am, 16
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !49 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef 64) #39
  br label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #38
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !49
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.av = icmp samesign ult i32 %i.am, 1073741823
  %i.aw = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !49 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba) #39
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #38
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ]
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !49
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ak, align 8, !tbaa !48
  %.pre = load i32, ptr %i.al, align 4, !tbaa !45
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.be = phi i32 [ %i.am, %bb.m ], [ %i.am, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !49
  %i.bh = add nsw i32 %i.be, 1
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !45
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !38
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit, %bb.l
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !574 ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !574
  %i.bm = getelementptr i8, ptr %0, i64 32
  %.val36 = load ptr, ptr %i.bm, align 8, !tbaa !557
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [12 x i8], ptr %.val36, i64 %i.bn
  ret ptr %i.bo
}

declare void @Gia_ObjAddFanout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @Gia_ManBuiltInSimPerform(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @Gia_ManQuantSetSuppAnd(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #31

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #32

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @Abc_RDataStart(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #33 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #40 ; 9 uses
  store i32 %0, ptr %i.a, align 8, !tbaa !686
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %1, ptr %i.b, align 4, !tbaa !688
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !709
  %i.d = ashr i32 %2, 6
  %i.e = and i32 %2, 63
  %i.f = icmp ne i32 %i.e, 0
  %i.g = zext i1 %i.f to i32
  %i.h = add nsw i32 %i.d, %i.g                   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.h, ptr %i.i, align 4, !tbaa !689
  %i.j = mul nsw i32 %i.h, %0                     ; 4 uses
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 4 uses
  %i.l = add i32 %i.j, -1
  %or.cond.i.i = icmp ult i32 %i.l, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.j ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.k, align 8, !tbaa !19
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WrdStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sext i32 %spec.store.select.i.i to i64
  %i.n = shl nsw i64 %i.m, 3
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #38
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %bb.a, %bb.b
  %i.p = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.p, ptr %i.r, align 8, !tbaa !22
  store i32 %i.j, ptr %i.q, align 4, !tbaa !23
  %i.s = sext i32 %i.j to i64
  %i.t = shl nsw i64 %i.s, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.u, align 8, !tbaa !694
  %i.v = shl nsw i32 %1, 1
  %i.w = mul nsw i32 %i.h, %i.v                   ; 4 uses
  %i.x = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 4 uses
  %i.y = add i32 %i.w, -1
  %or.cond.i.i16 = icmp ult i32 %i.y, 15
  %spec.store.select.i.i17 = select i1 %or.cond.i.i16, i32 16, i32 %i.w ; 3 uses
  store i32 %spec.store.select.i.i17, ptr %i.x, align 8, !tbaa !19
  %.not.i.i18 = icmp eq i32 %spec.store.select.i.i17, 0
  br i1 %.not.i.i18, label %Vec_WrdStart.exit19, label %bb.c

bb.c:                                             ; preds = %Vec_WrdStart.exit
  %i.z = sext i32 %spec.store.select.i.i17 to i64
  %i.aa = shl nsw i64 %i.z, 3
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.aa) #38
  br label %Vec_WrdStart.exit19

Vec_WrdStart.exit19:                              ; preds = %Vec_WrdStart.exit, %bb.c
  %i.ac = phi ptr [ %i.ab, %bb.c ], [ null, %Vec_WrdStart.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !22
  store i32 %i.w, ptr %i.ad, align 4, !tbaa !23
  %i.af = sext i32 %i.w to i64
  %i.ag = shl nsw i64 %i.af, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %i.ag, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.x, ptr %i.ah, align 8, !tbaa !695
  %i.ai = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 0, ptr %i.aj, align 4, !tbaa !45
  store i32 16, ptr %i.ai, align 8, !tbaa !48
  %i.ak = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #38
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !720
  %i.an = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !45
  store i32 16, ptr %i.an, align 8, !tbaa !48
  %i.ap = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #38
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !49
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !719
  ret ptr %i.a
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @Vec_WrdSortCompare1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #34 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !26
  %i.b = load i64, ptr %1, align 8, !tbaa !26
  %.0 = tail call i32 @llvm.ucmp.i32.i64(i64 %i.a, i64 %i.b)
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #29

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #35

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #35

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #36

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #29

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { inlinehint nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn }
attributes #31 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { inlinehint mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree nounwind }
attributes #36 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #38 = { nounwind allocsize(0) }
attributes #39 = { nounwind allocsize(1) }
attributes #40 = { nounwind allocsize(0,1) }
attributes #41 = { nounwind }
attributes #42 = { nounwind willreturn memory(read) }
attributes #43 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10, !11}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = distinct !{!12, !9, !11, !10}
!13 = !{!14, !5, i64 12}
!14 = !{!"Maj_Man_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !15, i64 32, !6, i64 40, !6, i64 49192, !17, i64 49456, !16, i64 49464}
!15 = !{!"p1 _ZTS10Vec_Wrd_t_", !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!"p1 _ZTS10Vec_Wec_t_", !16, i64 0}
!18 = !{!14, !5, i64 8}
!19 = !{!20, !5, i64 0}
!20 = !{!"Vec_Wrd_t_", !5, i64 0, !5, i64 4, !21, i64 8}
!21 = !{!"p1 long", !16, i64 0}
!22 = !{!20, !21, i64 8}
!23 = !{!20, !5, i64 4}
!24 = !{!14, !15, i64 32}
!25 = !{!14, !5, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"long", !6, i64 0}
!28 = distinct !{!28, !9, !10, !11}
!29 = distinct !{!29, !9, !11, !10}
!30 = distinct !{!30, !9, !10, !11}
!31 = distinct !{!31, !9, !11, !10}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9, !10, !11}
!34 = distinct !{!34, !9, !11, !10}
!35 = distinct !{!35, !9}
!36 = !{!14, !5, i64 16}
!37 = !{!14, !17, i64 49456}
!38 = !{!5, !5, i64 0}
!39 = !{!14, !5, i64 24}
!40 = !{!41, !5, i64 4}
!41 = !{!"Vec_Wec_t_", !5, i64 0, !5, i64 4, !42, i64 8}
!42 = !{!"p1 _ZTS10Vec_Int_t_", !16, i64 0}
!43 = !{!41, !5, i64 0}
!44 = !{!41, !42, i64 8}
!45 = !{!46, !5, i64 4}
!46 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !47, i64 8}
!47 = !{!"p1 int", !16, i64 0}
!48 = !{!46, !5, i64 0}
!49 = !{!46, !47, i64 8}
!50 = !{!14, !5, i64 20}
!51 = distinct !{!51, !9}
!52 = distinct !{!52, !9}
!53 = distinct !{!53, !9}
!54 = !{!14, !5, i64 4}
!55 = !{!14, !16, i64 49464}
!56 = distinct !{!56, !9}
!57 = distinct !{!57, !9}
!58 = distinct !{!58, !9}
!59 = distinct !{!59, !9}
!60 = distinct !{!60, !9}
!61 = distinct !{!61, !9}
!62 = distinct !{!62, !9}
!63 = distinct !{!63, !9}
!64 = distinct !{!64, !9}
!65 = distinct !{!65, !9}
!66 = distinct !{!66, !9, !10, !11}
!67 = distinct !{!67, !9, !11, !10}
!68 = distinct !{!68, !9, !10, !11}
!69 = distinct !{!69, !9, !11, !10}
!70 = distinct !{!70, !9}
!71 = distinct !{!71, !9}
!72 = !{!73, !27, i64 0}
!73 = !{!"timespec", !27, i64 0, !27, i64 8}
!74 = !{!73, !27, i64 8}
!75 = !{!76, !76, i64 0}
!76 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!77 = distinct !{!77, !9, !10, !11}
!78 = distinct !{!78, !79}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = distinct !{!80, !9, !10}
!81 = distinct !{!81, !9}
!82 = distinct !{!82, !9, !10, !11}
!83 = distinct !{!83, !9, !10}
!84 = distinct !{!84, !9, !85}
!85 = !{!"llvm.loop.unswitch.partial.disable"}
!86 = distinct !{!86, !9}
!87 = !{!88, !5, i64 20}
!88 = !{!"Exa_Man_t_", !89, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !21, i64 32, !15, i64 40, !6, i64 48, !6, i64 32816, !17, i64 33072, !16, i64 33080, !76, i64 33088, !5, i64 33096}
!89 = !{!"p1 _ZTS12Bmc_EsPar_t_", !16, i64 0}
!90 = !{!88, !5, i64 16}
!91 = !{!88, !15, i64 40}
!92 = !{!88, !5, i64 8}
!93 = distinct !{!93, !9, !10, !11}
!94 = distinct !{!94, !9, !11, !10}
!95 = distinct !{!95, !9, !10, !11}
!96 = distinct !{!96, !9, !11, !10}
!97 = distinct !{!97, !9}
!98 = !{!88, !5, i64 12}
!99 = !{!88, !5, i64 24}
!100 = !{!88, !89, i64 0}
!101 = !{!102, !5, i64 60}
!102 = !{!"Bmc_EsPar_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !103, i64 128, !103, i64 136, !103, i64 144, !103, i64 152, !47, i64 160, !47, i64 168, !15, i64 176}
!103 = !{!"p1 omnipotent char", !16, i64 0}
!104 = !{!88, !17, i64 33072}
!105 = distinct !{!105, !9}
!106 = distinct !{!106, !9}
!107 = distinct !{!107, !9}
!108 = !{!102, !5, i64 120}
!109 = !{!102, !5, i64 0}
!110 = !{!102, !5, i64 4}
!111 = !{!88, !21, i64 32}
!112 = !{!88, !16, i64 33080}
!113 = !{!102, !5, i64 88}
!114 = !{!102, !5, i64 32}
!115 = !{!102, !103, i64 128}
!116 = !{!88, !76, i64 33088}
!117 = !{!88, !5, i64 33096}
!118 = distinct !{!118, !9, !10, !11}
!119 = distinct !{!119, !9, !11, !10}
!120 = !{!6, !6, i64 0}
!121 = distinct !{!121, !9, !10, !11}
!122 = distinct !{!122, !9, !11, !10}
!123 = distinct !{!123, !9}
!124 = distinct !{!124, !9}
!125 = distinct !{!125, !9}
!126 = distinct !{!126, !9}
!127 = distinct !{!127, !9}
!128 = distinct !{!128, !9}
!129 = distinct !{!129, !9}
!130 = distinct !{!130, !9}
!131 = distinct !{!131, !9}
!132 = distinct !{!132, !9}
!133 = distinct !{!133, !9}
!134 = !{!102, !103, i64 152}
!135 = distinct !{!135, !9}
!136 = distinct !{!136, !9}
!137 = distinct !{!137, !9}
!138 = !{!102, !103, i64 144}
!139 = !{!102, !47, i64 160}
!140 = distinct !{!140, !9}
!141 = distinct !{!141, !9}
!142 = distinct !{!142, !9}
!143 = distinct !{!143, !9}
!144 = distinct !{!144, !9}
!145 = !{!102, !5, i64 28}
!146 = distinct !{!146, !9}
!147 = distinct !{!147, !9}
!148 = distinct !{!148, !9}
!149 = distinct !{!149, !9}
!150 = distinct !{!150, !9}
end_hunk_0
begin_hunk_1_@llvm.umul.with.overflow.i32/@llvm.vector.reduce.add.v2i32
!533 = distinct !{!533, !9}
!534 = distinct !{!534, !9}
!535 = distinct !{!535, !9}
!536 = !{!15, !15, i64 0}
!537 = distinct !{!537, !9}
!538 = distinct !{!538, !9}
!539 = distinct !{!539, !9}
!540 = distinct !{!540, !9}
!541 = distinct !{!541, !9}
!542 = distinct !{!542, !9}
!543 = distinct !{!543, !9}
!544 = distinct !{!544, !9}
!545 = distinct !{!545, !9}
!546 = distinct !{!546, !9}
!547 = distinct !{!547, !9}
!548 = distinct !{!548, !9}
!549 = distinct !{!549, !9}
!550 = distinct !{!550, !9}
!551 = distinct !{!551, !9}
!552 = distinct !{!552, !9}
!553 = distinct !{!553, !9}
!554 = distinct !{!554, !9}
!555 = !{!556, !5, i64 8}
!556 = !{!"Gia_Obj_t_", !5, i64 0, !5, i64 3, !5, i64 3, !5, i64 3, !5, i64 4, !5, i64 7, !5, i64 7, !5, i64 7, !5, i64 8}
!557 = !{!558, !559, i64 32}
!558 = !{!"Gia_Man_t_", !103, i64 0, !103, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !559, i64 32, !47, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !42, i64 64, !42, i64 72, !46, i64 80, !46, i64 96, !5, i64 112, !5, i64 116, !5, i64 120, !46, i64 128, !47, i64 144, !47, i64 152, !42, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !47, i64 184, !560, i64 192, !47, i64 200, !47, i64 208, !47, i64 216, !5, i64 224, !5, i64 228, !47, i64 232, !5, i64 240, !42, i64 248, !42, i64 256, !42, i64 264, !17, i64 272, !17, i64 280, !42, i64 288, !16, i64 296, !42, i64 304, !42, i64 312, !561, i64 320, !103, i64 328, !42, i64 336, !42, i64 344, !42, i64 352, !42, i64 360, !42, i64 368, !562, i64 376, !562, i64 384, !563, i64 392, !46, i64 400, !46, i64 416, !42, i64 432, !42, i64 440, !42, i64 448, !42, i64 456, !42, i64 464, !42, i64 472, !42, i64 480, !42, i64 488, !42, i64 496, !42, i64 504, !42, i64 512, !103, i64 520, !564, i64 528, !565, i64 536, !566, i64 544, !566, i64 552, !42, i64 560, !42, i64 568, !42, i64 576, !42, i64 584, !42, i64 592, !5, i64 600, !567, i64 604, !567, i64 608, !42, i64 616, !47, i64 624, !5, i64 632, !563, i64 640, !563, i64 648, !563, i64 656, !42, i64 664, !42, i64 672, !42, i64 680, !42, i64 688, !42, i64 696, !42, i64 704, !42, i64 712, !42, i64 720, !42, i64 728, !568, i64 736, !566, i64 744, !16, i64 752, !16, i64 760, !16, i64 768, !27, i64 776, !27, i64 784, !16, i64 792, !47, i64 800, !5, i64 808, !5, i64 812, !5, i64 816, !5, i64 820, !5, i64 824, !5, i64 828, !5, i64 832, !5, i64 836, !5, i64 840, !5, i64 844, !5, i64 848, !5, i64 852, !15, i64 856, !15, i64 864, !15, i64 872, !15, i64 880, !42, i64 888, !42, i64 896, !42, i64 904, !216, i64 912, !5, i64 920, !5, i64 924, !5, i64 928, !42, i64 936, !5, i64 944, !5, i64 948, !42, i64 952, !42, i64 960, !563, i64 968, !15, i64 976, !42, i64 984, !42, i64 992, !5, i64 1000, !5, i64 1004, !15, i64 1008, !46, i64 1016, !46, i64 1032, !46, i64 1048, !569, i64 1064, !561, i64 1072, !561, i64 1080, !5, i64 1088, !5, i64 1092, !5, i64 1096, !5, i64 1100, !561, i64 1104, !42, i64 1112, !42, i64 1120, !42, i64 1128, !563, i64 1136}
!559 = !{!"p1 _ZTS10Gia_Obj_t_", !16, i64 0}
!560 = !{!"p1 _ZTS10Gia_Rpr_t_", !16, i64 0}
!561 = !{!"p1 _ZTS10Vec_Str_t_", !16, i64 0}
!562 = !{!"p1 _ZTS10Abc_Cex_t_", !16, i64 0}
!563 = !{!"p1 _ZTS10Vec_Ptr_t_", !16, i64 0}
!564 = !{!"p1 _ZTS10Gia_Plc_t_", !16, i64 0}
!565 = !{!"p1 _ZTS10Gia_Man_t_", !16, i64 0}
!566 = !{!"p1 _ZTS10Vec_Flt_t_", !16, i64 0}
!567 = !{!"float", !6, i64 0}
!568 = !{!"p1 _ZTS10Vec_Vec_t_", !16, i64 0}
!569 = !{!"p1 _ZTS10Gia_Dat_t_", !16, i64 0}
!570 = !{!558, !47, i64 232}
!571 = !{!558, !5, i64 116}
!572 = !{!558, !5, i64 832}
!573 = !{!558, !15, i64 1008}
!574 = !{!558, !5, i64 24}
!575 = !{!558, !103, i64 0}
!576 = !{!558, !103, i64 8}
!577 = !{!558, !42, i64 64}
!578 = distinct !{!578, !9}
!579 = distinct !{!579, !9}
!580 = distinct !{!580, !9}
!581 = !{!558, !5, i64 48}
!582 = distinct !{!582, !9}
!583 = !{!558, !42, i64 72}
!584 = distinct !{!584, !9}
!585 = distinct !{!585, !9}
!586 = distinct !{!586, !9}
!587 = !{!558, !5, i64 16}
!588 = !{!589, !5, i64 28}
!589 = !{!"Exa6_Man_t_", !15, i64 0, !15, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !6, i64 40, !5, i64 32808, !5, i64 32812, !5, i64 32816, !76, i64 32824}
!590 = !{!589, !15, i64 0}
!591 = !{!589, !5, i64 24}
!592 = distinct !{!592, !9, !10, !11}
!593 = !{!589, !5, i64 36}
!594 = distinct !{!594, !9, !11, !10}
!595 = distinct !{!595, !9, !10, !11}
!596 = distinct !{!596, !9, !11, !10}
!597 = distinct !{!597, !9}
!598 = distinct !{!598, !9}
!599 = distinct !{!599, !9}
!600 = !{!589, !5, i64 16}
!601 = !{!589, !15, i64 8}
!602 = !{!589, !5, i64 20}
!603 = !{!589, !5, i64 32}
!604 = !{!589, !5, i64 32808}
!605 = !{!589, !5, i64 32812}
!606 = distinct !{!606, !9}
!607 = distinct !{!607, !9}
!608 = distinct !{!608, !9}
!609 = distinct !{!609, !9}
!610 = distinct !{!610, !9}
!611 = !{!589, !76, i64 32824}
!612 = !{!589, !5, i64 32816}
!613 = distinct !{!613, !9}
!614 = distinct !{!614, !9}
!615 = distinct !{!615, !9}
!616 = distinct !{!616, !9}
!617 = distinct !{!617, !9}
!618 = distinct !{!618, !9}
!619 = distinct !{!619, !9}
!620 = distinct !{!620, !9, !85}
!621 = distinct !{!621, !9}
!622 = distinct !{!622, !9}
!623 = distinct !{!623, !9}
!624 = distinct !{!624, !9, !10, !11}
!625 = distinct !{!625, !9, !11, !10}
!626 = distinct !{!626, !9}
!627 = distinct !{!627, !9}
!628 = distinct !{!628, !9}
!629 = distinct !{!629, !9}
!630 = distinct !{!630, !9}
!631 = distinct !{!631, !9}
!632 = distinct !{!632, !9}
!633 = distinct !{!633, !9}
!634 = distinct !{!634, !9}
!635 = distinct !{!635, !9, !10, !11}
!636 = distinct !{!636, !9, !10, !11}
!637 = distinct !{!637, !9, !11, !10}
!638 = distinct !{!638, !9, !11, !10}
!639 = distinct !{!639, !9, !10, !11}
!640 = distinct !{!640, !9, !11, !10}
!641 = distinct !{!641, !9, !10, !11}
!642 = distinct !{!642, !9, !11, !10}
!643 = distinct !{!643, !9}
!644 = distinct !{!644, !9}
!645 = distinct !{!645, !9}
!646 = distinct !{!646, !9}
!647 = distinct !{!647, !9}
!648 = distinct !{!648, !9}
!649 = distinct !{!649, !9}
!650 = distinct !{!650, !9}
!651 = distinct !{!651, !9}
!652 = distinct !{!652, !9, !10, !11}
!653 = distinct !{!653, !9, !10, !11}
!654 = distinct !{!654, !9, !11, !10}
!655 = distinct !{!655, !9, !11, !10}
!656 = distinct !{!656, !9}
!657 = distinct !{!657, !9}
!658 = distinct !{!658, !9}
!659 = distinct !{!659, !9}
!660 = distinct !{!660, !9, !10, !11}
!661 = distinct !{!661, !9, !11, !10}
!662 = distinct !{!662, !9}
!663 = distinct !{!663, !9}
!664 = distinct !{!664, !9, !10, !11}
!665 = distinct !{!665, !9, !11, !10}
!666 = distinct !{!666, !9, !10, !11}
!667 = distinct !{!667, !9, !11, !10}
!668 = distinct !{!668, !9, !10, !11}
!669 = distinct !{!669, !9, !11, !10}
!670 = distinct !{!670, !9}
!671 = distinct !{!671, !9}
!672 = distinct !{!672, !9}
!673 = distinct !{!673, !9}
!674 = distinct !{!674, !9}
!675 = distinct !{!675, !9}
!676 = distinct !{!676, !9}
!677 = distinct !{!677, !9}
!678 = distinct !{!678, !9}
!679 = distinct !{!679, !9}
!680 = !{!357, !5, i64 8}
!681 = distinct !{!681, !9}
!682 = distinct !{!682, !9}
!683 = distinct !{!683, !9}
!684 = distinct !{!684, !9}
!685 = distinct !{!685, !9}
!686 = !{!687, !5, i64 0}
!687 = !{!"Abc_RData_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !15, i64 16, !15, i64 24, !42, i64 32, !42, i64 40}
!688 = !{!687, !5, i64 4}
!689 = !{!687, !5, i64 12}
!690 = distinct !{!690, !9}
!691 = !{!42, !42, i64 0}
!692 = distinct !{!692, !9}
!693 = distinct !{!693, !9}
!694 = !{!687, !15, i64 16}
!695 = !{!687, !15, i64 24}
!696 = distinct !{!696, !9, !10, !11}
!697 = distinct !{!697, !79}
!698 = distinct !{!698, !9, !10}
!699 = distinct !{!699, !9}
!700 = !{!701}
!701 = distinct !{!701, !702}
!702 = distinct !{!702, !"LVerDomain"}
!703 = !{!704}
!704 = distinct !{!704, !702}
!705 = distinct !{!705, !9, !10, !11}
!706 = distinct !{!706, !79}
!707 = distinct !{!707, !9, !10}
!708 = distinct !{!708, !9}
!709 = !{!687, !5, i64 8}
!710 = distinct !{!710, !9}
!711 = distinct !{!711, !9}
!712 = distinct !{!712, !9}
!713 = distinct !{!713, !9}
!714 = distinct !{!714, !9}
!715 = distinct !{!715, !9}
!716 = distinct !{!716, !9}
!717 = distinct !{!717, !9}
!718 = distinct !{!718, !79}
!719 = !{!687, !42, i64 40}
!720 = !{!687, !42, i64 32}
!721 = distinct !{!721, !9}
!722 = distinct !{!722, !9}
!723 = distinct !{!723, !9}
!724 = distinct !{!724, !9}
!725 = distinct !{!725, !9}
!726 = distinct !{!726, !9}
!727 = distinct !{!727, !9, !10, !11}
!728 = distinct !{!728, !9, !11, !10}
!729 = distinct !{!729, !9}
!730 = distinct !{!730, !9}
!731 = distinct !{!731, !9}
!732 = distinct !{!732, !9}
!733 = distinct !{!733, !9}
!734 = distinct !{!734, !79}
!735 = distinct !{!735, !9}
!736 = distinct !{!736, !9}
!737 = distinct !{!737, !9}
!738 = distinct !{!738, !9}
!739 = distinct !{!739, !9}
!740 = distinct !{!740, !9, !741}
!741 = !{!"llvm.loop.peeled.count", i32 1}
!742 = distinct !{!742, !9}
!743 = !{!102, !5, i64 36}
!744 = !{!102, !5, i64 40}
!745 = !{!102, !5, i64 44}
!746 = !{!102, !5, i64 80}
!747 = !{!102, !5, i64 84}
!748 = !{!558, !5, i64 28}
!749 = !{!558, !5, i64 820}
!750 = !{!558, !47, i64 40}
end_hunk_1
