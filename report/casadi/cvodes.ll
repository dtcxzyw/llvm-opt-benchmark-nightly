inline.NumInlined: 100
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 36
begin_hunk_0_@cvSensEwtSet:bb.a
  br i1 %i.at, label %bb.g, label %cvSensEwtSetEE.exit

bb.g:                                             ; preds = %bb.f
  %i.au = load ptr, ptr %i.af, align 8, !tbaa !79
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i11
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !46
  tail call void @N_VInv(ptr noundef %i.au, ptr noundef %i.aw) #12
  %indvars.iv.next.i12 = add nuw nsw i64 %indvars.iv.i11, 1 ; 2 uses
  %i.ax = load i32, ptr %i.ac, align 4, !tbaa !130
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next.i12, %i.ay
  br i1 %i.az, label %bb.f, label %cvSensEwtSetEE.exit, !llvm.loop !291

bb.h:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !130
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i13, label %cvSensEwtSetEE.exit

.lr.ph.i13:                                       ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 248
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i13
  %indvars.iv.i14 = phi i64 [ 0, %.lr.ph.i13 ], [ %indvars.iv.next.i15, %bb.j ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i14
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !46
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !79
  tail call void @N_VAbs(ptr noundef %i.bh, ptr noundef %i.bi) #12
  %i.bj = load double, ptr %i.be, align 8, !tbaa !163
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !79 ; 2 uses
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !172
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i14
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !46
  tail call void @N_VLinearSum(double noundef %i.bj, ptr noundef %i.bk, double noundef 1.000000e+00, ptr noundef %i.bn, ptr noundef %i.bk) #12
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !79
  %i.bp = tail call double @N_VMin(ptr noundef %i.bo) #12
  %i.bq = fcmp ugt double %i.bp, 0.000000e+00
  br i1 %i.bq, label %bb.j, label %cvSensEwtSetEE.exit

bb.j:                                             ; preds = %bb.i
  %i.br = load ptr, ptr %i.bd, align 8, !tbaa !79
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i14
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !46
  tail call void @N_VInv(ptr noundef %i.br, ptr noundef %i.bt) #12
  %indvars.iv.next.i15 = add nuw nsw i64 %indvars.iv.i14, 1 ; 2 uses
  %i.bu = load i32, ptr %i.ba, align 4, !tbaa !130
  %i.bv = sext i32 %i.bu to i64
  %i.bw = icmp slt i64 %indvars.iv.next.i15, %i.bv
  br i1 %i.bw, label %bb.i, label %cvSensEwtSetEE.exit, !llvm.loop !292

cvSensEwtSetEE.exit:                              ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.c, %bb.h, %bb.e, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.h ], [ -1, %bb.f ], [ 0, %bb.b ], [ -1, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.g ], [ -1, %bb.i ], [ 0, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @cvQuadSensEwtSet(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load i32, ptr %i.a, align 8, !tbaa !193
  switch i32 %i.b, label %cvQuadSensEwtSetEE.exit [
    i32 4, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !178
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !130
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %cvQuadSensEwtSetEE.exit

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.l = load double, ptr %i.k, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46
  tail call void @N_VScale(double noundef %i.l, ptr noundef %i.n, ptr noundef %i.e) #12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.q = tail call fastcc i32 @cvQuadEwtSet(ptr noundef nonnull readonly %0, ptr noundef %i.e, ptr noundef %i.p)
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.c, label %cvQuadSensEwtSetEE.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.t = load double, ptr %i.s, align 8, !tbaa !49
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !46   ; 2 uses
  tail call void @N_VScale(double noundef %i.t, ptr noundef %i.u, ptr noundef %i.u) #12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.v = load i32, ptr %i.g, align 4, !tbaa !130
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next.i, %i.w
  br i1 %i.x, label %.lr.ph.i, label %cvQuadSensEwtSetEE.exit, !llvm.loop !293

bb.d:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !130
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i10, label %cvQuadSensEwtSetEE.exit

.lr.ph.i10:                                       ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i10
  %indvars.iv.i11 = phi i64 [ 0, %.lr.ph.i10 ], [ %indvars.iv.next.i12, %bb.f ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i11
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !46
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !116
  tail call void @N_VAbs(ptr noundef %i.af, ptr noundef %i.ag) #12
  %i.ah = load double, ptr %i.ac, align 8, !tbaa !194
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !116 ; 2 uses
  tail call void @N_VScale(double noundef %i.ah, ptr noundef %i.ai, ptr noundef %i.ai) #12
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !116 ; 2 uses
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !196
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i11
  %i.am = load double, ptr %i.al, align 8, !tbaa !49
  tail call void @N_VAddConst(ptr noundef %i.aj, double noundef %i.am, ptr noundef %i.aj) #12
  %i.an = load ptr, ptr %i.ab, align 8, !tbaa !116
  %i.ao = tail call double @N_VMin(ptr noundef %i.an) #12
  %i.ap = fcmp ugt double %i.ao, 0.000000e+00
  br i1 %i.ap, label %bb.f, label %cvQuadSensEwtSetEE.exit

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.ab, align 8, !tbaa !116
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i11
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !46
  tail call void @N_VInv(ptr noundef %i.aq, ptr noundef %i.as) #12
  %indvars.iv.next.i12 = add nuw nsw i64 %indvars.iv.i11, 1 ; 2 uses
  %i.at = load i32, ptr %i.y, align 4, !tbaa !130
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next.i12, %i.au
  br i1 %i.av, label %bb.e, label %cvQuadSensEwtSetEE.exit, !llvm.loop !294

bb.g:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !130
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i13, label %cvQuadSensEwtSetEE.exit

.lr.ph.i13:                                       ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 312
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i13
  %indvars.iv.i14 = phi i64 [ 0, %.lr.ph.i13 ], [ %indvars.iv.next.i15, %bb.i ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i14
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !46
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !116
  tail call void @N_VAbs(ptr noundef %i.bd, ptr noundef %i.be) #12
  %i.bf = load double, ptr %i.ba, align 8, !tbaa !194
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !116 ; 2 uses
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !202
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i14
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !46
  tail call void @N_VLinearSum(double noundef %i.bf, ptr noundef %i.bg, double noundef 1.000000e+00, ptr noundef %i.bj, ptr noundef %i.bg) #12
  %i.bk = load ptr, ptr %i.az, align 8, !tbaa !116
  %i.bl = tail call double @N_VMin(ptr noundef %i.bk) #12
  %i.bm = fcmp ugt double %i.bl, 0.000000e+00
  br i1 %i.bm, label %bb.i, label %cvQuadSensEwtSetEE.exit

bb.i:                                             ; preds = %bb.h
  %i.bn = load ptr, ptr %i.az, align 8, !tbaa !116
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i14
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !46
  tail call void @N_VInv(ptr noundef %i.bn, ptr noundef %i.bp) #12
  %indvars.iv.next.i15 = add nuw nsw i64 %indvars.iv.i14, 1 ; 2 uses
  %i.bq = load i32, ptr %i.aw, align 4, !tbaa !130
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp slt i64 %indvars.iv.next.i15, %i.br
  br i1 %i.bs, label %bb.h, label %cvQuadSensEwtSetEE.exit, !llvm.loop !295

cvQuadSensEwtSetEE.exit:                          ; preds = %bb.i, %bb.h, %bb.f, %bb.e, %bb.c, %.lr.ph.i, %bb.g, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.g ], [ -1, %bb.e ], [ 0, %bb.b ], [ -1, %.lr.ph.i ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.f ], [ -1, %bb.h ], [ 0, %bb.i ]
  ret i32 %.0
}

declare double @N_VWrmsNorm(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -54, 6) i32 @cvStep(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 8 uses
  %i.b = alloca [4 x double], align 16            ; 8 uses
  %i.c = alloca [4 x double], align 16            ; 8 uses
  %i.d = alloca [4 x double], align 16            ; 7 uses
  %i.e = alloca [4 x [4 x double]], align 16      ; 11 uses
  %i.f = alloca [5 x double], align 16            ; 8 uses
  %i.g = alloca [6 x [4 x double]], align 16      ; 17 uses
  %i.h = alloca [6 x [4 x double]], align 16      ; 16 uses
  %i.i = alloca [13 x double], align 16           ; 25 uses
  %i.j = alloca double, align 8                   ; 10 uses
  %i.k = alloca double, align 8                   ; 4 uses
  %i.l = alloca double, align 8                   ; 4 uses
  %i.m = alloca double, align 8                   ; 4 uses
  %i.n = alloca i32, align 4                      ; 10 uses
  %i.o = alloca i32, align 4                      ; 6 uses
  %i.p = alloca i32, align 4                      ; 8 uses
  %i.q = alloca i32, align 4                      ; 7 uses
  %i.r = alloca i32, align 4                      ; 7 uses
  %i.s = alloca i32, align 4                      ; 5 uses
  %i.t = alloca i32, align 4                      ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #12
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 11 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !144
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %.thread313, label %bb.b

.thread313:                                       ; preds = %bb.a
  store i32 0, ptr %i.p, align 4, !tbaa !37
  store i32 0, ptr %i.n, align 4, !tbaa !37
  store i32 0, ptr %i.s, align 4, !tbaa !37
  store i32 0, ptr %i.q, align 4, !tbaa !37
  store i32 0, ptr %i.r, align 4, !tbaa !37
  store i32 0, ptr %i.o, align 4, !tbaa !37
  br label %.loopexit344

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = load i32, ptr %i.w, align 8, !tbaa !131  ; 2 uses
  %i.y = icmp eq i32 %i.x, 2
  %i.z = icmp eq i32 %i.x, 3
  store i32 0, ptr %i.p, align 4, !tbaa !37
  store i32 0, ptr %i.n, align 4, !tbaa !37
  store i32 0, ptr %i.s, align 4, !tbaa !37
  store i32 0, ptr %i.q, align 4, !tbaa !37
  store i32 0, ptr %i.r, align 4, !tbaa !37
  store i32 0, ptr %i.o, align 4, !tbaa !37
  br i1 %i.z, label %.preheader343, label %.loopexit344

.preheader343:                                    ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !130
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %.loopexit344

.lr.ph:                                           ; preds = %.preheader343
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !154
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  store i32 0, ptr %i.af, align 4, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = load i32, ptr %i.aa, align 4, !tbaa !130
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %bb.c, label %.loopexit344, !llvm.loop !296

.loopexit344:                                     ; preds = %bb.c, %.preheader343, %.thread313, %bb.b
  %i.aj = phi i1 [ false, %.thread313 ], [ false, %bb.b ], [ true, %.preheader343 ], [ true, %bb.c ] ; 3 uses
  %i.ak = phi i1 [ false, %.thread313 ], [ %i.y, %bb.b ], [ false, %.preheader343 ], [ false, %bb.c ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 7 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !217
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.loopexit344
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !234
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !229
  %i.as = fcmp une double %i.ap, %i.ar
  br i1 %i.as, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 916 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !244 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !84 ; 2 uses
  %.not.i = icmp eq i32 %i.au, %i.aw
  br i1 %.not.i, label %cvAdjustParams.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = sub nsw i32 %i.au, %i.aw
  tail call fastcc void @cvAdjustOrder(ptr noundef nonnull %0, i32 noundef %i.ax)
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !244 ; 2 uses
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !84
  %i.az = add nsw i32 %i.ay, 1                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !85
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 924
  store i32 %i.az, ptr %i.bb, align 4, !tbaa !86
  br label %cvAdjustParams.exit

cvAdjustParams.exit:                              ; preds = %bb.e, %bb.f
  tail call fastcc void @cvRescale(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %cvAdjustParams.exit, %bb.d, %.loopexit344
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 26 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !83 ; 9 uses
  store i32 6, ptr %i.t, align 4, !tbaa !37
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 27 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 32 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 17 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 10 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 105 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 21 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 9 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 20 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 3 uses
  %scevgep.i.i = getelementptr i8, ptr %0, i64 1176
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 924 ; 9 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 12 uses
  %scevgep.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 13 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 9 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 20 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 28 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 32 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1780 ; 12 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1712 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 15 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 27 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1440 ; 12 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 50 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 20 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 8 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 14 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 22 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 44 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1672 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1744 ; 17 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 40 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 24 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 10 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1512 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 8 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 19 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 8 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 10 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 11 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %or.cond = or i1 %i.aj, %i.ak
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1388 ; 6 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 2 uses
end_hunk_0
begin_hunk_1_@cvStep:bb.a
  %i.ps = getelementptr i8, ptr %i.pq, i64 -32
  %wide.load915 = load <2 x double>, ptr %i.pr, align 8, !tbaa !49
  %wide.load916 = load <2 x double>, ptr %i.ps, align 8, !tbaa !49
  %i.pt = getelementptr i8, ptr %i.pq, i64 -8     ; 2 uses
  %i.pu = getelementptr i8, ptr %i.pq, i64 -24    ; 2 uses
  %wide.load919 = load <2 x double>, ptr %i.pt, align 8, !tbaa !49
  %wide.load920 = load <2 x double>, ptr %i.pu, align 8, !tbaa !49
  %reverse923 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load915, <2 x double> %i.pn, <2 x double> %wide.load919)
  %reverse924 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load916, <2 x double> %i.po, <2 x double> %wide.load920)
  store <2 x double> %reverse923, ptr %i.pt, align 8, !tbaa !49
  store <2 x double> %reverse924, ptr %i.pu, align 8, !tbaa !49
  %index.next925 = add nuw i64 %index914, 4       ; 2 uses
  %i.pv = icmp eq i64 %index.next925, %n.vec910
  br i1 %i.pv, label %middle.block926, label %vector.body913, !llvm.loop !315

middle.block926:                                  ; preds = %vector.body913
  %cmp.n927 = icmp eq i64 %indvars.iv.i.i, %n.vec910
  br i1 %cmp.n927, label %.loopexit944, label %scalar.ph906

scalar.ph906:                                     ; preds = %middle.block926, %.lr.ph68.i.i
  %indvars.iv77.i.i.ph = phi i64 [ %indvars.iv.i.i, %.lr.ph68.i.i ], [ %i.pm, %middle.block926 ] ; 5 uses
  %i.pw = getelementptr [8 x i8], ptr %i.bq, i64 %indvars.iv77.i.i.ph ; 3 uses
  %i.px = getelementptr i8, ptr %i.pw, i64 -8
  %i.py = load double, ptr %i.px, align 8, !tbaa !49
  %i.pz = load double, ptr %i.pw, align 8, !tbaa !49
  %i.qa = tail call double @llvm.fmuladd.f64(double %i.py, double %i.pl, double %i.pz)
  store double %i.qa, ptr %i.pw, align 8, !tbaa !49
  %i.qb = icmp samesign ugt i64 %indvars.iv77.i.i.ph, 1
  br i1 %i.qb, label %scalar.ph906.1, label %.loopexit944

scalar.ph906.1:                                   ; preds = %scalar.ph906
  %i.qc = getelementptr [8 x i8], ptr %i.bq, i64 %indvars.iv77.i.i.ph ; 2 uses
  %i.qd = getelementptr i8, ptr %i.qc, i64 -8     ; 2 uses
  %i.qe = getelementptr i8, ptr %i.qc, i64 -16
  %i.qf = load double, ptr %i.qe, align 8, !tbaa !49
  %i.qg = load double, ptr %i.qd, align 8, !tbaa !49
  %i.qh = tail call double @llvm.fmuladd.f64(double %i.qf, double %i.pl, double %i.qg)
  store double %i.qh, ptr %i.qd, align 8, !tbaa !49
  %i.qi = icmp eq i64 %indvars.iv77.i.i.ph, 3
  br i1 %i.qi, label %scalar.ph906.2, label %.loopexit944

scalar.ph906.2:                                   ; preds = %scalar.ph906.1
  %i.qj = getelementptr [8 x i8], ptr %i.bq, i64 %indvars.iv77.i.i.ph ; 2 uses
  %i.qk = getelementptr i8, ptr %i.qj, i64 -16    ; 2 uses
  %i.ql = getelementptr i8, ptr %i.qj, i64 -24
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !49
  %i.qn = load double, ptr %i.qk, align 8, !tbaa !49
  %i.qo = tail call double @llvm.fmuladd.f64(double %i.qm, double %i.pl, double %i.qn)
  store double %i.qo, ptr %i.qk, align 8, !tbaa !49
  br label %.loopexit944

.loopexit944:                                     ; preds = %scalar.ph906, %scalar.ph906.1, %scalar.ph906.2, %middle.block926
  %i.qp = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.qq = uitofp nneg i32 %i.qp to double
  %i.qr = fdiv double 1.000000e+00, %i.qq
  %i.qs = fsub double %.05765.i.i, %i.qr          ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge69.loopexit.i.i, label %.lr.ph68.i.i, !llvm.loop !316

._crit_edge69.loopexit.i.i:                       ; preds = %.loopexit944
  %.pre.i.i = load double, ptr %i.br, align 8, !tbaa !49
  br label %.lr.ph74.preheader.i.i

.lr.ph74.preheader.i.i:                           ; preds = %._crit_edge69.loopexit.i.i, %.preheader.i.i
  %.pre-phi.i.i = phi i64 [ %wide.trip.count.i.i, %._crit_edge69.loopexit.i.i ], [ 2, %.preheader.i.i ] ; 7 uses
  %i.qt = phi double [ %.pre.i.i, %._crit_edge69.loopexit.i.i ], [ 1.000000e+00, %.preheader.i.i ]
  %.057.lcssa.i.i = phi double [ %i.qs, %._crit_edge69.loopexit.i.i ], [ -1.000000e+00, %.preheader.i.i ]
  %.052.lcssa.i.i = phi double [ %i.pk, %._crit_edge69.loopexit.i.i ], [ %i.pg, %.preheader.i.i ]
  %i.qu = uitofp nneg i32 %i.hn to double         ; 2 uses
  %i.qv = fdiv double 1.000000e+00, %i.qu
  %i.qw = fsub double %.057.lcssa.i.i, %i.qv      ; 2 uses
  %i.qx = fneg double %i.qt                       ; 2 uses
  %i.qy = fsub double %i.qx, %i.qw                ; 5 uses
  %i.qz = getelementptr [8 x i8], ptr %0, i64 %.pre-phi.i.i
  %i.ra = getelementptr i8, ptr %i.qz, i64 992
  %i.rb = load double, ptr %i.ra, align 8, !tbaa !49
  %min.iters.check884 = icmp samesign ult i64 %.pre-phi.i.i, 4
  br i1 %min.iters.check884, label %.lr.ph74.i.i, label %vector.ph885

vector.ph885:                                     ; preds = %.lr.ph74.preheader.i.i
  %n.vec887 = and i64 %.pre-phi.i.i, 2147483644   ; 2 uses
  %i.rc = and i64 %.pre-phi.i.i, 3
  %broadcast.splatinsert888 = insertelement <2 x double> poison, double %i.qy, i64 0 ; 2 uses
  %i.rd = shufflevector <2 x double> %broadcast.splatinsert888, <2 x double> poison, <2 x i32> zeroinitializer
  %i.re = shufflevector <2 x double> %broadcast.splatinsert888, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body890

vector.body890:                                   ; preds = %vector.body890, %vector.ph885
  %index891 = phi i64 [ 0, %vector.ph885 ], [ %index.next902, %vector.body890 ] ; 2 uses
  %i.rf = sub i64 %.pre-phi.i.i, %index891
  %i.rg = getelementptr [8 x i8], ptr %i.bq, i64 %i.rf ; 4 uses
  %i.rh = getelementptr i8, ptr %i.rg, i64 -16
  %i.ri = getelementptr i8, ptr %i.rg, i64 -32
  %wide.load892 = load <2 x double>, ptr %i.rh, align 8, !tbaa !49
  %wide.load893 = load <2 x double>, ptr %i.ri, align 8, !tbaa !49
  %i.rj = getelementptr i8, ptr %i.rg, i64 -8     ; 2 uses
  %i.rk = getelementptr i8, ptr %i.rg, i64 -24    ; 2 uses
  %wide.load896 = load <2 x double>, ptr %i.rj, align 8, !tbaa !49
  %wide.load897 = load <2 x double>, ptr %i.rk, align 8, !tbaa !49
  %reverse900 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load892, <2 x double> %i.rd, <2 x double> %wide.load896)
  %reverse901 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load893, <2 x double> %i.re, <2 x double> %wide.load897)
  store <2 x double> %reverse900, ptr %i.rj, align 8, !tbaa !49
  store <2 x double> %reverse901, ptr %i.rk, align 8, !tbaa !49
  %index.next902 = add nuw i64 %index891, 4       ; 2 uses
  %i.rl = icmp eq i64 %index.next902, %n.vec887
  br i1 %i.rl, label %middle.block903, label %vector.body890, !llvm.loop !317

middle.block903:                                  ; preds = %vector.body890
  %cmp.n904 = icmp eq i64 %.pre-phi.i.i, %n.vec887
  br i1 %cmp.n904, label %.loopexit.i.loopexit.i, label %.lr.ph74.i.i

.lr.ph74.i.i:                                     ; preds = %middle.block903, %.lr.ph74.preheader.i.i
  %indvars.iv81.i.i.ph = phi i64 [ %.pre-phi.i.i, %.lr.ph74.preheader.i.i ], [ %i.rc, %middle.block903 ] ; 5 uses
  %i.rm = getelementptr [8 x i8], ptr %i.bq, i64 %indvars.iv81.i.i.ph ; 3 uses
  %i.rn = getelementptr i8, ptr %i.rm, i64 -8
  %i.ro = load double, ptr %i.rn, align 8, !tbaa !49
  %i.rp = load double, ptr %i.rm, align 8, !tbaa !49
  %i.rq = tail call double @llvm.fmuladd.f64(double %i.ro, double %i.qy, double %i.rp)
  store double %i.rq, ptr %i.rm, align 8, !tbaa !49
  %i.rr = icmp samesign ugt i64 %indvars.iv81.i.i.ph, 1
  br i1 %i.rr, label %.lr.ph74.i.i.1, label %.loopexit.i.loopexit.i

.lr.ph74.i.i.1:                                   ; preds = %.lr.ph74.i.i
  %i.rs = getelementptr [8 x i8], ptr %i.bq, i64 %indvars.iv81.i.i.ph ; 2 uses
  %i.rt = getelementptr i8, ptr %i.rs, i64 -8     ; 2 uses
  %i.ru = getelementptr i8, ptr %i.rs, i64 -16
  %i.rv = load double, ptr %i.ru, align 8, !tbaa !49
  %i.rw = load double, ptr %i.rt, align 8, !tbaa !49
  %i.rx = tail call double @llvm.fmuladd.f64(double %i.rv, double %i.qy, double %i.rw)
  store double %i.rx, ptr %i.rt, align 8, !tbaa !49
  %i.ry = icmp eq i64 %indvars.iv81.i.i.ph, 3
  br i1 %i.ry, label %.lr.ph74.i.i.2, label %.loopexit.i.loopexit.i

.lr.ph74.i.i.2:                                   ; preds = %.lr.ph74.i.i.1
  %i.rz = getelementptr [8 x i8], ptr %i.bq, i64 %indvars.iv81.i.i.ph ; 2 uses
  %i.sa = getelementptr i8, ptr %i.rz, i64 -16    ; 2 uses
  %i.sb = getelementptr i8, ptr %i.rz, i64 -24
  %i.sc = load double, ptr %i.sb, align 8, !tbaa !49
  %i.sd = load double, ptr %i.sa, align 8, !tbaa !49
  %i.se = tail call double @llvm.fmuladd.f64(double %i.sc, double %i.qy, double %i.sd)
  store double %i.se, ptr %i.sa, align 8, !tbaa !49
  br label %.loopexit.i.loopexit.i

.loopexit.i.loopexit.i:                           ; preds = %.lr.ph74.i.i, %.lr.ph74.i.i.1, %.lr.ph74.i.i.2, %middle.block903
  %i.sf = fadd double %.052.lcssa.i.i, %i.rb      ; 2 uses
  %i.sg = fdiv double %i.pg, %i.sf                ; 2 uses
  %i.sh = fsub double %i.qx, %i.sg
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.loopexit.i, %._crit_edge..loopexit_crit_edge.i.i
  %.pre-phi86.i.i = phi double [ %.pre85.i.i, %._crit_edge..loopexit_crit_edge.i.i ], [ %i.qu, %.loopexit.i.loopexit.i ]
  %.158.i.i = phi double [ -1.000000e+00, %._crit_edge..loopexit_crit_edge.i.i ], [ %i.qw, %.loopexit.i.loopexit.i ] ; 4 uses
  %.056.i.i = phi double [ -1.000000e+00, %._crit_edge..loopexit_crit_edge.i.i ], [ %i.sh, %.loopexit.i.loopexit.i ] ; 3 uses
  %.055.i.i = phi double [ 1.000000e+00, %._crit_edge..loopexit_crit_edge.i.i ], [ %i.sg, %.loopexit.i.loopexit.i ] ; 2 uses
  %.054.i.i = phi double [ 1.000000e+00, %._crit_edge..loopexit_crit_edge.i.i ], [ %i.qy, %.loopexit.i.loopexit.i ] ; 2 uses
  %.153.i.i = phi double [ %i.pc, %._crit_edge..loopexit_crit_edge.i.i ], [ %i.sf, %.loopexit.i.loopexit.i ]
  %i.si = fsub double 1.000000e+00, %.056.i.i
  %i.sj = fadd double %.158.i.i, %i.si            ; 2 uses
  %i.sk = tail call double @llvm.fmuladd.f64(double %.pre-phi86.i.i, double %i.sj, double 1.000000e+00) ; 3 uses
  %i.sl = fmul double %.158.i.i, %i.sk
  %i.sm = fdiv double %i.sj, %i.sl
  %i.sn = tail call double @SUNRabs(double noundef %i.sm) #12
  store double %i.sn, ptr %i.bs, align 8, !tbaa !49
  %i.so = fmul double %.054.i.i, %i.sk
  %i.sp = load i32, ptr %i.bg, align 8, !tbaa !84
  %i.sq = sext i32 %i.sp to i64
  %i.sr = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.sq
  %i.ss = load double, ptr %i.sr, align 8, !tbaa !49
  %i.st = fmul double %.055.i.i, %i.ss
  %i.su = fdiv double %i.so, %i.st
  %i.sv = tail call double @SUNRabs(double noundef %i.su) #12
  store double %i.sv, ptr %i.bt, align 8, !tbaa !49
  %i.sw = load i32, ptr %i.bu, align 4, !tbaa !86
  %i.sx = icmp eq i32 %i.sw, 1
  br i1 %i.sx, label %bb.y, label %cvSetBDF.exit.i

bb.y:                                             ; preds = %.loopexit.i.i
  %i.sy = load i32, ptr %i.bg, align 8, !tbaa !84 ; 4 uses
  %i.sz = icmp sgt i32 %i.sy, 1
  br i1 %i.sz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ta = zext nneg i32 %i.sy to i64
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.ta
  %i.tc = load double, ptr %i.tb, align 8, !tbaa !49
  %i.td = fdiv double %.054.i.i, %i.tc
  %i.te = uitofp nneg i32 %i.sy to double
  %i.tf = fdiv double 1.000000e+00, %i.te
  %i.tg = fadd double %.158.i.i, %i.tf            ; 2 uses
  %i.th = fadd double %.056.i.i, %.055.i.i
  %i.ti = fsub double 1.000000e+00, %i.th
  %i.tj = fadd double %i.ti, %i.tg
  %i.tk = fdiv double %i.tj, %i.tg
  %i.tl = fmul double %i.tk, %i.td
  %i.tm = tail call double @SUNRabs(double noundef %i.tl) #12
  %.pre.i.i.i = load i32, ptr %i.bg, align 8, !tbaa !84
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.tn = phi i32 [ %.pre.i.i.i, %bb.z ], [ %i.sy, %bb.y ] ; 3 uses
  %.sink.i.i.i = phi double [ %i.tm, %bb.z ], [ 1.000000e+00, %bb.y ]
  store double %.sink.i.i.i, ptr %i.bv, align 8, !tbaa !49
  %i.to = sext i32 %i.tn to i64
  %i.tp = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.to
  %i.tq = load double, ptr %i.tp, align 8, !tbaa !49
  %i.tr = fadd double %.153.i.i, %i.tq
  %i.ts = load double, ptr %i.be, align 8, !tbaa !229
  %1 = add nsw i32 %i.tn, 1
  %2 = sitofp i32 %1 to double
  %3 = add nsw i32 %i.tn, 2
  %4 = sitofp i32 %3 to double
  %5 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.ts, i64 1
  %i.tt = insertelement <2 x double> poison, double %2, i64 0
  %i.tu = insertelement <2 x double> %i.tt, double %i.tr, i64 1
  %i.tv = fdiv <2 x double> %5, %i.tu             ; 3 uses
  %i.tw = extractelement <2 x double> %i.tv, i64 1
  %i.tx = fsub double %i.tw, %.056.i.i
  %i.ty = fadd double %i.tx, 1.000000e+00
  %6 = insertelement <2 x double> poison, double %.158.i.i, i64 0
  %i.tz = insertelement <2 x double> %6, double %4, i64 1 ; 2 uses
  %i.ua = fsub <2 x double> %i.tz, %i.tv          ; 2 uses
  %i.ub = fmul <2 x double> %i.tz, %i.tv
  %i.uc = extractelement <2 x double> %i.ua, i64 0
  %i.ud = fadd double %i.uc, %i.ty
  %i.ue = fdiv double %i.ud, %i.sk
  %shift = shufflevector <2 x double> %i.ub, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.ua, %shift
  %i.uf = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ug = fdiv double %i.ue, %i.uf
  %i.uh = tail call double @SUNRabs(double noundef %i.ug) #12
  store double %i.uh, ptr %i.bx, align 8, !tbaa !49
  br label %cvSetBDF.exit.i

cvSetBDF.exit.i:                                  ; preds = %bb.aa, %.loopexit.i.i
  %i.ui = load double, ptr %i.by, align 8, !tbaa !30
  %i.uj = load double, ptr %i.bs, align 8, !tbaa !49
  %i.uk = fdiv double %i.ui, %i.uj
  store double %i.uk, ptr %i.bz, align 8, !tbaa !49
  br label %bb.ab

bb.ab:                                            ; preds = %cvSetBDF.exit.i, %cvSetAdams.exit.i, %cvPredict.exit
  %i.ul = load double, ptr %i.br, align 8, !tbaa !49
  %i.um = fdiv double 1.000000e+00, %i.ul         ; 2 uses
  store double %i.um, ptr %i.cb, align 8, !tbaa !318
  %i.un = load double, ptr %i.be, align 8, !tbaa !229
  %i.uo = fmul double %i.um, %i.un                ; 3 uses
  store double %i.uo, ptr %i.cc, align 8, !tbaa !319
  %i.up = load i64, ptr %i.al, align 8, !tbaa !217 ; 3 uses
  %i.uq = icmp eq i64 %i.up, 0                    ; 2 uses
  br i1 %i.uq, label %.thread.i, label %bb.ac

.thread.i:                                        ; preds = %bb.ab
  store double %i.uo, ptr %i.cd, align 8, !tbaa !320
  br label %cvSet.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ur = icmp sgt i64 %i.up, 0
  br i1 %i.ur, label %bb.ad, label %cvSet.exit

bb.ad:                                            ; preds = %bb.ac
  %i.us = load double, ptr %i.cd, align 8, !tbaa !320
  %i.ut = fdiv double %i.uo, %i.us
  br label %cvSet.exit

cvSet.exit:                                       ; preds = %.thread.i, %bb.ac, %bb.ad
  %i.uu = phi double [ %i.ut, %bb.ad ], [ 1.000000e+00, %bb.ac ], [ 1.000000e+00, %.thread.i ] ; 2 uses
  store double %i.uu, ptr %i.ce, align 8, !tbaa !321
  %i.uv = load i32, ptr %i.t, align 4, !tbaa !37  ; 3 uses
  %i.uw = load i32, ptr %i.cf, align 4, !tbaa !21
  switch i32 %i.uw, label %cvNls.exit [
    i32 1, label %bb.ae
    i32 2, label %bb.be
  ]

bb.ae:                                            ; preds = %cvSet.exit
  %i.ux = load i32, ptr %i.u, align 8, !tbaa !144
  %.not.i.i197 = icmp eq i32 %i.ux, 0
  br i1 %.not.i.i197, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.uy = load i32, ptr %i.cg, align 8, !tbaa !131
  %i.uz = icmp eq i32 %i.uy, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.va = phi i1 [ false, %bb.ae ], [ %i.uz, %bb.af ] ; 5 uses
  store double 1.000000e+00, ptr %i.cn, align 8, !tbaa !322
  %i.vb = load ptr, ptr %i.cp, align 8, !tbaa !54
  %i.vc = load double, ptr %i.bc, align 8, !tbaa !83
  %i.vd = load ptr, ptr %i.bi, align 8, !tbaa !46
  %i.ve = load ptr, ptr %i.cj, align 8, !tbaa !79
  %i.vf = load ptr, ptr %i.cr, align 8, !tbaa !55
  %i.vg = tail call i32 %i.vb(double noundef %i.vc, ptr noundef %i.vd, ptr noundef %i.ve, ptr noundef %i.vf) #12, !inline_history !323 ; 2 uses
  %i.vh = load i64, ptr %i.cs, align 8, !tbaa !224
  %i.vi = add nsw i64 %i.vh, 1
  store i64 %i.vi, ptr %i.cs, align 8, !tbaa !224
  %i.vj = icmp slt i32 %i.vg, 0
  br i1 %i.vj, label %cvNls.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not168.i.i = icmp eq i32 %i.vg, 0
  br i1 %.not168.i.i, label %bb.ai, label %cvNls.exit

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.va, label %bb.aj, label %.thread188.i.i

.thread188.i.i:                                   ; preds = %bb.ai
  %i.vk = load ptr, ptr %i.ch, align 8, !tbaa !78
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.vk) #12
  br label %.loopexit202.i.i.preheader

bb.aj:                                            ; preds = %bb.ai
  %i.vl = load ptr, ptr %i.cq, align 8, !tbaa !80 ; 2 uses
  %i.vm = load ptr, ptr %i.cu, align 8, !tbaa !149
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !46 ; 2 uses
  %i.vo = load double, ptr %i.bc, align 8, !tbaa !83 ; 2 uses
  %i.vp = load ptr, ptr %i.bi, align 8, !tbaa !46 ; 2 uses
  %i.vq = load ptr, ptr %i.cj, align 8, !tbaa !79 ; 2 uses
  %i.vr = load ptr, ptr %i.bm, align 8, !tbaa !134 ; 2 uses
  %i.vs = load ptr, ptr %i.ct, align 8, !tbaa !148 ; 2 uses
  %i.vt = load i32, ptr %i.cv, align 4, !tbaa !35
  %i.vu = icmp eq i32 %i.vt, 2
  br i1 %i.vu, label %bb.ak, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.aj
  %i.vv = load i32, ptr %i.bl, align 4, !tbaa !130 ; 2 uses
  %i.vw = icmp sgt i32 %i.vv, 0
  br i1 %i.vw, label %.lr.ph.i.i.i205, label %.thread.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.vx = load ptr, ptr %i.cz, align 8, !tbaa !32
  %i.vy = load i32, ptr %i.bl, align 4, !tbaa !130
  %i.vz = load ptr, ptr %i.cx, align 8, !tbaa !132
  %i.wa = tail call i32 %i.vx(i32 noundef %i.vy, double noundef %i.vo, ptr noundef %i.vp, ptr noundef %i.vq, ptr noundef %i.vr, ptr noundef %i.vs, ptr noundef %i.vz, ptr noundef %i.vl, ptr noundef %i.vn) #12, !inline_history !324
  %i.wb = load i64, ptr %i.cy, align 8, !tbaa !246
  %i.wc = add nsw i64 %i.wb, 1
  store i64 %i.wc, ptr %i.cy, align 8, !tbaa !246
  br label %cvSensRhsWrapper.exit.i.i

bb.al:                                            ; preds = %.lr.ph.i.i.i205
  %indvars.iv.next.i.i.i207 = add nuw nsw i64 %indvars.iv.i.i.i206, 1 ; 2 uses
  %i.wd = load i32, ptr %i.bl, align 4, !tbaa !130 ; 2 uses
  %i.we = sext i32 %i.wd to i64
  %i.wf = icmp slt i64 %indvars.iv.next.i.i.i207, %i.we
  br i1 %i.wf, label %.lr.ph.i.i.i205, label %.thread.i.i, !llvm.loop !247

.lr.ph.i.i.i205:                                  ; preds = %.preheader.i.i.i, %bb.al
  %indvars.iv.i.i.i206 = phi i64 [ %indvars.iv.next.i.i.i207, %bb.al ], [ 0, %.preheader.i.i.i ] ; 4 uses
  %i.wg = phi i32 [ %i.wd, %bb.al ], [ %i.vv, %.preheader.i.i.i ]
  %i.wh = load ptr, ptr %i.cw, align 8, !tbaa !33
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.vr, i64 %indvars.iv.i.i.i206
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !46
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.vs, i64 %indvars.iv.i.i.i206
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !46
  %i.wm = load ptr, ptr %i.cx, align 8, !tbaa !132
  %i.wn = trunc nuw nsw i64 %indvars.iv.i.i.i206 to i32
  %i.wo = tail call i32 %i.wh(i32 noundef %i.wg, double noundef %i.vo, ptr noundef %i.vp, ptr noundef %i.vq, i32 noundef %i.wn, ptr noundef %i.wj, ptr noundef %i.wl, ptr noundef %i.wm, ptr noundef %i.vl, ptr noundef %i.vn) #12, !inline_history !324 ; 2 uses
  %i.wp = load i64, ptr %i.cy, align 8, !tbaa !246
  %i.wq = add nsw i64 %i.wp, 1
  store i64 %i.wq, ptr %i.cy, align 8, !tbaa !246
  %.not.i.i.i = icmp eq i32 %i.wo, 0
  br i1 %.not.i.i.i, label %bb.al, label %cvSensRhsWrapper.exit.i.i

cvSensRhsWrapper.exit.i.i:                        ; preds = %.lr.ph.i.i.i205, %bb.ak
  %.1.i.i.i = phi i32 [ %i.wa, %bb.ak ], [ %i.wo, %.lr.ph.i.i.i205 ] ; 2 uses
  %i.wr = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.wr, label %cvNls.exit, label %bb.am

bb.am:                                            ; preds = %cvSensRhsWrapper.exit.i.i
  %.not169.i.i = icmp eq i32 %.1.i.i.i, 0
  br i1 %.not169.i.i, label %.thread.i.i, label %cvNls.exit

.thread.i.i:                                      ; preds = %bb.al, %bb.am, %.preheader.i.i.i
  %i.ws = load ptr, ptr %i.ch, align 8, !tbaa !78
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.ws) #12
  %i.wt = load i32, ptr %i.bl, align 4, !tbaa !130
  %i.wu = icmp sgt i32 %i.wt, 0
  br i1 %i.wu, label %.lr.ph.i.i, label %.loopexit202.i.i.preheader

