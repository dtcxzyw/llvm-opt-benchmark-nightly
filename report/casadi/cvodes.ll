Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cvodes?download=true
inline.NumInlined: 100
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 36
begin_hunk_0_@cvSensEwtSet:bb.a
  %i.at = fcmp ugt double %i.as, 0.000000e+00
  br i1 %i.at, label %bb.g, label %cvSensEwtSetEE.exit

bb.g:                                             ; preds = %bb.f
  %i.au = load ptr, ptr %i.af, align 8, !tbaa !63
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i11
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !50
  tail call void @N_VInv(ptr noundef %i.au, ptr noundef %i.aw) #12
  %indvars.iv.next.i12 = add nuw nsw i64 %indvars.iv.i11, 1 ; 2 uses
  %i.ax = load i32, ptr %i.ac, align 4, !tbaa !110
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next.i12, %i.ay
  br i1 %i.az, label %bb.f, label %cvSensEwtSetEE.exit, !llvm.loop !295

bb.h:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !110
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
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !50
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !63
  tail call void @N_VAbs(ptr noundef %i.bh, ptr noundef %i.bi) #12
  %i.bj = load double, ptr %i.be, align 8, !tbaa !131
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !63 ; 2 uses
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !136
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i14
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !50
  tail call void @N_VLinearSum(double noundef %i.bj, ptr noundef %i.bk, double noundef 1.000000e+00, ptr noundef %i.bn, ptr noundef %i.bk) #12
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !63
  %i.bp = tail call double @N_VMin(ptr noundef %i.bo) #12
  %i.bq = fcmp ugt double %i.bp, 0.000000e+00
  br i1 %i.bq, label %bb.j, label %cvSensEwtSetEE.exit

bb.j:                                             ; preds = %bb.i
  %i.br = load ptr, ptr %i.bd, align 8, !tbaa !63
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i14
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !50
  tail call void @N_VInv(ptr noundef %i.br, ptr noundef %i.bt) #12
  %indvars.iv.next.i15 = add nuw nsw i64 %indvars.iv.i14, 1 ; 2 uses
  %i.bu = load i32, ptr %i.ba, align 4, !tbaa !110
  %i.bv = sext i32 %i.bu to i64
  %i.bw = icmp slt i64 %indvars.iv.next.i15, %i.bv
  br i1 %i.bw, label %bb.i, label %cvSensEwtSetEE.exit, !llvm.loop !296

