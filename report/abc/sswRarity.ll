Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sswRarity?download=true
inline.NumInlined: 245
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 24
begin_hunk_0_@TransposeTest:vector.ph
  store <2 x i64> zeroinitializer, ptr %i.v, align 16, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store <2 x i64> zeroinitializer, ptr %i.w, align 16, !tbaa !50
  store <2 x i64> zeroinitializer, ptr %i.x, align 16, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store <2 x i64> zeroinitializer, ptr %i.y, align 16, !tbaa !50
  store <2 x i64> zeroinitializer, ptr %i.z, align 16, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store <2 x i64> zeroinitializer, ptr %i.aa, align 16, !tbaa !50
  store <2 x i64> zeroinitializer, ptr %i.ab, align 16, !tbaa !50
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  store <2 x i64> zeroinitializer, ptr %i.ac, align 16, !tbaa !50
  store <2 x i64> zeroinitializer, ptr %i.ad, align 16, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store <2 x i64> zeroinitializer, ptr %i.ae, align 16, !tbaa !50
  store <2 x i64> zeroinitializer, ptr %i.af, align 16, !tbaa !50
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  store <2 x i64> zeroinitializer, ptr %i.ag, align 16, !tbaa !50
  store <2 x i64> zeroinitializer, ptr %i.ah, align 16, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ai = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #22
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %Abc_Clock.exit, label %bb.a

bb.a:                                             ; preds = %vector.ph
  %i.ak = load i64, ptr %3, align 8, !tbaa !62
  %.neg21 = mul i64 %i.ak, -1000000
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !63
  %.neg = sdiv i64 %i.am, -1000
  %.neg22 = add i64 %.neg, %.neg21
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %vector.ph, %bb.a
  %.0.i.neg = phi i64 [ %.neg22, %bb.a ], [ 1, %vector.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.b

bb.b:                                             ; preds = %Abc_Clock.exit, %transpose64Simple.exit
  %.127 = phi i32 [ 0, %Abc_Clock.exit ], [ %i.ba, %transpose64Simple.exit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.b, i8 0, i64 512, i1 false), !tbaa !50
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %bb.b
  %indvars.iv20.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next21.i, %bb.h ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv20.i
  %i.ao = lshr exact i64 -9223372036854775808, %indvars.iv20.i ; 2 uses
  %.pre24.i = load i64, ptr %i.an, align 8, !tbaa !50 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i.1, %bb.g ] ; 5 uses
  %i.ap = shl nuw i64 1, %indvars.iv.i
  %i.aq = and i64 %i.ap, %.pre24.i
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  %i.as = load i64, ptr %i.ar, align 16, !tbaa !50
  %i.at = or i64 %i.as, %i.ao
  store i64 %i.at, ptr %i.ar, align 16, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = shl nuw i64 2, %indvars.iv.i
  %i.av = and i64 %i.au, %.pre24.i
  %.not.i.1 = icmp eq i64 %i.av, 0
  br i1 %.not.i.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !50
  %i.az = or i64 %i.ay, %i.ao
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 64
  br i1 %exitcond.not.i.1, label %bb.h, label %bb.c, !llvm.loop !2

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next21.i, 64
  br i1 %exitcond23.not.i, label %transpose64Simple.exit, label %.preheader.i, !llvm.loop !3

transpose64Simple.exit:                           ; preds = %bb.h
  %i.ba = add nuw nsw i32 %.127, 1                ; 2 uses
  %exitcond31.not = icmp eq i32 %i.ba, 100001
  br i1 %exitcond31.not, label %bb.i, label %bb.b, !llvm.loop !125

bb.i:                                             ; preds = %transpose64Simple.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.bb = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #22
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %Abc_Clock.exit16, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = load i64, ptr %2, align 8, !tbaa !62
  %i.be = mul nsw i64 %i.bd, 1000000
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !63
  %i.bh = sdiv i64 %i.bg, 1000
  %i.bi = add nsw i64 %i.bh, %i.be
  br label %Abc_Clock.exit16

Abc_Clock.exit16:                                 ; preds = %bb.i, %bb.j
  %.0.i15 = phi i64 [ %i.bi, %bb.j ], [ -1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.bj = add i64 %.0.i15, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1)
  %i.bk = sitofp i64 %i.bj to double
  %i.bl = fdiv double %i.bk, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.32, double noundef %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.bm = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #22
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %Abc_Clock.exit18, label %bb.k

bb.k:                                             ; preds = %Abc_Clock.exit16
  %i.bo = load i64, ptr %1, align 8, !tbaa !62
  %.neg24 = mul i64 %i.bo, -1000000
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !63
  %.neg23 = sdiv i64 %i.bq, -1000
  %.neg25 = add i64 %.neg23, %.neg24
  br label %Abc_Clock.exit18

Abc_Clock.exit18:                                 ; preds = %Abc_Clock.exit16, %bb.k
  %.0.i17.neg = phi i64 [ %.neg25, %bb.k ], [ 1, %Abc_Clock.exit16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.l

bb.l:                                             ; preds = %Abc_Clock.exit18, %bb.l
  %.228 = phi i32 [ 0, %Abc_Clock.exit18 ], [ %i.br, %bb.l ]
  call void @transpose64(ptr noundef nonnull %i.a)
  %i.br = add nuw nsw i32 %.228, 1                ; 2 uses
  %exitcond32.not = icmp eq i32 %i.br, 100001
  br i1 %exitcond32.not, label %bb.m, label %bb.l, !llvm.loop !126

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  %i.bs = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #22
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %Abc_Clock.exit20, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = load i64, ptr %0, align 8, !tbaa !62
  %i.bv = mul nsw i64 %i.bu, 1000000
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !63
  %i.by = sdiv i64 %i.bx, 1000
  %i.bz = add nsw i64 %i.by, %i.bv
  br label %Abc_Clock.exit20

Abc_Clock.exit20:                                 ; preds = %bb.m, %bb.n
  %.0.i19 = phi i64 [ %i.bz, %bb.n ], [ -1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %i.ca = add i64 %.0.i19, %.0.i17.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1)
  %i.cb = sitofp i64 %i.ca to double
  %i.cc = fdiv double %i.cb, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.32, double noundef %i.cc)
  br label %bb.o

bb.o:                                             ; preds = %Abc_Clock.exit20, %bb.q
  %indvars.iv33 = phi i64 [ 0, %Abc_Clock.exit20 ], [ %indvars.iv.next34, %bb.q ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv33
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !50
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv33
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !50
  %.not = icmp eq i64 %i.ce, %i.cg
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2)
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond36.not = icmp eq i64 %indvars.iv.next34, 64
  br i1 %exitcond36.not, label %bb.r, label %bb.o, !llvm.loop !127

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Ssw_RarTranspose(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [64 x i64], align 16              ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = load ptr, ptr %0, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.preheader36.lr.ph, label %._crit_edge41.split

.preheader36.lr.ph:                               ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !64   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  %i.i = getelementptr i8, ptr %0, i64 40
  br i1 %i.h, label %.preheader36.lr.ph.split, label %._crit_edge41.split

.preheader36.lr.ph.split:                         ; preds = %.preheader36.lr.ph
  %i.j = getelementptr i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32   ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 104
  %.val30 = load i32, ptr %i.m, align 8, !tbaa !57
  %i.n = getelementptr i8, ptr %i.l, i64 24
  %i.o = getelementptr i8, ptr %i.l, i64 112
  %.val34 = load ptr, ptr %i.j, align 8, !tbaa !65
  %i.p = sext i32 %.val30 to i64
  %i.q = zext nneg i32 %i.g to i64                ; 4 uses
  %wide.trip.count54 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %.preheader36

.preheader36:                                     ; preds = %.preheader36.lr.ph.split, %._crit_edge
  %indvars.iv51 = phi i64 [ 0, %.preheader36.lr.ph.split ], [ %indvars.iv.next52, %._crit_edge ] ; 3 uses
  %i.r = shl nuw nsw i64 %indvars.iv51, 6
  %i.s = or disjoint i64 %i.r, 63                 ; 4 uses
  br label %.preheader35

.preheader35:                                     ; preds = %.preheader36, %middle.block
  %indvars.iv47 = phi i64 [ 0, %.preheader36 ], [ %indvars.iv.next48, %middle.block ] ; 3 uses
  %i.t = shl nuw nsw i64 %indvars.iv47, 6
  %i.u = or disjoint i64 %i.t, 63
  br label %bb.b

bb.b:                                             ; preds = %.preheader35, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader35 ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.v = sub nuw nsw i64 %i.u, %indvars.iv        ; 2 uses
  %i.w = icmp slt i64 %i.v, %i.p
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val31 = load ptr, ptr %i.n, align 8, !tbaa !66
  %.val32 = load i32, ptr %i.o, align 8, !tbaa !67
  %i.x = getelementptr i8, ptr %.val31, i64 8
  %.val31.val = load ptr, ptr %i.x, align 8, !tbaa !47
  %i.y = trunc nuw nsw i64 %i.v to i32
  %i.z = add nsw i32 %.val32, %i.y
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %.val31.val, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !48
  %i.ad = getelementptr i8, ptr %i.ac, i64 36
  %.val = load i32, ptr %i.ad, align 4, !tbaa !49
  %.val29 = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.ae = mul nsw i32 %.val, %i.d
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %.val29, i64 %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv51
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !50
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ %i.ai, %bb.c ], [ 0, %bb.b ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store i64 %.sink, ptr %i.aj, align 8, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !128

.preheader:                                       ; preds = %bb.d, %.preheader
  %.02830.i = phi i32 [ %i.av, %.preheader ], [ 0, %bb.d ] ; 2 uses
  %i.ak = sext i32 %.02830.i to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ak ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !50 ; 2 uses
  %i.an = getelementptr i8, ptr %i.al, i64 256    ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !50 ; 2 uses
  %i.ap = lshr i64 %i.ao, 32
  %.masked.i = and i64 %i.am, 4294967295
  %i.aq = xor i64 %i.ap, %.masked.i               ; 2 uses
  %i.ar = xor i64 %i.aq, %i.am
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !50
  %i.as = shl nuw i64 %i.aq, 32
  %i.at = xor i64 %i.as, %i.ao
  store i64 %i.at, ptr %i.an, align 8, !tbaa !50
  %i.au = add nsw i32 %.02830.i, 33
  %i.av = and i32 %i.au, -33                      ; 2 uses
  %i.aw = icmp slt i32 %i.av, 64
  br i1 %i.aw, label %.preheader, label %.preheader.1.i, !llvm.loop !1

.preheader.1.i:                                   ; preds = %.preheader, %.preheader.1.i
  %.02830.1.i = phi i32 [ %i.bj, %.preheader.1.i ], [ 0, %.preheader ] ; 2 uses
  %i.ax = sext i32 %.02830.1.i to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ax ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !50 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ay, i64 128    ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !50 ; 2 uses
  %i.bc = lshr i64 %i.bb, 16
  %i.bd = xor i64 %i.bc, %i.az
  %i.be = and i64 %i.bd, 281470681808895          ; 2 uses
  %i.bf = xor i64 %i.be, %i.az
  store i64 %i.bf, ptr %i.ay, align 8, !tbaa !50
  %i.bg = shl nuw i64 %i.be, 16
  %i.bh = xor i64 %i.bg, %i.bb
  store i64 %i.bh, ptr %i.ba, align 8, !tbaa !50
  %i.bi = add nsw i32 %.02830.1.i, 17
  %i.bj = and i32 %i.bi, -17                      ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 64
  br i1 %i.bk, label %.preheader.1.i, label %.preheader.2.i, !llvm.loop !1

.preheader.2.i:                                   ; preds = %.preheader.1.i, %.preheader.2.i
  %.02830.2.i = phi i32 [ %i.bx, %.preheader.2.i ], [ 0, %.preheader.1.i ] ; 2 uses
  %i.bl = sext i32 %.02830.2.i to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bl ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !50 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bm, i64 64     ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !50 ; 2 uses
  %i.bq = lshr i64 %i.bp, 8
  %i.br = xor i64 %i.bq, %i.bn
  %i.bs = and i64 %i.br, 71777214294589695        ; 2 uses
  %i.bt = xor i64 %i.bs, %i.bn
  store i64 %i.bt, ptr %i.bm, align 8, !tbaa !50
  %i.bu = shl nuw i64 %i.bs, 8
  %i.bv = xor i64 %i.bu, %i.bp
  store i64 %i.bv, ptr %i.bo, align 8, !tbaa !50
  %i.bw = add nsw i32 %.02830.2.i, 9
  %i.bx = and i32 %i.bw, -9                       ; 2 uses
  %i.by = icmp slt i32 %i.bx, 64
  br i1 %i.by, label %.preheader.2.i, label %.preheader.3.i, !llvm.loop !1

.preheader.3.i:                                   ; preds = %.preheader.2.i, %.preheader.3.i
  %.02830.3.i = phi i32 [ %i.cl, %.preheader.3.i ], [ 0, %.preheader.2.i ] ; 2 uses
  %i.bz = sext i32 %.02830.3.i to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bz ; 3 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !50 ; 2 uses
  %i.cc = getelementptr i8, ptr %i.ca, i64 32     ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !50 ; 2 uses
  %i.ce = lshr i64 %i.cd, 4
  %i.cf = xor i64 %i.ce, %i.cb
  %i.cg = and i64 %i.cf, 1085102592571150095      ; 2 uses
  %i.ch = xor i64 %i.cg, %i.cb
  store i64 %i.ch, ptr %i.ca, align 8, !tbaa !50
  %i.ci = shl nuw i64 %i.cg, 4
  %i.cj = xor i64 %i.ci, %i.cd
  store i64 %i.cj, ptr %i.cc, align 8, !tbaa !50
  %i.ck = add nsw i32 %.02830.3.i, 5
  %i.cl = and i32 %i.ck, -5                       ; 2 uses
  %i.cm = icmp slt i32 %i.cl, 64
  br i1 %i.cm, label %.preheader.3.i, label %.preheader.4.i, !llvm.loop !1

.preheader.4.i:                                   ; preds = %.preheader.3.i, %.preheader.4.i
  %.02830.4.i = phi i32 [ %i.cz, %.preheader.4.i ], [ 0, %.preheader.3.i ] ; 2 uses
  %i.cn = sext i32 %.02830.4.i to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cn ; 3 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !50 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.co, i64 16     ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !50 ; 2 uses
  %i.cs = lshr i64 %i.cr, 2
  %i.ct = xor i64 %i.cs, %i.cp
  %i.cu = and i64 %i.ct, 3689348814741910323      ; 2 uses
  %i.cv = xor i64 %i.cu, %i.cp
  store i64 %i.cv, ptr %i.co, align 8, !tbaa !50
  %i.cw = shl nuw i64 %i.cu, 2
  %i.cx = xor i64 %i.cw, %i.cr
  store i64 %i.cx, ptr %i.cq, align 8, !tbaa !50
  %i.cy = add nsw i32 %.02830.4.i, 3
  %i.cz = and i32 %i.cy, -3                       ; 2 uses
  %i.da = icmp slt i32 %i.cz, 64
  br i1 %i.da, label %.preheader.4.i, label %.preheader.5.i, !llvm.loop !1

.preheader.5.i:                                   ; preds = %.preheader.4.i, %.preheader.5.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.5.i ], [ 0, %.preheader.4.i ] ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i ; 3 uses
  %i.dc = load i64, ptr %i.db, align 16, !tbaa !50 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !50 ; 2 uses
  %i.df = lshr i64 %i.de, 1
  %i.dg = xor i64 %i.df, %i.dc
  %i.dh = and i64 %i.dg, 6148914691236517205      ; 2 uses
  %i.di = xor i64 %i.dh, %i.dc
  store i64 %i.di, ptr %i.db, align 16, !tbaa !50
  %i.dj = shl nuw i64 %i.dh, 1
  %i.dk = xor i64 %i.dj, %i.de
  store i64 %i.dk, ptr %i.dd, align 8, !tbaa !50
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i ; 3 uses
  %i.dm = load i64, ptr %i.dl, align 16, !tbaa !50 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !50 ; 2 uses
  %i.dp = lshr i64 %i.do, 1
  %i.dq = xor i64 %i.dp, %i.dm
  %i.dr = and i64 %i.dq, 6148914691236517205      ; 2 uses
  %i.ds = xor i64 %i.dr, %i.dm
  store i64 %i.ds, ptr %i.dl, align 16, !tbaa !50
  %i.dt = shl nuw i64 %i.dr, 1
  %i.du = xor i64 %i.dt, %i.do
  store i64 %i.du, ptr %i.dn, align 8, !tbaa !50
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 4
  %i.dv = icmp samesign ult i64 %indvars.iv.next.i, 62
  br i1 %i.dv, label %.preheader.5.i, label %vector.body, !llvm.loop !1