.lr.ph.i.i:                                       ; preds = %.thread.i.i, %.lr.ph.i.i
  %indvars.iv.i.i203 = phi i64 [ %indvars.iv.next.i.i204, %.lr.ph.i.i ], [ 0, %.thread.i.i ] ; 2 uses
  %i.wv = load ptr, ptr %i.dd, align 8, !tbaa !147
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %indvars.iv.i.i203
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !46
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.wx) #12
  %indvars.iv.next.i.i204 = add nuw nsw i64 %indvars.iv.i.i203, 1 ; 2 uses
  %i.wy = load i32, ptr %i.bl, align 4, !tbaa !130
  %i.wz = sext i32 %i.wy to i64
  %i.xa = icmp slt i64 %indvars.iv.next.i.i204, %i.wz
  br i1 %i.xa, label %.lr.ph.i.i, label %.loopexit202.i.i.preheader, !llvm.loop !325

.loopexit202.i.i.preheader:                       ; preds = %.lr.ph.i.i, %.thread.i.i, %.thread188.i.i
  br label %.loopexit202.i.i

.loopexit202.i.i:                                 ; preds = %.loopexit202.i.i.backedge, %.loopexit202.i.i.preheader
  %.0158.i.i = phi double [ 0.000000e+00, %.loopexit202.i.i.preheader ], [ %.1159194.i.i, %.loopexit202.i.i.backedge ]
  %.0157.i.i = phi double [ 0.000000e+00, %.loopexit202.i.i.preheader ], [ %i.aam, %.loopexit202.i.i.backedge ] ; 2 uses
  %.0156.i.i = phi i32 [ 0, %.loopexit202.i.i.preheader ], [ %i.aby, %.loopexit202.i.i.backedge ] ; 3 uses
  %i.xb = load i64, ptr %i.dj, align 8, !tbaa !93
  %i.xc = add nsw i64 %i.xb, 1
  store i64 %i.xc, ptr %i.dj, align 8, !tbaa !93
  %i.xd = load double, ptr %i.be, align 8, !tbaa !229
  %i.xe = load ptr, ptr %i.cj, align 8, !tbaa !79 ; 2 uses
  %i.xf = load ptr, ptr %i.dg, align 8, !tbaa !46
  tail call void @N_VLinearSum(double noundef %i.xd, ptr noundef %i.xe, double noundef -1.000000e+00, ptr noundef %i.xf, ptr noundef %i.xe) #12
  %i.xg = load double, ptr %i.cb, align 8, !tbaa !318
  %i.xh = load ptr, ptr %i.cj, align 8, !tbaa !79 ; 2 uses
  tail call void @N_VScale(double noundef %i.xg, ptr noundef %i.xh, ptr noundef %i.xh) #12
  %i.xi = load ptr, ptr %i.bi, align 8, !tbaa !46
  %i.xj = load ptr, ptr %i.cj, align 8, !tbaa !79
  %i.xk = load ptr, ptr %i.ci, align 8, !tbaa !214
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.xi, double noundef 1.000000e+00, ptr noundef %i.xj, ptr noundef %i.xk) #12
  br i1 %i.va, label %.preheader.i.i200, label %.critedge.i.i