cvSensEwtSetEE.exit:                              ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.c, %bb.h, %bb.e, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.h ], [ -1, %bb.f ], [ 0, %bb.b ], [ -1, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.g ], [ -1, %bb.i ], [ 0, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @cvQuadSensEwtSet(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load i32, ptr %i.a, align 8, !tbaa !148
  switch i32 %i.b, label %cvQuadSensEwtSetEE.exit [
    i32 4, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !141
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !110
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %cvQuadSensEwtSetEE.exit

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.l = load double, ptr %i.k, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  tail call void @N_VScale(double noundef %i.l, ptr noundef %i.n, ptr noundef %i.e) #12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50
  %i.q = tail call fastcc i32 @cvQuadEwtSet(ptr noundef nonnull readonly %0, ptr noundef %i.e, ptr noundef %i.p)
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.c, label %cvQuadSensEwtSetEE.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.t = load double, ptr %i.s, align 8, !tbaa !53
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  tail call void @N_VScale(double noundef %i.t, ptr noundef %i.u, ptr noundef %i.u) #12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.v = load i32, ptr %i.g, align 4, !tbaa !110
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next.i, %i.w
  br i1 %i.x, label %.lr.ph.i, label %cvQuadSensEwtSetEE.exit, !llvm.loop !297

bb.d:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !110
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
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !98
  tail call void @N_VAbs(ptr noundef %i.af, ptr noundef %i.ag) #12
  %i.ah = load double, ptr %i.ac, align 8, !tbaa !149
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !98 ; 2 uses
  tail call void @N_VScale(double noundef %i.ah, ptr noundef %i.ai, ptr noundef %i.ai) #12
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !98 ; 2 uses
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !151
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i11
  %i.am = load double, ptr %i.al, align 8, !tbaa !53
  tail call void @N_VAddConst(ptr noundef %i.aj, double noundef %i.am, ptr noundef %i.aj) #12
  %i.an = load ptr, ptr %i.ab, align 8, !tbaa !98
  %i.ao = tail call double @N_VMin(ptr noundef %i.an) #12
  %i.ap = fcmp ugt double %i.ao, 0.000000e+00
  br i1 %i.ap, label %bb.f, label %cvQuadSensEwtSetEE.exit

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.ab, align 8, !tbaa !98
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i11
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !50
  tail call void @N_VInv(ptr noundef %i.aq, ptr noundef %i.as) #12
  %indvars.iv.next.i12 = add nuw nsw i64 %indvars.iv.i11, 1 ; 2 uses
  %i.at = load i32, ptr %i.y, align 4, !tbaa !110
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next.i12, %i.au
  br i1 %i.av, label %bb.e, label %cvQuadSensEwtSetEE.exit, !llvm.loop !298

bb.g:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !110
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
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !50
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !98
  tail call void @N_VAbs(ptr noundef %i.bd, ptr noundef %i.be) #12
  %i.bf = load double, ptr %i.ba, align 8, !tbaa !149
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !98 ; 2 uses
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !153
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i14
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !50
  tail call void @N_VLinearSum(double noundef %i.bf, ptr noundef %i.bg, double noundef 1.000000e+00, ptr noundef %i.bj, ptr noundef %i.bg) #12
  %i.bk = load ptr, ptr %i.az, align 8, !tbaa !98
  %i.bl = tail call double @N_VMin(ptr noundef %i.bk) #12
  %i.bm = fcmp ugt double %i.bl, 0.000000e+00
  br i1 %i.bm, label %bb.i, label %cvQuadSensEwtSetEE.exit

bb.i:                                             ; preds = %bb.h
  %i.bn = load ptr, ptr %i.az, align 8, !tbaa !98
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i14
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !50
  tail call void @N_VInv(ptr noundef %i.bn, ptr noundef %i.bp) #12
  %indvars.iv.next.i15 = add nuw nsw i64 %indvars.iv.i14, 1 ; 2 uses
  %i.bq = load i32, ptr %i.aw, align 4, !tbaa !110
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp slt i64 %indvars.iv.next.i15, %i.br
  br i1 %i.bs, label %bb.h, label %cvQuadSensEwtSetEE.exit, !llvm.loop !299

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
  %i.c = alloca [4 x double], align 16            ; 7 uses
  %i.d = alloca [4 x double], align 16            ; 8 uses
  %i.e = alloca [4 x [4 x double]], align 16      ; 12 uses
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
  %i.v = load i32, ptr %i.u, align 8, !tbaa !121
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %.thread312, label %bb.b

.thread312:                                       ; preds = %bb.a
  store i32 0, ptr %i.p, align 4, !tbaa !42
  store i32 0, ptr %i.n, align 4, !tbaa !42
  store i32 0, ptr %i.s, align 4, !tbaa !42
  store i32 0, ptr %i.q, align 4, !tbaa !42
  store i32 0, ptr %i.r, align 4, !tbaa !42
  store i32 0, ptr %i.o, align 4, !tbaa !42
  br label %.loopexit345

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = load i32, ptr %i.w, align 8, !tbaa !111  ; 2 uses
  %i.y = icmp eq i32 %i.x, 2
  %i.z = icmp eq i32 %i.x, 3
  store i32 0, ptr %i.p, align 4, !tbaa !42
  store i32 0, ptr %i.n, align 4, !tbaa !42
  store i32 0, ptr %i.s, align 4, !tbaa !42
  store i32 0, ptr %i.q, align 4, !tbaa !42
  store i32 0, ptr %i.r, align 4, !tbaa !42
  store i32 0, ptr %i.o, align 4, !tbaa !42
  br i1 %i.z, label %.preheader344, label %.loopexit345

.preheader344:                                    ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !110
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %.loopexit345

.lr.ph:                                           ; preds = %.preheader344
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !127
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  store i32 0, ptr %i.af, align 4, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = load i32, ptr %i.aa, align 4, !tbaa !110
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %bb.c, label %.loopexit345, !llvm.loop !300

.loopexit345:                                     ; preds = %bb.c, %.preheader344, %.thread312, %bb.b
  %i.aj = phi i1 [ false, %.thread312 ], [ false, %bb.b ], [ true, %.preheader344 ], [ true, %bb.c ] ; 3 uses
  %i.ak = phi i1 [ false, %.thread312 ], [ %i.y, %bb.b ], [ false, %.preheader344 ], [ false, %bb.c ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 7 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !165
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.loopexit345
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !178
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !174
  %i.as = fcmp une double %i.ap, %i.ar
  br i1 %i.as, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 916 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !182 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !66 ; 2 uses
  %.not.i = icmp eq i32 %i.au, %i.aw
  br i1 %.not.i, label %cvAdjustParams.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = sub nsw i32 %i.au, %i.aw
  tail call fastcc void @cvAdjustOrder(ptr noundef nonnull %0, i32 noundef %i.ax)
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !182 ; 2 uses
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !66
  %i.az = add nsw i32 %i.ay, 1                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !67
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 924
  store i32 %i.az, ptr %i.bb, align 4, !tbaa !68
  br label %cvAdjustParams.exit

cvAdjustParams.exit:                              ; preds = %bb.e, %bb.f
  tail call fastcc void @cvRescale(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %cvAdjustParams.exit, %bb.d, %.loopexit345
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 26 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !65 ; 9 uses
  store i32 6, ptr %i.t, align 4, !tbaa !42
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
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 10 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 8 uses
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
end_hunk_0
begin_hunk_1_@cvStep:bb.a
  br label %bb.iy

bb.iy:                                            ; preds = %._crit_edge.i306, %bb.ix
  %i.crx = phi i32 [ %.pr.i, %._crit_edge.i306 ], [ %i.cpq, %bb.ix ] ; 3 uses
  %i.cry = getelementptr inbounds nuw i8, ptr %0, i64 916 ; 2 uses
  %i.crz = load i32, ptr %i.cry, align 4, !tbaa !182
  %.not.i296 = icmp slt i32 %i.crz, %i.crx
  br i1 %.not.i296, label %bb.jw, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.csa = icmp sgt i32 %i.crx, 2
  br i1 %i.csa, label %bb.ja, label %cvBDFStab.exit

bb.ja:                                            ; preds = %bb.iz
  %i.csb = load i32, ptr %i.bxj, align 8, !tbaa !78
  %i.csc = add nuw nsw i32 %i.crx, 5
  %.not75.i = icmp slt i32 %i.csb, %i.csc
  br i1 %.not75.i, label %cvBDFStab.exit, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.csd = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.cse = getelementptr inbounds nuw i8, ptr %0, i64 1888
  %i.csf = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.csg = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.csh = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.csi = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.csj = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.csk = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.csl = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %i.csm = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.csn = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jd, %bb.jb
  %indvars.iv.i.i297 = phi i64 [ 1, %bb.jb ], [ %indvars.iv.next.i.i298, %bb.jd ] ; 17 uses
  %i.cso = getelementptr inbounds nuw [8 x i8], ptr %i.cse, i64 %indvars.iv.i.i297 ; 2 uses
  %i.csp = load double, ptr %i.cso, align 8, !tbaa !53 ; 5 uses
  %invariant.gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.csd, i64 %indvars.iv.i.i297 ; 4 uses
  %i.csq = fcmp olt double %i.csp, 0.000000e+00
  %i.csr = select i1 %i.csq, double 0.000000e+00, double %i.csp ; 2 uses
  %gep.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 64
  %i.css = load double, ptr %gep.1.i.i, align 8, !tbaa !53 ; 6 uses
  %i.cst = fcmp olt double %i.csp, %i.css
  %.0297..1.i.i = select i1 %i.cst, double %i.csp, double %i.css ; 2 uses
  %i.csu = fcmp ogt double %i.csr, %i.css
  %i.csv = select i1 %i.csu, double %i.csr, double %i.css ; 2 uses
  %gep.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 96
  %i.csw = load double, ptr %gep.2.i.i, align 8, !tbaa !53 ; 6 uses
  %i.csx = fcmp olt double %.0297..1.i.i, %i.csw
  %.0297..2.i.i = select i1 %i.csx, double %.0297..1.i.i, double %i.csw ; 2 uses
  %i.csy = fcmp ogt double %i.csv, %i.csw
  %i.csz = select i1 %i.csy, double %i.csv, double %i.csw ; 2 uses
  %gep.3.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 128
  %i.cta = load double, ptr %gep.3.i.i, align 8, !tbaa !53 ; 6 uses
  %i.ctb = fcmp olt double %.0297..2.i.i, %i.cta
  %.0297..3.i.i = select i1 %i.ctb, double %.0297..2.i.i, double %i.cta ; 2 uses
  %i.ctc = fcmp ogt double %i.csz, %i.cta
  %i.ctd = select i1 %i.ctc, double %i.csz, double %i.cta ; 2 uses
  %gep.4.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 160
  %i.cte = load double, ptr %gep.4.i.i, align 8, !tbaa !53 ; 5 uses
  %i.ctf = fcmp olt double %.0297..3.i.i, %i.cte
  %.0297..4.i.i = select i1 %i.ctf, double %.0297..3.i.i, double %i.cte
  %i.ctg = fcmp ogt double %i.ctd, %i.cte
  %i.cth = select i1 %i.ctg, double %i.ctd, double %i.cte ; 4 uses
  %i.cti = fmul double %i.cth, 1.000000e-10
  %i.ctj = fcmp olt double %.0297..4.i.i, %i.cti
  br i1 %i.ctj, label %cvSLdet.exit.thread.i, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.ctk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i.i297
  store double %i.cth, ptr %i.ctk, align 8, !tbaa !53
  %i.ctl = fmul double %i.cth, %i.cth
  %i.ctm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i297
  store double %i.ctl, ptr %i.ctm, align 8, !tbaa !53
  %i.ctn = fdiv double %i.csp, %i.css             ; 3 uses
  %i.cto = fadd double %i.ctn, 0.000000e+00
  %i.ctp = tail call double @llvm.fmuladd.f64(double %i.ctn, double %i.ctn, double 0.000000e+00)
  %i.ctq = fdiv double %i.css, %i.csw             ; 3 uses
  %i.ctr = fadd double %i.cto, %i.ctq
  %i.cts = tail call double @llvm.fmuladd.f64(double %i.ctq, double %i.ctq, double %i.ctp)
  %i.ctt = fdiv double %i.csw, %i.cta             ; 3 uses
  %i.ctu = fadd double %i.ctr, %i.ctt
  %i.ctv = tail call double @llvm.fmuladd.f64(double %i.ctt, double %i.ctt, double %i.cts)
  %i.ctw = fdiv double %i.cta, %i.cte             ; 3 uses
  %i.ctx = fadd double %i.ctu, %i.ctw
  %i.cty = tail call double @llvm.fmuladd.f64(double %i.ctw, double %i.ctw, double %i.ctv)
  %i.ctz = fmul double %i.ctx, 2.500000e-01       ; 3 uses
  %i.cua = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i297
  store double %i.ctz, ptr %i.cua, align 8, !tbaa !53
  %i.cub = fneg double %i.ctz
  %i.cuc = fmul double %i.ctz, %i.cub
  %i.cud = tail call double @llvm.fmuladd.f64(double %i.cty, double 2.500000e-01, double %i.cuc)
  %i.cue = tail call double @SUNRabs(double noundef %i.cud) #12
  %i.cuf = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i297
  store double %i.cue, ptr %i.cuf, align 8, !tbaa !53
  %i.cug = load double, ptr %i.cso, align 8, !tbaa !53 ; 2 uses
  %i.cuh = getelementptr inbounds nuw [8 x i8], ptr %i.csf, i64 %indvars.iv.i.i297
  %i.cui = load double, ptr %i.cuh, align 8, !tbaa !53 ; 4 uses
  %i.cuj = getelementptr inbounds nuw [8 x i8], ptr %i.csg, i64 %indvars.iv.i.i297
  %i.cuk = load double, ptr %i.cuj, align 8, !tbaa !53 ; 3 uses
  %i.cul = fneg double %i.cuk
  %i.cum = fmul double %i.cuk, %i.cul
  %i.cun = tail call double @llvm.fmuladd.f64(double %i.cug, double %i.cui, double %i.cum) ; 2 uses
  %i.cuo = getelementptr inbounds nuw [8 x i8], ptr %i.csh, i64 %indvars.iv.i.i297
  store double %i.cun, ptr %i.cuo, align 8, !tbaa !53
  %i.cup = getelementptr inbounds nuw [8 x i8], ptr %i.csi, i64 %indvars.iv.i.i297
  %i.cuq = load double, ptr %i.cup, align 8, !tbaa !53 ; 3 uses
  %i.cur = fneg double %i.cuq
  %i.cus = getelementptr inbounds nuw [8 x i8], ptr %i.csj, i64 %indvars.iv.i.i297
  %i.cut = getelementptr inbounds nuw [8 x i8], ptr %i.csk, i64 %indvars.iv.i.i297
  store double 0.000000e+00, ptr %i.cut, align 8, !tbaa !53
  %i.cuu = getelementptr inbounds nuw [8 x i8], ptr %i.csl, i64 %indvars.iv.i.i297
  %i.cuv = load double, ptr %i.cuu, align 8, !tbaa !53 ; 2 uses
  %i.cuw = insertelement <2 x double> poison, double %i.cug, i64 0
  %i.cux = insertelement <2 x double> %i.cuw, double %i.cui, i64 1
  %i.cuy = insertelement <2 x double> poison, double %i.cur, i64 0
  %i.cuz = shufflevector <2 x double> %i.cuy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cva = fmul <2 x double> %i.cux, %i.cuz
  %i.cvb = insertelement <2 x double> poison, double %i.cuk, i64 0
  %i.cvc = shufflevector <2 x double> %i.cvb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cvd = insertelement <2 x double> poison, double %i.cui, i64 0
  %i.cve = insertelement <2 x double> %i.cvd, double %i.cuv, i64 1
  %i.cvf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cvc, <2 x double> %i.cve, <2 x double> %i.cva) ; 2 uses
  %i.cvg = extractelement <2 x double> %i.cvf, i64 0 ; 2 uses
  store double %i.cvg, ptr %i.cus, align 8, !tbaa !53
  %i.cvh = getelementptr inbounds nuw [8 x i8], ptr %i.csm, i64 %indvars.iv.i.i297
  %i.cvi = extractelement <2 x double> %i.cvf, i64 1 ; 2 uses
  store double %i.cvi, ptr %i.cvh, align 8, !tbaa !53
  %i.cvj = fneg double %i.cuv
  %i.cvk = fmul double %i.cui, %i.cvj
  %i.cvl = tail call double @llvm.fmuladd.f64(double %i.cuq, double %i.cuq, double %i.cvk) ; 2 uses
  %i.cvm = getelementptr inbounds nuw [8 x i8], ptr %i.csn, i64 %indvars.iv.i.i297
  store double %i.cvl, ptr %i.cvm, align 8, !tbaa !53
  %invariant.gep352.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i297 ; 5 uses
  %gep353.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 32
  store double %i.cvl, ptr %gep353.i.i, align 8, !tbaa !53
  %gep353.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 64
  store double %i.cvi, ptr %gep353.1.i.i, align 8, !tbaa !53
  %gep353.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 96
  store double 0.000000e+00, ptr %gep353.2.i.i, align 8, !tbaa !53
  %gep353.3.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 128
  store double %i.cvg, ptr %gep353.3.i.i, align 8, !tbaa !53
  %gep353.4.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 160
  store double %i.cun, ptr %gep353.4.i.i, align 8, !tbaa !53
  %indvars.iv.next.i.i298 = add nuw nsw i64 %indvars.iv.i.i297, 1 ; 2 uses
  %exitcond.not.i.i299 = icmp eq i64 %indvars.iv.next.i.i298, 4
  br i1 %exitcond.not.i.i299, label %bb.je, label %bb.jc, !llvm.loop !374

bb.je:                                            ; preds = %bb.jd
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cvo = load double, ptr %i.cvn, align 8, !tbaa !53 ; 4 uses
  %i.cvp = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cvq = load double, ptr %i.cvp, align 16, !tbaa !53 ; 4 uses
  %i.cvr = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.cvs = load double, ptr %i.cvr, align 8, !tbaa !53 ; 4 uses
  %i.cvt = fcmp olt double %i.cvq, %i.cvs
  %i.cvu = select i1 %i.cvt, double %i.cvq, double %i.cvs ; 2 uses
  %i.cvv = fcmp olt double %i.cvo, %i.cvu
  %..i.i300 = select i1 %i.cvv, double %i.cvo, double %i.cvu
  %i.cvw = fcmp olt double %..i.i300, 1.000000e-08
  br i1 %i.cvw, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  %i.cvx = fcmp ogt double %i.cvq, %i.cvs
  %i.cvy = select i1 %i.cvx, double %i.cvq, double %i.cvs ; 2 uses
  %i.cvz = fcmp ogt double %i.cvo, %i.cvy
  %i.cwa = select i1 %i.cvz, double %i.cvo, double %i.cvy
  %i.cwb = fcmp ogt double %i.cwa, 2.500000e-07
  br i1 %i.cwb, label %cvSLdet.exit.thread.i, label %.loopexit333.loopexit.i.i

.loopexit333.loopexit.i.i:                        ; preds = %bb.jf
  %i.cwc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cwd = load double, ptr %i.cwc, align 8, !tbaa !53 ; 2 uses
  %i.cwe = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cwf = load double, ptr %i.cwe, align 16, !tbaa !53 ; 2 uses
  %i.cwg = fadd double %i.cwd, %i.cwf
  %i.cwh = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cwi = load double, ptr %i.cwh, align 8, !tbaa !53 ; 2 uses
  %i.cwj = fadd double %i.cwg, %i.cwi
  %i.cwk = fdiv double %i.cwj, 3.000000e+00       ; 4 uses
  %i.cwl = fsub double %i.cwd, %i.cwk
  %i.cwm = tail call double @SUNRabs(double noundef %i.cwl) #12 ; 0 uses
  %i.cwn = fsub double %i.cwf, %i.cwk
  %i.cwo = tail call double @SUNRabs(double noundef %i.cwn) #12 ; 0 uses
  %i.cwp = fsub double %i.cwi, %i.cwk
  %i.cwq = tail call double @SUNRabs(double noundef %i.cwp) #12 ; 0 uses
  br label %.loopexit333.i.i

bb.jg:                                            ; preds = %bb.je
  %i.cwr = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.cws = load double, ptr %i.cwr, align 8, !tbaa !53 ; 3 uses
  %i.cwt = tail call double @SUNRabs(double noundef %i.cws) #12
  %i.cwu = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.cwv = load double, ptr %i.cwu, align 8, !tbaa !53 ; 2 uses
  %i.cww = fmul double %i.cwv, 1.000000e-10       ; 2 uses
  %i.cwx = fcmp olt double %i.cwt, %i.cww
  br i1 %i.cwx, label %cvSLdet.exit.thread.i, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.cwy = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.cwz = load double, ptr %i.cwy, align 16, !tbaa !53
  %i.cxa = fneg double %i.cwz
  %i.cxb = fdiv double %i.cxa, %i.cws             ; 3 uses
  %i.cxc = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.cxd = load double, ptr %i.cxc, align 16, !tbaa !53
  %i.cxe = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.cxf = load double, ptr %i.cxe, align 8, !tbaa !53 ; 2 uses
  %i.cxg = tail call double @llvm.fmuladd.f64(double %i.cxb, double %i.cxf, double %i.cxd) ; 2 uses
  %i.cxh = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.cxi = load double, ptr %i.cxh, align 16, !tbaa !53
  %i.cxj = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.cxk = load double, ptr %i.cxj, align 8, !tbaa !53 ; 2 uses
  %i.cxl = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %i.cxm = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.cxn = load <1 x double>, ptr %i.cxm, align 8
  %i.cxo = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.cxp = load double, ptr %i.cxo, align 8, !tbaa !53
  %i.cxq = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.cxr = load double, ptr %i.cxq, align 8, !tbaa !53
  %i.cxs = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.cxt = load double, ptr %i.cxs, align 8, !tbaa !53
  %i.cxu = load <2 x double>, ptr %i.cxl, align 16, !tbaa !53
  %i.cxv = tail call double @SUNRabs(double noundef %i.cxg) #12
  %i.cxw = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.cxx = load double, ptr %i.cxw, align 16, !tbaa !53 ; 2 uses
  %1 = load <2 x double>, ptr %i.cwu, align 8, !tbaa !53 ; 2 uses
  %i.cxy = fmul double %i.cxx, 1.000000e-10       ; 2 uses
  %i.cxz = fcmp olt double %i.cxv, %i.cxy
  br i1 %i.cxz, label %cvSLdet.exit.thread.i, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.cya = fneg double %i.cxp
  %i.cyb = fdiv double %i.cya, %i.cws             ; 3 uses
  %i.cyc = tail call double @llvm.fmuladd.f64(double %i.cyb, double %i.cxk, double %i.cxt)
  %i.cyd = tail call double @llvm.fmuladd.f64(double %i.cyb, double %i.cxf, double %i.cxr)
  %i.cye = tail call double @llvm.fmuladd.f64(double %i.cxb, double %i.cxk, double %i.cxi)
  %i.cyf = fneg double %i.cyd
  %i.cyg = fdiv double %i.cyf, %i.cxg             ; 2 uses
  %i.cyh = tail call double @llvm.fmuladd.f64(double %i.cyg, double %i.cye, double %i.cyc) ; 2 uses
  %i.cyi = tail call double @SUNRabs(double noundef %i.cyh) #12
  %2 = load <2 x double>, ptr %i.cxw, align 16, !tbaa !53 ; 3 uses
  %3 = extractelement <2 x double> %2, i64 1      ; 2 uses
  %i.cyj = fmul double %3, 1.000000e-10           ; 2 uses
  %i.cyk = fcmp olt double %i.cyi, %i.cyj
  br i1 %i.cyk, label %cvSLdet.exit.thread.i, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.cyl = insertelement <2 x double> poison, double %i.cxb, i64 0
  %i.cym = insertelement <2 x double> %i.cyl, double %i.cyb, i64 1
  %i.cyn = shufflevector <1 x double> %i.cxn, <1 x double> poison, <2 x i32> zeroinitializer
  %i.cyo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cym, <2 x double> %i.cyn, <2 x double> %i.cxu) ; 2 uses
  %i.cyp = extractelement <2 x double> %i.cyo, i64 0
  %i.cyq = extractelement <2 x double> %i.cyo, i64 1
  %i.cyr = tail call double @llvm.fmuladd.f64(double %i.cyg, double %i.cyp, double %i.cyq)
  %i.cys = fneg double %i.cyr
  %i.cyt = fdiv double %i.cys, %i.cyh             ; 9 uses
  %i.cyu = fcmp olt double %i.cyt, 1.000000e-10
  %i.cyv = fcmp ogt double %i.cyt, 1.000000e+02
  %or.cond.i.i301 = or i1 %i.cyu, %i.cyv
  br i1 %or.cond.i.i301, label %cvSLdet.exit.thread.i, label %.preheader338.i.i

.preheader338.i.i:                                ; preds = %bb.jj
  %i.cyw = fmul double %i.cyt, %i.cyt             ; 2 uses
  %i.cyx = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.cyy = load double, ptr %i.cyx, align 8, !tbaa !53 ; 3 uses
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.cza = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.czb = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.czc = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.czd = load <2 x double>, ptr %i.cyz, align 8, !tbaa !53 ; 7 uses
  %i.cze = load <2 x double>, ptr %i.cza, align 8, !tbaa !53 ; 7 uses
  %i.czf = load <2 x double>, ptr %i.czb, align 8, !tbaa !53 ; 6 uses
  %i.czg = extractelement <2 x double> %i.cze, i64 0
  %i.czh = extractelement <2 x double> %i.czf, i64 0
  %i.czi = tail call double @llvm.fmuladd.f64(double %i.cyt, double %i.czh, double %i.czg)
  %i.czj = extractelement <2 x double> %i.czd, i64 0
  %i.czk = tail call double @llvm.fmuladd.f64(double %i.cyw, double %i.czi, double %i.czj)
  %i.czl = tail call double @llvm.fmuladd.f64(double %i.cyt, double %i.czk, double %i.cyy) ; 2 uses
  %i.czm = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.czn = load double, ptr %i.czm, align 8, !tbaa !53 ; 4 uses
  %i.czo = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.czp = load double, ptr %i.czo, align 8, !tbaa !53 ; 4 uses
  %i.czq = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.czr = load double, ptr %i.czq, align 8, !tbaa !53 ; 4 uses
  %i.czs = load <2 x double>, ptr %i.czc, align 16, !tbaa !53 ; 5 uses
  %i.czt = insertelement <2 x double> poison, double %i.cyt, i64 0
  %i.czu = shufflevector <2 x double> %i.czt, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.czv = shufflevector <2 x double> %i.czf, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.czw = insertelement <2 x double> %i.czv, double %i.czr, i64 1
  %i.czx = shufflevector <2 x double> %i.cze, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.czy = insertelement <2 x double> %i.czx, double %i.czp, i64 1
  %i.czz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.czu, <2 x double> %i.czw, <2 x double> %i.czy)
  %i.daa = insertelement <2 x double> poison, double %i.cyw, i64 0
  %i.dab = shufflevector <2 x double> %i.daa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dac = shufflevector <2 x double> %i.czd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dad = insertelement <2 x double> %i.dac, double %i.czn, i64 1
  %i.dae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dab, <2 x double> %i.czz, <2 x double> %i.dad)
  %i.daf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.czu, <2 x double> %i.dae, <2 x double> %i.czs) ; 3 uses
  %4 = tail call double @SUNRabs(double noundef %i.czl) #12
  %5 = extractelement <2 x double> %i.daf, i64 0
  %i.dag = tail call double @SUNRabs(double noundef %5) #12
  %6 = insertelement <2 x double> poison, double %4, i64 0
  %7 = insertelement <2 x double> %6, double %i.dag, i64 1
  %8 = fdiv <2 x double> %7, %1                   ; 2 uses
  %i.dah = extractelement <2 x double> %8, i64 0  ; 2 uses
  %9 = fcmp ogt double %i.dah, 0.000000e+00
  %.1292.i.i = select i1 %9, double %i.dah, double 0.000000e+00 ; 2 uses
  %10 = extractelement <2 x double> %8, i64 1     ; 2 uses
  %i.dai = fcmp ogt double %10, %.1292.i.i
  %.1292.1.i.i = select i1 %i.dai, double %10, double %.1292.i.i ; 2 uses
  %i.daj = extractelement <2 x double> %i.daf, i64 1
  %i.dak = tail call double @SUNRabs(double noundef %i.daj) #12
  %i.dal = fdiv double %i.dak, %3                 ; 2 uses
  %i.dam = fcmp ogt double %i.dal, %.1292.1.i.i
  %.1292.2.i.i = select i1 %i.dam, double %i.dal, double %.1292.1.i.i
  %i.dan = fcmp olt double %.1292.2.i.i, 1.000000e-03
  br i1 %i.dan, label %.loopexit333.i.i, label %.preheader336.i.i

