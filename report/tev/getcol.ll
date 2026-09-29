Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/getcol?download=true
inline.NumInlined: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ffgcv:bb.a
  br label %bb.ba

bb.y:                                             ; preds = %bb.b
  %i.ag = icmp eq ptr %6, null
  br i1 %i.ag, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ah = call i32 @ffgclj(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef 1, i32 noundef 1, i64 noundef 0, ptr noundef %7, ptr noundef nonnull %i.a, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.ba

bb.aa:                                            ; preds = %bb.y
  %i.ai = load i64, ptr %6, align 8, !tbaa !17
  %i.aj = call i32 @ffgclj(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef 1, i32 noundef 1, i64 noundef %i.ai, ptr noundef %7, ptr noundef nonnull %i.a, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.ba

bb.ab:                                            ; preds = %bb.b
  %i.ak = icmp eq ptr %6, null
  br i1 %i.ak, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.al = call i32 @ffgclujj(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef 1, i32 noundef 1, i64 noundef 0, ptr noundef %7, ptr noundef nonnull %i.a, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.ba

bb.ad:                                            ; preds = %bb.ab
  %i.am = load i64, ptr %6, align 8, !tbaa !12
  %i.an = call i32 @ffgclujj(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef 1, i32 noundef 1, i64 noundef %i.am, ptr noundef %7, ptr noundef nonnull %i.a, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.ba

bb.ae:                                            ; preds = %bb.b
  %i.ao = icmp eq ptr %6, null
  br i1 %i.ao, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ap = call i32 @ffgcljj(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef 1, i32 noundef 1, i64 noundef 0, ptr noundef %7, ptr noundef nonnull %i.a, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.ba

bb.ag:                                            ; preds = %bb.ae
  %i.aq = load i64, ptr %6, align 8, !tbaa !12
  %i.ar = call i32 @ffgcljj(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef 1, i32 noundef 1, i64 noundef %i.aq, ptr noundef %7, ptr noundef nonnull %i.a, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.ba

bb.ah:                                            ; preds = %bb.b
  %i.as = icmp eq ptr %6, null
  br i1 %i.as, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.at = call i32 @ffgcle(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef 1, i32 noundef 1, float noundef 0.000000e+00, ptr noundef %7, ptr noundef nonnull %i.a, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.ba

bb.aj:                                            ; preds = %bb.ah
  %i.au = load float, ptr %6, align 4, !tbaa !19
  %i.av = call i32 @ffgcle(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef 1, i32 noundef 1, float noundef %i.au, ptr noundef %7, ptr noundef nonnull %i.a, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.ba

bb.ak:                                            ; preds = %bb.b
  %i.aw = icmp eq ptr %6, null
  br i1 %i.aw, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ax = call i32 @ffgcld(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef 1, i32 noundef 1, double noundef 0.000000e+00, ptr noundef %7, ptr noundef nonnull %i.a, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.ba

bb.am:                                            ; preds = %bb.ak
  %i.ay = load double, ptr %6, align 8, !tbaa !21
  %i.az = call i32 @ffgcld(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef 1, i32 noundef 1, double noundef %i.ay, ptr noundef %7, ptr noundef nonnull %i.a, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.ba

bb.an:                                            ; preds = %bb.b
  %i.ba = icmp eq ptr %6, null
  %i.bb = shl i64 %4, 1
  %i.bc = add i64 %i.bb, -1                       ; 2 uses
  %i.bd = shl nsw i64 %5, 1                       ; 2 uses
  br i1 %i.ba, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.be = call i32 @ffgcle(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %i.bc, i64 noundef %i.bd, i64 noundef 1, i32 noundef 1, float noundef 0.000000e+00, ptr noundef %7, ptr noundef nonnull %i.a, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.ba

bb.ap:                                            ; preds = %bb.an
  %i.bf = load float, ptr %6, align 4, !tbaa !19
  %i.bg = call i32 @ffgcle(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %i.bc, i64 noundef %i.bd, i64 noundef 1, i32 noundef 1, float noundef %i.bf, ptr noundef %7, ptr noundef nonnull %i.a, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.ba

bb.aq:                                            ; preds = %bb.b
  %i.bh = icmp eq ptr %6, null
  %i.bi = shl i64 %4, 1
  %i.bj = add i64 %i.bi, -1                       ; 2 uses
  %i.bk = shl nsw i64 %5, 1                       ; 2 uses
  br i1 %i.bh, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.bl = call i32 @ffgcld(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %i.bj, i64 noundef %i.bk, i64 noundef 1, i32 noundef 1, double noundef 0.000000e+00, ptr noundef %7, ptr noundef nonnull %i.a, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.ba

bb.as:                                            ; preds = %bb.aq
  %i.bm = load double, ptr %6, align 8, !tbaa !21
  %i.bn = call i32 @ffgcld(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %i.bj, i64 noundef %i.bk, i64 noundef 1, i32 noundef 1, double noundef %i.bm, ptr noundef %7, ptr noundef nonnull %i.a, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.ba

bb.at:                                            ; preds = %bb.b
  %i.bo = icmp eq ptr %6, null
  br i1 %i.bo, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.bp = call i32 @ffgcll(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef 1, i8 noundef signext 0, ptr noundef %7, ptr noundef nonnull %i.a, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.ba

bb.av:                                            ; preds = %bb.at
  %i.bq = load i8, ptr %6, align 1, !tbaa !10
  %i.br = call i32 @ffgcll(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef 1, i8 noundef signext %i.bq, ptr noundef %7, ptr noundef nonnull %i.a, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.ba

bb.aw:                                            ; preds = %bb.b
  %i.bs = icmp eq ptr %6, null
  br i1 %i.bs, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i8 0, ptr %i.a, align 1, !tbaa !10
  %i.bt = call i32 @ffgcls(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef %7, ptr noundef nonnull %i.a, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  %i.bu = call i32 @ffgcls(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef 1, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %i.a, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.ba

bb.az:                                            ; preds = %bb.b
  store i32 410, ptr %9, align 4, !tbaa !9
  br label %bb.ba

bb.ba:                                            ; preds = %bb.f, %bb.e, %bb.l, %bb.k, %bb.r, %bb.q, %bb.x, %bb.w, %bb.ad, %bb.ac, %bb.aj, %bb.ai, %bb.ap, %bb.ao, %bb.av, %bb.au, %bb.ax, %bb.ay, %bb.az, %bb.ar, %bb.as, %bb.al, %bb.am, %bb.af, %bb.ag, %bb.z, %bb.aa, %bb.t, %bb.u, %bb.n, %bb.o, %bb.h, %bb.i, %bb.c
  %i.bv = load i32, ptr %9, align 4, !tbaa !9
  br label %bb.bb

bb.bb:                                            ; preds = %bb.a, %bb.ba
  %.0 = phi i32 [ %i.bv, %bb.ba ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

declare i32 @ffgcx(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffgcll(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, i8 noundef signext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffgcls(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgcvn(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [255 x i64], align 16             ; 20 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca [100 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2040) %i.c, i8 0, i64 2040, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i64 1, ptr %i.h, align 16, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i64 1, ptr %i.i, align 16, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i64 1, ptr %i.j, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store i64 2, ptr %i.k, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store i64 2, ptr %i.l, align 16, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  store i64 4, ptr %i.m, align 16, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  store i64 4, ptr %i.n, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  store i64 8, ptr %i.o, align 16, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  store i64 8, ptr %i.p, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  store i64 8, ptr %i.q, align 16, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 648
  store i64 8, ptr %i.r, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  store i64 4, ptr %i.s, align 16, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 656
  store i64 8, ptr %i.t, align 16, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 1304
  store i64 16, ptr %i.u, align 8, !tbaa !17
  %i.v = load i32, ptr %9, align 4, !tbaa !9      ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = icmp slt i32 %1, 1
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %9, align 4, !tbaa !9
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.y = zext nneg i32 %1 to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.z) #10 ; 8 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.e, label %.lr.ph.preheader

bb.e:                                             ; preds = %bb.d
  store i32 113, ptr %9, align 4, !tbaa !9
  br label %bb.p

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.ac = call i32 @ffgnrwll(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %9) #9 ; 0 uses
  %i.ad = call i32 @ffgrsz(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %9) #9 ; 0 uses
  %i.ae = call i32 @llvm.umin.i32(i32 %1, i32 1000)
  %wide.trip.count = zext nneg i32 %i.ae to i64
  br label %.lr.ph

bb.f:                                             ; preds = %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !9
  %i.ah = call i32 @ffgtclll(ptr noundef %0, i32 noundef %i.ag, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %9) #9 ; 0 uses
  %i.ai = load i64, ptr %i.e, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !12
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !9  ; 2 uses
  switch i32 %i.al, label %bb.g [
    i32 1, label %bb.h
    i32 16, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !17
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph, %.lr.ph, %bb.g
  call void @ffpmsg(ptr noundef nonnull @.str) #9
  store i32 410, ptr %9, align 4, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aq = load i32, ptr %i.d, align 4, !tbaa !9
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.i
  call void @ffpmsg(ptr noundef nonnull @.str.1) #9
  store i32 320, ptr %9, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %.thread118

bb.j:                                             ; preds = %bb.i
  %.pr = load i32, ptr %9, align 4, !tbaa !9      ; 2 uses
  %.not = icmp eq i32 %.pr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br i1 %.not, label %bb.f, label %.thread118

.thread118:                                       ; preds = %bb.j, %.thread
  %i.as = phi i32 [ 320, %.thread ], [ %.pr, %bb.j ]
  call void @free(ptr noundef nonnull %i.aa) #9
  br label %bb.p

._crit_edge:                                      ; preds = %bb.f
  %i.at = icmp eq i32 %1, 1
  br i1 %i.at, label %bb.o, label %.preheader.split.us

.preheader.split.us:                              ; preds = %._crit_edge
  %.not112 = icmp eq ptr %8, null
  %wide.trip.count151 = zext nneg i32 %1 to i64   ; 2 uses
  br i1 %.not112, label %.preheader.split.us.split.us, label %.preheader.split.us.split

.preheader.split.us.split.us:                     ; preds = %.preheader.split.us, %..loopexit_crit_edge.split.us.us.us
  %.0101.us.us = phi i64 [ %i.bx, %..loopexit_crit_edge.split.us.us.us ], [ 0, %.preheader.split.us ] ; 4 uses
  %.098.us.us = phi i64 [ %i.bw, %..loopexit_crit_edge.split.us.us.us ], [ %4, %.preheader.split.us ] ; 4 uses
  %i.au = icmp slt i64 %.0101.us.us, %5
  br i1 %i.au, label %.lr.ph126.us.us, label %.split134.us

.lr.ph126.us.us:                                  ; preds = %.preheader.split.us.split.us
  %i.av = sub nsw i64 %5, %.0101.us.us
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !17
  %spec.select.us.us = call i64 @llvm.smin.i64(i64 %i.av, i64 %i.aw) ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph126.us.us
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %bb.l ], [ 0, %.lr.ph126.us.us ] ; 7 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv147
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !12 ; 2 uses
  %i.az = mul nsw i64 %i.ay, %spec.select.us.us
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv147
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !29
  %i.bc = mul nsw i64 %i.ay, %.0101.us.us
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv147
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !9  ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !17
  %i.bi = mul i64 %i.bc, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv147
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !9
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv147
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !29
  %i.bo = call i32 @ffgcv(ptr noundef %0, i32 noundef %i.be, i32 noundef %i.bl, i64 noundef %.098.us.us, i64 noundef 1, i64 noundef %i.az, ptr noundef %i.bn, ptr noundef %i.bj, ptr noundef null, ptr noundef nonnull %9) ; 0 uses
  %i.bp = load i32, ptr %9, align 4, !tbaa !9
  %.not113.us.us.us = icmp eq i32 %i.bp, 0
  br i1 %.not113.us.us.us, label %bb.l, label %.split.us.us.us

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count151
  br i1 %exitcond152.not, label %..loopexit_crit_edge.split.us.us.us, label %bb.k, !llvm.loop !27

.split.us.us.us:                                  ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !9
  %i.bs = add i64 %.098.us.us, -1
  %i.bt = add i64 %i.bs, %spec.select.us.us
  %i.bu = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.br, i64 noundef %.098.us.us, i64 noundef %i.bt) #9 ; 0 uses
  call void @ffpmsg(ptr noundef nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  %.pre154 = load i32, ptr %9, align 4, !tbaa !9
  br label %..loopexit_crit_edge.split.us.us.us

..loopexit_crit_edge.split.us.us.us:              ; preds = %bb.l, %.split.us.us.us
  %i.bv = phi i32 [ %.pre154, %.split.us.us.us ], [ 0, %bb.l ] ; 2 uses
  %.not114.us.us = icmp eq i32 %i.bv, 0
  %i.bw = add nsw i64 %spec.select.us.us, %.098.us.us
  %i.bx = add nsw i64 %spec.select.us.us, %.0101.us.us
  br i1 %.not114.us.us, label %.preheader.split.us.split.us, label %.split134.us

.preheader.split.us.split:                        ; preds = %.preheader.split.us, %..loopexit_crit_edge.split.us132
  %.0101.us = phi i64 [ %i.dc, %..loopexit_crit_edge.split.us132 ], [ 0, %.preheader.split.us ] ; 4 uses
  %.098.us = phi i64 [ %i.db, %..loopexit_crit_edge.split.us132 ], [ %4, %.preheader.split.us ] ; 4 uses
  %i.by = icmp slt i64 %.0101.us, %5
  br i1 %i.by, label %.lr.ph126.us, label %.split134.us

.lr.ph126.us:                                     ; preds = %.preheader.split.us.split
  %i.bz = sub nsw i64 %5, %.0101.us
  %i.ca = load i64, ptr %i.b, align 8, !tbaa !17
  %spec.select.us = call i64 @llvm.smin.i64(i64 %i.bz, i64 %i.ca) ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph126.us
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %bb.n ], [ 0, %.lr.ph126.us ] ; 8 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv142
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !12 ; 2 uses
  %i.cd = mul nsw i64 %i.cc, %spec.select.us
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv142
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !29
  %i.cg = mul nsw i64 %i.cc, %.0101.us
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv142
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !9  ; 2 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !17
  %i.cm = mul i64 %i.cg, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv142
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !9
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv142
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !29
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv142
  %i.ct = call i32 @ffgcv(ptr noundef %0, i32 noundef %i.ci, i32 noundef %i.cp, i64 noundef %.098.us, i64 noundef 1, i64 noundef %i.cd, ptr noundef %i.cr, ptr noundef %i.cn, ptr noundef nonnull %i.cs, ptr noundef nonnull %9) ; 0 uses
  %i.cu = load i32, ptr %9, align 4, !tbaa !9
  %.not113.us129 = icmp eq i32 %i.cu, 0
  br i1 %.not113.us129, label %bb.n, label %.split.us130

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count151
  br i1 %exitcond146.not, label %..loopexit_crit_edge.split.us132, label %bb.m, !llvm.loop !27

.split.us130:                                     ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !9
  %i.cx = add i64 %.098.us, -1
  %i.cy = add i64 %i.cx, %spec.select.us
  %i.cz = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.cw, i64 noundef %.098.us, i64 noundef %i.cy) #9 ; 0 uses
  call void @ffpmsg(ptr noundef nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  %.pre = load i32, ptr %9, align 4, !tbaa !9
  br label %..loopexit_crit_edge.split.us132

..loopexit_crit_edge.split.us132:                 ; preds = %bb.n, %.split.us130
  %i.da = phi i32 [ %.pre, %.split.us130 ], [ 0, %bb.n ] ; 2 uses
  %.not114.us = icmp eq i32 %i.da, 0
  %i.db = add nsw i64 %spec.select.us, %.098.us
  %i.dc = add nsw i64 %spec.select.us, %.0101.us
  br i1 %.not114.us, label %.preheader.split.us.split, label %.split134.us

bb.o:                                             ; preds = %._crit_edge
  %i.dd = load i32, ptr %2, align 4, !tbaa !9
  %i.de = load i32, ptr %3, align 4, !tbaa !9
  %i.df = load i64, ptr %i.aa, align 8, !tbaa !12
  %i.dg = mul nsw i64 %i.df, %5
  %i.dh = load ptr, ptr %6, align 8, !tbaa !29
  %i.di = load ptr, ptr %7, align 8, !tbaa !29
  %i.dj = call i32 @ffgcv(ptr noundef %0, i32 noundef %i.dd, i32 noundef %i.de, i64 noundef %4, i64 noundef 1, i64 noundef %i.dg, ptr noundef %i.dh, ptr noundef %i.di, ptr noundef %8, ptr noundef nonnull %9) ; 0 uses
  call void @free(ptr noundef %i.aa) #9
  %i.dk = load i32, ptr %9, align 4, !tbaa !9
  br label %bb.p

.split134.us:                                     ; preds = %..loopexit_crit_edge.split.us132, %.preheader.split.us.split, %..loopexit_crit_edge.split.us.us.us, %.preheader.split.us.split.us
  %i.dl = phi i32 [ %i.bv, %..loopexit_crit_edge.split.us.us.us ], [ 0, %.preheader.split.us.split.us ], [ %i.da, %..loopexit_crit_edge.split.us132 ], [ 0, %.preheader.split.us.split ]
  call void @free(ptr noundef %i.aa) #9
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %.split134.us, %bb.o, %.thread118, %bb.e, %bb.c
  %.0103 = phi i32 [ %i.dl, %.split134.us ], [ 0, %bb.c ], [ 113, %bb.e ], [ %i.as, %.thread118 ], [ %i.dk, %bb.o ], [ %i.v, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0103
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare i32 @ffgnrwll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffgrsz(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffgtclll(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ffpmsg(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgcf(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = load i32, ptr %9, align 4, !tbaa !9      ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.t [
    i32 1, label %bb.c
    i32 11, label %bb.d
    i32 12, label %bb.e
    i32 20, label %bb.f
    i32 21, label %bb.g
    i32 30, label %bb.h
    i32 31, label %bb.i
    i32 40, label %bb.j
    i32 41, label %bb.k
    i32 80, label %bb.l
    i32 81, label %bb.m
    i32 42, label %bb.n
    i32 82, label %bb.o
    i32 83, label %bb.p
    i32 163, label %bb.q
    i32 14, label %bb.r
    i32 16, label %bb.s
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @ffgcx(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.e = tail call i32 @ffgclb(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef 1, i32 noundef 2, i8 noundef zeroext 0, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.u

bb.e:                                             ; preds = %bb.b
  %i.f = tail call i32 @ffgclsb(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef 1, i32 noundef 2, i8 noundef signext 0, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.u

bb.f:                                             ; preds = %bb.b
  %i.g = tail call i32 @ffgclui(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef 1, i32 noundef 2, i16 noundef zeroext 0, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.u

bb.g:                                             ; preds = %bb.b
  %i.h = tail call i32 @ffgcli(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef 1, i32 noundef 2, i16 noundef signext 0, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.u

bb.h:                                             ; preds = %bb.b
  %i.i = tail call i32 @ffgcluk(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef 1, i32 noundef 2, i32 noundef 0, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.u

bb.i:                                             ; preds = %bb.b
  %i.j = tail call i32 @ffgclk(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef 1, i32 noundef 2, i32 noundef 0, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.u

bb.j:                                             ; preds = %bb.b
  %i.k = tail call i32 @ffgcluj(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef 1, i32 noundef 2, i64 noundef 0, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.u

bb.k:                                             ; preds = %bb.b
  %i.l = tail call i32 @ffgclj(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef 1, i32 noundef 2, i64 noundef 0, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.u

bb.l:                                             ; preds = %bb.b
  %i.m = tail call i32 @ffgclujj(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef 1, i32 noundef 2, i64 noundef 0, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.u

bb.m:                                             ; preds = %bb.b
  %i.n = tail call i32 @ffgcljj(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef 1, i32 noundef 2, i64 noundef 0, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.u

bb.n:                                             ; preds = %bb.b
  %i.o = tail call i32 @ffgcle(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef 1, i32 noundef 2, float noundef 0.000000e+00, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.u

bb.o:                                             ; preds = %bb.b
  %i.p = tail call i32 @ffgcld(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef 1, i32 noundef 2, double noundef 0.000000e+00, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.u

bb.p:                                             ; preds = %bb.b
  %i.q = tail call i32 @ffgcfc(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.u

bb.q:                                             ; preds = %bb.b
  %i.r = tail call i32 @ffgcfm(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.u

bb.r:                                             ; preds = %bb.b
  %i.s = tail call i32 @ffgcll(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef 2, i8 noundef signext 0, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.u

bb.s:                                             ; preds = %bb.b
  %i.t = call i32 @ffgcls(ptr noundef %0, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9) #9 ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.b
  store i32 410, ptr %9, align 4, !tbaa !9
  br label %bb.u

bb.u:                                             ; preds = %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %i.u = load i32, ptr %9, align 4, !tbaa !9
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u
  %.0 = phi i32 [ %i.u, %bb.u ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

declare i32 @ffgcfc(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffgcfm(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
end_hunk_0