.preheader.i.i200:                                ; preds = %.loopexit202.i.i
  %i.xl = load i32, ptr %i.bl, align 4, !tbaa !130
  %i.xm = icmp sgt i32 %i.xl, 0
  br i1 %i.xm, label %.lr.ph215.i.i, label %._crit_edge.i.i

.lr.ph215.i.i:                                    ; preds = %.preheader.i.i200, %.lr.ph215.i.i
end_hunk_1
begin_hunk_2_@cvStep:bb.a
  store <2 x double> %i.cpx, ptr %i.cpr, align 8, !tbaa !49
  %i.cpy = load <2 x double>, ptr %i.cpu, align 8, !tbaa !49
  store <2 x double> %i.cpy, ptr %i.cpt, align 8, !tbaa !49
  %i.cpz = getelementptr i8, ptr %0, i64 1904
  %i.cqa = load <2 x double>, ptr %i.cpv, align 8, !tbaa !49
  store <2 x double> %i.cqa, ptr %i.cpu, align 8, !tbaa !49
  %i.cqb = getelementptr i8, ptr %0, i64 2008     ; 2 uses
  %i.cqc = load double, ptr %i.cqb, align 8, !tbaa !49
  %i.cqd = getelementptr i8, ptr %0, i64 2040
  store double %i.cqc, ptr %i.cqd, align 8, !tbaa !49
  %i.cqe = getelementptr i8, ptr %0, i64 1976     ; 2 uses
  %i.cqf = load double, ptr %i.cqe, align 8, !tbaa !49
  store double %i.cqf, ptr %i.cqb, align 8, !tbaa !49
  %i.cqg = getelementptr i8, ptr %0, i64 1944     ; 2 uses
  %i.cqh = load double, ptr %i.cqg, align 8, !tbaa !49
  store double %i.cqh, ptr %i.cqe, align 8, !tbaa !49
  %i.cqi = getelementptr i8, ptr %0, i64 1912
  %i.cqj = load double, ptr %i.cqi, align 8, !tbaa !49
  store double %i.cqj, ptr %i.cqg, align 8, !tbaa !49
  %i.cqk = add nsw i32 %i.cpp, -1                 ; 2 uses
  %min.iters.check930 = icmp ult i32 %i.cpp, 9
  br i1 %min.iters.check930, label %.lr.ph.i306.preheader, label %vector.ph931