.preheader336.i.i:                                ; preds = %.preheader338.i.i
  %i.dao = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dap = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.daq = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %gep364.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %gep364.1.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %gep364.2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %gep364.1.1.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %gep364.2.1.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %gep364.2422.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %gep364.2.2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.dar = extractelement <2 x double> %i.cze, i64 1 ; 2 uses
  %i.das = extractelement <2 x double> %i.czf, i64 1 ; 2 uses
  %i.dat = extractelement <2 x double> %i.czd, i64 1 ; 2 uses
  %i.dau = insertelement <2 x double> %i.czs, double %i.czp, i64 1
  %i.dav = insertelement <2 x double> poison, double %i.cxy, i64 0
  %i.daw = insertelement <2 x double> %i.dav, double %i.cyj, i64 1
  %i.dax = shufflevector <2 x double> %i.czs, <2 x double> %i.cze, <2 x i32> <i32 1, i32 2>
  %i.day = shufflevector <2 x double> %i.czd, <2 x double> %i.cze, <2 x i32> <i32 0, i32 3>
  %i.daz = insertelement <2 x double> %i.czd, double %i.cyy, i64 0
  %i.dba = shufflevector <2 x double> %i.czf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbb = shufflevector <2 x double> %i.cze, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbc = shufflevector <2 x double> %i.czd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbd = insertelement <2 x double> poison, double %i.cyy, i64 0
  %i.dbe = shufflevector <2 x double> %i.dbd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbf = shufflevector <2 x double> %i.czs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbg = insertelement <2 x double> poison, double %i.cwv, i64 0
  %i.dbh = shufflevector <2 x double> %i.dbg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbi = insertelement <2 x double> poison, double %i.czn, i64 0
  %i.dbj = shufflevector <2 x double> %i.dbi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbk = shufflevector <2 x double> %i.czs, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %11 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dbl = insertelement <2 x double> poison, double %i.czr, i64 0
  %i.dbm = shufflevector <2 x double> %i.dbl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbn = insertelement <2 x double> poison, double %i.czp, i64 0
  %i.dbo = shufflevector <2 x double> %i.dbn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbp = insertelement <2 x double> poison, double %i.czr, i64 1
  br label %.preheader335.i.i

