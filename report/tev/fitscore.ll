Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/fitscore?download=true
inline.NumInlined: 175
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@ffgiszll:bb.a
  br i1 %cmp.n71, label %.sink.split, label %scalar.ph61.preheader

scalar.ph61.preheader:                            ; preds = %vector.memcheck, %.lr.ph49, %middle.block70
  %indvars.iv52.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph49 ], [ %n.vec64, %middle.block70 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count55, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph61.prol.loopexit, label %scalar.ph61.prol

scalar.ph61.prol:                                 ; preds = %scalar.ph61.preheader, %scalar.ph61.prol
  %indvars.iv52.prol = phi i64 [ %indvars.iv.next53.prol, %scalar.ph61.prol ], [ %indvars.iv52.ph, %scalar.ph61.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph61.prol ], [ 0, %scalar.ph61.preheader ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv52.prol
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !43
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv52.prol
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !43
  %indvars.iv.next53.prol = add nuw nsw i64 %indvars.iv52.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph61.prol.loopexit, label %scalar.ph61.prol, !llvm.loop !223

scalar.ph61.prol.loopexit:                        ; preds = %scalar.ph61.prol, %scalar.ph61.preheader
  %indvars.iv52.unr = phi i64 [ %indvars.iv52.ph, %scalar.ph61.preheader ], [ %indvars.iv.next53.prol, %scalar.ph61.prol ]
  %i.ai = sub nsw i64 %indvars.iv52.ph, %wide.trip.count55
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %.sink.split, label %scalar.ph61

scalar.ph61:                                      ; preds = %scalar.ph61.prol.loopexit, %scalar.ph61
  %indvars.iv52 = phi i64 [ %indvars.iv.next53.3, %scalar.ph61 ], [ %indvars.iv52.unr, %scalar.ph61.prol.loopexit ] ; 6 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv52
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv52
  store i64 %i.al, ptr %i.am, align 8, !tbaa !43
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next53
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !43
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next53
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !43
  %indvars.iv.next53.1 = add nuw nsw i64 %indvars.iv52, 2 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next53.1
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !43
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next53.1
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !43
  %indvars.iv.next53.2 = add nuw nsw i64 %indvars.iv52, 3 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next53.2
  %i.au = load i64, ptr %i.at, align 8, !tbaa !43
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next53.2
  store i64 %i.au, ptr %i.av, align 8, !tbaa !43
  %indvars.iv.next53.3 = add nuw nsw i64 %indvars.iv52, 4 ; 2 uses
  %exitcond56.not.3 = icmp eq i64 %indvars.iv.next53.3, %wide.trip.count55
  br i1 %exitcond56.not.3, label %.sink.split, label %scalar.ph61, !llvm.loop !224

bb.h:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 1148
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !49
  %.not44 = icmp eq i32 %i.ax, 0
  br i1 %.not44, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 1168
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !84
  %.45 = tail call i32 @llvm.smin.i32(i32 %i.az, i32 %1) ; 3 uses
  %i.ba = icmp sgt i32 %.45, 0
  br i1 %i.ba, label %.lr.ph, label %.sink.split

.lr.ph:                                           ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 1176 ; 2 uses
  %wide.trip.count = zext nneg i32 %.45 to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %.45, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <2 x i64>, ptr %i.bc, align 8, !tbaa !54
  %wide.load60 = load <2 x i64>, ptr %i.bd, align 8, !tbaa !54
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x i64> %wide.load, ptr %i.be, align 8, !tbaa !43
  store <2 x i64> %wide.load60, ptr %i.bf, align 8, !tbaa !43
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !225

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.sink.split, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !54
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.sink.split, label %scalar.ph, !llvm.loop !226

bb.j:                                             ; preds = %bb.h
  store i32 233, ptr %3, align 4, !tbaa !27
  br label %.sink.split

.sink.split:                                      ; preds = %scalar.ph, %scalar.ph61.prol.loopexit, %scalar.ph61, %middle.block, %middle.block70, %bb.j, %bb.g, %bb.i, %bb.e
  %i.bk = load i32, ptr %3, align 4, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.a
  %.037 = phi i32 [ %i.b, %bb.a ], [ %i.bk, %.sink.split ]
  ret i32 %.037
}

declare i32 @ffgky(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgiet(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.d = load i32, ptr %2, align 4, !tbaa !27     ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35
  %.not = icmp eq i32 %i.f, %i.j
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %i.f, 1
  %i.l = tail call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.k, ptr noundef null, ptr noundef nonnull %2) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.n = load i64, ptr %i.m, align 8, !tbaa !47
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @ffrdef(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.aa

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.s = tail call i32 @ffmaky(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull %2) #28 ; 0 uses
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.v = load i32, ptr %i.u, align 8, !tbaa !48
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1148
  %i.y = load i32, ptr %i.x, align 4, !tbaa !49
  %.not77 = icmp eq i32 %i.y, 0
  br i1 %.not77, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 233, ptr %2, align 4, !tbaa !27
  br label %bb.aa

bb.j:                                             ; preds = %bb.h, %bb.g
  %.str.435.sink = phi ptr [ @.str.266, %bb.g ], [ @.str.435, %bb.h ]
  %i.z = tail call i32 @ffgky(ptr noundef nonnull %0, i32 noundef 31, ptr noundef nonnull %.str.435.sink, ptr noundef %1, ptr noundef null, ptr noundef nonnull %2) #28 ; 0 uses
  store i32 0, ptr %i.a, align 4, !tbaa !27
  %i.aa = call i32 @ffgky(ptr noundef nonnull %0, i32 noundef 82, ptr noundef nonnull @.str.436, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef nonnull %i.a) #28 ; 0 uses
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !27
  %.not78 = icmp eq i32 %i.ab, 0
  br i1 %.not78, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !57
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store i32 0, ptr %i.a, align 4, !tbaa !27
  %i.ac = call i32 @ffgky(ptr noundef nonnull %0, i32 noundef 82, ptr noundef nonnull @.str.437, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef nonnull %i.a) #28 ; 0 uses
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !27
  %.not79 = icmp eq i32 %i.ad, 0
  %.pr = load double, ptr %i.c, align 8
  %i.ae = select i1 %.not79, double %.pr, double 0.000000e+00 ; 7 uses
  %i.af = load double, ptr %i.b, align 8, !tbaa !57 ; 6 uses
  %i.ag = fcmp oeq double %i.af, 1.000000e+00
  %i.ah = fcmp oeq double %i.ae, 0.000000e+00
  %or.cond = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ai = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.aa

bb.n:                                             ; preds = %bb.l
  %i.aj = load i32, ptr %1, align 4, !tbaa !27    ; 2 uses
  switch i32 %i.aj, label %bb.q [
    i32 8, label %bb.r
    i32 16, label %bb.o
    i32 32, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.ak = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.aa

bb.r:                                             ; preds = %bb.n, %bb.p, %bb.o
  %3 = phi <2 x double> [ <double f0xC1E0000000000000, double f0x41DFFFFFFFC00000>, %bb.p ], [ <double -3.276800e+04, double 3.276700e+04>, %bb.o ], [ <double 0.000000e+00, double 2.550000e+02>, %bb.n ]
  %4 = fcmp ult double %i.af, 0.000000e+00        ; 2 uses
  %5 = insertelement <2 x double> poison, double %i.af, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = insertelement <2 x double> poison, double %i.ae, i64 0
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %9 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %3, <2 x double> %8) ; 2 uses
  %10 = extractelement <2 x double> %9, i64 0     ; 3 uses
  %i.al = call double @llvm.fmuladd.f64(double %i.af, double %10, double %i.ae)
  %.167 = select i1 %4, double %i.al, double %10  ; 4 uses
  %11 = extractelement <2 x double> %9, i64 1
  %.1 = select i1 %4, double %10, double %11      ; 5 uses
  %i.am = fcmp une double %i.ae, f0x41E0000000000000
  br i1 %i.am, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.an = fptosi double %i.af to i64
  %i.ao = fcmp olt double %i.ae, f0x41E0000000000000
  %i.ap = fptosi double %i.ae to i64
  %i.aq = sitofp i64 %i.ap to double
  %.068 = select i1 %i.ao, double %i.aq, double 0.000000e+00
  %i.ar = fcmp une double %.068, %i.ae
  %i.as = sitofp i64 %i.an to double
  %i.at = fcmp une double %i.af, %i.as
  %or.cond81 = select i1 %i.ar, i1 true, i1 %i.at
  br i1 %or.cond81, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.au = add i32 %i.aj, -8
  %switch.and = and i32 %i.au, -9
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %i.av = select i1 %switch.selectcmp, i32 -32, i32 -64
  br label %bb.z

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.aw = fcmp oeq double %.167, -1.280000e+02
  %i.ax = fcmp oeq double %.1, 1.270000e+02
  %or.cond3 = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond3, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = fcmp oge double %.167, -3.276800e+04
  %i.az = fcmp ole double %.1, 3.276700e+04
  %or.cond5 = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %or.cond5, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ba = fcmp oge double %.167, 0.000000e+00     ; 2 uses
  %i.bb = fcmp ole double %.1, 6.553500e+04
  %or.cond7 = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond7, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bc = fcmp oge double %.167, f0xC1E0000000000000
  %i.bd = fcmp ole double %.1, f0x41DFFFFFFFC00000
  %or.cond9 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond9, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = fcmp olt double %.1, f0x41F0000000000000
  %or.cond11 = select i1 %i.ba, i1 %i.be, i1 false
  %. = select i1 %or.cond11, i32 40, i32 -64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %.sink = phi i32 [ %i.av, %bb.t ], [ 16, %bb.v ], [ %., %bb.y ], [ 32, %bb.x ], [ 20, %bb.w ], [ 10, %bb.u ]
  store i32 %.sink, ptr %1, align 4, !tbaa !27
  %i.bf = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %bb.z, %bb.q, %bb.m, %bb.i, %bb.f
  %.069 = phi i32 [ %i.r, %bb.f ], [ %i.ai, %bb.m ], [ %i.ak, %bb.q ], [ %i.bf, %bb.z ], [ 233, %bb.i ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.069
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffgext(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !27     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.g = sext i32 %1 to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !43
  %i.j = tail call i32 @ffmbyt(ptr noundef %0, i64 noundef %i.i, i32 noundef 0, ptr noundef nonnull %3) #28
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !17   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 84 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !35   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !42   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !45
  store i32 %1, ptr %i.m, align 4, !tbaa !35
  store i32 %1, ptr %0, align 8, !tbaa !34
  %. = tail call i32 @llvm.smax.i32(i32 %i.p, i32 %1)
  store i32 %., ptr %i.o, align 8, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !44
  store i64 %i.t, ptr %i.q, align 8, !tbaa !45
  %i.u = tail call i32 @ffrhdu(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %3)
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !17   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 84
  store i32 %i.n, ptr %i.x, align 4, !tbaa !35
  store i32 %i.n, ptr %0, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  store i32 %i.p, ptr %i.y, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  store i64 %i.r, ptr %i.z, align 8, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.aa = load i32, ptr %3, align 4, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.0 = phi i32 [ %i.aa, %bb.e ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffmnhd(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [71 x i8], align 16               ; 10 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 12 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  %i.g = load i32, ptr %4, align 4, !tbaa !27     ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %0, align 8, !tbaa !34
  %i.j = add nsw i32 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !227
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #29
  %i.p = shl i64 %i.o, 32
  %sext = add i64 %i.p, -4294967296
  %i.q = ashr exact i64 %sext, 32
  %i.r = getelementptr inbounds i8, ptr %2, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !29
  %.not51 = icmp eq i8 %i.s, 35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not54 = phi i1 [ true, %bb.b ], [ %.not51, %bb.c ] ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !27
  %i.t = call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not5267 = icmp eq i32 %i.t, 0
  br i1 %.not5267, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.u = icmp eq i32 %1, -1
  %.not58 = icmp eq i32 %3, 0
  br label %bb.e

._crit_edge:                                      ; preds = %bb.ai, %bb.d
  %i.v = call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.j, ptr noundef null, ptr noundef nonnull %4) ; 0 uses
  store i32 301, ptr %4, align 4, !tbaa !27
  br label %bb.aj

bb.e:                                             ; preds = %.lr.ph, %bb.ai
  %i.w = phi i32 [ undef, %.lr.ph ], [ %i.cc, %bb.ai ] ; 2 uses
  %i.x = phi i32 [ undef, %.lr.ph ], [ %i.cd, %bb.ai ] ; 2 uses
  %.069 = phi i32 [ 0, %.lr.ph ], [ %.5, %bb.ai ] ; 3 uses
  %.04568 = phi i32 [ 1, %.lr.ph ], [ %i.ce, %bb.ai ]
  %i.y = load i32, ptr %4, align 4, !tbaa !27
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %fits_is_compressed_image.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !17  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 84
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !35
  %.not.i = icmp eq i32 %i.aa, %i.ad
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = add nsw i32 %i.aa, 1
  %i.af = call i32 @ffmahd(ptr noundef nonnull %0, i32 noundef %i.ae, ptr noundef null, ptr noundef nonnull %4) ; 0 uses
end_hunk_0
begin_hunk_1_@strtoull
declare i64 @strtoull(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare ptr @localeconv() local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 2) i32 @fits_strcasecmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #24 {
bb.a:
  %i.a = tail call ptr @__ctype_toupper_loc() #30
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !29
  %i.d = sext i8 %i.c to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !27
  %i.g = load i8, ptr %1, align 1, !tbaa !29
  %i.h = sext i8 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !27
  %i.k = shl i32 %i.f, 24                         ; 2 uses
  %i.l = ashr exact i32 %i.k, 24                  ; 2 uses
  %i.m = shl i32 %i.j, 24
  %i.n = ashr exact i32 %i.m, 24                  ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n
  br i1 %i.o, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.p = phi i32 [ %i.ah, %bb.c ], [ %i.n, %bb.a ]
  %i.q = phi i32 [ %i.af, %bb.c ], [ %i.l, %bb.a ]
  %i.r = phi i32 [ %i.ae, %bb.c ], [ %i.k, %bb.a ]
  %.01318 = phi ptr [ %i.u, %bb.c ], [ %0, %bb.a ]
  %.01417 = phi ptr [ %i.v, %bb.c ], [ %1, %bb.a ]
  %i.s = icmp sgt i32 %i.q, %i.p
  br i1 %i.s, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.t = icmp eq i32 %i.r, 0
  br i1 %i.t, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.01318, i64 1 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01417, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.u, align 1, !tbaa !29
  %i.x = sext i8 %i.w to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !27
  %i.aa = load i8, ptr %i.v, align 1, !tbaa !29
  %i.ab = sext i8 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !27
  %i.ae = shl i32 %i.z, 24                        ; 2 uses
  %i.af = ashr exact i32 %i.ae, 24                ; 2 uses
  %i.ag = shl i32 %i.ad, 24
  %i.ah = ashr exact i32 %i.ag, 24                ; 2 uses
  %i.ai = icmp slt i32 %i.af, %i.ah
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ 0, %bb.b ], [ 1, %.lr.ph ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 2) i32 @fits_strncasecmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #24 {
bb.a:
  %.not19 = icmp eq i64 %2, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = tail call ptr @__ctype_toupper_loc() #30
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph
  %.in = phi i64 [ %2, %.lr.ph ], [ %i.c, %bb.d ]
  %.01421 = phi ptr [ %0, %.lr.ph ], [ %i.s, %bb.d ] ; 2 uses
  %.01520 = phi ptr [ %1, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %i.c = add i64 %.in, -1                         ; 2 uses
  %i.d = load i8, ptr %.01421, align 1, !tbaa !29
  %i.e = sext i8 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27
  %i.h = load i8, ptr %.01520, align 1, !tbaa !29
  %i.i = sext i8 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !27
  %i.l = shl i32 %i.g, 24                         ; 2 uses
  %i.m = ashr exact i32 %i.l, 24                  ; 2 uses
  %i.n = shl i32 %i.k, 24
  %i.o = ashr exact i32 %i.n, 24                  ; 2 uses
  %i.p = icmp slt i32 %i.m, %i.o
  br i1 %i.p, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp sgt i32 %i.m, %i.o
  br i1 %i.q, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp eq i32 %i.l, 0
  %i.s = getelementptr inbounds nuw i8, ptr %.01421, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %.01520, i64 1
  %.not = icmp eq i64 %i.c, 0
  %or.cond = select i1 %i.r, i1 true, i1 %.not
  br i1 %or.cond, label %._crit_edge, label %bb.b, !llvm.loop !232

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ -1, %bb.b ], [ 1, %bb.c ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noundef ptr @fits_recalloc(ptr noundef captures(address_is_null, ret: address, provenance) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #25 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @calloc(i64 noundef %2, i64 noundef %3) #32
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %2, %1
  br i1 %i.d, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %0) #28
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.f = icmp ult i64 %2, %1
  %i.g = mul i64 %3, %2
  %i.h = tail call ptr @realloc(ptr noundef nonnull %0, i64 noundef %i.g) #31 ; 4 uses
  %.not36 = icmp eq ptr %i.h, null                ; 2 uses
  br i1 %i.f, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %.not36, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %0) #28
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  br i1 %.not36, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %0) #28
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.i = mul i64 %3, %1
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = sub nuw i64 %2, %1
  %i.l = mul i64 %i.k, %3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.j, i8 0, i64 %i.l, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.h, %bb.c, %bb.k, %bb.j, %bb.e, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.j ], [ null, %bb.e ], [ %0, %bb.c ], [ %i.h, %bb.k ], [ null, %bb.h ], [ %i.h, %bb.g ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nounwind }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { nounwind willreturn memory(none) }
attributes #31 = { nounwind allocsize(1) }
attributes #32 = { nounwind allocsize(0,1) }
attributes #33 = { nounwind allocsize(0) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !31}
!1 = distinct !{!1, !31}
!2 = distinct !{!2, !31}
!3 = distinct !{!3, !31}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"float", !9, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"", !10, i64 0, !15, i64 8}
!17 = !{!16, !15, i64 8}
!18 = !{!"p1 omnipotent char", !15, i64 0}
!19 = !{!"long long", !9, i64 0}
!20 = !{!"p1 long long", !15, i64 0}
!21 = !{!"long", !9, i64 0}
!22 = !{!"double", !9, i64 0}
!23 = !{!"p1 int", !15, i64 0}
!24 = !{!"p1 long", !15, i64 0}
!25 = !{!"any p2 pointer", !15, i64 0}
!26 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !18, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !19, i64 40, !19, i64 48, !10, i64 56, !19, i64 64, !19, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !20, i64 104, !19, i64 112, !19, i64 120, !19, i64 128, !19, i64 136, !10, i64 144, !9, i64 152, !10, i64 944, !10, i64 948, !19, i64 952, !19, i64 960, !19, i64 968, !15, i64 976, !19, i64 984, !19, i64 992, !10, i64 1000, !9, i64 1008, !13, i64 1056, !10, i64 1060, !10, i64 1064, !10, i64 1068, !10, i64 1072, !13, i64 1076, !10, i64 1080, !10, i64 1084, !9, i64 1088, !13, i64 1136, !10, i64 1140, !10, i64 1144, !10, i64 1148, !9, i64 1152, !10, i64 1164, !10, i64 1168, !9, i64 1176, !21, i64 1224, !21, i64 1232, !10, i64 1240, !10, i64 1244, !10, i64 1248, !10, i64 1252, !10, i64 1256, !10, i64 1260, !22, i64 1264, !22, i64 1272, !22, i64 1280, !22, i64 1288, !22, i64 1296, !10, i64 1304, !10, i64 1308, !10, i64 1312, !13, i64 1316, !10, i64 1320, !23, i64 1328, !24, i64 1336, !23, i64 1344, !25, i64 1352, !25, i64 1360, !23, i64 1368, !18, i64 1376, !9, i64 1384, !9, i64 1704, !9, i64 1864}
!27 = !{!10, !10, i64 0}
!28 = !{!26, !10, i64 92}
!29 = !{!9, !9, i64 0}
!30 = !{!18, !18, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!23, !23, i64 0}
!34 = !{!16, !10, i64 0}
!35 = !{!26, !10, i64 84}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = !{!"branch_weights", i32 8, i32 24}
!39 = !{!26, !19, i64 128}
!40 = !{!26, !10, i64 100}
!41 = !{!26, !20, i64 104}
!42 = !{!26, !10, i64 96}
!43 = !{!19, !19, i64 0}
!44 = !{!26, !19, i64 48}
!45 = !{!26, !19, i64 112}
!46 = !{ptr @ffghdt}
!47 = !{!26, !19, i64 136}
!48 = !{!26, !10, i64 88}
!49 = !{!26, !10, i64 1148}
!50 = !{!"p1 short", !15, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"short", !9, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!21, !21, i64 0}
!55 = !{!"lconv", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !9, i64 80, !9, i64 81, !9, i64 82, !9, i64 83, !9, i64 84, !9, i64 85, !9, i64 86, !9, i64 87, !9, i64 88, !9, i64 89, !9, i64 90, !9, i64 91, !9, i64 92, !9, i64 93}
!56 = !{!55, !18, i64 0}
!57 = !{!22, !22, i64 0}
!58 = !{!26, !10, i64 944}
!59 = !{!26, !15, i64 976}
!60 = !{!26, !19, i64 960}
!61 = !{!26, !19, i64 952}
!62 = !{!26, !19, i64 992}
!63 = !{!"", !9, i64 0, !19, i64 72, !10, i64 80, !19, i64 88, !22, i64 96, !22, i64 104, !19, i64 112, !9, i64 120, !9, i64 140, !21, i64 152}
!64 = !{!63, !10, i64 80}
!65 = !{!63, !21, i64 152}
!66 = !{!63, !19, i64 88}
!67 = !{!63, !22, i64 96}
!68 = !{!63, !22, i64 104}
!69 = !{!63, !19, i64 72}
!70 = !{!63, !19, i64 112}
!71 = !{!26, !10, i64 56}
!72 = !{!26, !10, i64 144}
!73 = !{!26, !19, i64 984}
!74 = !{!26, !19, i64 968}
!75 = !{!26, !23, i64 1328}
!76 = !{!26, !25, i64 1352}
!77 = !{!15, !15, i64 0}
!78 = !{!26, !25, i64 1360}
!79 = !{!26, !23, i64 1368}
!80 = !{!26, !23, i64 1344}
!81 = !{!26, !24, i64 1336}
!82 = !{!26, !10, i64 4}
!83 = !{!26, !19, i64 120}
!84 = !{!26, !10, i64 1168}
!85 = !{!26, !18, i64 16}
!86 = distinct !{!86, !32}
!87 = distinct !{!87, !31}
!88 = distinct !{!88, !32}
!89 = distinct !{!89, !31}
!90 = distinct !{!90, !32}
!91 = distinct !{!91, !31}
!92 = distinct !{!92, !31}
!93 = distinct !{!93, !31}
!94 = distinct !{!94, !31, !36, !37}
!95 = distinct !{!95, !31, !36, !37}
!96 = distinct !{!96, !31, !37, !36}
!97 = distinct !{!97, !31}
!98 = distinct !{!98, !32}
!99 = distinct !{!99, !31}
!100 = !{ptr @ffgext}
!101 = distinct !{!101, !31}
!102 = distinct !{!102, !31}
!103 = distinct !{!103, !31}
!104 = distinct !{!104, !31}
!105 = distinct !{!105, !31}
!106 = distinct !{!106, !31}
!107 = distinct !{!107, !32}
!108 = distinct !{!108, !32}
!109 = distinct !{!109, !31}
!110 = distinct !{!110, !31}
!111 = distinct !{!111, !31}
!112 = distinct !{!112, !31}
!113 = distinct !{!113, !31}
!114 = distinct !{!114, !31}
!115 = distinct !{!115, !31}
!116 = distinct !{!116, !31}
!117 = distinct !{!117, !31, !36, !37}
!118 = distinct !{!118, !31, !36, !37}
!119 = distinct !{!119, !31, !37, !36}
!120 = distinct !{!120, !31}
!121 = distinct !{!121, !31}
!122 = distinct !{!122, !31}
!123 = distinct !{!123, !31}
!124 = distinct !{!124, !31}
!125 = distinct !{!125, !31}
!126 = distinct !{!126, !31}
!127 = distinct !{!127, !31}
!128 = distinct !{!128, !31}
!129 = distinct !{!129, !32}
!130 = distinct !{!130, !31}
!131 = distinct !{!131, !32}
!132 = distinct !{!132, !31}
!133 = distinct !{!133, !31}
!134 = distinct !{!134, !32}
!135 = distinct !{!135, !31}
!136 = distinct !{!136, !31}
!137 = distinct !{!137, !31}
!138 = distinct !{!138, !31}
!139 = distinct !{!139, !31}
!140 = !{!26, !10, i64 948}
!141 = distinct !{!141, !31}
!142 = distinct !{!142, !31}
!143 = distinct !{!143, !32}
!144 = distinct !{!144, !32}
!145 = distinct !{!145, !31}
!146 = distinct !{!146, !31}
!147 = distinct !{!147, !31}
!148 = distinct !{!148, !31}
!149 = distinct !{!149, !32}
!150 = distinct !{!150, !31}
!151 = distinct !{!151, !31}
!152 = distinct !{!152, !31}
!153 = distinct !{!153, !31}
!154 = distinct !{!154, !31}
!155 = distinct !{!155, !31}
!156 = distinct !{!156, !32}
!157 = distinct !{!157, !31}
!158 = distinct !{!158, !31}
!159 = distinct !{!159, !31}
!160 = distinct !{!160, !31}
end_hunk_1