vector.ph931:                                     ; preds = %.lr.ph.preheader.i
  %n.vec933 = and i32 %i.cqk, -8                  ; 3 uses
  %i.cql = or disjoint i32 %n.vec933, 1
  br label %vector.body934

vector.body934:                                   ; preds = %vector.body934, %vector.ph931
  %index935 = phi i32 [ 0, %vector.ph931 ], [ %index.next938, %vector.body934 ]
  %vec.ind936 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph931 ], [ %vec.ind.next939, %vector.body934 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph931 ], [ %i.cqm, %vector.body934 ]
  %vec.phi937 = phi <4 x i32> [ splat (i32 1), %vector.ph931 ], [ %i.cqn, %vector.body934 ]
  %step.add = add nuw nsw <4 x i32> %vec.ind936, splat (i32 4)
  %i.cqm = mul <4 x i32> %vec.phi, %vec.ind936    ; 2 uses
  %i.cqn = mul <4 x i32> %vec.phi937, %step.add   ; 2 uses
  %index.next938 = add nuw i32 %index935, 8       ; 2 uses
  %vec.ind.next939 = add nuw nsw <4 x i32> %vec.ind936, splat (i32 8)
  %i.cqo = icmp eq i32 %index.next938, %n.vec933
  br i1 %i.cqo, label %middle.block940, label %vector.body934, !llvm.loop !393

middle.block940:                                  ; preds = %vector.body934
  %bin.rdx = mul <4 x i32> %i.cqn, %i.cqm
  %i.cqp = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n941 = icmp eq i32 %i.cqk, %n.vec933
  br i1 %cmp.n941, label %._crit_edge.i307, label %.lr.ph.i306.preheader

.lr.ph.i306.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block940
  %.186.i.ph = phi i32 [ 1, %.lr.ph.preheader.i ], [ %i.cql, %middle.block940 ]
  %.07085.i.ph = phi i32 [ 1, %.lr.ph.preheader.i ], [ %i.cqp, %middle.block940 ]
  br label %.lr.ph.i306