.preheader335.i.i:                                ; preds = %.preheader.i.i303, %.preheader336.i.i
  %.sroa.2448.0.i.i = phi double [ %i.czl, %.preheader336.i.i ], [ %i.dgj, %.preheader.i.i303 ]
  %.0298376.i.i = phi double [ %i.cyt, %.preheader336.i.i ], [ %i.dgh, %.preheader.i.i303 ] ; 5 uses
  %.0304375.i.i = phi i32 [ 0, %.preheader336.i.i ], [ %.2306.2.i.i, %.preheader.i.i303 ]
  %.0307374.i.i = phi i32 [ 1, %.preheader336.i.i ], [ %i.dgm, %.preheader.i.i303 ]
  %i.dbq = phi <2 x double> [ %i.daf, %.preheader336.i.i ], [ %i.dgo, %.preheader.i.i303 ]
  %i.dbr = fmul double %.0298376.i.i, %.0298376.i.i ; 2 uses
  %i.dbs = fmul double %.0298376.i.i, 4.000000e+00 ; 2 uses
  %i.dbt = fneg double %.sroa.2448.0.i.i
  %i.dbu = insertelement <2 x double> poison, double %i.dbs, i64 0
  %i.dbv = shufflevector <2 x double> %i.dbu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbw = fmul <2 x double> %i.czf, %i.dbv
  %i.dbx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cze, <2 x double> splat (double 3.000000e+00), <2 x double> %i.dbw)
  %i.dby = insertelement <2 x double> poison, double %i.dbr, i64 0
  %i.dbz = shufflevector <2 x double> %i.dby, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dbz, <2 x double> %i.dbx, <2 x double> %i.czd) ; 3 uses
  %i.dcb = extractelement <2 x double> %i.dca, i64 0 ; 2 uses
  %i.dcc = tail call double @SUNRabs(double noundef %i.dcb) #12
  %i.dcd = fcmp ogt double %i.dcc, %i.cww
  %i.dce = fdiv double %i.dbt, %i.dcb
  %.sroa.2443.0.i.i = select i1 %i.dcd, double %i.dce, double 0.000000e+00
  %i.dcf = fadd double %.0298376.i.i, %.sroa.2443.0.i.i ; 5 uses
  store double %i.dcf, ptr %i.dao, align 8, !tbaa !53
  %i.dcg = fneg <2 x double> %i.dbq
  %i.dch = fmul double %i.czr, %i.dbs
  %i.dci = tail call double @llvm.fmuladd.f64(double %i.dcf, double %i.das, double %i.dar)
  %i.dcj = insertelement <2 x double> poison, double %i.dcf, i64 0
  %i.dck = shufflevector <2 x double> %i.dcj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dcl = extractelement <2 x double> %i.dca, i64 1
  %i.dcm = tail call double @SUNRabs(double noundef %i.dcl) #12
  %i.dcn = tail call double @llvm.fmuladd.f64(double %i.czp, double 3.000000e+00, double %i.dch)
  %i.dco = tail call double @llvm.fmuladd.f64(double %i.dbr, double %i.dcn, double %i.czn) ; 2 uses
  %i.dcp = tail call double @SUNRabs(double noundef %i.dco) #12
  %i.dcq = insertelement <2 x double> poison, double %i.dcm, i64 0
  %i.dcr = insertelement <2 x double> %i.dcq, double %i.dcp, i64 1
  %i.dcs = fcmp ogt <2 x double> %i.dcr, %i.daw
  %i.dct = shufflevector <2 x double> %i.dca, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dcu = insertelement <2 x double> %i.dct, double %i.dco, i64 1
  %i.dcv = fdiv <2 x double> %i.dcg, %i.dcu
  %i.dcw = select <2 x i1> %i.dcs, <2 x double> %i.dcv, <2 x double> zeroinitializer
  %i.dcx = insertelement <2 x double> poison, double %.0298376.i.i, i64 0
  %i.dcy = shufflevector <2 x double> %i.dcx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dcz = fadd <2 x double> %i.dcy, %i.dcw       ; 8 uses
  %i.dda = extractelement <2 x double> %i.dcz, i64 0 ; 2 uses
  store double %i.dda, ptr %i.dap, align 16, !tbaa !53
  %i.ddb = extractelement <2 x double> %i.dcz, i64 1 ; 3 uses
  store double %i.ddb, ptr %i.daq, align 8, !tbaa !53
  %i.ddc = shufflevector <2 x double> %i.dcz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ddd = insertelement <2 x double> %i.ddc, double %i.dcf, i64 0 ; 4 uses
  %i.dde = fmul <2 x double> %i.ddd, %i.ddd       ; 4 uses
  %i.ddf = extractelement <2 x double> %i.dde, i64 0
  %i.ddg = tail call double @llvm.fmuladd.f64(double %i.ddf, double %i.dci, double %i.dat)
  %i.ddh = insertelement <2 x double> %i.dbp, double %i.ddg, i64 0
  %i.ddi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dck, <2 x double> %i.ddh, <2 x double> %i.dau) ; 2 uses
  %i.ddj = extractelement <2 x double> %i.ddi, i64 0 ; 2 uses
  %i.ddk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ddd, <2 x double> %i.dba, <2 x double> %i.dbb)
  %i.ddl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dde, <2 x double> %i.ddk, <2 x double> %i.dbc)
  %i.ddm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ddd, <2 x double> %i.ddl, <2 x double> %i.dbe) ; 3 uses
  %i.ddn = extractelement <2 x double> %i.ddm, i64 0
  %i.ddo = tail call double @SUNRabs(double noundef %i.ddn) #12
  store double %i.ddj, ptr %gep364.1.i.i, align 8, !tbaa !53
  %i.ddp = tail call double @SUNRabs(double noundef %i.ddj) #12
  %i.ddq = fdiv double %i.ddp, %i.cxx             ; 2 uses
  %i.ddr = extractelement <2 x double> %i.ddm, i64 1
  %i.dds = tail call double @llvm.fmuladd.f64(double %i.dda, double %i.das, double %i.dar)
  %i.ddt = extractelement <2 x double> %i.dde, i64 1 ; 2 uses
  %i.ddu = tail call double @llvm.fmuladd.f64(double %i.ddt, double %i.dds, double %i.dat)
  %i.ddv = fmul double %i.ddb, %i.ddb             ; 3 uses
  %i.ddw = insertelement <2 x double> %i.dcz, double %i.ddv, i64 0
  %i.ddx = insertelement <2 x double> %i.ddc, double %i.ddv, i64 1
  %i.ddy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcz, <2 x double> %i.dbm, <2 x double> %i.dbo) ; 2 uses
  %i.ddz = extractelement <2 x double> %i.ddy, i64 0
  %i.dea = tail call double @llvm.fmuladd.f64(double %i.ddt, double %i.ddz, double %i.czn)
  %i.deb = insertelement <2 x double> %i.czv, double %i.dea, i64 0
  %i.dec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcz, <2 x double> %i.deb, <2 x double> %i.dax) ; 2 uses
  %i.ded = extractelement <2 x double> %i.dec, i64 0 ; 2 uses
  %i.dee = shufflevector <2 x double> %i.dec, <2 x double> %i.czf, <2 x i32> <i32 1, i32 3>
  %i.def = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ddw, <2 x double> %i.dee, <2 x double> %i.day)
  %i.deg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ddx, <2 x double> %i.def, <2 x double> %i.daz) ; 2 uses
  %i.deh = extractelement <2 x double> %i.deg, i64 0 ; 2 uses
  %i.dei = insertelement <2 x double> %i.deg, double %i.ddu, i64 0
  %i.dej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcz, <2 x double> %i.dei, <2 x double> %i.dbf) ; 3 uses
  %i.dek = extractelement <2 x double> %i.dej, i64 0
  %i.del = extractelement <2 x double> %i.dej, i64 1
  %i.dem = insertelement <2 x double> %i.dde, double %i.ddv, i64 1
  %i.den = shufflevector <2 x double> %i.ddi, <2 x double> %i.ddy, <2 x i32> <i32 1, i32 3>
  %i.deo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dem, <2 x double> %i.den, <2 x double> %i.dbj)
  %i.dep = insertelement <2 x double> %i.dcz, double %i.dcf, i64 0
  %i.deq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dep, <2 x double> %i.deo, <2 x double> %i.dbk) ; 2 uses
  %i.der = extractelement <2 x double> %i.deq, i64 0 ; 2 uses
  store double %i.der, ptr %gep364.2.i.i, align 8, !tbaa !53
  %i.des = tail call double @SUNRabs(double noundef %i.der) #12
  store <2 x double> %i.ddm, ptr %gep364.i.i, align 8, !tbaa !53
  %i.det = tail call double @SUNRabs(double noundef %i.ddr) #12
  %i.deu = insertelement <2 x double> poison, double %i.det, i64 0
  %i.dev = insertelement <2 x double> %i.deu, double %i.ddo, i64 1
  %i.dew = fdiv <2 x double> %i.dev, %i.dbh       ; 3 uses
  %i.dex = fcmp ogt <2 x double> %i.dew, zeroinitializer ; 2 uses
  %i.dey = extractelement <2 x i1> %i.dex, i64 1
  %i.dez = extractelement <2 x double> %i.dew, i64 1
  %.1290.i.i = select i1 %i.dey, double %i.dez, double 0.000000e+00 ; 2 uses
  %i.dfa = fcmp ogt double %i.ddq, %.1290.i.i
  %.1290.1.i.i = select i1 %i.dfa, double %i.ddq, double %.1290.i.i ; 2 uses
  %i.dfb = extractelement <2 x i1> %i.dex, i64 0
  %i.dfc = extractelement <2 x double> %i.dew, i64 0
  %.1290.1421.i.i = select i1 %i.dfb, double %i.dfc, double 0.000000e+00
  %i.dfd = tail call double @SUNRabs(double noundef %i.dek) #12
  store double %i.ded, ptr %gep364.2.1.i.i, align 16, !tbaa !53
  %i.dfe = tail call double @SUNRabs(double noundef %i.ded) #12
  store double %i.deh, ptr %gep364.2422.i.i, align 8, !tbaa !53
  %i.dff = tail call double @SUNRabs(double noundef %i.deh) #12
  store <2 x double> %i.dej, ptr %gep364.1.1.i.i, align 16, !tbaa !53
  %i.dfg = tail call double @SUNRabs(double noundef %i.del) #12
  %i.dfh = extractelement <2 x double> %i.deq, i64 1 ; 2 uses
  store double %i.dfh, ptr %gep364.2.2.i.i, align 8, !tbaa !53
  %i.dfi = tail call double @SUNRabs(double noundef %i.dfh) #12
  %12 = insertelement <2 x double> poison, double %i.dfi, i64 0
  %13 = insertelement <2 x double> %12, double %i.des, i64 1
  %14 = fdiv <2 x double> %13, %11                ; 3 uses
  %15 = extractelement <2 x double> %14, i64 1    ; 2 uses
  %i.dfj = fcmp ogt double %15, %.1290.1.i.i
  %.1290.2.i.i = select i1 %i.dfj, double %15, double %.1290.1.i.i ; 3 uses
  %i.dfk = insertelement <2 x double> poison, double %i.dff, i64 0
  %i.dfl = insertelement <2 x double> %i.dfk, double %i.dfd, i64 1
  %i.dfm = fdiv <2 x double> %i.dfl, %1           ; 2 uses
  %i.dfn = insertelement <2 x double> <double 0.000000e+00, double poison>, double %.1290.1421.i.i, i64 1 ; 2 uses
  %i.dfo = fcmp ogt <2 x double> %i.dfm, %i.dfn
  %i.dfp = select <2 x i1> %i.dfo, <2 x double> %i.dfm, <2 x double> %i.dfn ; 2 uses
  %i.dfq = insertelement <2 x double> poison, double %i.dfg, i64 0
  %i.dfr = insertelement <2 x double> %i.dfq, double %i.dfe, i64 1
  %i.dfs = fdiv <2 x double> %i.dfr, %2           ; 2 uses
  %i.dft = fcmp ogt <2 x double> %i.dfs, %i.dfp
  %i.dfu = select <2 x i1> %i.dft, <2 x double> %i.dfs, <2 x double> %i.dfp ; 3 uses
  %i.dfv = fadd double %.1290.2.i.i, 1.000000e+00 ; 2 uses
  %i.dfw = fcmp olt double %.1290.2.i.i, %i.dfv   ; 2 uses
  %.2306.i.i = select i1 %i.dfw, i32 1, i32 %.0304375.i.i
  %.2.i.i302 = select i1 %i.dfw, double %.1290.2.i.i, double %i.dfv ; 2 uses
  %i.dfx = insertelement <2 x double> %14, double %.2.i.i302, i64 1
  %i.dfy = fcmp ogt <2 x double> %i.dfx, %i.dfu   ; 2 uses
  %i.dfz = extractelement <2 x i1> %i.dfy, i64 1
  %.2306.1.i.i = select i1 %i.dfz, i32 2, i32 %.2306.i.i
  %16 = shufflevector <2 x double> %14, <2 x double> %i.dfu, <2 x i32> <i32 0, i32 3>
  %i.dga = insertelement <2 x double> %i.dfu, double %.2.i.i302, i64 1
  %i.dgb = select <2 x i1> %i.dfy, <2 x double> %16, <2 x double> %i.dga ; 2 uses
  %i.dgc = extractelement <2 x double> %i.dgb, i64 0 ; 2 uses
  %i.dgd = extractelement <2 x double> %i.dgb, i64 1 ; 2 uses
  %i.dge = fcmp olt double %i.dgc, %i.dgd         ; 2 uses
  %.2306.2.i.i = select i1 %i.dge, i32 3, i32 %.2306.1.i.i ; 2 uses
  %.2.2.i.i = select i1 %i.dge, double %i.dgc, double %i.dgd ; 2 uses
  %i.dgf = zext nneg i32 %.2306.2.i.i to i64      ; 2 uses
  %i.dgg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dgf
  %i.dgh = load double, ptr %i.dgg, align 8, !tbaa !53 ; 2 uses
  %i.dgi = fcmp olt double %.2.2.i.i, 1.000000e-03
  br i1 %i.dgi, label %bb.jk, label %.preheader.i.i303

