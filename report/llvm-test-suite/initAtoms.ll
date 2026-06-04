inline.NumInlined: 18
inline.NumDeleted: 4
begin_hunk_0_@setVcm:bb.a
  %i.az = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = fdiv <2 x double> %i.ay, %i.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.bc = load <2 x double>, ptr %1, align 8, !tbaa !22
  %i.bd = fsub <2 x double> %i.bc, %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load double, ptr %i.be, align 8, !tbaa !22
  %i.bg = fsub double %i.bf, %i.ax
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !34 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph33, label %._crit_edge34

.lr.ph33:                                         ; preds = %computeVcm.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 120
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %wide.trip.count = zext nneg i32 %i.bj to i64
  br label %bb.d

._crit_edge34:                                    ; preds = %._crit_edge, %computeVcm.exit
  ret void

bb.d:                                             ; preds = %.lr.ph33, %._crit_edge
  %indvars.iv43 = phi i64 [ 0, %.lr.ph33 ], [ %indvars.iv.next44, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i32 [ 0, %.lr.ph33 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv43
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4  ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.bs = zext i32 %indvars.iv to i64
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !33 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !15
  %i.bw = load ptr, ptr %i.bo, align 8, !tbaa !36
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !17
  %i.bz = add i32 %i.bq, %indvars.iv
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, 64
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count
  br i1 %exitcond46.not, label %._crit_edge34, label %bb.d

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv38 = phi i64 [ %i.bs, %.lr.ph ], [ %indvars.iv.next39, %bb.e ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv38
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [16 x i8], ptr %i.bw, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !37 ; 2 uses
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %indvars.iv38 ; 3 uses
  %i.ch = load <2 x double>, ptr %i.cg, align 8, !tbaa !22
  %i.ci = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.bd, <2 x double> %i.ch)
  store <2 x double> %i.ck, ptr %i.cg, align 8, !tbaa !22
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !22
  %i.cn = call double @llvm.fmuladd.f64(double %i.cf, double %i.bg, double %i.cm)
  store double %i.cn, ptr %i.cl, align 8, !tbaa !22
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %lftr.wideiv41 = trunc i64 %indvars.iv.next39 to i32
  %exitcond42.not = icmp eq i32 %i.bz, %lftr.wideiv41
  br i1 %exitcond42.not, label %._crit_edge, label %bb.e
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nounwind uwtable
define dso_local void @setTemperature(ptr noundef %0, double noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [3 x double], align 16            ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !34
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph66, label %._crit_edge67

.lr.ph66:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = fmul double %1, f0x3F1696FE6EF7EB54
  br label %bb.b

._crit_edge67:                                    ; preds = %._crit_edge, %bb.a
  %i.k = fcmp oeq double %1, 0.000000e+00
  br i1 %i.k, label %bb.e, label %bb.c

bb.b:                                             ; preds = %.lr.ph66, %._crit_edge
  %i.l = phi ptr [ %i.d, %.lr.ph66 ], [ %i.s, %._crit_edge ] ; 2 uses
  %indvars.iv80 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next81, %._crit_edge ] ; 3 uses
  %indvars.iv = phi i32 [ 0, %.lr.ph66 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv80
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.r = zext i32 %indvars.iv to i64
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !33
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.s = phi ptr [ %i.l, %bb.b ], [ %i.bk, %.lr.ph ] ; 2 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !34
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next81, %i.v
  %indvars.iv.next = add i32 %indvars.iv, 64
  br i1 %i.w, label %bb.b, label %._crit_edge67

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.x = phi ptr [ %.pre, %.lr.ph.preheader ], [ %i.be, %.lr.ph ] ; 2 uses
  %indvars.iv77 = phi i64 [ %i.r, %.lr.ph.preheader ], [ %indvars.iv.next78, %.lr.ph ] ; 6 uses
  %.06062 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bj, %.lr.ph ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv77
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr inbounds [16 x i8], ptr %i.ac, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load double, ptr %i.af, align 8, !tbaa !37 ; 2 uses
  %i.ah = fdiv double %i.j, %i.ag
  %i.ai = call double @sqrt(double noundef %i.ah) #11, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !12
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv77
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = call i64 @mkSeed(i32 noundef %i.am, i32 noundef 123) #11
  store i64 %i.an, ptr %i.a, align 8, !tbaa !39
  %i.ao = fmul double %i.ag, %i.ai                ; 3 uses
  %i.ap = call double @gasdev(ptr noundef nonnull %i.a) #11
  %i.aq = fmul double %i.ao, %i.ap
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !17
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %indvars.iv77
  store double %i.aq, ptr %i.au, align 8, !tbaa !22
  %i.av = call double @gasdev(ptr noundef nonnull %i.a) #11
  %i.aw = fmul double %i.ao, %i.av
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !17
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %indvars.iv77
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store double %i.aw, ptr %i.bb, align 8, !tbaa !22
  %i.bc = call double @gasdev(ptr noundef nonnull %i.a) #11
  %i.bd = fmul double %i.ao, %i.bc
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !33  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !17
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %indvars.iv77
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store double %i.bd, ptr %i.bi, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.bj = add nuw nsw i32 %.06062, 1              ; 2 uses
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 120
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !35
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv80
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bp = icmp slt i32 %i.bj, %i.bo
  br i1 %i.bp, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %._crit_edge67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  call void @setVcm(ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  call void @kineticEnergy(ptr noundef nonnull %0) #11
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = load double, ptr %i.bq, align 8, !tbaa !41
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !33 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !21
  %i.bw = sitofp i32 %i.bv to double
  %i.bx = fdiv double %i.br, %i.bw
  %i.by = fdiv double %i.bx, f0x3F1696FE6EF7EB54
  %i.bz = fdiv double %i.by, 1.500000e+00
  %i.ca = fdiv double %1, %i.bz
  %i.cb = call double @sqrt(double noundef %i.ca) #11, !tbaa !4 ; 3 uses
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !34 ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph75, label %._crit_edge76

.lr.ph75:                                         ; preds = %bb.c
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !35
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %wide.trip.count = zext nneg i32 %i.ce to i64
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cb, i64 0 ; 2 uses
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %2 = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <4 x i32> zeroinitializer
  %i.cj = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.d

._crit_edge76:                                    ; preds = %._crit_edge72, %bb.c
  call void @kineticEnergy(ptr noundef nonnull %0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph75, %._crit_edge72
  %indvars.iv88 = phi i64 [ 0, %.lr.ph75 ], [ %indvars.iv.next89, %._crit_edge72 ] ; 2 uses
  %indvars.iv83 = phi i32 [ 0, %.lr.ph75 ], [ %indvars.iv.next84, %._crit_edge72 ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv88
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !4  ; 4 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph71, label %._crit_edge72

.lr.ph71:                                         ; preds = %bb.d
  %i.co = zext i32 %indvars.iv83 to i64           ; 3 uses
  %i.cp = load ptr, ptr %i.ci, align 8, !tbaa !17 ; 3 uses
  %i.cq = add i32 %i.cm, %indvars.iv83
  %3 = zext nneg i32 %i.cm to i64                 ; 2 uses
  %min.iters.check = icmp eq i32 %i.cm, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph71
  %n.vec = and i64 %3, 2147483646                 ; 3 uses
  %4 = add nuw nsw i64 %n.vec, %i.co
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %5 = add i64 %index, %i.co                      ; 2 uses
  %6 = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %5 ; 4 uses
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %5 ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %8 = load double, ptr %6, align 8, !tbaa !22
  %9 = load double, ptr %7, align 8, !tbaa !22
  %10 = insertelement <2 x double> poison, double %8, i64 0
  %11 = insertelement <2 x double> %10, double %9, i64 1
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %14 = load double, ptr %12, align 8, !tbaa !22
  %15 = load double, ptr %13, align 8, !tbaa !22
  %16 = insertelement <2 x double> poison, double %14, i64 0
  %17 = insertelement <2 x double> %16, double %15, i64 1
  %18 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %19 = load double, ptr %18, align 8, !tbaa !22
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !22
  %20 = insertelement <2 x double> poison, double %19, i64 0
  %21 = insertelement <2 x double> %20, double %i.ct, i64 1
  %22 = fmul <2 x double> %broadcast.splat, %21
  %23 = shufflevector <2 x double> %11, <2 x double> %17, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %24 = fmul <4 x double> %2, %23
  %25 = shufflevector <2 x double> %22, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %24, <4 x double> %25, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %6, align 8, !tbaa !22
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %26 = icmp eq i64 %index.next, %n.vec
  br i1 %26, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %3
  br i1 %cmp.n, label %._crit_edge72, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph71, %middle.block
  %indvars.iv85.ph = phi i64 [ %i.co, %.lr.ph71 ], [ %4, %middle.block ]
  br label %scalar.ph

._crit_edge72:                                    ; preds = %scalar.ph, %middle.block, %bb.d
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %indvars.iv.next84 = add i32 %indvars.iv83, 64
  %exitcond91.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  br i1 %exitcond91.not, label %._crit_edge76, label %bb.d

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %scalar.ph ], [ %indvars.iv85.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %indvars.iv85 ; 3 uses
  %i.cv = load <2 x double>, ptr %i.cu, align 8, !tbaa !22
  %i.cw = fmul <2 x double> %i.ck, %i.cv
  store <2 x double> %i.cw, ptr %i.cu, align 8, !tbaa !22
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !22
  %i.cz = fmul double %i.cb, %i.cy
  store double %i.cz, ptr %i.cx, align 8, !tbaa !22
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next86 to i32
  %exitcond.not = icmp eq i32 %i.cq, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge72, label %scalar.ph, !llvm.loop !45

bb.e:                                             ; preds = %._crit_edge67, %._crit_edge76
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #6

declare i64 @mkSeed(i32 noundef, i32 noundef) local_unnamed_addr #5

declare double @gasdev(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @kineticEnergy(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @randomDisplacements(ptr noundef readonly captures(none) %0, double noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !34
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph25, label %._crit_edge26

.lr.ph25:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %bb.b

._crit_edge26:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph25, %._crit_edge
  %i.h = phi ptr [ %i.c, %.lr.ph25 ], [ %i.o, %._crit_edge ] ; 2 uses
  %indvars.iv30 = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next31, %._crit_edge ] ; 3 uses
  %indvars.iv = phi i32 [ 0, %.lr.ph25 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv30
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.n = zext i32 %indvars.iv to i64
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !33
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.o = phi ptr [ %i.h, %bb.b ], [ %i.ba, %.lr.ph ] ; 2 uses
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !34
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv.next31, %i.r
  %indvars.iv.next = add i32 %indvars.iv, 64
  br i1 %i.s, label %bb.b, label %._crit_edge26

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.t = phi ptr [ %.pre, %.lr.ph.preheader ], [ %i.as, %.lr.ph ]
  %indvars.iv27 = phi i64 [ %i.n, %.lr.ph.preheader ], [ %indvars.iv.next28, %.lr.ph ] ; 5 uses
  %.022 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.az, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv27
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = call i64 @mkSeed(i32 noundef %i.x, i32 noundef 457) #11
  store i64 %i.y, ptr %i.a, align 8, !tbaa !39
  %i.z = call double @lcg61(ptr noundef nonnull %i.a) #11
  %i.aa = call double @llvm.fmuladd.f64(double %i.z, double 2.000000e+00, double -1.000000e+00)
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !16
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv27 ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !22
  %i.ag = call double @llvm.fmuladd.f64(double %i.aa, double %1, double %i.af)
  store double %i.ag, ptr %i.ae, align 8, !tbaa !22
  %i.ah = call double @lcg61(ptr noundef nonnull %i.a) #11
  %i.ai = call double @llvm.fmuladd.f64(double %i.ah, double 2.000000e+00, double -1.000000e+00)
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv27
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !22
  %i.ap = call double @llvm.fmuladd.f64(double %i.ai, double %1, double %i.ao)
  store double %i.ap, ptr %i.an, align 8, !tbaa !22
  %i.aq = call double @lcg61(ptr noundef nonnull %i.a) #11
  %i.ar = call double @llvm.fmuladd.f64(double %i.aq, double 2.000000e+00, double -1.000000e+00)
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !33  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !16
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %indvars.iv27
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !22
  %i.ay = call double @llvm.fmuladd.f64(double %i.ar, double %1, double %i.ax)
  store double %i.ay, ptr %i.aw, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.az = add nuw nsw i32 %.022, 1                ; 2 uses
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 120
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !35
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv30
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = icmp slt i32 %i.az, %i.be
  br i1 %i.bf, label %.lr.ph, label %._crit_edge
}

declare double @lcg61(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare void @addRealParallel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { mustprogress nofree nounwind willreturn memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 20}
!9 = !{!"LinkCellSt", !6, i64 0, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 48, !6, i64 72, !6, i64 96, !10, i64 120}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !10, i64 8}
!13 = !{!"AtomsSt", !5, i64 0, !5, i64 4, !10, i64 8, !10, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48}
!14 = !{!"p1 double", !11, i64 0}
!15 = !{!13, !10, i64 16}
!16 = !{!13, !14, i64 24}
!17 = !{!13, !14, i64 32}
!18 = !{!13, !14, i64 40}
!19 = !{!13, !14, i64 48}
!20 = !{!13, !5, i64 0}
!21 = !{!13, !5, i64 4}
!22 = !{!23, !23, i64 0}
!23 = !{!"double", !6, i64 0}
!24 = !{!25, !26, i64 16}
!25 = !{!"SimFlatSt", !5, i64 0, !5, i64 4, !23, i64 8, !26, i64 16, !27, i64 24, !28, i64 32, !29, i64 40, !23, i64 48, !23, i64 56, !30, i64 64, !31, i64 72}
!26 = !{!"p1 _ZTS8DomainSt", !11, i64 0}
!27 = !{!"p1 _ZTS10LinkCellSt", !11, i64 0}
!28 = !{!"p1 _ZTS7AtomsSt", !11, i64 0}
!29 = !{!"p1 _ZTS13SpeciesDataSt", !11, i64 0}
!30 = !{!"p1 _ZTS15BasePotentialSt", !11, i64 0}
!31 = !{!"p1 _ZTS14HaloExchangeSt", !11, i64 0}
!32 = !{!25, !27, i64 24}
!33 = !{!25, !28, i64 32}
!34 = !{!9, !5, i64 12}
!35 = !{!9, !10, i64 120}
!36 = !{!25, !29, i64 40}
!37 = !{!38, !23, i64 8}
!38 = !{!"SpeciesDataSt", !6, i64 0, !5, i64 4, !23, i64 8}
!39 = !{!40, !40, i64 0}
!40 = !{!"long", !6, i64 0}
!41 = !{!25, !23, i64 56}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !{!"llvm.loop.unroll.runtime.disable"}
!45 = distinct !{!45, !44, !43}
end_hunk_0