.lr.ph.i306:                                      ; preds = %.lr.ph.i306.preheader, %.lr.ph.i306
  %.186.i = phi i32 [ %i.cqr, %.lr.ph.i306 ], [ %.186.i.ph, %.lr.ph.i306.preheader ] ; 2 uses
  %.07085.i = phi i32 [ %i.cqq, %.lr.ph.i306 ], [ %.07085.i.ph, %.lr.ph.i306.preheader ]
  %i.cqq = mul nuw nsw i32 %.07085.i, %.186.i     ; 2 uses
  %i.cqr = add nuw nsw i32 %.186.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cqr, %i.cpp
  br i1 %exitcond.not.i, label %._crit_edge.i307, label %.lr.ph.i306, !llvm.loop !394

._crit_edge.i307:                                 ; preds = %.lr.ph.i306, %middle.block940
  %.lcssa763 = phi i32 [ %i.cqp, %middle.block940 ], [ %i.cqq, %.lr.ph.i306 ] ; 2 uses
  %i.cqs = mul nuw nsw i32 %.lcssa763, %i.cpp     ; 2 uses
  %i.cqt = add nuw nsw i32 %i.cpp, 1
  %i.cqu = mul nuw nsw i32 %i.cqs, %i.cqt
  %i.cqv = uitofp nneg i32 %i.cqu to double
  %i.cqw = load double, ptr %i.dn, align 8, !tbaa !329
  %i.cqx = fmul double %i.cqw, %i.cqv
  %i.cqy = load double, ptr %i.bt, align 8, !tbaa !49 ; 2 uses
  %i.cqz = fcmp ogt double %i.cqy, 1.000000e-10
  %i.cra = select i1 %i.cqz, double %i.cqy, double 1.000000e-10
  %i.crb = uitofp nneg i32 %i.cqs to double
  %i.crc = zext nneg i32 %i.cpp to i64
  %i.crd = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.crc
  %i.cre = load ptr, ptr %i.crd, align 8, !tbaa !46
  %i.crf = load ptr, ptr %i.di, align 8, !tbaa !52
  %i.crg = tail call double @N_VWrmsNorm(ptr noundef %i.cre, ptr noundef %i.crf) #12
  %i.crh = uitofp nneg i32 %.lcssa763 to double
  %i.cri = load i32, ptr %i.bg, align 8, !tbaa !84
  %i.crj = sext i32 %i.cri to i64
  %i.crk = getelementptr [8 x i8], ptr %i.bi, i64 %i.crj
  %i.crl = getelementptr i8, ptr %i.crk, i64 -8
  %i.crm = load ptr, ptr %i.crl, align 8, !tbaa !46
  %i.crn = load ptr, ptr %i.di, align 8, !tbaa !52
  %i.cro = tail call double @N_VWrmsNorm(ptr noundef %i.crm, ptr noundef %i.crn) #12
  %i.crp = fmul double %i.cro, %i.crh             ; 2 uses
  %i.crq = fmul double %i.crp, %i.crp
  store double %i.crq, ptr %i.cpv, align 8, !tbaa !49
  %i.crr = fdiv double %i.cqx, %i.cra
  %i.crs = fmul double %i.crg, %i.crb
  %i.crt = insertelement <2 x double> poison, double %i.crs, i64 0
  %i.cru = insertelement <2 x double> %i.crt, double %i.crr, i64 1 ; 2 uses
  %i.crv = fmul <2 x double> %i.cru, %i.cru
  store <2 x double> %i.crv, ptr %i.cpz, align 8, !tbaa !49
  %.pr.i = load i32, ptr %i.bg, align 8, !tbaa !84
  br label %bb.jc

bb.jc:                                            ; preds = %._crit_edge.i307, %bb.jb
  %i.crw = phi i32 [ %.pr.i, %._crit_edge.i307 ], [ %i.cpp, %bb.jb ] ; 3 uses
  %i.crx = getelementptr inbounds nuw i8, ptr %0, i64 916 ; 2 uses
  %i.cry = load i32, ptr %i.crx, align 4, !tbaa !244
  %.not.i298 = icmp slt i32 %i.cry, %i.crw
  br i1 %.not.i298, label %bb.ka, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.crz = icmp sgt i32 %i.crw, 2
  br i1 %i.crz, label %bb.je, label %cvBDFStab.exit

bb.je:                                            ; preds = %bb.jd
  %i.csa = load i32, ptr %i.bxi, align 8, !tbaa !96
  %i.csb = add nuw nsw i32 %i.crw, 5
  %.not75.i = icmp slt i32 %i.csa, %i.csb
  br i1 %.not75.i, label %cvBDFStab.exit, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.csc = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.csd = getelementptr inbounds nuw i8, ptr %0, i64 1888
  %i.cse = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.csf = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.csg = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.csh = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.csi = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.csj = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.csk = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %i.csl = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.csm = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jh, %bb.jf
  %indvars.iv.i.i299 = phi i64 [ 1, %bb.jf ], [ %indvars.iv.next.i.i300, %bb.jh ] ; 17 uses
  %i.csn = getelementptr inbounds nuw [8 x i8], ptr %i.csd, i64 %indvars.iv.i.i299 ; 2 uses
  %i.cso = load double, ptr %i.csn, align 8, !tbaa !49 ; 5 uses
  %invariant.gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.csc, i64 %indvars.iv.i.i299 ; 4 uses
  %i.csp = fcmp olt double %i.cso, 0.000000e+00
  %i.csq = select i1 %i.csp, double 0.000000e+00, double %i.cso ; 2 uses
  %gep.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 64
  %i.csr = load double, ptr %gep.1.i.i, align 8, !tbaa !49 ; 6 uses
  %i.css = fcmp olt double %i.cso, %i.csr
  %.0308..1.i.i = select i1 %i.css, double %i.cso, double %i.csr ; 2 uses
  %i.cst = fcmp ogt double %i.csq, %i.csr
  %i.csu = select i1 %i.cst, double %i.csq, double %i.csr ; 2 uses
  %gep.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 96
  %i.csv = load double, ptr %gep.2.i.i, align 8, !tbaa !49 ; 6 uses
  %i.csw = fcmp olt double %.0308..1.i.i, %i.csv
  %.0308..2.i.i = select i1 %i.csw, double %.0308..1.i.i, double %i.csv ; 2 uses
  %i.csx = fcmp ogt double %i.csu, %i.csv
  %i.csy = select i1 %i.csx, double %i.csu, double %i.csv ; 2 uses
  %gep.3.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 128
  %i.csz = load double, ptr %gep.3.i.i, align 8, !tbaa !49 ; 6 uses
  %i.cta = fcmp olt double %.0308..2.i.i, %i.csz
  %.0308..3.i.i = select i1 %i.cta, double %.0308..2.i.i, double %i.csz ; 2 uses
  %i.ctb = fcmp ogt double %i.csy, %i.csz
  %i.ctc = select i1 %i.ctb, double %i.csy, double %i.csz ; 2 uses
  %gep.4.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 160
  %i.ctd = load double, ptr %gep.4.i.i, align 8, !tbaa !49 ; 5 uses
  %i.cte = fcmp olt double %.0308..3.i.i, %i.ctd
  %.0308..4.i.i = select i1 %i.cte, double %.0308..3.i.i, double %i.ctd
  %i.ctf = fcmp ogt double %i.ctc, %i.ctd
  %i.ctg = select i1 %i.ctf, double %i.ctc, double %i.ctd ; 4 uses
  %i.cth = fmul double %i.ctg, 1.000000e-10
  %i.cti = fcmp olt double %.0308..4.i.i, %i.cth
  br i1 %i.cti, label %cvSLdet.exit.thread.i, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.ctj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i.i299
  store double %i.ctg, ptr %i.ctj, align 8, !tbaa !49
  %i.ctk = fmul double %i.ctg, %i.ctg
  %i.ctl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i299
  store double %i.ctk, ptr %i.ctl, align 8, !tbaa !49
  %i.ctm = fdiv double %i.cso, %i.csr             ; 3 uses
  %i.ctn = fadd double %i.ctm, 0.000000e+00
  %i.cto = tail call double @llvm.fmuladd.f64(double %i.ctm, double %i.ctm, double 0.000000e+00)
  %i.ctp = fdiv double %i.csr, %i.csv             ; 3 uses
  %i.ctq = fadd double %i.ctn, %i.ctp
  %i.ctr = tail call double @llvm.fmuladd.f64(double %i.ctp, double %i.ctp, double %i.cto)
  %i.cts = fdiv double %i.csv, %i.csz             ; 3 uses
  %i.ctt = fadd double %i.ctq, %i.cts
  %i.ctu = tail call double @llvm.fmuladd.f64(double %i.cts, double %i.cts, double %i.ctr)
  %i.ctv = fdiv double %i.csz, %i.ctd             ; 3 uses
  %i.ctw = fadd double %i.ctt, %i.ctv
  %i.ctx = tail call double @llvm.fmuladd.f64(double %i.ctv, double %i.ctv, double %i.ctu)
  %i.cty = fmul double %i.ctw, 2.500000e-01       ; 3 uses
  %i.ctz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i299
  store double %i.cty, ptr %i.ctz, align 8, !tbaa !49
  %i.cua = fneg double %i.cty
  %i.cub = fmul double %i.cty, %i.cua
  %i.cuc = tail call double @llvm.fmuladd.f64(double %i.ctx, double 2.500000e-01, double %i.cub)
  %i.cud = tail call double @SUNRabs(double noundef %i.cuc) #12
  %i.cue = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i299
  store double %i.cud, ptr %i.cue, align 8, !tbaa !49
  %i.cuf = load double, ptr %i.csn, align 8, !tbaa !49 ; 2 uses
  %i.cug = getelementptr inbounds nuw [8 x i8], ptr %i.cse, i64 %indvars.iv.i.i299
  %i.cuh = load double, ptr %i.cug, align 8, !tbaa !49
  %i.cui = getelementptr inbounds nuw [8 x i8], ptr %i.csf, i64 %indvars.iv.i.i299
  %i.cuj = load double, ptr %i.cui, align 8, !tbaa !49 ; 3 uses
  %i.cuk = getelementptr inbounds nuw [8 x i8], ptr %i.csg, i64 %indvars.iv.i.i299
  %i.cul = getelementptr inbounds nuw [8 x i8], ptr %i.csh, i64 %indvars.iv.i.i299
  %i.cum = load double, ptr %i.cul, align 8, !tbaa !49 ; 3 uses
  %7 = insertelement <2 x double> poison, double %i.cum, i64 0
  %8 = insertelement <2 x double> %7, double %i.cuj, i64 1
  %9 = fneg <2 x double> %8                       ; 2 uses
  %10 = insertelement <2 x double> poison, double %i.cuf, i64 0
  %11 = insertelement <2 x double> %10, double %i.cuj, i64 1
  %12 = fmul <2 x double> %11, %9
  %i.cun = insertelement <2 x double> poison, double %i.cuj, i64 0 ; 2 uses
  %i.cuo = insertelement <2 x double> %i.cun, double %i.cuf, i64 1
  %i.cup = insertelement <2 x double> poison, double %i.cuh, i64 0
  %i.cuq = shufflevector <2 x double> %i.cup, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %13 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cuo, <2 x double> %i.cuq, <2 x double> %12) ; 2 uses
  %14 = extractelement <2 x double> %13, i64 1    ; 2 uses
  store double %14, ptr %i.cuk, align 8, !tbaa !49
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.csi, i64 %indvars.iv.i.i299
  %16 = extractelement <2 x double> %13, i64 0    ; 2 uses
  store double %16, ptr %15, align 8, !tbaa !49
  %17 = getelementptr inbounds nuw [8 x i8], ptr %i.csj, i64 %indvars.iv.i.i299
  store double 0.000000e+00, ptr %17, align 8, !tbaa !49
  %18 = getelementptr inbounds nuw [8 x i8], ptr %i.csk, i64 %indvars.iv.i.i299
  %19 = load double, ptr %18, align 8, !tbaa !49  ; 2 uses
  %i.cur = getelementptr inbounds nuw [8 x i8], ptr %i.csl, i64 %indvars.iv.i.i299
  %20 = fneg double %19
  %21 = insertelement <2 x double> %9, double %20, i64 1
  %22 = fmul <2 x double> %i.cuq, %21
  %23 = insertelement <2 x double> %i.cun, double %i.cum, i64 1
  %24 = insertelement <2 x double> poison, double %19, i64 0
  %25 = insertelement <2 x double> %24, double %i.cum, i64 1
  %26 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> %25, <2 x double> %22) ; 2 uses
  %27 = extractelement <2 x double> %26, i64 0    ; 2 uses
  store double %27, ptr %i.cur, align 8, !tbaa !49
  %i.cus = getelementptr inbounds nuw [8 x i8], ptr %i.csm, i64 %indvars.iv.i.i299
  %28 = extractelement <2 x double> %26, i64 1    ; 2 uses
  store double %28, ptr %i.cus, align 8, !tbaa !49
  %invariant.gep352.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i299 ; 5 uses
  %gep353.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 32
  store double %28, ptr %gep353.i.i, align 8, !tbaa !49
  %gep353.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 64
  store double %27, ptr %gep353.1.i.i, align 8, !tbaa !49
  %gep353.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 96
  store double 0.000000e+00, ptr %gep353.2.i.i, align 8, !tbaa !49
  %gep353.3.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 128
  store double %16, ptr %gep353.3.i.i, align 8, !tbaa !49
  %gep353.4.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 160
  store double %14, ptr %gep353.4.i.i, align 8, !tbaa !49
  %indvars.iv.next.i.i300 = add nuw nsw i64 %indvars.iv.i.i299, 1 ; 2 uses
  %exitcond.not.i.i301 = icmp eq i64 %indvars.iv.next.i.i300, 4
  br i1 %exitcond.not.i.i301, label %bb.ji, label %bb.jg, !llvm.loop !395