.preheader.i.i303:                                ; preds = %.preheader335.i.i
  %invariant.gep371.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.dgf ; 3 uses
  %gep372.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i, i64 32
  %i.dgj = load double, ptr %gep372.i.i, align 8, !tbaa !53
  %gep372.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i, i64 64
  %i.dgk = load double, ptr %gep372.1.i.i, align 8, !tbaa !53
  %gep372.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i, i64 96
  %i.dgl = load double, ptr %gep372.2.i.i, align 8, !tbaa !53
  %i.dgm = add nuw nsw i32 %.0307374.i.i, 1       ; 2 uses
  %exitcond432.not.i.i = icmp eq i32 %i.dgm, 4
  %i.dgn = insertelement <2 x double> poison, double %i.dgk, i64 0
  %i.dgo = insertelement <2 x double> %i.dgn, double %i.dgl, i64 1
  br i1 %exitcond432.not.i.i, label %bb.jk, label %.preheader335.i.i, !llvm.loop !375

bb.jk:                                            ; preds = %.preheader.i.i303, %.preheader335.i.i
  %.0301.i.i = phi i32 [ 0, %.preheader.i.i303 ], [ 3, %.preheader335.i.i ]
  %i.dgp = fcmp ogt double %.2.2.i.i, 1.000000e-03
  br i1 %i.dgp, label %cvSLdet.exit.thread.i, label %.loopexit333.i.i