vector.body:                                      ; preds = %.preheader.5.i
  %i.dw = getelementptr [8 x i8], ptr %.val34, i64 %indvars.iv47 ; 4 uses
  br label %transpose64.exit

transpose64.exit:                                 ; preds = %transpose64.exit, %vector.body
  %indvars.iv43 = phi i64 [ 0, %vector.body ], [ %indvars.iv.next44.3, %transpose64.exit ] ; 6 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv43
  %i.dy = load i64, ptr %i.dx, align 16, !tbaa !50
  %i.dz = sub nuw nsw i64 %i.s, %indvars.iv43
  %i.ea = mul nuw nsw i64 %i.dz, %i.q
  %gep = getelementptr [8 x i8], ptr %i.dw, i64 %i.ea
  store i64 %i.dy, ptr %gep, align 8, !tbaa !50
  %indvars.iv.next44 = or disjoint i64 %indvars.iv43, 1 ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next44
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !50
  %i.ed = sub nuw nsw i64 %i.s, %indvars.iv.next44
  %i.ee = mul nuw nsw i64 %i.ed, %i.q
  %gep.1 = getelementptr [8 x i8], ptr %i.dw, i64 %i.ee
  store i64 %i.ec, ptr %gep.1, align 8, !tbaa !50
  %indvars.iv.next44.1 = or disjoint i64 %indvars.iv43, 2 ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next44.1
  %i.eg = load i64, ptr %i.ef, align 16, !tbaa !50
  %i.eh = sub nuw nsw i64 %i.s, %indvars.iv.next44.1
  %i.ei = mul nuw nsw i64 %i.eh, %i.q
  %gep.2 = getelementptr [8 x i8], ptr %i.dw, i64 %i.ei
  store i64 %i.eg, ptr %gep.2, align 8, !tbaa !50
  %indvars.iv.next44.2 = or disjoint i64 %indvars.iv43, 3 ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next44.2
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !50
  %i.el = sub nuw nsw i64 %i.s, %indvars.iv.next44.2
  %i.em = mul nuw nsw i64 %i.el, %i.q
  %gep.3 = getelementptr [8 x i8], ptr %i.dw, i64 %i.em
  store i64 %i.ek, ptr %gep.3, align 8, !tbaa !50
  %indvars.iv.next44.3 = add nuw nsw i64 %indvars.iv43, 4 ; 2 uses
  %exitcond46.not.3 = icmp eq i64 %indvars.iv.next44.3, 64
  br i1 %exitcond46.not.3, label %middle.block, label %transpose64.exit, !llvm.loop !129

middle.block:                                     ; preds = %transpose64.exit
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count
  br i1 %exitcond50.not, label %._crit_edge, label %.preheader35, !llvm.loop !130

._crit_edge:                                      ; preds = %middle.block
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %._crit_edge41.split, label %.preheader36, !llvm.loop !131

._crit_edge41.split:                              ; preds = %._crit_edge, %.preheader36.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ssw_RarManInitialize(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val61 = load ptr, ptr %0, align 8, !tbaa !43
  %i.b = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.c = getelementptr i8, ptr %.val61, i64 4
  %.val61.val = load i32, ptr %i.c, align 4, !tbaa !20 ; 3 uses
  %i.d = icmp sgt i32 %.val61.val, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val62 = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.f = getelementptr i8, ptr %i.e, i64 48
  %.val66 = load ptr, ptr %i.f, align 8, !tbaa !68
  %i.g = getelementptr i8, ptr %.val66, i64 36
  %.val54 = load i32, ptr %i.g, align 4, !tbaa !49
  %i.h = mul i32 %.val61.val, %.val54
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr [8 x i8], ptr %.val62, i64 %i.i
  %i.k = zext nneg i32 %.val61.val to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 -1, i64 %i.l, i1 false), !tbaa !50
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  tail call void @Ssw_RarManAssingRandomPis(ptr noundef nonnull %0)
  %.not = icmp eq ptr %1, null
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !32   ; 7 uses
  %i.n = getelementptr i8, ptr %i.m, i64 104
  %.val67 = load i32, ptr %i.n, align 8, !tbaa !57 ; 4 uses
  %i.o = icmp sgt i32 %.val67, 0                  ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader72

.preheader72:                                     ; preds = %._crit_edge
  br i1 %i.o, label %.lr.ph80, label %.critedge

.lr.ph80:                                         ; preds = %.preheader72
  %.val59 = load ptr, ptr %0, align 8, !tbaa !43
  %.val60 = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.p = getelementptr i8, ptr %.val59, i64 4
  %.val59.val = load i32, ptr %i.p, align 4, !tbaa !20 ; 4 uses
  %i.q = icmp sgt i32 %.val59.val, 0
  br i1 %i.q, label %.lr.ph80.split, label %.critedge

.lr.ph80.split:                                   ; preds = %.lr.ph80
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !45
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val50 = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.u = getelementptr i8, ptr %i.m, i64 108
  %.val = load i32, ptr %i.u, align 4, !tbaa !42
  %i.v = getelementptr i8, ptr %1, i64 8
  %.val63 = load ptr, ptr %i.v, align 8, !tbaa !56
  %i.w = zext nneg i32 %.val67 to i64             ; 4 uses
  %i.x = sext i32 %.val to i64
  %invariant.gep104 = getelementptr [8 x i8], ptr %.val50, i64 %i.x
  %wide.trip.count = zext nneg i32 %.val59.val to i64 ; 5 uses
  %min.iters.check = icmp ugt i32 %.val59.val, 3
  %ident.check.not = icmp eq i32 %.val67, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.y = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph77

.preheader:                                       ; preds = %._crit_edge
  br i1 %i.o, label %.critedge2.lr.ph, label %.critedge

.critedge2.lr.ph:                                 ; preds = %.preheader
  %.val57 = load ptr, ptr %0, align 8, !tbaa !43
  %.val58 = load ptr, ptr %i.b, align 8, !tbaa !44 ; 2 uses
  %i.z = getelementptr i8, ptr %.val57, i64 4
  %.val57.val = load i32, ptr %i.z, align 4, !tbaa !20 ; 5 uses
  %i.aa = icmp sgt i32 %.val57.val, 0
  br i1 %i.aa, label %.critedge2.preheader, label %.critedge

.critedge2.preheader:                             ; preds = %.critedge2.lr.ph
  %i.ab = getelementptr i8, ptr %i.m, i64 16
  %.val70 = load ptr, ptr %i.ab, align 8, !tbaa !45
  %i.ac = getelementptr i8, ptr %.val70, i64 8
  %.val70.val = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ad = getelementptr i8, ptr %i.m, i64 24
  %.val64 = load ptr, ptr %i.ad, align 8, !tbaa !66
  %i.ae = getelementptr i8, ptr %.val64, i64 8
  %.val64.val = load ptr, ptr %i.ae, align 8, !tbaa !47
  %i.af = getelementptr i8, ptr %i.m, i64 108
  %.val71 = load i32, ptr %i.af, align 4, !tbaa !42
  %i.ag = getelementptr i8, ptr %i.m, i64 112
  %.val65 = load i32, ptr %i.ag, align 8, !tbaa !67
  %i.ah = sext i32 %.val71 to i64
  %i.ai = sext i32 %.val65 to i64
  %wide.trip.count101 = zext nneg i32 %.val67 to i64
  %invariant.gep106 = getelementptr [8 x i8], ptr %.val64.val, i64 %i.ai
  %invariant.gep108 = getelementptr [8 x i8], ptr %.val70.val, i64 %i.ah
  %wide.trip.count96 = zext nneg i32 %.val57.val to i64 ; 5 uses
  %min.iters.check113 = icmp ult i32 %.val57.val, 6
  %n.vec115 = and i64 %wide.trip.count96, 2147483644 ; 3 uses
  %cmp.n122 = icmp eq i64 %n.vec115, %wide.trip.count96
  %xtraiter125 = and i64 %wide.trip.count96, 3    ; 2 uses
  %lcmp.mod126.not = icmp eq i64 %xtraiter125, 0
  br label %.critedge2

.lr.ph77:                                         ; preds = %.lr.ph80.split, %._crit_edge78
  %indvars.iv88 = phi i64 [ 0, %.lr.ph80.split ], [ %indvars.iv.next89, %._crit_edge78 ] ; 3 uses
  %gep105 = getelementptr [8 x i8], ptr %invariant.gep104, i64 %indvars.iv88
  %i.aj = load ptr, ptr %gep105, align 8, !tbaa !48
  %i.ak = getelementptr i8, ptr %i.aj, i64 36
  %.val53 = load i32, ptr %i.ak, align 4, !tbaa !49
  %i.al = mul nsw i32 %.val59.val, %.val53
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %.val60, i64 %i.am ; 4 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %.val63, i64 %indvars.iv88 ; 4 uses
  br i1 %or.cond, label %vector.body, label %scalar.ph.preheader

vector.body:                                      ; preds = %.lr.ph77, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph77 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %wide.load = load <2 x i32>, ptr %i.ao, align 4, !tbaa !53
  %wide.load111 = load <2 x i32>, ptr %i.ap, align 4, !tbaa !53
  %i.aq = icmp ne <2 x i32> %wide.load, zeroinitializer
  %i.ar = icmp ne <2 x i32> %wide.load111, zeroinitializer
  %i.as = sext <2 x i1> %i.aq to <2 x i64>
  %i.at = sext <2 x i1> %i.ar to <2 x i64>
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <2 x i64> %i.as, ptr %i.au, align 8, !tbaa !50
  store <2 x i64> %i.at, ptr %i.av, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge78, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph77, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph77 ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ax = mul nuw nsw i64 %indvars.iv.ph, %i.w
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.ax
  %i.ay = load i32, ptr %gep.prol, align 4, !tbaa !53
  %.not49.prol = icmp ne i32 %i.ay, 0
  %i.az = sext i1 %.not49.prol to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.ph
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !50
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bb = icmp eq i64 %indvars.iv.ph, %i.y
  br i1 %i.bb, label %._crit_edge78, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bc = mul nuw nsw i64 %indvars.iv, %i.w
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.bc
  %i.bd = load i32, ptr %gep, align 4, !tbaa !53
  %.not49 = icmp ne i32 %i.bd, 0
  %i.be = sext i1 %.not49 to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = mul nuw nsw i64 %indvars.iv.next, %i.w
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.bg
  %i.bh = load i32, ptr %gep.1, align 4, !tbaa !53
  %.not49.1 = icmp ne i32 %i.bh, 0
  %i.bi = sext i1 %.not49.1 to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !50
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge78, label %scalar.ph, !llvm.loop !133

._crit_edge78:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next89, %i.w
  br i1 %exitcond92.not, label %.critedge, label %.lr.ph77, !llvm.loop !134