bb.ji:                                            ; preds = %bb.jh
  %i.cut = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cuu = load double, ptr %i.cut, align 8, !tbaa !49 ; 4 uses
  %i.cuv = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cuw = load double, ptr %i.cuv, align 16, !tbaa !49 ; 4 uses
  %i.cux = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.cuy = load double, ptr %i.cux, align 8, !tbaa !49 ; 4 uses
  %i.cuz = fcmp olt double %i.cuw, %i.cuy
  %i.cva = select i1 %i.cuz, double %i.cuw, double %i.cuy ; 2 uses
  %i.cvb = fcmp olt double %i.cuu, %i.cva
  %..i.i302 = select i1 %i.cvb, double %i.cuu, double %i.cva
  %i.cvc = fcmp olt double %..i.i302, 1.000000e-08
  br i1 %i.cvc, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  %i.cvd = fcmp ogt double %i.cuw, %i.cuy
  %i.cve = select i1 %i.cvd, double %i.cuw, double %i.cuy ; 2 uses
  %i.cvf = fcmp ogt double %i.cuu, %i.cve
  %i.cvg = select i1 %i.cvf, double %i.cuu, double %i.cve
  %i.cvh = fcmp ogt double %i.cvg, 2.500000e-07
  br i1 %i.cvh, label %cvSLdet.exit.thread.i, label %.loopexit333.loopexit.i.i

.loopexit333.loopexit.i.i:                        ; preds = %bb.jj
  %i.cvi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cvj = load double, ptr %i.cvi, align 8, !tbaa !49 ; 2 uses
  %i.cvk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cvl = load double, ptr %i.cvk, align 16, !tbaa !49 ; 2 uses
  %i.cvm = fadd double %i.cvj, %i.cvl
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cvo = load double, ptr %i.cvn, align 8, !tbaa !49 ; 2 uses
  %i.cvp = fadd double %i.cvm, %i.cvo
  %i.cvq = fdiv double %i.cvp, 3.000000e+00       ; 4 uses
  %i.cvr = fsub double %i.cvj, %i.cvq
  %i.cvs = tail call double @SUNRabs(double noundef %i.cvr) #12 ; 0 uses
  %i.cvt = fsub double %i.cvl, %i.cvq
  %i.cvu = tail call double @SUNRabs(double noundef %i.cvt) #12 ; 0 uses
  %i.cvv = fsub double %i.cvo, %i.cvq
  %i.cvw = tail call double @SUNRabs(double noundef %i.cvv) #12 ; 0 uses
  br label %.loopexit333.i.i

bb.jk:                                            ; preds = %bb.ji
  %i.cvx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.cvy = load double, ptr %i.cvx, align 8, !tbaa !49 ; 3 uses
  %i.cvz = tail call double @SUNRabs(double noundef %i.cvy) #12
  %i.cwa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cwb = load double, ptr %i.cwa, align 8, !tbaa !49 ; 3 uses
  %i.cwc = fmul double %i.cwb, 1.000000e-10       ; 2 uses
  %i.cwd = fcmp olt double %i.cvz, %i.cwc
  br i1 %i.cwd, label %cvSLdet.exit.thread.i, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.cwe = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.cwf = load double, ptr %i.cwe, align 16, !tbaa !49
  %i.cwg = fneg double %i.cwf
  %i.cwh = fdiv double %i.cwg, %i.cvy             ; 3 uses
  %i.cwi = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.cwj = load double, ptr %i.cwi, align 16, !tbaa !49
  %i.cwk = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.cwl = load double, ptr %i.cwk, align 8, !tbaa !49 ; 2 uses
  %i.cwm = tail call double @llvm.fmuladd.f64(double %i.cwh, double %i.cwl, double %i.cwj) ; 2 uses
  %i.cwn = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.cwo = load double, ptr %i.cwn, align 16, !tbaa !49
  %i.cwp = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.cwq = load double, ptr %i.cwp, align 8, !tbaa !49 ; 2 uses
  %i.cwr = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %i.cws = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.cwt = load <2 x double>, ptr %i.cws, align 8
  %i.cwu = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.cwv = load double, ptr %i.cwu, align 8, !tbaa !49
  %i.cww = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.cwx = load double, ptr %i.cww, align 8, !tbaa !49
  %i.cwy = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.cwz = load double, ptr %i.cwy, align 8, !tbaa !49
  %i.cxa = load <2 x double>, ptr %i.cwr, align 16, !tbaa !49
  %i.cxb = tail call double @SUNRabs(double noundef %i.cwm) #12
  %i.cxc = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cxd = load double, ptr %i.cxc, align 16, !tbaa !49 ; 5 uses
  %i.cxe = fmul double %i.cxd, 1.000000e-10       ; 2 uses
  %i.cxf = fcmp olt double %i.cxb, %i.cxe
  br i1 %i.cxf, label %cvSLdet.exit.thread.i, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.cxg = fneg double %i.cwv
  %i.cxh = fdiv double %i.cxg, %i.cvy             ; 3 uses
  %i.cxi = tail call double @llvm.fmuladd.f64(double %i.cxh, double %i.cwq, double %i.cwz)
  %i.cxj = tail call double @llvm.fmuladd.f64(double %i.cxh, double %i.cwl, double %i.cwx)
  %i.cxk = tail call double @llvm.fmuladd.f64(double %i.cwh, double %i.cwq, double %i.cwo)
  %i.cxl = fneg double %i.cxj
  %i.cxm = fdiv double %i.cxl, %i.cwm             ; 2 uses
  %i.cxn = tail call double @llvm.fmuladd.f64(double %i.cxm, double %i.cxk, double %i.cxi) ; 2 uses
  %i.cxo = tail call double @SUNRabs(double noundef %i.cxn) #12
  %i.cxp = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cxq = load double, ptr %i.cxp, align 8, !tbaa !49 ; 5 uses
  %i.cxr = fmul double %i.cxq, 1.000000e-10       ; 2 uses
  %i.cxs = fcmp olt double %i.cxo, %i.cxr
  br i1 %i.cxs, label %cvSLdet.exit.thread.i, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.cxt = insertelement <2 x double> poison, double %i.cwh, i64 0
  %i.cxu = insertelement <2 x double> %i.cxt, double %i.cxh, i64 1
  %i.cxv = shufflevector <2 x double> %i.cwt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cxw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cxu, <2 x double> %i.cxv, <2 x double> %i.cxa) ; 2 uses
  %i.cxx = extractelement <2 x double> %i.cxw, i64 0
  %i.cxy = extractelement <2 x double> %i.cxw, i64 1
  %i.cxz = tail call double @llvm.fmuladd.f64(double %i.cxm, double %i.cxx, double %i.cxy)
  %i.cya = fneg double %i.cxz
  %i.cyb = fdiv double %i.cya, %i.cxn             ; 9 uses
  %i.cyc = fcmp olt double %i.cyb, 1.000000e-10
  %i.cyd = fcmp ogt double %i.cyb, 1.000000e+02
  %or.cond.i.i303 = or i1 %i.cyc, %i.cyd
  br i1 %or.cond.i.i303, label %cvSLdet.exit.thread.i, label %.preheader338.i.i

.preheader338.i.i:                                ; preds = %bb.jn
  %i.cye = fmul double %i.cyb, %i.cyb             ; 2 uses
  %i.cyf = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.cyg = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.cyh = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.cyi = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.cyj = load <2 x double>, ptr %i.cyf, align 8, !tbaa !49 ; 5 uses
  %i.cyk = load <2 x double>, ptr %i.cyg, align 8, !tbaa !49 ; 6 uses
  %i.cyl = load <2 x double>, ptr %i.cyh, align 8, !tbaa !49 ; 6 uses
  %i.cym = load <2 x double>, ptr %i.cyi, align 8, !tbaa !49 ; 6 uses
  %i.cyn = insertelement <2 x double> poison, double %i.cyb, i64 0
  %i.cyo = shufflevector <2 x double> %i.cyn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cyp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cyo, <2 x double> %i.cym, <2 x double> %i.cyl)
  %i.cyq = insertelement <2 x double> poison, double %i.cye, i64 0
  %i.cyr = shufflevector <2 x double> %i.cyq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cys = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cyr, <2 x double> %i.cyp, <2 x double> %i.cyk)
  %i.cyt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cyo, <2 x double> %i.cys, <2 x double> %i.cyj) ; 3 uses
  %i.cyu = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.cyv = load double, ptr %i.cyu, align 8, !tbaa !49 ; 3 uses
  %i.cyw = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.cyx = load double, ptr %i.cyw, align 8, !tbaa !49 ; 4 uses
  %i.cyy = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.cyz = load double, ptr %i.cyy, align 8, !tbaa !49 ; 4 uses
  %i.cza = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.czb = load double, ptr %i.cza, align 8, !tbaa !49 ; 4 uses
  %i.czc = tail call double @llvm.fmuladd.f64(double %i.cyb, double %i.czb, double %i.cyz)
  %i.czd = tail call double @llvm.fmuladd.f64(double %i.cye, double %i.czc, double %i.cyx)
  %i.cze = tail call double @llvm.fmuladd.f64(double %i.cyb, double %i.czd, double %i.cyv) ; 2 uses
  %i.czf = extractelement <2 x double> %i.cyt, i64 0
  %i.czg = tail call double @SUNRabs(double noundef %i.czf) #12
  %i.czh = fdiv double %i.czg, %i.cwb             ; 2 uses
  %i.czi = fcmp ogt double %i.czh, 0.000000e+00
  %.1314.i.i = select i1 %i.czi, double %i.czh, double 0.000000e+00 ; 2 uses
  %i.czj = extractelement <2 x double> %i.cyt, i64 1
  %i.czk = tail call double @SUNRabs(double noundef %i.czj) #12
  %i.czl = fdiv double %i.czk, %i.cxd             ; 2 uses
  %i.czm = fcmp ogt double %i.czl, %.1314.i.i
  %.1314.1.i.i = select i1 %i.czm, double %i.czl, double %.1314.i.i ; 2 uses
  %i.czn = tail call double @SUNRabs(double noundef %i.cze) #12
  %i.czo = fdiv double %i.czn, %i.cxq             ; 2 uses
  %i.czp = fcmp ogt double %i.czo, %.1314.1.i.i
  %.1314.2.i.i = select i1 %i.czp, double %i.czo, double %.1314.1.i.i
  %i.czq = fcmp olt double %.1314.2.i.i, 1.000000e-03
  br i1 %i.czq, label %.loopexit333.i.i, label %.preheader336.i.i