.loopexit333.i.i:                                 ; preds = %bb.jk, %.preheader338.i.i, %.loopexit333.loopexit.i.i
  %.1302.i.i = phi i32 [ 2, %.preheader338.i.i ], [ %.0301.i.i, %bb.jk ], [ 1, %.loopexit333.loopexit.i.i ] ; 2 uses
  %.2300.i.i = phi double [ %i.cyt, %.preheader338.i.i ], [ %i.dgh, %bb.jk ], [ %i.cwk, %.loopexit333.loopexit.i.i ] ; 22 uses
  %i.dgq = fmul double %.2300.i.i, %.2300.i.i     ; 3 uses
  %i.dgr = getelementptr inbounds nuw i8, ptr %0, i64 1896
  %i.dgs = load double, ptr %i.dgr, align 8, !tbaa !53
  %i.dgt = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.dgu = load double, ptr %i.dgt, align 8, !tbaa !53
  %i.dgv = fmul double %.2300.i.i, %i.dgu         ; 2 uses
  %i.dgw = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 2 uses
  %i.dgx = load double, ptr %i.dgw, align 8, !tbaa !53
  %i.dgy = fmul double %.2300.i.i, %i.dgx
  %i.dgz = fmul double %.2300.i.i, %i.dgy         ; 2 uses
  %i.dha = getelementptr inbounds nuw i8, ptr %0, i64 1992
  %i.dhb = load double, ptr %i.dha, align 8, !tbaa !53
  %i.dhc = fmul double %.2300.i.i, %i.dhb
  %i.dhd = fmul double %.2300.i.i, %i.dhc
  %i.dhe = fmul double %.2300.i.i, %i.dhd
  %i.dhf = fsub double %i.dgv, %i.dgz             ; 4 uses
  %i.dhg = fsub double %i.dgz, %i.dhe
  %i.dhh = fsub double %i.dhf, %i.dhg             ; 2 uses
  %i.dhi = tail call double @SUNRabs(double noundef %i.dhf) #12
  %i.dhj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dhk = load double, ptr %i.dhj, align 8, !tbaa !53
  %i.dhl = fmul double %i.dhk, 1.000000e-10
  %i.dhm = fcmp olt double %i.dhi, %i.dhl
  br i1 %i.dhm, label %cvSLdet.exit.thread.i, label %bb.jl