.critedge2:                                       ; preds = %.critedge2.preheader, %._crit_edge83
  %indvars.iv98 = phi i64 [ 0, %.critedge2.preheader ], [ %indvars.iv.next99, %._crit_edge83 ] ; 3 uses
  %gep107 = getelementptr [8 x i8], ptr %invariant.gep106, i64 %indvars.iv98
  %i.bk = load ptr, ptr %gep107, align 8, !tbaa !48
  %gep109 = getelementptr [8 x i8], ptr %invariant.gep108, i64 %indvars.iv98
  %i.bl = load ptr, ptr %gep109, align 8, !tbaa !48
  %i.bm = getelementptr i8, ptr %i.bk, i64 36
  %.val52 = load i32, ptr %i.bm, align 4, !tbaa !49
  %i.bn = mul nsw i32 %.val57.val, %.val52
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %.val58, i64 %i.bo ; 6 uses
  %i.bq = getelementptr i8, ptr %i.bl, i64 36
  %.val51 = load i32, ptr %i.bq, align 4, !tbaa !49
  %i.br = mul nsw i32 %.val51, %.val57.val
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %.val58, i64 %i.bs ; 6 uses
  br i1 %min.iters.check113, label %scalar.ph112.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.critedge2
  %i.bu = sub nsw i64 %i.bs, %i.bo
  %i.bv = shl nsw i64 %i.bu, 3
  %i.bw = add nsw i64 %i.bv, -1
  %diff.check = icmp ult i64 %i.bw, 31
  br i1 %diff.check, label %scalar.ph112.preheader, label %vector.body116