.preheader336.i.i:                                ; preds = %.preheader338.i.i
  %i.czr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.czs = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %gep364.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %gep364.1.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %gep364.2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %gep364.2422.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %gep364.1.2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %gep364.2.2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.czt = insertelement <2 x double> poison, double %i.cwc, i64 0
  %i.czu = insertelement <2 x double> %i.czt, double %i.cxe, i64 1
  %i.czv = extractelement <2 x double> %i.cym, i64 0
  %i.czw = extractelement <2 x double> %i.cym, i64 1
  %i.czx = extractelement <2 x double> %i.cyl, i64 0
  %i.czy = extractelement <2 x double> %i.cyl, i64 1
  %i.czz = extractelement <2 x double> %i.cyk, i64 0
  %i.daa = extractelement <2 x double> %i.cyk, i64 1
  %i.dab = extractelement <2 x double> %i.cyj, i64 0
  %i.dac = extractelement <2 x double> %i.cyj, i64 1
  %29 = shufflevector <2 x double> %i.cym, <2 x double> poison, <2 x i32> zeroinitializer
  %30 = shufflevector <2 x double> %i.cyl, <2 x double> poison, <2 x i32> zeroinitializer
  %31 = shufflevector <2 x double> %i.cyk, <2 x double> poison, <2 x i32> zeroinitializer
  %32 = shufflevector <2 x double> %i.cyj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dad = shufflevector <2 x double> %i.cym, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dae = shufflevector <2 x double> %i.cyl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.daf = shufflevector <2 x double> %i.cyk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dag = shufflevector <2 x double> %i.cyj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dah = insertelement <2 x double> poison, double %i.czb, i64 0
  %i.dai = shufflevector <2 x double> %i.dah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.daj = insertelement <2 x double> poison, double %i.cyz, i64 0
  %i.dak = shufflevector <2 x double> %i.daj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dal = insertelement <2 x double> poison, double %i.cyx, i64 0
  %i.dam = shufflevector <2 x double> %i.dal, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dan = insertelement <2 x double> poison, double %i.cyv, i64 0
  %i.dao = shufflevector <2 x double> %i.dan, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dap = insertelement <2 x double> poison, double %i.cwb, i64 0 ; 2 uses
  %i.daq = insertelement <2 x double> %i.dap, double %i.cxd, i64 1
  %i.dar = insertelement <2 x double> poison, double %i.cxd, i64 0
  %i.das = insertelement <2 x double> %i.dar, double %i.cxq, i64 1
  %i.dat = shufflevector <2 x double> %i.dap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dau = insertelement <2 x double> poison, double %i.cxd, i64 1
  br label %.preheader335.i.i

.preheader335.i.i:                                ; preds = %.preheader.i.i304, %.preheader336.i.i
  %.sroa.10.0.i.i = phi double [ %i.cze, %.preheader336.i.i ], [ %i.dfb, %.preheader.i.i304 ]
  %.0298376.i.i = phi i32 [ 1, %.preheader336.i.i ], [ %i.dfc, %.preheader.i.i304 ]
  %.0299375.i.i = phi i32 [ 0, %.preheader336.i.i ], [ %.2301.2.i.i, %.preheader.i.i304 ]
  %.0305374.i.i = phi double [ %i.cyb, %.preheader336.i.i ], [ %i.dex, %.preheader.i.i304 ] ; 5 uses
  %i.dav = phi <2 x double> [ %i.cyt, %.preheader336.i.i ], [ %i.dfe, %.preheader.i.i304 ]
  %i.daw = fmul double %.0305374.i.i, %.0305374.i.i ; 2 uses
  %i.dax = fmul double %.0305374.i.i, 4.000000e+00 ; 2 uses
  %i.day = fneg <2 x double> %i.dav
  %i.daz = insertelement <2 x double> poison, double %i.dax, i64 0
  %i.dba = shufflevector <2 x double> %i.daz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbb = fmul <2 x double> %i.cym, %i.dba
  %i.dbc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cyl, <2 x double> splat (double 3.000000e+00), <2 x double> %i.dbb)
  %i.dbd = insertelement <2 x double> poison, double %i.daw, i64 0
  %i.dbe = shufflevector <2 x double> %i.dbd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dbe, <2 x double> %i.dbc, <2 x double> %i.cyk) ; 3 uses
  %i.dbg = extractelement <2 x double> %i.dbf, i64 0
  %i.dbh = tail call double @SUNRabs(double noundef %i.dbg) #12
  %i.dbi = extractelement <2 x double> %i.dbf, i64 1
  %i.dbj = tail call double @SUNRabs(double noundef %i.dbi) #12
  %i.dbk = insertelement <2 x double> poison, double %i.dbh, i64 0
  %i.dbl = insertelement <2 x double> %i.dbk, double %i.dbj, i64 1
  %i.dbm = fcmp ogt <2 x double> %i.dbl, %i.czu
  %i.dbn = fdiv <2 x double> %i.day, %i.dbf
  %i.dbo = select <2 x i1> %i.dbm, <2 x double> %i.dbn, <2 x double> zeroinitializer
  %i.dbp = insertelement <2 x double> poison, double %.0305374.i.i, i64 0
  %i.dbq = shufflevector <2 x double> %i.dbp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbr = fadd <2 x double> %i.dbq, %i.dbo       ; 9 uses
  store <2 x double> %i.dbr, ptr %i.czr, align 8, !tbaa !49
  %33 = fmul double %i.czb, %i.dax
  %34 = fneg double %.sroa.10.0.i.i
  %i.dbs = fmul <2 x double> %i.dbr, %i.dbr       ; 3 uses
  %i.dbt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dbr, <2 x double> %29, <2 x double> %30)
  %i.dbu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dbs, <2 x double> %i.dbt, <2 x double> %31)
  %i.dbv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dbr, <2 x double> %i.dbu, <2 x double> %32) ; 3 uses
  %i.dbw = extractelement <2 x double> %i.dbv, i64 0
  %i.dbx = extractelement <2 x double> %i.dbv, i64 1
  %i.dby = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dbr, <2 x double> %i.dad, <2 x double> %i.dae)
  %i.dbz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dbs, <2 x double> %i.dby, <2 x double> %i.daf)
  %i.dca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dbr, <2 x double> %i.dbz, <2 x double> %i.dag) ; 3 uses
  %i.dcb = extractelement <2 x double> %i.dca, i64 0
  %i.dcc = tail call double @llvm.fmuladd.f64(double %i.cyz, double 3.000000e+00, double %33)
  %i.dcd = tail call double @llvm.fmuladd.f64(double %i.daw, double %i.dcc, double %i.cyx) ; 2 uses
  %i.dce = tail call double @SUNRabs(double noundef %i.dcd) #12
  %i.dcf = fcmp ogt double %i.dce, %i.cxr
  %i.dcg = tail call double @SUNRabs(double noundef %i.dbw) #12
  %i.dch = tail call double @SUNRabs(double noundef %i.dcb) #12
  %i.dci = insertelement <2 x double> poison, double %34, i64 0
  %i.dcj = insertelement <2 x double> %i.dci, double %i.dch, i64 1
  %i.dck = insertelement <2 x double> %i.dau, double %i.dcd, i64 0
  %i.dcl = fdiv <2 x double> %i.dcj, %i.dck       ; 2 uses
  %i.dcm = extractelement <2 x double> %i.dcl, i64 0
  %.sroa.8.0.i.i = select i1 %i.dcf, double %i.dcm, double 0.000000e+00
  %i.dcn = fadd double %.0305374.i.i, %.sroa.8.0.i.i ; 9 uses
  store double %i.dcn, ptr %i.czs, align 8, !tbaa !49
  %i.dco = extractelement <2 x double> %i.dca, i64 1
  %i.dcp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dbr, <2 x double> %i.dai, <2 x double> %i.dak)
  %i.dcq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dbs, <2 x double> %i.dcp, <2 x double> %i.dam)
  %i.dcr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dbr, <2 x double> %i.dcq, <2 x double> %i.dao) ; 3 uses
  %i.dcs = extractelement <2 x double> %i.dcr, i64 0
  %i.dct = tail call double @SUNRabs(double noundef %i.dcs) #12
  store <2 x double> %i.dbv, ptr %gep364.i.i, align 8, !tbaa !49
  %i.dcu = tail call double @SUNRabs(double noundef %i.dbx) #12
  %i.dcv = insertelement <2 x double> poison, double %i.dcu, i64 0
  %i.dcw = insertelement <2 x double> %i.dcv, double %i.dcg, i64 1
  %i.dcx = fdiv <2 x double> %i.dcw, %i.dat       ; 3 uses
  %i.dcy = fcmp ogt <2 x double> %i.dcx, zeroinitializer ; 2 uses
  %i.dcz = extractelement <2 x i1> %i.dcy, i64 1
  %i.dda = extractelement <2 x double> %i.dcx, i64 1
  %.1316.i.i = select i1 %i.dcz, double %i.dda, double 0.000000e+00 ; 2 uses
  %i.ddb = extractelement <2 x double> %i.dcl, i64 1 ; 2 uses
  %i.ddc = fcmp ogt double %i.ddb, %.1316.i.i
  %.1316.1.i.i = select i1 %i.ddc, double %i.ddb, double %.1316.i.i ; 2 uses
  %i.ddd = extractelement <2 x i1> %i.dcy, i64 0
  %i.dde = extractelement <2 x double> %i.dcx, i64 0
  %.1316.1421.i.i = select i1 %i.ddd, double %i.dde, double 0.000000e+00
  store <2 x double> %i.dca, ptr %gep364.1.i.i, align 8, !tbaa !49
  %i.ddf = tail call double @SUNRabs(double noundef %i.dco) #12
  store <2 x double> %i.dcr, ptr %gep364.2.i.i, align 8, !tbaa !49
  %i.ddg = extractelement <2 x double> %i.dcr, i64 1
  %i.ddh = tail call double @SUNRabs(double noundef %i.ddg) #12
  %i.ddi = fmul double %i.dcn, %i.dcn             ; 3 uses
  %i.ddj = tail call double @llvm.fmuladd.f64(double %i.dcn, double %i.czv, double %i.czx)
  %i.ddk = tail call double @llvm.fmuladd.f64(double %i.ddi, double %i.ddj, double %i.czz)
  %i.ddl = tail call double @llvm.fmuladd.f64(double %i.dcn, double %i.ddk, double %i.dab) ; 2 uses
  store double %i.ddl, ptr %gep364.2422.i.i, align 8, !tbaa !49
  %i.ddm = tail call double @SUNRabs(double noundef %i.ddl) #12
  %i.ddn = tail call double @llvm.fmuladd.f64(double %i.dcn, double %i.czw, double %i.czy)
  %i.ddo = tail call double @llvm.fmuladd.f64(double %i.ddi, double %i.ddn, double %i.daa)
  %i.ddp = tail call double @llvm.fmuladd.f64(double %i.dcn, double %i.ddo, double %i.dac) ; 2 uses
  store double %i.ddp, ptr %gep364.1.2.i.i, align 8, !tbaa !49
  %i.ddq = tail call double @SUNRabs(double noundef %i.ddp) #12
  %i.ddr = tail call double @llvm.fmuladd.f64(double %i.dcn, double %i.czb, double %i.cyz)
  %i.dds = tail call double @llvm.fmuladd.f64(double %i.ddi, double %i.ddr, double %i.cyx)
  %i.ddt = tail call double @llvm.fmuladd.f64(double %i.dcn, double %i.dds, double %i.cyv) ; 2 uses
  store double %i.ddt, ptr %gep364.2.2.i.i, align 8, !tbaa !49
  %i.ddu = tail call double @SUNRabs(double noundef %i.ddt) #12
  %i.ddv = fdiv double %i.ddu, %i.cxq             ; 2 uses
  %i.ddw = insertelement <2 x double> poison, double %i.ddm, i64 0
  %i.ddx = insertelement <2 x double> %i.ddw, double %i.ddf, i64 1
  %i.ddy = fdiv <2 x double> %i.ddx, %i.daq       ; 2 uses
  %i.ddz = fdiv double %i.dct, %i.cxq             ; 2 uses
  %i.dea = insertelement <2 x double> <double 0.000000e+00, double poison>, double %.1316.1421.i.i, i64 1 ; 2 uses
  %i.deb = fcmp ogt <2 x double> %i.ddy, %i.dea
  %i.dec = fcmp ogt double %i.ddz, %.1316.1.i.i
  %i.ded = select <2 x i1> %i.deb, <2 x double> %i.ddy, <2 x double> %i.dea ; 2 uses
  %.1316.2.i.i = select i1 %i.dec, double %i.ddz, double %.1316.1.i.i ; 3 uses
  %i.dee = insertelement <2 x double> poison, double %i.ddq, i64 0
  %i.def = insertelement <2 x double> %i.dee, double %i.ddh, i64 1
  %i.deg = fdiv <2 x double> %i.def, %i.das       ; 2 uses
  %i.deh = fcmp ogt <2 x double> %i.deg, %i.ded
  %i.dei = fadd double %.1316.2.i.i, 1.000000e+00 ; 2 uses
  %i.dej = fcmp olt double %.1316.2.i.i, %i.dei   ; 2 uses
  %i.dek = select <2 x i1> %i.deh, <2 x double> %i.deg, <2 x double> %i.ded ; 3 uses
  %.2319.i.i = select i1 %i.dej, double %.1316.2.i.i, double %i.dei ; 2 uses
  %.2301.i.i = select i1 %i.dej, i32 1, i32 %.0299375.i.i
  %i.del = insertelement <2 x double> poison, double %i.ddv, i64 0
  %i.dem = insertelement <2 x double> %i.del, double %.2319.i.i, i64 1
  %i.den = fcmp ogt <2 x double> %i.dem, %i.dek   ; 2 uses
  %i.deo = insertelement <2 x double> %i.dek, double %i.ddv, i64 0
  %i.dep = insertelement <2 x double> %i.dek, double %.2319.i.i, i64 1
  %i.deq = select <2 x i1> %i.den, <2 x double> %i.deo, <2 x double> %i.dep ; 2 uses
  %i.der = extractelement <2 x i1> %i.den, i64 1
  %.2301.1.i.i = select i1 %i.der, i32 2, i32 %.2301.i.i
  %i.des = extractelement <2 x double> %i.deq, i64 0 ; 2 uses
  %i.det = extractelement <2 x double> %i.deq, i64 1 ; 2 uses
  %i.deu = fcmp olt double %i.des, %i.det         ; 2 uses
  %.2319.2.i.i = select i1 %i.deu, double %i.des, double %i.det ; 2 uses
  %.2301.2.i.i = select i1 %i.deu, i32 3, i32 %.2301.1.i.i ; 2 uses
  %i.dev = zext nneg i32 %.2301.2.i.i to i64      ; 2 uses
  %i.dew = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dev
  %i.dex = load double, ptr %i.dew, align 8, !tbaa !49 ; 2 uses
  %i.dey = fcmp olt double %.2319.2.i.i, 1.000000e-03
  br i1 %i.dey, label %bb.jo, label %.preheader.i.i304