bb.jl:                                            ; preds = %.loopexit333.i.i
  %i.dhn = fsub double %i.dgs, %i.dgv
  %i.dho = fsub double %i.dhn, %i.dhf
  %i.dhp = fsub double %i.dho, %i.dhh
  %i.dhq = fneg double %i.dhp
  %i.dhr = fdiv double %i.dhq, %i.dhf             ; 3 uses
  %i.dhs = fcmp olt double %i.dhr, 1.000000e-10
  %i.dht = fcmp ogt double %i.dhr, 4.000000e+00
  %or.cond3.i.i = or i1 %i.dhs, %i.dht
  br i1 %or.cond3.i.i, label %cvSLdet.exit.thread.i, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.dhu = fdiv double %i.dhh, %i.dhr
  %i.dhv = fdiv double %i.dhu, %i.dgq
  %i.dhw = load double, ptr %i.dgw, align 8, !tbaa !53
  %i.dhx = fadd double %i.dhv, %i.dhw
  %i.dhy = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.dhz = load double, ptr %i.dhy, align 8, !tbaa !53
  %i.dia = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.dib = load double, ptr %i.dia, align 8, !tbaa !53
  %i.dic = fmul double %.2300.i.i, %i.dib         ; 2 uses
  %i.did = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 2 uses
  %i.die = load double, ptr %i.did, align 8, !tbaa !53
  %i.dif = fmul double %.2300.i.i, %i.die
  %i.dig = fmul double %.2300.i.i, %i.dif         ; 2 uses
  %i.dih = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.dii = load double, ptr %i.dih, align 8, !tbaa !53
  %i.dij = fmul double %.2300.i.i, %i.dii
  %i.dik = fmul double %.2300.i.i, %i.dij
  %i.dil = fmul double %.2300.i.i, %i.dik
  %i.dim = fsub double %i.dic, %i.dig             ; 4 uses
  %i.din = fsub double %i.dig, %i.dil
  %i.dio = fsub double %i.dim, %i.din             ; 2 uses
  %i.dip = tail call double @SUNRabs(double noundef %i.dim) #12
  %i.diq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dir = load double, ptr %i.diq, align 16, !tbaa !53
  %i.dis = fmul double %i.dir, 1.000000e-10
  %i.dit = fcmp olt double %i.dip, %i.dis
  br i1 %i.dit, label %cvSLdet.exit.thread.i, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.diu = fsub double %i.dhz, %i.dic
  %i.div = fsub double %i.diu, %i.dim
  %i.diw = fsub double %i.div, %i.dio
  %i.dix = fneg double %i.diw
  %i.diy = fdiv double %i.dix, %i.dim             ; 3 uses
  %i.diz = fcmp olt double %i.diy, 1.000000e-10
  %i.dja = fcmp ogt double %i.diy, 4.000000e+00
  %or.cond3.1.i.i = or i1 %i.diz, %i.dja
  br i1 %or.cond3.1.i.i, label %cvSLdet.exit.thread.i, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.djb = fdiv double %i.dio, %i.diy
  %i.djc = fdiv double %i.djb, %i.dgq
  %i.djd = load double, ptr %i.did, align 8, !tbaa !53
  %i.dje = fadd double %i.djc, %i.djd             ; 3 uses
  %i.djf = getelementptr inbounds nuw i8, ptr %0, i64 1912
  %i.djg = load double, ptr %i.djf, align 8, !tbaa !53
  %i.djh = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.dji = load double, ptr %i.djh, align 8, !tbaa !53
  %i.djj = fmul double %.2300.i.i, %i.dji         ; 2 uses
  %i.djk = getelementptr inbounds nuw i8, ptr %0, i64 1976 ; 2 uses
  %i.djl = load double, ptr %i.djk, align 8, !tbaa !53
  %i.djm = fmul double %.2300.i.i, %i.djl
  %i.djn = fmul double %.2300.i.i, %i.djm         ; 2 uses
  %i.djo = getelementptr inbounds nuw i8, ptr %0, i64 2008
  %i.djp = load double, ptr %i.djo, align 8, !tbaa !53
  %i.djq = fmul double %.2300.i.i, %i.djp
  %i.djr = fmul double %.2300.i.i, %i.djq
  %i.djs = fmul double %.2300.i.i, %i.djr
  %i.djt = fsub double %i.djj, %i.djn             ; 4 uses
  %i.dju = fsub double %i.djn, %i.djs
  %i.djv = fsub double %i.djt, %i.dju             ; 2 uses
  %i.djw = tail call double @SUNRabs(double noundef %i.djt) #12
  %i.djx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.djy = load double, ptr %i.djx, align 8, !tbaa !53
  %i.djz = fmul double %i.djy, 1.000000e-10
  %i.dka = fcmp olt double %i.djw, %i.djz
  br i1 %i.dka, label %cvSLdet.exit.thread.i, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.dkb = fsub double %i.djg, %i.djj
  %i.dkc = fsub double %i.dkb, %i.djt
  %i.dkd = fsub double %i.dkc, %i.djv
  %i.dke = fneg double %i.dkd
  %i.dkf = fdiv double %i.dke, %i.djt             ; 3 uses
  %i.dkg = fcmp olt double %i.dkf, 1.000000e-10
  %i.dkh = fcmp ogt double %i.dkf, 4.000000e+00
  %or.cond3.2.i.i = or i1 %i.dkg, %i.dkh
  %i.dki = fcmp olt double %i.dje, 1.000000e-10
  %or.cond.i304 = select i1 %or.cond3.2.i.i, i1 true, i1 %i.dki
  br i1 %or.cond.i304, label %cvSLdet.exit.thread.i, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.dkj = fdiv double %i.djv, %i.dkf
  %i.dkk = fdiv double %i.dkj, %i.dgq
  %i.dkl = load double, ptr %i.djk, align 8, !tbaa !53
  %i.dkm = fadd double %i.dkk, %i.dkl
  %i.dkn = fdiv double %i.dkm, %i.dje             ; 2 uses
  %i.dko = fdiv double %i.dhx, %i.dje
  %i.dkp = load i32, ptr %i.bg, align 8, !tbaa !66 ; 3 uses
  %i.dkq = mul nsw i32 %i.dkp, %i.dkp
  %i.dkr = add nsw i32 %i.dkq, -1
  %i.dks = sitofp i32 %i.dkr to double
  %i.dkt = sitofp i32 %i.dkp to double
  %i.dku = fadd double %i.dkt, -1.000000e+00
  %i.dkv = tail call double @llvm.fmuladd.f64(double %i.dkn, double %i.dko, double -1.000000e+00)
  %i.dkw = fmul nnan double %i.dks, -2.500000e-01
  %i.dkx = tail call double @llvm.fmuladd.f64(double %i.dkw, double %i.dkn, double %i.dkv)
  %i.dky = fdiv double -2.000000e+00, %i.dku
  %i.dkz = tail call double @llvm.fmuladd.f64(double %i.dky, double %i.dkx, double 1.000000e+00) ; 2 uses
  %i.dla = tail call double @SUNRabs(double noundef %i.dkz) #12
  %i.dlb = fcmp olt double %i.dla, 1.000000e-10
  br i1 %i.dlb, label %cvSLdet.exit.thread.i, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.dlc = fdiv double 1.000000e+00, %i.dkz
  %i.dld = fsub double %i.dlc, %.2300.i.i
  %i.dle = tail call double @SUNRabs(double noundef %i.dld) #12
  %i.dlf = fcmp ule double %i.dle, 1.000000e-02
  %i.dlg = fcmp ogt double %.2300.i.i, f0x3FEF5C28F5C28F5C
  %or.cond79.i = and i1 %i.dlg, %i.dlf
  br i1 %or.cond79.i, label %bb.js, label %cvSLdet.exit.thread.i

bb.js:                                            ; preds = %bb.jr
  %i.dlh = icmp eq i32 %.1302.i.i, 1              ; 2 uses
  %spec.store.select.i.i = select i1 %i.dlh, i32 4, i32 %.1302.i.i ; 2 uses
  %i.dli = icmp eq i32 %spec.store.select.i.i, 3
  br i1 %i.dli, label %cvSLdet.exit.thread77.i, label %cvSLdet.exit.i

cvSLdet.exit.thread77.i:                          ; preds = %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.jt

cvSLdet.exit.thread.i:                            ; preds = %bb.jc, %bb.jr, %bb.jq, %bb.jp, %bb.jo, %bb.jn, %bb.jm, %bb.jl, %.loopexit333.i.i, %bb.jk, %bb.jj, %bb.ji, %bb.jh, %bb.jg, %bb.jf
end_hunk_1