vector.body116:                                   ; preds = %vector.memcheck, %vector.body116
  %index117 = phi i64 [ %index.next120, %vector.body116 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %index117 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load118 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !50
  %wide.load119 = load <2 x i64>, ptr %i.by, align 8, !tbaa !50
end_hunk_0
begin_hunk_1_@Ssw_RarManCheckNonConstOutputs:bb.a

bb.o:                                             ; preds = %bb.n
  %i.bc = sext i32 %spec.store.select.i.i to i64
  %i.bd = shl nsw i64 %i.bc, 3
  %i.be = tail call noalias ptr @malloc(i64 noundef %i.bd) #23
  br label %Vec_PtrStart.exit

Vec_PtrStart.exit:                                ; preds = %bb.n, %bb.o
  %i.bf = phi ptr [ %i.be, %bb.o ], [ null, %bb.n ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !47
  store i32 %.val5879, ptr %i.bg, align 4, !tbaa !79
  %i.bi = sext i32 %.val5879 to i64
  %i.bj = shl nuw nsw i64 %i.bi, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bf, i8 0, i64 %i.bj, i1 false)
  store ptr %i.ba, ptr %i.g, align 8, !tbaa !75
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %Vec_PtrStart.exit
  %.val59 = phi ptr [ %i.bf, %Vec_PtrStart.exit ], [ %.val59.pre, %._crit_edge ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.val59, i64 %indvars.iv
  store ptr inttoptr (i64 1 to ptr), ptr %i.bk, align 8, !tbaa !48
  %i.bl = load ptr, ptr %0, align 8, !tbaa !43    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !145 ; 2 uses
  %.not50 = icmp eq ptr %i.bn, null
  br i1 %.not50, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = tail call i32 %i.bn(i32 noundef %i.ag, ptr noundef null) #22
  %.not51 = icmp eq i32 %i.bo, 0
  br i1 %.not51, label %._crit_edge87, label %.loopexit

._crit_edge87:                                    ; preds = %bb.q
  %.pre = load ptr, ptr %0, align 8, !tbaa !43
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge87, %bb.p
  %i.bp = phi ptr [ %.pre, %._crit_edge87 ], [ %i.bl, %bb.p ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 44
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !146
  %.not52 = icmp eq i32 %i.br, 0
  %.pre89 = load ptr, ptr %i.c, align 8, !tbaa !32 ; 2 uses
  br i1 %.not52, label %bb.s, label %Ssw_RarManPoIsConst0.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr i8, ptr %.pre89, i64 112
  %.val55 = load i32, ptr %i.bs, align 8, !tbaa !67 ; 4 uses
  %i.bt = icmp ult i32 %.val55, 2
  br i1 %i.bt, label %Abc_Base10Log.exit, label %.lr.ph.preheader.i68

.lr.ph.preheader.i68:                             ; preds = %bb.s
  %i.bu = add i32 %.val55, -1
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.lr.ph.i69, %.lr.ph.preheader.i68
  %.013.i = phi i32 [ %i.bw, %.lr.ph.i69 ], [ 0, %.lr.ph.preheader.i68 ]
  %.0812.i = phi i32 [ %i.bv, %.lr.ph.i69 ], [ %i.bu, %.lr.ph.preheader.i68 ] ; 2 uses
  %i.bv = udiv i32 %.0812.i, 10
  %i.bw = add nuw nsw i32 %.013.i, 1              ; 2 uses
  %.not.i70 = icmp ult i32 %.0812.i, 10
  br i1 %.not.i70, label %Abc_Base10Log.exit, label %.lr.ph.i69, !llvm.loop !143

Abc_Base10Log.exit:                               ; preds = %.lr.ph.i69, %bb.s
  %.09.i = phi i32 [ %.val55, %bb.s ], [ %i.bw, %.lr.ph.i69 ] ; 3 uses
  %i.bx = load i32, ptr %i.a, align 8, !tbaa !72
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !77
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.3, i32 noundef %.09.i, i32 noundef %i.bx, i32 noundef %1, i32 noundef %.09.i, i32 noundef %i.bz, i32 noundef %.09.i, i32 noundef %.val55)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.32, double noundef %i.j)
  %.pre88 = load ptr, ptr %i.c, align 8, !tbaa !32
  br label %Ssw_RarManPoIsConst0.exit.thread

Ssw_RarManPoIsConst0.exit.thread:                 ; preds = %bb.f, %bb.e, %bb.r, %Abc_Base10Log.exit, %bb.d
  %i.ca = phi ptr [ %i.k, %bb.d ], [ %i.k, %bb.e ], [ %.pre89, %bb.r ], [ %.pre88, %Abc_Base10Log.exit ], [ %i.k, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 112
  %.val58 = load i32, ptr %i.cb, align 8, !tbaa !67 ; 2 uses
  %i.cc = sext i32 %.val58 to i64
  %i.cd = icmp slt i64 %indvars.iv.next, %i.cc
  br i1 %i.cd, label %bb.b, label %.critedge.loopexit, !llvm.loop !144

.critedge.loopexit:                               ; preds = %bb.b, %Ssw_RarManPoIsConst0.exit.thread, %Ssw_RarManObjWhichOne.exit
  %.pre90 = load i32, ptr %i.a, align 8, !tbaa !72
  %i.ce = icmp sgt i32 %.pre90, -1
  %i.cf = zext i1 %i.ce to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.a, %.critedge.loopexit
  %.0 = phi i32 [ 0, %bb.a ], [ %i.cf, %.critedge.loopexit ], [ 2, %bb.q ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @Ssw_RarManSimulate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  tail call void @Ssw_RarManInitialize(ptr noundef %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  tail call void @Aig_ManIncrementTravId(ptr noundef %i.h) #22
  %.not = icmp eq i32 %2, 0                       ; 3 uses
  %.pre266 = load ptr, ptr %i.g, align 8, !tbaa !32 ; 4 uses
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.pre266, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %.val150226 = load i32, ptr %i.k, align 4, !tbaa !79
  %i.l = icmp sgt i32 %.val150226, 0
  br i1 %i.l, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Aig_ObjRepr.exit.thread
  %i.n = phi ptr [ %.pre266, %.lr.ph ], [ %i.da, %Aig_ObjRepr.exit.thread ] ; 8 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Aig_ObjRepr.exit.thread ] ; 2 uses
  %i.o = phi ptr [ %i.j, %.lr.ph ], [ %i.dc, %Aig_ObjRepr.exit.thread ]
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val132 = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val132, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48   ; 3 uses
  %i.s = getelementptr i8, ptr %i.n, i64 256
  %.val152 = load ptr, ptr %i.s, align 8, !tbaa !82 ; 2 uses
  %.not.i = icmp eq ptr %.val152, null
  br i1 %.not.i, label %Aig_ObjRepr.exit.thread, label %Aig_ObjRepr.exit

Aig_ObjRepr.exit:                                 ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !49   ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %.val152, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !156  ; 6 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %Aig_ObjRepr.exit.thread, label %bb.c

bb.c:                                             ; preds = %Aig_ObjRepr.exit
  %i.z = getelementptr i8, ptr %i.n, i64 312
  %.val155 = load i32, ptr %i.z, align 8, !tbaa !157
  %i.aa = getelementptr i8, ptr %i.x, i64 32      ; 2 uses
  %.val156 = load i32, ptr %i.aa, align 8, !tbaa !158
  %.not223 = icmp eq i32 %.val156, %.val155
  br i1 %.not223, label %Aig_ObjRepr.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val17.i = load ptr, ptr %0, align 8, !tbaa !43
  %.val18.i = load ptr, ptr %i.m, align 8, !tbaa !44 ; 2 uses
  %i.ab = getelementptr i8, ptr %.val17.i, i64 4
  %.val17.val.i = load i32, ptr %i.ab, align 4, !tbaa !20 ; 4 uses
  %i.ac = mul nsw i32 %.val17.val.i, %i.u
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %.val18.i, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !49
  %i.ah = mul nsw i32 %i.ag, %.val17.val.i
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %.val18.i, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = xor i64 %i.an, %i.al
  %i.ap = shl i64 %i.ao, 60
  %sext.i = ashr i64 %i.ap, 63
  %i.aq = icmp sgt i32 %.val17.val.i, 0
  br i1 %i.aq, label %.lr.ph.preheader.i, label %Aig_ObjRepr.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %.val17.val.i to i64
  br label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Aig_ObjRepr.exit.thread, label %.lr.ph.i, !llvm.loop !5

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !50
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !50
  %i.av = xor i64 %i.au, %i.as
  %.not.i166 = icmp eq i64 %i.av, %sext.i
  br i1 %.not.i166, label %bb.e, label %Ssw_RarManObjsAreEqual.exit

Ssw_RarManObjsAreEqual.exit:                      ; preds = %.lr.ph.i
  %i.aw = getelementptr i8, ptr %i.n, i64 48
  %.val146 = load ptr, ptr %i.aw, align 8, !tbaa !68
  %i.ax = icmp eq ptr %i.x, %.val146
  br i1 %i.ax, label %bb.f, label %bb.p

bb.f:                                             ; preds = %Ssw_RarManObjsAreEqual.exit
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !80  ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !79 ; 7 uses
  %i.bb = load i32, ptr %i.ay, align 8, !tbaa !78
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.g, label %Vec_PtrPush.exit

bb.g:                                             ; preds = %bb.f
  %i.bd = icmp slt i32 %i.ba, 16
  br i1 %i.bd, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !47 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bf, null
  br i1 %.not9.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.bf, i64 noundef 128) #25
  br label %Vec_PtrGrow.exit.i

bb.j:                                             ; preds = %bb.h
  %i.bh = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #23
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.j, %bb.i
  %i.bi = phi ptr [ %i.bg, %bb.i ], [ %i.bh, %bb.j ]
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !47
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.k:                                             ; preds = %bb.g
  %i.bj = icmp samesign ult i32 %i.ba, 1073741823
  %i.bk = shl nuw nsw i32 %i.ba, 1
  %spec.select.i = select i1 %i.bj, i32 %i.bk, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.ba, %spec.select.i
  br i1 %.not.i10.i, label %bb.l, label %Vec_PtrPush.exit

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !47 ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.bm, null
  %i.bn = zext nneg i32 %spec.select.i to i64
  %i.bo = shl nuw nsw i64 %i.bn, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = tail call ptr @realloc(ptr noundef nonnull %i.bm, i64 noundef %i.bo) #25
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bq = tail call noalias ptr @malloc(i64 noundef %i.bo) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.br = phi ptr [ %i.bp, %bb.m ], [ %i.bq, %bb.n ]
  store ptr %i.br, ptr %i.bl, align 8, !tbaa !47
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.o, %Vec_PtrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.o ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ay, align 8, !tbaa !78
  %.pre264 = load i32, ptr %i.az, align 4, !tbaa !79
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.f, %bb.k, %Vec_PtrGrow.exit12.sink.split.i
  %i.bs = phi i32 [ %i.ba, %bb.f ], [ %i.ba, %bb.k ], [ %.pre264, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !47
  %i.bv = add nsw i32 %i.bs, 1
  store i32 %i.bv, ptr %i.az, align 4, !tbaa !79
  %i.bw = sext i32 %i.bs to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bw
  store ptr %i.r, ptr %i.bx, align 8, !tbaa !48
  %.pre265 = load ptr, ptr %i.g, align 8, !tbaa !32
  br label %Aig_ObjRepr.exit.thread

bb.p:                                             ; preds = %Ssw_RarManObjsAreEqual.exit
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !81  ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !79 ; 7 uses
  %i.cb = load i32, ptr %i.by, align 8, !tbaa !78
  %i.cc = icmp eq i32 %i.ca, %i.cb
  br i1 %i.cc, label %bb.q, label %Vec_PtrPush.exit174

bb.q:                                             ; preds = %bb.p
  %i.cd = icmp slt i32 %i.ca, 16
  br i1 %i.cd, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !47 ; 2 uses
  %.not9.i.i172 = icmp eq ptr %i.cf, null
  br i1 %.not9.i.i172, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.cf, i64 noundef 128) #25
  br label %Vec_PtrGrow.exit.i173

bb.t:                                             ; preds = %bb.r
  %i.ch = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #23
  br label %Vec_PtrGrow.exit.i173

Vec_PtrGrow.exit.i173:                            ; preds = %bb.t, %bb.s
  %i.ci = phi ptr [ %i.cg, %bb.s ], [ %i.ch, %bb.t ]
  store ptr %i.ci, ptr %i.ce, align 8, !tbaa !47
  br label %Vec_PtrGrow.exit12.sink.split.i170

bb.u:                                             ; preds = %bb.q
  %i.cj = icmp samesign ult i32 %i.ca, 1073741823
  %i.ck = shl nuw nsw i32 %i.ca, 1
  %spec.select.i167 = select i1 %i.cj, i32 %i.ck, i32 2147483647 ; 3 uses
  %.not.i10.i168 = icmp samesign ult i32 %i.ca, %spec.select.i167
  br i1 %.not.i10.i168, label %bb.v, label %Vec_PtrPush.exit174

bb.v:                                             ; preds = %bb.u
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !47 ; 2 uses
  %.not9.i11.i169 = icmp eq ptr %i.cm, null
  %i.cn = zext nneg i32 %spec.select.i167 to i64
  %i.co = shl nuw nsw i64 %i.cn, 3                ; 2 uses
  br i1 %.not9.i11.i169, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = tail call ptr @realloc(ptr noundef nonnull %i.cm, i64 noundef %i.co) #25
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.cq = tail call noalias ptr @malloc(i64 noundef %i.co) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cr = phi ptr [ %i.cp, %bb.w ], [ %i.cq, %bb.x ]
  store ptr %i.cr, ptr %i.cl, align 8, !tbaa !47
  br label %Vec_PtrGrow.exit12.sink.split.i170

Vec_PtrGrow.exit12.sink.split.i170:               ; preds = %bb.y, %Vec_PtrGrow.exit.i173
  %spec.select.sink.i171 = phi i32 [ %spec.select.i167, %bb.y ], [ 16, %Vec_PtrGrow.exit.i173 ]
  store i32 %spec.select.sink.i171, ptr %i.by, align 8, !tbaa !78
  %.pre = load i32, ptr %i.bz, align 4, !tbaa !79
  br label %Vec_PtrPush.exit174

Vec_PtrPush.exit174:                              ; preds = %bb.p, %bb.u, %Vec_PtrGrow.exit12.sink.split.i170
  %i.cs = phi i32 [ %i.ca, %bb.p ], [ %i.ca, %bb.u ], [ %.pre, %Vec_PtrGrow.exit12.sink.split.i170 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !47
  %i.cv = add nsw i32 %i.cs, 1
  store i32 %i.cv, ptr %i.bz, align 4, !tbaa !79
  %i.cw = sext i32 %i.cs to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.cw
  store ptr %i.x, ptr %i.cx, align 8, !tbaa !48
  %i.cy = load ptr, ptr %i.g, align 8, !tbaa !32  ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 312
  %.val158 = load i32, ptr %i.cz, align 8, !tbaa !157
  store i32 %.val158, ptr %i.aa, align 8, !tbaa !158
  br label %Aig_ObjRepr.exit.thread

Aig_ObjRepr.exit.thread:                          ; preds = %bb.e, %bb.d, %bb.b, %Vec_PtrPush.exit, %Vec_PtrPush.exit174, %Aig_ObjRepr.exit, %bb.c
  %i.da = phi ptr [ %i.n, %bb.c ], [ %i.n, %bb.d ], [ %i.n, %bb.b ], [ %.pre265, %Vec_PtrPush.exit ], [ %i.cy, %Vec_PtrPush.exit174 ], [ %i.n, %Aig_ObjRepr.exit ], [ %i.n, %bb.e ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !45 ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 4
  %.val150 = load i32, ptr %i.dd, align 4, !tbaa !79
  %i.de = sext i32 %.val150 to i64
  %i.df = icmp slt i64 %indvars.iv.next, %i.de
  br i1 %i.df, label %bb.b, label %.critedge, !llvm.loop !147

.critedge:                                        ; preds = %Aig_ObjRepr.exit.thread, %.preheader, %bb.a
  %i.dg = phi ptr [ %.pre266, %bb.a ], [ %.pre266, %.preheader ], [ %i.da, %Aig_ObjRepr.exit.thread ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !83 ; 3 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 4
  %.val149230 = load i32, ptr %i.dj, align 4, !tbaa !79
  %i.dk = icmp sgt i32 %.val149230, 0
  br i1 %i.dk, label %.lr.ph232, label %.critedge2.preheader

.lr.ph232:                                        ; preds = %.critedge
  %i.dl = getelementptr i8, ptr %0, i64 40
  br label %bb.aa

.critedge2.preheader.loopexit:                    ; preds = %Aig_ObjRepr.exit178.thread
  %i.dm = icmp sgt i32 %.val149, 0
  br label %.critedge2.preheader

.critedge2.preheader:                             ; preds = %.critedge2.preheader.loopexit, %.critedge
  %.val147238 = phi i1 [ false, %.critedge ], [ %i.dm, %.critedge2.preheader.loopexit ]
  %i.dn = phi ptr [ %i.di, %.critedge ], [ %i.mc, %.critedge2.preheader.loopexit ]
  %i.do = phi ptr [ %i.dg, %.critedge ], [ %i.ma, %.critedge2.preheader.loopexit ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !66 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 4
  %.val148 = load i32, ptr %i.dr, align 4, !tbaa !79 ; 2 uses
  %i.ds = icmp sgt i32 %.val148, 0
  br i1 %i.ds, label %.lr.ph237, label %.critedge4

.lr.ph237:                                        ; preds = %.critedge2.preheader
end_hunk_1
begin_hunk_2_@Ssw_RarManSimulate:bb.a
  %i.gl = and i64 %i.gk, -2
  %i.gm = inttoptr i64 %i.gl to ptr
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 36
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !49
  br label %Aig_ObjFaninId0.exit

Aig_ObjFaninId0.exit:                             ; preds = %bb.ac, %bb.ad
  %i.gp = phi i32 [ %i.go, %bb.ad ], [ -1, %bb.ac ]
  %i.gq = mul i32 %i.gp, %.val143.val
  %i.gr = sext i32 %i.gq to i64                   ; 2 uses
  %i.gs = getelementptr inbounds [8 x i8], ptr %.val144, i64 %i.gr ; 4 uses
  %i.gt = getelementptr i8, ptr %i.fy, i64 16
  %.val162 = load ptr, ptr %i.gt, align 8, !tbaa !85 ; 2 uses
  %.not.i176 = icmp eq ptr %.val162, null
  br i1 %.not.i176, label %Aig_ObjFaninId1.exit, label %bb.ae

bb.ae:                                            ; preds = %Aig_ObjFaninId0.exit
  %i.gu = ptrtoint ptr %.val162 to i64            ; 2 uses
  %i.gv = and i64 %i.gu, -2
  %i.gw = inttoptr i64 %i.gv to ptr
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 36
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !49
  %i.gz = and i64 %i.gu, 1
  br label %Aig_ObjFaninId1.exit

Aig_ObjFaninId1.exit:                             ; preds = %Aig_ObjFaninId0.exit, %bb.ae
  %.pre-phi275 = phi i64 [ %i.gz, %bb.ae ], [ 0, %Aig_ObjFaninId0.exit ]
  %i.ha = phi i32 [ %i.gy, %bb.ae ], [ -1, %Aig_ObjFaninId0.exit ]
  %i.hb = mul i32 %i.ha, %.val143.val
  %i.hc = sext i32 %i.hb to i64                   ; 2 uses
  %i.hd = getelementptr inbounds [8 x i8], ptr %.val144, i64 %i.hc ; 4 uses
  %i.he = ptrtoint ptr %.val161 to i64
  %i.hf = and i64 %i.he, 1
  %sext123 = sub nsw i64 0, %i.hf                 ; 4 uses
  %sext125 = sub nsw i64 0, %.pre-phi275          ; 4 uses
  %i.hg = icmp sgt i32 %.val143.val, 0            ; 2 uses
  br i1 %i.hg, label %.lr.ph229.preheader, label %._crit_edge

.lr.ph229.preheader:                              ; preds = %Aig_ObjFaninId1.exit
  %wide.trip.count = zext nneg i32 %.val143.val to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.val143.val, 8
  br i1 %min.iters.check, label %.lr.ph229.preheader329, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph229.preheader
  %i.hh = sub nsw i64 %i.gh, %i.gr
  %i.hi = shl nsw i64 %i.hh, 3
  %i.hj = add nsw i64 %i.hi, -1
  %diff.check = icmp ult i64 %i.hj, 31
  %i.hk = sub nsw i64 %i.gh, %i.hc
  %i.hl = shl nsw i64 %i.hk, 3
  %i.hm = add nsw i64 %i.hl, -1
  %diff.check305 = icmp ult i64 %i.hm, 31
  %conflict.rdx = or i1 %diff.check, %diff.check305
  br i1 %conflict.rdx, label %.lr.ph229.preheader329, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %sext123, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert306 = insertelement <2 x i64> poison, i64 %sext125, i64 0
  %broadcast.splat307 = shufflevector <2 x i64> %broadcast.splatinsert306, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %index ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %wide.load = load <2 x i64>, ptr %i.hn, align 8, !tbaa !50
  %wide.load308 = load <2 x i64>, ptr %i.ho, align 8, !tbaa !50
  %i.hp = xor <2 x i64> %wide.load, %broadcast.splat
  %i.hq = xor <2 x i64> %wide.load308, %broadcast.splat
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %index ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %wide.load309 = load <2 x i64>, ptr %i.hr, align 8, !tbaa !50
  %wide.load310 = load <2 x i64>, ptr %i.hs, align 8, !tbaa !50
  %i.ht = xor <2 x i64> %wide.load309, %broadcast.splat307
  %i.hu = xor <2 x i64> %wide.load310, %broadcast.splat307
  %i.hv = and <2 x i64> %i.ht, %i.hp
  %i.hw = and <2 x i64> %i.hu, %i.hq
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %index ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store <2 x i64> %i.hv, ptr %i.hx, align 8, !tbaa !50
  store <2 x i64> %i.hw, ptr %i.hy, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hz = icmp eq i64 %index.next, %n.vec
  br i1 %i.hz, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph229.preheader329

.lr.ph229.preheader329:                           ; preds = %vector.memcheck, %.lr.ph229.preheader, %middle.block
  %indvars.iv245.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph229.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph229.prol.loopexit, label %.lr.ph229.prol

.lr.ph229.prol:                                   ; preds = %.lr.ph229.preheader329
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv245.ph
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !50
  %i.ic = xor i64 %i.ib, %sext123
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv245.ph
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !50
  %i.if = xor i64 %i.ie, %sext125
  %i.ig = and i64 %i.if, %i.ic
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv245.ph
  store i64 %i.ig, ptr %i.ih, align 8, !tbaa !50
  %indvars.iv.next246.prol = or disjoint i64 %indvars.iv245.ph, 1
  br label %.lr.ph229.prol.loopexit

.lr.ph229.prol.loopexit:                          ; preds = %.lr.ph229.prol, %.lr.ph229.preheader329
  %indvars.iv245.unr = phi i64 [ %indvars.iv245.ph, %.lr.ph229.preheader329 ], [ %indvars.iv.next246.prol, %.lr.ph229.prol ]
  %i.ii = add nsw i64 %wide.trip.count, -1
  %i.ij = icmp eq i64 %indvars.iv245.ph, %i.ii
  br i1 %i.ij, label %._crit_edge, label %.lr.ph229

.lr.ph229:                                        ; preds = %.lr.ph229.prol.loopexit, %.lr.ph229
  %indvars.iv245 = phi i64 [ %indvars.iv.next246.1, %.lr.ph229 ], [ %indvars.iv245.unr, %.lr.ph229.prol.loopexit ] ; 5 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv245
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !50
  %i.im = xor i64 %i.il, %sext123
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv245
  %i.io = load i64, ptr %i.in, align 8, !tbaa !50
  %i.ip = xor i64 %i.io, %sext125
  %i.iq = and i64 %i.ip, %i.im
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv245
  store i64 %i.iq, ptr %i.ir, align 8, !tbaa !50
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 3 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.next246
  %i.it = load i64, ptr %i.is, align 8, !tbaa !50
  %i.iu = xor i64 %i.it, %sext123
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.next246
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !50
  %i.ix = xor i64 %i.iw, %sext125
  %i.iy = and i64 %i.ix, %i.iu
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv.next246
  store i64 %i.iy, ptr %i.iz, align 8, !tbaa !50
  %indvars.iv.next246.1 = add nuw nsw i64 %indvars.iv245, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next246.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph229, !llvm.loop !153

._crit_edge:                                      ; preds = %.lr.ph229.prol.loopexit, %.lr.ph229, %middle.block, %Aig_ObjFaninId1.exit
  br i1 %.not, label %Aig_ObjRepr.exit178.thread, label %bb.af

bb.af:                                            ; preds = %._crit_edge
  %i.ja = getelementptr i8, ptr %i.fu, i64 256
  %.val151 = load ptr, ptr %i.ja, align 8, !tbaa !82 ; 2 uses
  %.not.i177 = icmp eq ptr %.val151, null
  br i1 %.not.i177, label %Aig_ObjRepr.exit178.thread, label %Aig_ObjRepr.exit178

Aig_ObjRepr.exit178:                              ; preds = %bb.af
  %i.jb = sext i32 %.val134 to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %.val151, i64 %i.jb
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !156 ; 6 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %Aig_ObjRepr.exit178.thread, label %bb.ag

bb.ag:                                            ; preds = %Aig_ObjRepr.exit178
  %i.jf = getelementptr i8, ptr %i.fu, i64 312
  %.val153 = load i32, ptr %i.jf, align 8, !tbaa !157
  %i.jg = getelementptr i8, ptr %i.jd, i64 32     ; 2 uses
  %.val154 = load i32, ptr %i.jg, align 8, !tbaa !158
  %.not225 = icmp eq i32 %.val154, %.val153
  br i1 %.not225, label %Aig_ObjRepr.exit178.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 36
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !49
  %i.jj = mul nsw i32 %i.ji, %.val143.val
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [8 x i8], ptr %.val144, i64 %i.jk
  %i.jm = load i64, ptr %i.ga, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.jo = load i64, ptr %i.jn, align 8
  %i.jp = xor i64 %i.jo, %i.jm
  %i.jq = shl i64 %i.jp, 60
  %sext.i182 = ashr i64 %i.jq, 63
  br i1 %i.hg, label %.lr.ph.preheader.i184, label %Aig_ObjRepr.exit178.thread

.lr.ph.preheader.i184:                            ; preds = %bb.ah
  %wide.trip.count.i185 = zext nneg i32 %.val143.val to i64
  br label %.lr.ph.i186

bb.ai:                                            ; preds = %.lr.ph.i186
  %indvars.iv.next.i189 = add nuw nsw i64 %indvars.iv.i187, 1 ; 2 uses
  %exitcond.not.i190 = icmp eq i64 %indvars.iv.next.i189, %wide.trip.count.i185
  br i1 %exitcond.not.i190, label %Aig_ObjRepr.exit178.thread, label %.lr.ph.i186, !llvm.loop !5

.lr.ph.i186:                                      ; preds = %bb.ai, %.lr.ph.preheader.i184
  %indvars.iv.i187 = phi i64 [ 0, %.lr.ph.preheader.i184 ], [ %indvars.iv.next.i189, %bb.ai ] ; 3 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv.i187
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !50
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %indvars.iv.i187
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !50
  %i.jv = xor i64 %i.ju, %i.js
  %.not.i188 = icmp eq i64 %i.jv, %sext.i182
  br i1 %.not.i188, label %bb.ai, label %Ssw_RarManObjsAreEqual.exit191

Ssw_RarManObjsAreEqual.exit191:                   ; preds = %.lr.ph.i186
  %i.jw = getelementptr i8, ptr %i.fu, i64 48
  %.val145 = load ptr, ptr %i.jw, align 8, !tbaa !68
  %i.jx = icmp eq ptr %i.jd, %.val145
  br i1 %i.jx, label %bb.aj, label %bb.at

bb.aj:                                            ; preds = %Ssw_RarManObjsAreEqual.exit191
  %i.jy = load ptr, ptr %i.a, align 8, !tbaa !80  ; 6 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 4 ; 3 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !79 ; 7 uses
  %i.kb = load i32, ptr %i.jy, align 8, !tbaa !78
  %i.kc = icmp eq i32 %i.ka, %i.kb
  br i1 %i.kc, label %bb.ak, label %Vec_PtrPush.exit199

bb.ak:                                            ; preds = %bb.aj
  %i.kd = icmp slt i32 %i.ka, 16
  br i1 %i.kd, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !47 ; 2 uses
  %.not9.i.i197 = icmp eq ptr %i.kf, null
  br i1 %.not9.i.i197, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kg = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.kf, i64 noundef 128) #25
  br label %Vec_PtrGrow.exit.i198

bb.an:                                            ; preds = %bb.al
  %i.kh = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #23
  br label %Vec_PtrGrow.exit.i198

Vec_PtrGrow.exit.i198:                            ; preds = %bb.an, %bb.am
  %i.ki = phi ptr [ %i.kg, %bb.am ], [ %i.kh, %bb.an ]
  store ptr %i.ki, ptr %i.ke, align 8, !tbaa !47
  br label %Vec_PtrGrow.exit12.sink.split.i195

bb.ao:                                            ; preds = %bb.ak
  %i.kj = icmp samesign ult i32 %i.ka, 1073741823
  %i.kk = shl nuw nsw i32 %i.ka, 1
  %spec.select.i192 = select i1 %i.kj, i32 %i.kk, i32 2147483647 ; 3 uses
  %.not.i10.i193 = icmp samesign ult i32 %i.ka, %spec.select.i192
  br i1 %.not.i10.i193, label %bb.ap, label %Vec_PtrPush.exit199

bb.ap:                                            ; preds = %bb.ao
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !47 ; 2 uses
  %.not9.i11.i194 = icmp eq ptr %i.km, null
  %i.kn = zext nneg i32 %spec.select.i192 to i64
  %i.ko = shl nuw nsw i64 %i.kn, 3                ; 2 uses
  br i1 %.not9.i11.i194, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kp = tail call ptr @realloc(ptr noundef nonnull %i.km, i64 noundef %i.ko) #25
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.kq = tail call noalias ptr @malloc(i64 noundef %i.ko) #23
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.kr = phi ptr [ %i.kp, %bb.aq ], [ %i.kq, %bb.ar ]
  store ptr %i.kr, ptr %i.kl, align 8, !tbaa !47
  br label %Vec_PtrGrow.exit12.sink.split.i195

Vec_PtrGrow.exit12.sink.split.i195:               ; preds = %bb.as, %Vec_PtrGrow.exit.i198
  %spec.select.sink.i196 = phi i32 [ %spec.select.i192, %bb.as ], [ 16, %Vec_PtrGrow.exit.i198 ]
  store i32 %spec.select.sink.i196, ptr %i.jy, align 8, !tbaa !78
  %.pre268 = load i32, ptr %i.jz, align 4, !tbaa !79
  br label %Vec_PtrPush.exit199

Vec_PtrPush.exit199:                              ; preds = %bb.aj, %bb.ao, %Vec_PtrGrow.exit12.sink.split.i195
  %i.ks = phi i32 [ %i.ka, %bb.aj ], [ %i.ka, %bb.ao ], [ %.pre268, %Vec_PtrGrow.exit12.sink.split.i195 ] ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !47
  %i.kv = add nsw i32 %i.ks, 1
  store i32 %i.kv, ptr %i.jz, align 4, !tbaa !79
  %i.kw = sext i32 %i.ks to i64
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.ku, i64 %i.kw
  store ptr %i.fy, ptr %i.kx, align 8, !tbaa !48
  %.pre269 = load ptr, ptr %i.g, align 8, !tbaa !32
  br label %Aig_ObjRepr.exit178.thread

bb.at:                                            ; preds = %Ssw_RarManObjsAreEqual.exit191
  %i.ky = load ptr, ptr %i.d, align 8, !tbaa !81  ; 6 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 4 ; 3 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !79 ; 7 uses
  %i.lb = load i32, ptr %i.ky, align 8, !tbaa !78
  %i.lc = icmp eq i32 %i.la, %i.lb
  br i1 %i.lc, label %bb.au, label %Vec_PtrPush.exit207

bb.au:                                            ; preds = %bb.at
  %i.ld = icmp slt i32 %i.la, 16
  br i1 %i.ld, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.le = getelementptr inbounds nuw i8, ptr %i.ky, i64 8 ; 2 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !47 ; 2 uses
  %.not9.i.i205 = icmp eq ptr %i.lf, null
  br i1 %.not9.i.i205, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lg = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.lf, i64 noundef 128) #25
  br label %Vec_PtrGrow.exit.i206

bb.ax:                                            ; preds = %bb.av
  %i.lh = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #23
  br label %Vec_PtrGrow.exit.i206

Vec_PtrGrow.exit.i206:                            ; preds = %bb.ax, %bb.aw
  %i.li = phi ptr [ %i.lg, %bb.aw ], [ %i.lh, %bb.ax ]
  store ptr %i.li, ptr %i.le, align 8, !tbaa !47
  br label %Vec_PtrGrow.exit12.sink.split.i203

bb.ay:                                            ; preds = %bb.au
  %i.lj = icmp samesign ult i32 %i.la, 1073741823
  %i.lk = shl nuw nsw i32 %i.la, 1
  %spec.select.i200 = select i1 %i.lj, i32 %i.lk, i32 2147483647 ; 3 uses
  %.not.i10.i201 = icmp samesign ult i32 %i.la, %spec.select.i200
  br i1 %.not.i10.i201, label %bb.az, label %Vec_PtrPush.exit207

bb.az:                                            ; preds = %bb.ay
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ky, i64 8 ; 2 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !47 ; 2 uses
  %.not9.i11.i202 = icmp eq ptr %i.lm, null
  %i.ln = zext nneg i32 %spec.select.i200 to i64
  %i.lo = shl nuw nsw i64 %i.ln, 3                ; 2 uses
  br i1 %.not9.i11.i202, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lp = tail call ptr @realloc(ptr noundef nonnull %i.lm, i64 noundef %i.lo) #25
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.lq = tail call noalias ptr @malloc(i64 noundef %i.lo) #23
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.lr = phi ptr [ %i.lp, %bb.ba ], [ %i.lq, %bb.bb ]
  store ptr %i.lr, ptr %i.ll, align 8, !tbaa !47
  br label %Vec_PtrGrow.exit12.sink.split.i203

Vec_PtrGrow.exit12.sink.split.i203:               ; preds = %bb.bc, %Vec_PtrGrow.exit.i206
  %spec.select.sink.i204 = phi i32 [ %spec.select.i200, %bb.bc ], [ 16, %Vec_PtrGrow.exit.i206 ]
  store i32 %spec.select.sink.i204, ptr %i.ky, align 8, !tbaa !78
  %.pre267 = load i32, ptr %i.kz, align 4, !tbaa !79
  br label %Vec_PtrPush.exit207

Vec_PtrPush.exit207:                              ; preds = %bb.at, %bb.ay, %Vec_PtrGrow.exit12.sink.split.i203
  %i.ls = phi i32 [ %i.la, %bb.at ], [ %i.la, %bb.ay ], [ %.pre267, %Vec_PtrGrow.exit12.sink.split.i203 ] ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !47
  %i.lv = add nsw i32 %i.ls, 1
  store i32 %i.lv, ptr %i.kz, align 4, !tbaa !79
  %i.lw = sext i32 %i.ls to i64
  %i.lx = getelementptr inbounds [8 x i8], ptr %i.lu, i64 %i.lw
  store ptr %i.jd, ptr %i.lx, align 8, !tbaa !48
  %i.ly = load ptr, ptr %i.g, align 8, !tbaa !32  ; 2 uses
  %i.lz = getelementptr i8, ptr %i.ly, i64 312
  %.val157 = load i32, ptr %i.lz, align 8, !tbaa !157
  store i32 %.val157, ptr %i.jg, align 8, !tbaa !158
  br label %Aig_ObjRepr.exit178.thread

Aig_ObjRepr.exit178.thread:                       ; preds = %bb.ai, %bb.ah, %bb.af, %bb.ab, %bb.aa, %Vec_PtrPush.exit207, %Vec_PtrPush.exit199, %Aig_ObjRepr.exit178, %bb.ag, %._crit_edge
  %i.ma = phi ptr [ %i.fu, %._crit_edge ], [ %i.fu, %bb.ah ], [ %i.fu, %bb.af ], [ %i.fu, %bb.ab ], [ %i.fu, %bb.aa ], [ %i.ly, %Vec_PtrPush.exit207 ], [ %.pre269, %Vec_PtrPush.exit199 ], [ %i.fu, %Aig_ObjRepr.exit178 ], [ %i.fu, %bb.ag ], [ %i.fu, %bb.ai ] ; 3 uses
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !83 ; 3 uses
  %i.md = getelementptr i8, ptr %i.mc, i64 4
  %.val149 = load i32, ptr %i.md, align 4, !tbaa !79 ; 2 uses
  %i.me = sext i32 %.val149 to i64
  %i.mf = icmp slt i64 %indvars.iv.next249, %i.me
  br i1 %i.mf, label %bb.aa, label %.critedge2.preheader.loopexit, !llvm.loop !154

.critedge4:                                       ; preds = %._crit_edge235.us, %.lr.ph237, %.critedge2.preheader
  br i1 %.not, label %bb.bt, label %bb.bd

bb.bd:                                            ; preds = %.critedge4
  %.not118 = icmp eq i32 %3, 0
  br i1 %.not118, label %bb.bs, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mg = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #23 ; 6 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 4 ; 3 uses
  store i32 0, ptr %i.mh, align 4, !tbaa !79
  store i32 1000, ptr %i.mg, align 8, !tbaa !78
  %i.mi = tail call noalias dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #23 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 8 ; 3 uses
  store ptr %i.mi, ptr %i.mj, align 8, !tbaa !47
  br i1 %.val147238, label %.lr.ph241, label %.critedge6

.lr.ph241:                                        ; preds = %bb.be, %bb.bq
  %i.mk = phi ptr [ %i.ns, %bb.bq ], [ %i.do, %bb.be ] ; 4 uses
  %i.ml = phi ptr [ %i.nt, %bb.bq ], [ %i.mi, %bb.be ] ; 4 uses
  %i.mm = phi ptr [ %i.nu, %bb.bq ], [ %i.mi, %bb.be ] ; 6 uses
  %i.mn = phi i32 [ %i.nv, %bb.bq ], [ 1000, %bb.be ] ; 10 uses
  %i.mo = phi i32 [ %i.nw, %bb.bq ], [ 0, %bb.be ] ; 4 uses
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %bb.bq ], [ 0, %bb.be ] ; 2 uses
  %i.mp = phi ptr [ %i.ny, %bb.bq ], [ %i.dn, %bb.be ]
  %i.mq = getelementptr i8, ptr %i.mp, i64 8
  %.val = load ptr, ptr %i.mq, align 8, !tbaa !47
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv261
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !48 ; 3 uses
  %i.mt = icmp eq ptr %i.ms, null
  br i1 %i.mt, label %bb.bq, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph241
  %i.mu = getelementptr i8, ptr %i.mk, i64 256
  %.val3.i = load ptr, ptr %i.mu, align 8, !tbaa !82 ; 2 uses
  %.not.i.i = icmp eq ptr %.val3.i, null
  br i1 %.not.i.i, label %Ssw_ObjIsConst1Cand.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 36
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !49
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds [8 x i8], ptr %.val3.i, i64 %i.mx
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !156
  br label %Ssw_ObjIsConst1Cand.exit

Ssw_ObjIsConst1Cand.exit:                         ; preds = %bb.bf, %bb.bg
  %i.na = phi ptr [ %i.mz, %bb.bg ], [ null, %bb.bf ]
  %i.nb = getelementptr i8, ptr %i.mk, i64 48
  %.val.i = load ptr, ptr %i.nb, align 8, !tbaa !68
  %.not224 = icmp eq ptr %i.na, %.val.i
  br i1 %.not224, label %bb.bh, label %bb.bq

bb.bh:                                            ; preds = %Ssw_ObjIsConst1Cand.exit
  %i.nc = icmp eq i32 %i.mo, %i.mn
  br i1 %i.nc, label %bb.bi, label %Vec_PtrPush.exit217

bb.bi:                                            ; preds = %bb.bh
  %i.nd = icmp slt i32 %i.mn, 16
  br i1 %i.nd, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %.not9.i.i215 = icmp eq ptr %i.mm, null
  br i1 %.not9.i.i215, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ne = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.mm, i64 noundef 128) #25
  br label %Vec_PtrGrow.exit12.sink.split.i213

bb.bl:                                            ; preds = %bb.bj
  %i.nf = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #23
  br label %Vec_PtrGrow.exit12.sink.split.i213

bb.bm:                                            ; preds = %bb.bi
  %i.ng = icmp samesign ult i32 %i.mn, 1073741823
  %i.nh = shl nuw nsw i32 %i.mn, 1
  %spec.select.i210 = select i1 %i.ng, i32 %i.nh, i32 2147483647 ; 4 uses
  %.not.i10.i211 = icmp samesign ult i32 %i.mn, %spec.select.i210
  br i1 %.not.i10.i211, label %bb.bn, label %Vec_PtrPush.exit217

bb.bn:                                            ; preds = %bb.bm
  %.not9.i11.i212 = icmp eq ptr %i.mm, null
  %i.ni = zext nneg i32 %spec.select.i210 to i64
  %i.nj = shl nuw nsw i64 %i.ni, 3                ; 2 uses
  br i1 %.not9.i11.i212, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.nk = tail call ptr @realloc(ptr noundef nonnull %i.mm, i64 noundef %i.nj) #25
  br label %Vec_PtrGrow.exit12.sink.split.i213

bb.bp:                                            ; preds = %bb.bn
  %i.nl = tail call noalias ptr @malloc(i64 noundef %i.nj) #23
  br label %Vec_PtrGrow.exit12.sink.split.i213

Vec_PtrGrow.exit12.sink.split.i213:               ; preds = %bb.bo, %bb.bp, %bb.bk, %bb.bl
  %storemerge = phi ptr [ %i.nf, %bb.bl ], [ %i.ne, %bb.bk ], [ %i.nk, %bb.bo ], [ %i.nl, %bb.bp ] ; 2 uses
  %spec.select.sink.i214 = phi i32 [ 16, %bb.bl ], [ 16, %bb.bk ], [ %spec.select.i210, %bb.bo ], [ %spec.select.i210, %bb.bp ] ; 2 uses
  store ptr %storemerge, ptr %i.mj, align 8, !tbaa !47
  store i32 %spec.select.sink.i214, ptr %i.mg, align 8, !tbaa !78
  %.pre271 = load i32, ptr %i.mh, align 4, !tbaa !79
  br label %Vec_PtrPush.exit217

Vec_PtrPush.exit217:                              ; preds = %bb.bh, %bb.bm, %Vec_PtrGrow.exit12.sink.split.i213
  %i.nm = phi i32 [ %i.mo, %bb.bh ], [ %i.mn, %bb.bm ], [ %.pre271, %Vec_PtrGrow.exit12.sink.split.i213 ] ; 2 uses
  %i.nn = phi ptr [ %i.ml, %bb.bh ], [ %i.ml, %bb.bm ], [ %storemerge, %Vec_PtrGrow.exit12.sink.split.i213 ] ; 3 uses
  %i.no = phi i32 [ %i.mn, %bb.bh ], [ %i.mn, %bb.bm ], [ %spec.select.sink.i214, %Vec_PtrGrow.exit12.sink.split.i213 ]
  %i.np = add nsw i32 %i.nm, 1                    ; 2 uses
  store i32 %i.np, ptr %i.mh, align 4, !tbaa !79
  %i.nq = sext i32 %i.nm to i64
  %i.nr = getelementptr inbounds [8 x i8], ptr %i.nn, i64 %i.nq
  store ptr %i.ms, ptr %i.nr, align 8, !tbaa !48
  %.pre272 = load ptr, ptr %i.g, align 8, !tbaa !32
  br label %bb.bq

bb.bq:                                            ; preds = %.lr.ph241, %Vec_PtrPush.exit217, %Ssw_ObjIsConst1Cand.exit
  %i.ns = phi ptr [ %i.mk, %.lr.ph241 ], [ %.pre272, %Vec_PtrPush.exit217 ], [ %i.mk, %Ssw_ObjIsConst1Cand.exit ] ; 2 uses
  %i.nt = phi ptr [ %i.ml, %.lr.ph241 ], [ %i.nn, %Vec_PtrPush.exit217 ], [ %i.ml, %Ssw_ObjIsConst1Cand.exit ]
  %i.nu = phi ptr [ %i.mm, %.lr.ph241 ], [ %i.nn, %Vec_PtrPush.exit217 ], [ %i.mm, %Ssw_ObjIsConst1Cand.exit ]
  %i.nv = phi i32 [ %i.mn, %.lr.ph241 ], [ %i.no, %Vec_PtrPush.exit217 ], [ %i.mn, %Ssw_ObjIsConst1Cand.exit ]
  %i.nw = phi i32 [ %i.mo, %.lr.ph241 ], [ %i.np, %Vec_PtrPush.exit217 ], [ %i.mo, %Ssw_ObjIsConst1Cand.exit ]
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ns, i64 32
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !83 ; 2 uses
  %i.nz = getelementptr i8, ptr %i.ny, i64 4
  %.val147 = load i32, ptr %i.nz, align 4, !tbaa !79
  %i.oa = sext i32 %.val147 to i64
  %i.ob = icmp slt i64 %indvars.iv.next262, %i.oa
  br i1 %i.ob, label %.lr.ph241, label %.critedge6, !llvm.loop !155

.critedge6:                                       ; preds = %bb.bq, %bb.be
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !86
  %i.oe = tail call i32 @Ssw_ClassesPrepareRehash(ptr noundef %i.od, ptr noundef nonnull %i.mg, i32 noundef 0) #22 ; 0 uses
  %i.of = load ptr, ptr %i.mj, align 8, !tbaa !47 ; 2 uses
  %.not.i218 = icmp eq ptr %i.of, null
  br i1 %.not.i218, label %Vec_PtrFree.exit, label %bb.br

bb.br:                                            ; preds = %.critedge6
  tail call void @free(ptr noundef nonnull %i.of) #22
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge6, %bb.br
  tail call void @free(ptr noundef nonnull %i.mg) #22
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bd
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !86
  %i.oi = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.oj = tail call i32 @Ssw_ClassesRefineConst1Group(ptr noundef %i.oh, ptr noundef %i.oi, i32 noundef 1) #22 ; 0 uses
  %i.ok = load ptr, ptr %i.og, align 8, !tbaa !86
  %i.ol = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.om = tail call i32 @Ssw_ClassesRefineGroup(ptr noundef %i.ok, ptr noundef %i.ol, i32 noundef 1) #22 ; 0 uses
  br label %bb.bt

bb.bt:                                            ; preds = %Vec_PtrFree.exit, %bb.bs, %.critedge4
  ret void
}

declare void @Aig_ManIncrementTravId(ptr noundef) local_unnamed_addr #4

declare i32 @Ssw_ClassesPrepareRehash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @Ssw_ClassesRefineConst1Group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @Ssw_ClassesRefineGroup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Ssw_RarCheckTrivial(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %.val29 = load i32, ptr %i.a, align 8, !tbaa !67 ; 3 uses
  %i.b = icmp sgt i32 %.val29, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i32, ptr %i.c, align 8, !tbaa !74
  %.fr = freeze i32 %i.d                          ; 2 uses
  %.not = icmp eq i32 %.fr, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %wide.trip.count43 = zext nneg i32 %.val29 to i64 ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.f = sub i32 %.val29, %.fr
  %smax = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val26.us = load ptr, ptr %i.h, align 8, !tbaa !47
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.split.us
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %bb.c ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val26.us, i64 %indvars.iv40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %i.l, 8
  %.not23.us = icmp eq i64 %i.m, 0
  br i1 %.not23.us, label %bb.c, label %.split.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %.critedge, label %bb.b, !llvm.loop !159

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val26 = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val26, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = and i64 %i.s, 8
  %.not23 = icmp eq i64 %i.t, 0
  br i1 %.not23, label %bb.h, label %.split.us

.split.us:                                        ; preds = %bb.d, %bb.b
  %.us-phi.in = phi i64 [ %indvars.iv40, %bb.b ], [ %indvars.iv, %bb.d ]
  %.us-phi = trunc i64 %.us-phi.in to i32         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !87   ; 2 uses
  %.not24 = icmp eq ptr %i.v, null
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split.us
  tail call void @free(ptr noundef nonnull %i.v) #22
  store ptr null, ptr %i.u, align 8, !tbaa !87
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %bb.e
  %i.w = getelementptr i8, ptr %0, i64 104
  %.val27 = load i32, ptr %i.w, align 8, !tbaa !57
  %i.x = getelementptr i8, ptr %0, i64 108
  %.val = load i32, ptr %i.x, align 4, !tbaa !42
  %i.y = tail call ptr @Abc_CexAlloc(i32 noundef %.val27, i32 noundef %.val, i32 noundef 1) #22 ; 2 uses
  store ptr %i.y, ptr %i.u, align 8, !tbaa !87
  store i32 %.us-phi, ptr %i.y, align 4, !tbaa !60
  %.not25 = icmp eq i32 %1, 0
end_hunk_2
begin_hunk_3_@Ssw_RarSimulateGia:bb.a
  %i.i = tail call ptr @Gia_ManToAigSimple(ptr noundef %0) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %Vec_IntFree.exit
  %.0 = phi ptr [ %i.h, %Vec_IntFree.exit ], [ %i.i, %bb.d ] ; 3 uses
  %i.j = tail call i32 @Ssw_RarSimulate(ptr noundef %.0, ptr noundef nonnull %1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !112
  tail call void @Abc_CexFree(ptr noundef %i.l) #22
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 408 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !87
  store ptr %i.n, ptr %i.k, align 8, !tbaa !112
  store ptr null, ptr %i.m, align 8, !tbaa !87
  tail call void @Aig_ManStop(ptr noundef %.0) #22
  ret i32 %i.j
}

declare ptr @Gia_ManDupPermFlopGap(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @Gia_ManToAigSimple(ptr noundef) local_unnamed_addr #4

declare void @Gia_ManStop(ptr noundef) local_unnamed_addr #4

declare void @Abc_CexFree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @Ssw_RarSignalFilter(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 9 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #22
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %6, align 8, !tbaa !62
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !63
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !88   ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.k = sext i32 %i.j to i64
  %i.l = mul nsw i64 %i.k, 1000000
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.m = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #22
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %Abc_Clock.exit155, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %5, align 8, !tbaa !62
  %i.p = mul nsw i64 %i.o, 1000000
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !63
  %i.s = sdiv i64 %i.r, 1000
  %i.t = add nsw i64 %i.s, %i.p
  br label %Abc_Clock.exit155

Abc_Clock.exit155:                                ; preds = %bb.c, %bb.d
  %.0.i154 = phi i64 [ %i.t, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.u = add nsw i64 %.0.i154, %i.l
  br label %bb.e

bb.e:                                             ; preds = %Abc_Clock.exit, %Abc_Clock.exit155
  %i.v = phi i64 [ %i.u, %Abc_Clock.exit155 ], [ 0, %Abc_Clock.exit ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !89   ; 3 uses
  %i.y = getelementptr i8, ptr %0, i64 148
  %.val152 = load i32, ptr %i.y, align 4, !tbaa !53
  %i.z = getelementptr i8, ptr %0, i64 152
  %.val153 = load i32, ptr %i.z, align 8, !tbaa !53
  %i.aa = sub i32 0, %.val152
  %i.ab = icmp eq i32 %.val153, %i.aa
  br i1 %i.ab, label %bb.bw, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !200
  %.not130 = icmp eq i32 %i.ad, 0
  br i1 %.not130, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = call i32 @Ssw_RarCheckTrivial(ptr noundef nonnull %0, i32 noundef 1)
  %.not131 = icmp eq i32 %i.ae, 0
  br i1 %.not131, label %bb.h, label %bb.bw

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !90
  %.not132 = icmp eq i32 %i.ag, 0
  br i1 %.not132, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !20
  %i.aj = load i32, ptr %1, align 8, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !91
  %i.am = load i32, ptr %i.w, align 4, !tbaa !89
  %i.an = load i32, ptr %i.i, align 8, !tbaa !88
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.21, i32 noundef %i.ai, i32 noundef %i.aj, i32 noundef %i.al, i32 noundef %i.am, i32 noundef %i.an)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = call i32 @Aig_ManRandom(i32 noundef 1) #22 ; 0 uses
  %i.ap = icmp sgt i32 %i.x, 0
  br i1 %i.ap, label %.lr.ph.i, label %Ssw_RarManPrepareRandom.exit

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.03.i = phi i32 [ %i.ar, %.lr.ph.i ], [ 0, %bb.j ]
  %i.aq = call i32 @Aig_ManRandom(i32 noundef 0) #22 ; 0 uses
  %i.ar = add nuw nsw i32 %.03.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ar, %i.x
  br i1 %exitcond.not.i, label %Ssw_RarManPrepareRandom.exit, label %.lr.ph.i, !llvm.loop !0

Ssw_RarManPrepareRandom.exit:                     ; preds = %.lr.ph.i, %bb.j
  %i.as = call fastcc ptr @Ssw_RarManStart(ptr noundef nonnull %0, ptr noundef nonnull %1) ; 17 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !201 ; 5 uses
  %.not133 = icmp eq ptr %i.au, null
  %i.av = getelementptr i8, ptr %0, i64 104       ; 6 uses
  %.val151 = load i32, ptr %i.av, align 8, !tbaa !57 ; 7 uses
  br i1 %.not133, label %bb.aa, label %bb.k

bb.k:                                             ; preds = %Ssw_RarManPrepareRandom.exit
  %i.aw = icmp sgt i32 %.val151, 0
  br i1 %i.aw, label %.lr.ph.i156, label %.critedge.i

.lr.ph.i156:                                      ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = getelementptr i8, ptr %0, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i156
  %.071104.i = phi i32 [ 0, %.lr.ph.i156 ], [ %i.bt, %bb.l ] ; 4 uses
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !66
  %.val82.i = load i32, ptr %i.ay, align 8, !tbaa !67
  %i.bb = add nsw i32 %.val82.i, %.071104.i
  %i.bc = getelementptr i8, ptr %i.ba, i64 8
  %.val81.i = load ptr, ptr %i.bc, align 8, !tbaa !47
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %.val81.i, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !48
  %i.bg = lshr i32 %.071104.i, 5
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !53
  %i.bk = and i32 %.071104.i, 31
  %i.bl = lshr i32 %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = shl i32 %i.bl, 5
  %i.bp = and i32 %i.bo, 32
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = and i64 %i.bn, -33
  %i.bs = or disjoint i64 %i.br, %i.bq
  store i64 %i.bs, ptr %i.bm, align 8
  %i.bt = add nuw nsw i32 %.071104.i, 1           ; 2 uses
  %.val89.i = load i32, ptr %i.av, align 8, !tbaa !57 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %.val89.i
  br i1 %i.bu, label %bb.l, label %.critedge.i, !llvm.loop !189

.critedge.i:                                      ; preds = %bb.l, %bb.k
  %.val87143.i = phi i32 [ %.val151, %bb.k ], [ %.val89.i, %bb.l ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !59
  %.not117.i = icmp slt i32 %i.bw, 0
  br i1 %.not117.i, label %._crit_edge.i, label %.lr.ph120.i

.lr.ph120.i:                                      ; preds = %.critedge.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !202
  %i.bz = getelementptr i8, ptr %0, i64 48
  %i.ca = getelementptr i8, ptr %0, i64 108       ; 3 uses
  %i.cb = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.cd = getelementptr i8, ptr %0, i64 24        ; 3 uses
  %i.ce = getelementptr i8, ptr %0, i64 112
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.critedge8.i, %.lr.ph120.i
  %.0119.i = phi i32 [ %i.by, %.lr.ph120.i ], [ %.1.lcssa.i, %.critedge8.i ] ; 2 uses
  %.073118.i = phi i32 [ 0, %.lr.ph120.i ], [ %i.gl, %.critedge8.i ] ; 2 uses
  %.val85.i = load ptr, ptr %i.bz, align 8, !tbaa !68
  %i.cg = getelementptr inbounds nuw i8, ptr %.val85.i, i64 24 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = or i64 %i.ch, 32
  store i64 %i.ci, ptr %i.cg, align 8
  %.val76105.i = load i32, ptr %i.ca, align 4, !tbaa !42
  %i.cj = icmp sgt i32 %.val76105.i, 0
  br i1 %i.cj, label %.lr.ph108.i, label %.critedge2.preheader.i

.critedge2.preheader.i:                           ; preds = %.lr.ph108.i, %bb.m
  %.1.lcssa.i = phi i32 [ %.0119.i, %bb.m ], [ %i.cp, %.lr.ph108.i ]
  %.val88109.i = load i32, ptr %i.av, align 8, !tbaa !57
  %i.ck = icmp sgt i32 %.val88109.i, 0
  br i1 %i.ck, label %.critedge4.i, label %.preheader.i

.lr.ph108.i:                                      ; preds = %bb.m, %.lr.ph108.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph108.i ], [ 0, %bb.m ] ; 2 uses
  %.1107.i = phi i32 [ %i.cp, %.lr.ph108.i ], [ %.0119.i, %bb.m ] ; 3 uses
  %i.cl = load ptr, ptr %i.cb, align 8, !tbaa !45
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  %.val80.i = load ptr, ptr %i.cm, align 8, !tbaa !47
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.val80.i, i64 %indvars.iv.i
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !48
  %i.cp = add nsw i32 %.1107.i, 1                 ; 2 uses
  %i.cq = ashr i32 %.1107.i, 5
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !53
  %i.cu = and i32 %.1107.i, 31
  %i.cv = lshr i32 %i.ct, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = shl i32 %i.cv, 5
  %i.cz = and i32 %i.cy, 32
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = and i64 %i.cx, -33
  %i.dc = or disjoint i64 %i.db, %i.da
  store i64 %i.dc, ptr %i.cw, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val76.i = load i32, ptr %i.ca, align 4, !tbaa !42
  %i.dd = sext i32 %.val76.i to i64
  %i.de = icmp slt i64 %indvars.iv.next.i, %i.dd
  br i1 %i.de, label %.lr.ph108.i, label %.critedge2.preheader.i, !llvm.loop !190

.preheader.i:                                     ; preds = %.critedge4.i, %.critedge2.preheader.i
  %i.df = load ptr, ptr %i.cf, align 8, !tbaa !83 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 4
  %.val93111.i = load i32, ptr %i.dg, align 4, !tbaa !79
  %i.dh = icmp sgt i32 %.val93111.i, 0
  br i1 %i.dh, label %.lr.ph113.i, label %.critedge6.preheader.i

.critedge4.i:                                     ; preds = %.critedge2.preheader.i, %.critedge4.i
  %.2110.i = phi i32 [ %i.dz, %.critedge4.i ], [ 0, %.critedge2.preheader.i ] ; 3 uses
  %.val83.i = load ptr, ptr %i.cd, align 8, !tbaa !66
  %.val84.i = load i32, ptr %i.ce, align 8, !tbaa !67
  %i.di = getelementptr i8, ptr %.val83.i, i64 8
  %.val83.val.i = load ptr, ptr %i.di, align 8, !tbaa !47
  %i.dj = add nsw i32 %.val84.i, %.2110.i
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %.val83.val.i, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !48
  %.val90.i = load ptr, ptr %i.cb, align 8, !tbaa !45
  %.val91.i = load i32, ptr %i.ca, align 4, !tbaa !42
  %i.dn = getelementptr i8, ptr %.val90.i, i64 8
  %.val90.val.i = load ptr, ptr %i.dn, align 8, !tbaa !47
  %i.do = add nsw i32 %.val91.i, %.2110.i
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %.val90.val.i, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !48
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = and i64 %i.dt, 32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = and i64 %i.dw, -33
  %i.dy = or disjoint i64 %i.dx, %i.du
  store i64 %i.dy, ptr %i.dv, align 8
  %i.dz = add nuw nsw i32 %.2110.i, 1             ; 2 uses
  %.val88.i = load i32, ptr %i.av, align 8, !tbaa !57
  %i.ea = icmp slt i32 %i.dz, %.val88.i
  br i1 %i.ea, label %.critedge4.i, label %.preheader.i, !llvm.loop !191

.critedge6.preheader.i:                           ; preds = %bb.p, %.preheader.i
  %i.eb = load ptr, ptr %i.cd, align 8, !tbaa !66 ; 2 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 4
  %.val92114.i = load i32, ptr %i.ec, align 4, !tbaa !79
  %i.ed = icmp sgt i32 %.val92114.i, 0
  br i1 %i.ed, label %.critedge6.i, label %.critedge8.i

.lr.ph113.i:                                      ; preds = %.preheader.i, %bb.p
  %i.ee = phi ptr [ %i.fn, %bb.p ], [ %i.df, %.preheader.i ] ; 3 uses
  %indvars.iv133.i = phi i64 [ %indvars.iv.next134.i, %bb.p ], [ 0, %.preheader.i ] ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 8
  %.val79.i = load ptr, ptr %i.ef, align 8, !tbaa !47
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.val79.i, i64 %indvars.iv133.i
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !48 ; 4 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph113.i
  %i.ej = getelementptr i8, ptr %i.eh, i64 24     ; 2 uses
  %.val94.i = load i64, ptr %i.ej, align 8        ; 2 uses
  %i.ek = trunc i64 %.val94.i to i32
  %i.el = and i32 %i.ek, 7
  %i.em = add nsw i32 %i.el, -7
  %narrow.i.i = icmp ult i32 %i.em, -2
  br i1 %narrow.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.en = getelementptr i8, ptr %i.eh, i64 8
  %.val99.i = load ptr, ptr %i.en, align 8, !tbaa !84
  %i.eo = ptrtoint ptr %.val99.i to i64           ; 2 uses
  %i.ep = and i64 %i.eo, -2
  %i.eq = inttoptr i64 %i.ep to ptr
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load i64, ptr %i.er, align 8
  %i.et = trunc i64 %i.es to i32
  %i.eu = lshr i32 %i.et, 5
  %i.ev = trunc i64 %i.eo to i32
  %i.ew = xor i32 %i.eu, %i.ev
  %i.ex = getelementptr i8, ptr %i.eh, i64 16
  %.val100.i = load ptr, ptr %i.ex, align 8, !tbaa !85
  %i.ey = ptrtoint ptr %.val100.i to i64          ; 2 uses
  %i.ez = and i64 %i.ey, -2
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = lshr i32 %i.fd, 5
  %i.ff = trunc i64 %i.ey to i32
  %i.fg = xor i32 %i.fe, %i.ff
  %i.fh = and i32 %i.ew, 1
  %i.fi = and i32 %i.fh, %i.fg
  %i.fj = shl nuw nsw i32 %i.fi, 5
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = and i64 %.val94.i, -33
  %i.fm = or disjoint i64 %i.fl, %i.fk
  store i64 %i.fm, ptr %i.ej, align 8
  %.pre.i = load ptr, ptr %i.cf, align 8, !tbaa !83
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.lr.ph113.i
  %i.fn = phi ptr [ %.pre.i, %bb.o ], [ %i.ee, %bb.n ], [ %i.ee, %.lr.ph113.i ] ; 2 uses
  %indvars.iv.next134.i = add nuw nsw i64 %indvars.iv133.i, 1 ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 4
  %.val93.i = load i32, ptr %i.fo, align 4, !tbaa !79
  %i.fp = sext i32 %.val93.i to i64
  %i.fq = icmp slt i64 %indvars.iv.next134.i, %i.fp
  br i1 %i.fq, label %.lr.ph113.i, label %.critedge6.preheader.i, !llvm.loop !192

.critedge6.i:                                     ; preds = %.critedge6.preheader.i, %.critedge6.i
  %indvars.iv136.i = phi i64 [ %indvars.iv.next137.i, %.critedge6.i ], [ 0, %.critedge6.preheader.i ] ; 2 uses
  %i.fr = phi ptr [ %i.gh, %.critedge6.i ], [ %i.eb, %.critedge6.preheader.i ]
  %i.fs = getelementptr i8, ptr %i.fr, i64 8
  %.val78.i = load ptr, ptr %i.fs, align 8, !tbaa !47
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.val78.i, i64 %indvars.iv136.i
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !48 ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 8
  %.val98.i = load ptr, ptr %i.fv, align 8, !tbaa !84
  %i.fw = ptrtoint ptr %.val98.i to i64           ; 2 uses
  %i.fx = and i64 %i.fw, -2
  %i.fy = inttoptr i64 %i.fx to ptr
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load i64, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fu, i64 24 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8
  %i.gd = shl i64 %i.fw, 5
  %.mask101.i = xor i64 %i.gd, %i.ga
  %i.ge = and i64 %.mask101.i, 32
  %i.gf = and i64 %i.gc, -33
  %i.gg = or disjoint i64 %i.ge, %i.gf
  store i64 %i.gg, ptr %i.gb, align 8
  %indvars.iv.next137.i = add nuw nsw i64 %indvars.iv136.i, 1 ; 2 uses
  %i.gh = load ptr, ptr %i.cd, align 8, !tbaa !66 ; 2 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 4
  %.val92.i = load i32, ptr %i.gi, align 4, !tbaa !79
  %i.gj = sext i32 %.val92.i to i64
  %i.gk = icmp slt i64 %indvars.iv.next137.i, %i.gj
  br i1 %i.gk, label %.critedge6.i, label %.critedge8.i, !llvm.loop !193

.critedge8.i:                                     ; preds = %.critedge6.i, %.critedge6.preheader.i
  %i.gl = add nuw nsw i32 %.073118.i, 1
  %i.gm = load i32, ptr %i.bv, align 4, !tbaa !59
  %.not.not.i = icmp slt i32 %.073118.i, %i.gm
  br i1 %.not.not.i, label %bb.m, label %._crit_edge.loopexit.i, !llvm.loop !194

._crit_edge.loopexit.i:                           ; preds = %.critedge8.i
  %.val87.pre.i = load i32, ptr %i.av, align 8, !tbaa !57
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.critedge.i
  %.val86121.i = phi i32 [ %.val87.pre.i, %._crit_edge.loopexit.i ], [ %.val87143.i, %.critedge.i ] ; 3 uses
  %i.gn = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #23 ; 5 uses
  %i.go = add i32 %.val86121.i, -1
  %or.cond.i.i = icmp ult i32 %i.go, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val86121.i ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 4 ; 2 uses
  store i32 0, ptr %i.gp, align 4, !tbaa !94
  store i32 %spec.store.select.i.i, ptr %i.gn, align 8, !tbaa !93
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.i, label %bb.q
end_hunk_3
begin_hunk_4_@Abc_FrameIsBatchMode
declare i32 @Abc_FrameIsBatchMode(...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @Ssw_RarSignalFilterGia(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @Gia_ManToAigSimple(ptr noundef %0) #22 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !204
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Gia_ManReprToAigRepr2(ptr noundef %i.a, ptr noundef nonnull %0) #22
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !204  ; 2 uses
  %.not20 = icmp eq ptr %i.d, null
  br i1 %.not20, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.d) #22
  store ptr null, ptr %i.b, align 8, !tbaa !204
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !205  ; 2 uses
  %.not21 = icmp eq ptr %i.f, null
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.f) #22
  store ptr null, ptr %i.e, align 8, !tbaa !205
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %i.g = tail call i32 @Ssw_RarSignalFilter(ptr noundef %i.a, ptr noundef %1)
  tail call void @Gia_ManReprFromAigRepr(ptr noundef %i.a, ptr noundef nonnull %0) #22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !112
  tail call void @Abc_CexFree(ptr noundef %i.i) #22
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 408 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !87
  store ptr %i.k, ptr %i.h, align 8, !tbaa !112
  store ptr null, ptr %i.j, align 8, !tbaa !87
  tail call void @Aig_ManStop(ptr noundef %i.a) #22
  ret i32 %i.g
}

declare void @Gia_ManReprToAigRepr2(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @Gia_ManReprFromAigRepr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #4

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #16

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #16

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #19

declare void @Ssw_ClassesStop(ptr noundef) local_unnamed_addr #4

declare void @Aig_ManCleanMarkB(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #20

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { nounwind allocsize(1) }
attributes #26 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !22}
!1 = distinct !{!1, !22}
!2 = distinct !{!2, !22}
!3 = distinct !{!3, !22}
!4 = distinct !{!4, !22}
!5 = distinct !{!5, !22}
!6 = distinct !{!6, !22}
!7 = distinct !{!7, !22}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 _ZTS10Abc_Cex_t_", !16, i64 0}
!18 = !{!"Ssw_RarPars_t_", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !13, i64 72, !17, i64 80, !16, i64 88, !16, i64 96, !16, i64 104}
!19 = !{!18, !13, i64 0}
!20 = !{!18, !13, i64 4}
!21 = !{!18, !13, i64 8}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"p1 _ZTS14Ssw_RarPars_t_", !16, i64 0}
!24 = !{!"p1 _ZTS10Aig_Man_t_", !16, i64 0}
!25 = !{!"p1 _ZTS10Ssw_Cla_t_", !16, i64 0}
!26 = !{!"p1 _ZTS10Vec_Int_t_", !16, i64 0}
!27 = !{!"p1 long", !16, i64 0}
!28 = !{!"p1 _ZTS10Vec_Ptr_t_", !16, i64 0}
!29 = !{!"p1 int", !16, i64 0}
!30 = !{!"p1 double", !16, i64 0}
!31 = !{!"Ssw_RarMan_t_", !23, i64 0, !13, i64 8, !13, i64 12, !24, i64 16, !25, i64 24, !26, i64 32, !27, i64 40, !27, i64 48, !28, i64 56, !28, i64 64, !29, i64 72, !30, i64 80, !26, i64 88, !13, i64 96, !13, i64 100, !28, i64 104}
!32 = !{!31, !24, i64 16}
!33 = !{!"p1 omnipotent char", !16, i64 0}
!34 = !{!"p1 _ZTS10Aig_Obj_t_", !16, i64 0}
!35 = !{!"Aig_Obj_t_", !12, i64 0, !34, i64 8, !34, i64 16, !13, i64 24, !13, i64 24, !13, i64 24, !13, i64 24, !13, i64 24, !13, i64 28, !13, i64 31, !13, i64 32, !13, i64 36, !12, i64 40}
!36 = !{!"any p2 pointer", !16, i64 0}
!37 = !{!"p2 _ZTS10Aig_Obj_t_", !36, i64 0}
!38 = !{!"p1 _ZTS10Vec_Vec_t_", !16, i64 0}
!39 = !{!"p1 _ZTS14Aig_MmFixed_t_", !16, i64 0}
!40 = !{!"long", !12, i64 0}
!41 = !{!"Aig_Man_t_", !33, i64 0, !33, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !34, i64 48, !35, i64 56, !13, i64 104, !13, i64 108, !13, i64 112, !13, i64 116, !13, i64 120, !13, i64 124, !12, i64 128, !13, i64 156, !37, i64 160, !13, i64 168, !29, i64 176, !13, i64 184, !38, i64 192, !13, i64 200, !13, i64 204, !13, i64 208, !29, i64 216, !13, i64 224, !13, i64 228, !13, i64 232, !13, i64 236, !13, i64 240, !37, i64 248, !37, i64 256, !13, i64 264, !39, i64 272, !26, i64 280, !13, i64 288, !16, i64 296, !16, i64 304, !13, i64 312, !13, i64 316, !13, i64 320, !37, i64 328, !16, i64 336, !16, i64 344, !16, i64 352, !16, i64 360, !29, i64 368, !29, i64 376, !28, i64 384, !26, i64 392, !26, i64 400, !17, i64 408, !28, i64 416, !24, i64 424, !28, i64 432, !13, i64 440, !26, i64 448, !38, i64 456, !26, i64 464, !26, i64 472, !13, i64 480, !40, i64 488, !40, i64 496, !40, i64 504, !28, i64 512, !28, i64 520}
!42 = !{!41, !13, i64 108}
!43 = !{!31, !23, i64 0}
!44 = !{!31, !27, i64 40}
!45 = !{!41, !28, i64 16}
!46 = !{!"Vec_Ptr_t_", !13, i64 0, !13, i64 4, !36, i64 8}
!47 = !{!46, !36, i64 8}
!48 = !{!16, !16, i64 0}
!49 = !{!35, !13, i64 36}
!50 = !{!40, !40, i64 0}
!51 = !{!"llvm.loop.peeled.count", i32 1}
!52 = !{!"llvm.loop.unswitch.partial.disable"}
!53 = !{!13, !13, i64 0}
!54 = !{!31, !26, i64 88}
!55 = !{!"Vec_Int_t_", !13, i64 0, !13, i64 4, !29, i64 8}
!56 = !{!55, !29, i64 8}
!57 = !{!41, !13, i64 104}
!58 = !{!"Abc_Cex_t_", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !12, i64 20}
!59 = !{!58, !13, i64 4}
!60 = !{!58, !13, i64 0}
!61 = !{!"timespec", !40, i64 0, !40, i64 8}
!62 = !{!61, !40, i64 0}
!63 = !{!61, !40, i64 8}
!64 = !{!31, !13, i64 12}
!65 = !{!31, !27, i64 48}
!66 = !{!41, !28, i64 24}
!67 = !{!41, !13, i64 112}
!68 = !{!41, !34, i64 48}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!31, !13, i64 96}
!73 = !{!31, !13, i64 100}
!74 = !{!41, !13, i64 120}
!75 = !{!31, !28, i64 104}
!76 = !{!18, !13, i64 32}
!77 = !{!18, !13, i64 72}
!78 = !{!46, !13, i64 0}
!79 = !{!46, !13, i64 4}
!80 = !{!31, !28, i64 56}
!81 = !{!31, !28, i64 64}
!82 = !{!41, !37, i64 256}
!83 = !{!41, !28, i64 32}
!84 = !{!35, !34, i64 8}
!85 = !{!35, !34, i64 16}
!86 = !{!31, !25, i64 24}
!87 = !{!41, !17, i64 408}
!88 = !{!18, !13, i64 24}
!89 = !{!18, !13, i64 20}
!90 = !{!18, !13, i64 40}
!91 = !{!18, !13, i64 12}
!92 = !{!18, !13, i64 16}
!93 = !{!55, !13, i64 0}
!94 = !{!55, !13, i64 4}
!95 = !{!31, !26, i64 32}
!96 = !{!41, !33, i64 0}
!97 = !{!31, !13, i64 8}
!98 = !{!31, !29, i64 72}
!99 = !{!31, !30, i64 80}
!100 = !{!"p1 _ZTS10Gia_Obj_t_", !16, i64 0}
!101 = !{!"p1 _ZTS10Gia_Rpr_t_", !16, i64 0}
!102 = !{!"p1 _ZTS10Vec_Wec_t_", !16, i64 0}
!103 = !{!"p1 _ZTS10Vec_Str_t_", !16, i64 0}
!104 = !{!"p1 _ZTS10Gia_Plc_t_", !16, i64 0}
!105 = !{!"p1 _ZTS10Gia_Man_t_", !16, i64 0}
!106 = !{!"p1 _ZTS10Vec_Flt_t_", !16, i64 0}
!107 = !{!"float", !12, i64 0}
!108 = !{!"p1 _ZTS10Vec_Wrd_t_", !16, i64 0}
!109 = !{!"p1 _ZTS10Vec_Bit_t_", !16, i64 0}
!110 = !{!"p1 _ZTS10Gia_Dat_t_", !16, i64 0}
!111 = !{!"Gia_Man_t_", !33, i64 0, !33, i64 8, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !100, i64 32, !29, i64 40, !13, i64 48, !13, i64 52, !13, i64 56, !26, i64 64, !26, i64 72, !55, i64 80, !55, i64 96, !13, i64 112, !13, i64 116, !13, i64 120, !55, i64 128, !29, i64 144, !29, i64 152, !26, i64 160, !13, i64 168, !13, i64 172, !13, i64 176, !13, i64 180, !29, i64 184, !101, i64 192, !29, i64 200, !29, i64 208, !29, i64 216, !13, i64 224, !13, i64 228, !29, i64 232, !13, i64 240, !26, i64 248, !26, i64 256, !26, i64 264, !102, i64 272, !102, i64 280, !26, i64 288, !16, i64 296, !26, i64 304, !26, i64 312, !103, i64 320, !33, i64 328, !26, i64 336, !26, i64 344, !26, i64 352, !26, i64 360, !26, i64 368, !17, i64 376, !17, i64 384, !28, i64 392, !55, i64 400, !55, i64 416, !26, i64 432, !26, i64 440, !26, i64 448, !26, i64 456, !26, i64 464, !26, i64 472, !26, i64 480, !26, i64 488, !26, i64 496, !26, i64 504, !26, i64 512, !33, i64 520, !104, i64 528, !105, i64 536, !106, i64 544, !106, i64 552, !26, i64 560, !26, i64 568, !26, i64 576, !26, i64 584, !26, i64 592, !13, i64 600, !107, i64 604, !107, i64 608, !26, i64 616, !29, i64 624, !13, i64 632, !28, i64 640, !28, i64 648, !28, i64 656, !26, i64 664, !26, i64 672, !26, i64 680, !26, i64 688, !26, i64 696, !26, i64 704, !26, i64 712, !26, i64 720, !26, i64 728, !38, i64 736, !106, i64 744, !16, i64 752, !16, i64 760, !16, i64 768, !40, i64 776, !40, i64 784, !16, i64 792, !29, i64 800, !13, i64 808, !13, i64 812, !13, i64 816, !13, i64 820, !13, i64 824, !13, i64 828, !13, i64 832, !13, i64 836, !13, i64 840, !13, i64 844, !13, i64 848, !13, i64 852, !108, i64 856, !108, i64 864, !108, i64 872, !108, i64 880, !26, i64 888, !26, i64 896, !26, i64 904, !109, i64 912, !13, i64 920, !13, i64 924, !13, i64 928, !26, i64 936, !13, i64 944, !13, i64 948, !26, i64 952, !26, i64 960, !28, i64 968, !108, i64 976, !26, i64 984, !26, i64 992, !13, i64 1000, !13, i64 1004, !108, i64 1008, !55, i64 1016, !55, i64 1032, !55, i64 1048, !110, i64 1064, !103, i64 1072, !103, i64 1080, !13, i64 1088, !13, i64 1092, !13, i64 1096, !13, i64 1100, !103, i64 1104, !26, i64 1112, !26, i64 1120, !26, i64 1128, !28, i64 1136}
!112 = !{!111, !17, i64 384}
!113 = distinct !{!113, !22, !51}
!114 = distinct !{!114, !22}
!115 = distinct !{!115, !22, !52}
!116 = distinct !{!116, !22}
!117 = distinct !{!117, !22}
!118 = distinct !{!118, !22}
!119 = distinct !{!119, i1 true, !"vprintf"}
!120 = distinct !{!120, !119, !"vprintf: argument 0"}
!121 = distinct !{null}
!122 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!123 = !{!122, !122, i64 0}
!124 = !{!120}
!125 = distinct !{!125, !22}
!126 = distinct !{!126, !22}
!127 = distinct !{!127, !22}
!128 = distinct !{!128, !22}
!129 = distinct !{!129, !22}
!130 = distinct !{!130, !22}
!131 = distinct !{!131, !22}
!132 = distinct !{!132, !22, !69, !70}
!133 = distinct !{!133, !22, !69}
!134 = distinct !{!134, !22}
!135 = distinct !{!135, !22, !69, !70}
!136 = distinct !{!136, !71}
!137 = distinct !{!137, !22, !69}
!138 = distinct !{!138, !22}
!139 = distinct !{!139, !22}
!140 = distinct !{!140, !22, !69, !70}
!141 = distinct !{!141, !71}
!142 = distinct !{!142, !22, !69}
!143 = distinct !{!143, !22}
!144 = distinct !{!144, !22}
!145 = !{!18, !16, i64 88}
!146 = !{!18, !13, i64 44}
!147 = distinct !{!147, !22}
!148 = distinct !{!148, !22, !69, !70}
!149 = distinct !{!149, !71}
!150 = distinct !{!150, !22, !69}
!151 = distinct !{!151, !22}
!152 = distinct !{!152, !22, !69, !70}
!153 = distinct !{!153, !22, !69}
!154 = distinct !{!154, !22}
!155 = distinct !{!155, !22}
!156 = !{!34, !34, i64 0}
!157 = !{!41, !13, i64 312}
!158 = !{!35, !13, i64 32}
!159 = distinct !{!159, !22}
!160 = distinct !{!160, !22, !69, !70}
!161 = distinct !{!161, !22, !70, !69}
!162 = distinct !{!162, !22}
!163 = distinct !{!163, !22}
!164 = !{!18, !16, i64 96}
!165 = !{!18, !16, i64 104}
!166 = !{!18, !13, i64 48}
!167 = !{!18, !13, i64 28}
!168 = !{!18, !13, i64 36}
!169 = !{!41, !16, i64 296}
!170 = distinct !{!170, !22}
!171 = distinct !{!171, !22}
!172 = distinct !{!172, !22}
!173 = distinct !{!173, !22, !52}
!174 = distinct !{!174, !22}
!175 = distinct !{!175, !22}
!176 = distinct !{!176, !22}
!177 = !{!"double", !12, i64 0}
!178 = !{!177, !177, i64 0}
!179 = !{!12, !12, i64 0}
!180 = !{!41, !28, i64 416}
!181 = !{!26, !26, i64 0}
!182 = !{!28, !28, i64 0}
!183 = distinct !{!183, !22, !69, !70}
!184 = distinct !{!184, !22, !70, !69}
!185 = distinct !{!185, !22}
!186 = distinct !{!186, !22}
!187 = !{!18, !13, i64 68}
!188 = !{!111, !13, i64 16}
!189 = distinct !{!189, !22}
!190 = distinct !{!190, !22}
!191 = distinct !{!191, !22}
!192 = distinct !{!192, !22}
!193 = distinct !{!193, !22}
!194 = distinct !{!194, !22}
!195 = distinct !{!195, !22}
!196 = distinct !{!196, !22}
!197 = distinct !{!197, !22, !52}
!198 = distinct !{!198, !22, !51}
!199 = distinct !{!199, !22}
!200 = !{!18, !13, i64 56}
!201 = !{!18, !17, i64 80}
!202 = !{!58, !13, i64 8}
!203 = !{!18, !13, i64 64}
!204 = !{!111, !101, i64 192}
!205 = !{!111, !29, i64 200}
end_hunk_4