.preheader.i.i304:                                ; preds = %.preheader335.i.i
  %invariant.gep371.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.dev ; 3 uses
  %gep372.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i, i64 32
  %i.dez = load double, ptr %gep372.i.i, align 8, !tbaa !49
  %gep372.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i, i64 64
  %i.dfa = load double, ptr %gep372.1.i.i, align 8, !tbaa !49
  %gep372.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i, i64 96
  %i.dfb = load double, ptr %gep372.2.i.i, align 8, !tbaa !49
  %i.dfc = add nuw nsw i32 %.0298376.i.i, 1       ; 2 uses
  %exitcond432.not.i.i = icmp eq i32 %i.dfc, 4
  %i.dfd = insertelement <2 x double> poison, double %i.dez, i64 0
  %i.dfe = insertelement <2 x double> %i.dfd, double %i.dfa, i64 1
  br i1 %exitcond432.not.i.i, label %bb.jo, label %.preheader335.i.i, !llvm.loop !396

bb.jo:                                            ; preds = %.preheader.i.i304, %.preheader335.i.i
  %.0302.i.i = phi i32 [ 0, %.preheader.i.i304 ], [ 3, %.preheader335.i.i ]
  %i.dff = fcmp ogt double %.2319.2.i.i, 1.000000e-03
  br i1 %i.dff, label %cvSLdet.exit.thread.i, label %.loopexit333.i.i

.loopexit333.i.i:                                 ; preds = %bb.jo, %.preheader338.i.i, %.loopexit333.loopexit.i.i
  %.2307.i.i = phi double [ %i.cyb, %.preheader338.i.i ], [ %i.dex, %bb.jo ], [ %i.cvq, %.loopexit333.loopexit.i.i ] ; 22 uses
  %.1303.i.i = phi i32 [ 2, %.preheader338.i.i ], [ %.0302.i.i, %bb.jo ], [ 1, %.loopexit333.loopexit.i.i ] ; 2 uses
  %i.dfg = fmul double %.2307.i.i, %.2307.i.i     ; 3 uses
  %i.dfh = getelementptr inbounds nuw i8, ptr %0, i64 1896
  %i.dfi = load double, ptr %i.dfh, align 8, !tbaa !49
  %i.dfj = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.dfk = load double, ptr %i.dfj, align 8, !tbaa !49
  %i.dfl = fmul double %.2307.i.i, %i.dfk         ; 2 uses
  %i.dfm = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 2 uses
  %i.dfn = load double, ptr %i.dfm, align 8, !tbaa !49
  %i.dfo = fmul double %.2307.i.i, %i.dfn
  %i.dfp = fmul double %.2307.i.i, %i.dfo         ; 2 uses
  %i.dfq = getelementptr inbounds nuw i8, ptr %0, i64 1992
  %i.dfr = load double, ptr %i.dfq, align 8, !tbaa !49
  %i.dfs = fmul double %.2307.i.i, %i.dfr
  %i.dft = fmul double %.2307.i.i, %i.dfs
  %i.dfu = fmul double %.2307.i.i, %i.dft
  %i.dfv = fsub double %i.dfl, %i.dfp             ; 4 uses
  %i.dfw = fsub double %i.dfp, %i.dfu
  %i.dfx = fsub double %i.dfv, %i.dfw             ; 2 uses
  %i.dfy = tail call double @SUNRabs(double noundef %i.dfv) #12
  %i.dfz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dga = load double, ptr %i.dfz, align 8, !tbaa !49
  %i.dgb = fmul double %i.dga, 1.000000e-10
  %i.dgc = fcmp olt double %i.dfy, %i.dgb
  br i1 %i.dgc, label %cvSLdet.exit.thread.i, label %bb.jp

bb.jp:                                            ; preds = %.loopexit333.i.i
  %i.dgd = fsub double %i.dfi, %i.dfl
  %i.dge = fsub double %i.dgd, %i.dfv
  %i.dgf = fsub double %i.dge, %i.dfx
  %i.dgg = fneg double %i.dgf
  %i.dgh = fdiv double %i.dgg, %i.dfv             ; 3 uses
  %i.dgi = fcmp olt double %i.dgh, 1.000000e-10
  %i.dgj = fcmp ogt double %i.dgh, 4.000000e+00
  %or.cond3.i.i = or i1 %i.dgi, %i.dgj
  br i1 %or.cond3.i.i, label %cvSLdet.exit.thread.i, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.dgk = fdiv double %i.dfx, %i.dgh
  %i.dgl = fdiv double %i.dgk, %i.dfg
  %i.dgm = load double, ptr %i.dfm, align 8, !tbaa !49
  %i.dgn = fadd double %i.dgl, %i.dgm
  %i.dgo = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.dgp = load double, ptr %i.dgo, align 8, !tbaa !49
  %i.dgq = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.dgr = load double, ptr %i.dgq, align 8, !tbaa !49
  %i.dgs = fmul double %.2307.i.i, %i.dgr         ; 2 uses
  %i.dgt = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 2 uses
  %i.dgu = load double, ptr %i.dgt, align 8, !tbaa !49
  %i.dgv = fmul double %.2307.i.i, %i.dgu
  %i.dgw = fmul double %.2307.i.i, %i.dgv         ; 2 uses
  %i.dgx = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.dgy = load double, ptr %i.dgx, align 8, !tbaa !49
  %i.dgz = fmul double %.2307.i.i, %i.dgy
  %i.dha = fmul double %.2307.i.i, %i.dgz
  %i.dhb = fmul double %.2307.i.i, %i.dha
  %i.dhc = fsub double %i.dgs, %i.dgw             ; 4 uses
  %i.dhd = fsub double %i.dgw, %i.dhb
  %i.dhe = fsub double %i.dhc, %i.dhd             ; 2 uses
  %i.dhf = tail call double @SUNRabs(double noundef %i.dhc) #12
  %i.dhg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dhh = load double, ptr %i.dhg, align 16, !tbaa !49
  %i.dhi = fmul double %i.dhh, 1.000000e-10
  %i.dhj = fcmp olt double %i.dhf, %i.dhi
  br i1 %i.dhj, label %cvSLdet.exit.thread.i, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.dhk = fsub double %i.dgp, %i.dgs
  %i.dhl = fsub double %i.dhk, %i.dhc
  %i.dhm = fsub double %i.dhl, %i.dhe
  %i.dhn = fneg double %i.dhm
  %i.dho = fdiv double %i.dhn, %i.dhc             ; 3 uses
  %i.dhp = fcmp olt double %i.dho, 1.000000e-10
  %i.dhq = fcmp ogt double %i.dho, 4.000000e+00
  %or.cond3.1.i.i = or i1 %i.dhp, %i.dhq
  br i1 %or.cond3.1.i.i, label %cvSLdet.exit.thread.i, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.dhr = fdiv double %i.dhe, %i.dho
  %i.dhs = fdiv double %i.dhr, %i.dfg
  %i.dht = load double, ptr %i.dgt, align 8, !tbaa !49
  %i.dhu = fadd double %i.dhs, %i.dht             ; 3 uses
  %i.dhv = getelementptr inbounds nuw i8, ptr %0, i64 1912
  %i.dhw = load double, ptr %i.dhv, align 8, !tbaa !49
  %i.dhx = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.dhy = load double, ptr %i.dhx, align 8, !tbaa !49
  %i.dhz = fmul double %.2307.i.i, %i.dhy         ; 2 uses
  %i.dia = getelementptr inbounds nuw i8, ptr %0, i64 1976 ; 2 uses
  %i.dib = load double, ptr %i.dia, align 8, !tbaa !49
  %i.dic = fmul double %.2307.i.i, %i.dib
  %i.did = fmul double %.2307.i.i, %i.dic         ; 2 uses
  %i.die = getelementptr inbounds nuw i8, ptr %0, i64 2008
end_hunk_2
