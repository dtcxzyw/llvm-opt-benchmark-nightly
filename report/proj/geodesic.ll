inline.NumInlined: 173
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumUnrolled: 71
begin_hunk_0_@geod_genposition:bb.a
  %i.sb = tail call double @llvm.fmuladd.f64(double %i.rh, double %i.rz, double %i.sa)
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.sd = load double, ptr %i.sc, align 8, !tbaa !8
  %i.se = fadd double %i.sb, %i.sd                ; 2 uses
  %i.sf = fneg double %i.rz
  %i.sg = tail call double @llvm.fmuladd.f64(double %i.rh, double %i.se, double %i.sf)
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.si = load double, ptr %i.sh, align 8, !tbaa !8
  %i.sj = fadd double %i.si, %i.sg
  %i.sk = fsub double %i.sj, %i.se
  %i.sl = fmul double %.0266, %i.sk
  %i.sm = fcmp oeq double %i.if, 0.000000e+00
  %i.sn = fcmp oeq double %i.ii, 0.000000e+00
  %or.cond340 = or i1 %i.sm, %i.sn
  br i1 %or.cond340, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %SinCosSeries.exit328
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.sp = load double, ptr %i.so, align 8, !tbaa !26
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.sr = load double, ptr %i.sq, align 8, !tbaa !25 ; 2 uses
  %i.ss = fneg double %i.sr
  %i.st = insertelement <2 x double> poison, double %i.ii, i64 0
  %i.su = insertelement <2 x double> %i.st, double %i.io, i64 1 ; 2 uses
  %i.sv = insertelement <2 x double> poison, double %i.sr, i64 0
  %i.sw = insertelement <2 x double> %i.sv, double %i.ss, i64 1
  %i.sx = fmul <2 x double> %i.su, %i.sw
  %i.sy = shufflevector <2 x double> %i.su, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.sz = insertelement <2 x double> poison, double %i.sp, i64 0
  %i.ta = shufflevector <2 x double> %i.sz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sy, <2 x double> %i.ta, <2 x double> %i.sx) ; 2 uses
  %i.tc = extractelement <2 x double> %i.tb, i64 0
  %i.td = extractelement <2 x double> %i.tb, i64 1
  br label %bb.al

bb.ah:                                            ; preds = %SinCosSeries.exit328
  %i.te = fmul double %i.if, %i.ii
  %i.tf = fcmp ugt double %.0336, 0.000000e+00
  br i1 %i.tf, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.tg = fsub nnan double 1.000000e+00, %.0336
  %i.th = fmul double %.0337, %i.fu
  %i.ti = tail call double @llvm.fmuladd.f64(double %i.ft, double %i.tg, double %i.th)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.tj = fadd double %.0336, 1.000000e+00
  %i.tk = extractelement <2 x double> %i.fx, i64 1
  %i.tl = fdiv double %i.tk, %i.tj
  %i.tm = fadd double %i.fu, %i.tl
  %i.tn = fmul double %.0337, %i.tm
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.to = phi double [ %i.ti, %bb.ai ], [ %i.tn, %bb.aj ]
  %i.tp = fmul double %i.te, %i.to
  %i.tq = fmul double %i.ii, %i.ii
  %i.tr = fmul double %i.if, %i.if
  %i.ts = fmul double %i.ft, %i.tr
  %i.tt = tail call double @llvm.fmuladd.f64(double %i.ts, double %.0266, double %i.tq)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ag
  %.0249 = phi double [ %i.td, %bb.ag ], [ %i.tp, %bb.ak ]
  %.0 = phi double [ %i.tc, %bb.ag ], [ %i.tt, %bb.ak ]
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !47
  %i.tw = tail call double @atan2(double noundef %.0249, double noundef %.0) #15
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ty = load double, ptr %i.tx, align 8, !tbaa !41
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ua = load double, ptr %i.tz, align 8, !tbaa !42
  %i.ub = fsub double %i.sl, %i.ua
  %i.uc = fmul double %i.ty, %i.ub
  %i.ud = tail call double @llvm.fmuladd.f64(double %i.tv, double %i.tw, double %i.uc)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.af
  %.0260 = phi double [ %i.ud, %bb.al ], [ 0.000000e+00, %bb.af ]
  %or.cond = and i1 %i.b, %i.mp
  br i1 %or.cond, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store double %.0251, ptr %3, align 8, !tbaa !8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %or.cond3 = and i1 %i.d, %i.iz
  br i1 %or.cond3, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store double %.0252, ptr %4, align 8, !tbaa !8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %or.cond5 = and i1 %i.g, %i.ng
  br i1 %or.cond5, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store double %.0253, ptr %5, align 8, !tbaa !8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %or.cond7 = and i1 %i.j, %i.iq
  br i1 %or.cond7, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store double %.0254, ptr %6, align 8, !tbaa !8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ue = and i32 %i.y, 4096
  %i.uf = icmp ne i32 %i.ue, 0
  %or.cond9 = and i1 %i.m, %i.uf
  br i1 %or.cond9, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store double %.1, ptr %7, align 8, !tbaa !8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ug = and i32 %i.y, 8192
  %.not287 = icmp eq i32 %i.ug, 0
  br i1 %.not287, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.p, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.uh = extractelement <2 x double> %i.rc, i64 0
  store double %i.uh, ptr %8, align 8, !tbaa !8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  br i1 %i.q, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ui = extractelement <2 x double> %i.rc, i64 1
  store double %i.ui, ptr %9, align 8, !tbaa !8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba, %bb.aw
  %or.cond11 = and i1 %i.t, %i.rd
  br i1 %or.cond11, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store double %.0260, ptr %10, align 8, !tbaa !8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.uj = load double, ptr @degree, align 8
  %i.uk = fdiv double %.1262, %i.uj
  %i.ul = select i1 %.not, double %i.uk, double %2
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.b
  %.0250 = phi double [ %i.ul, %bb.bd ], [ %i.ab, %bb.b ]
  ret double %.0250
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @geod_setdistance(ptr noundef initializes((64, 72)) %0, double noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %1, ptr %i.a, align 8, !tbaa !43
  %i.b = tail call double @geod_genposition(ptr noundef %0, i32 noundef 0, double noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.b, ptr %i.c, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @geod_position(ptr noundef %0, double noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call double @geod_genposition(ptr noundef %0, i32 noundef 0, double noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, errnomem: readwrite, target_mem: none) uwtable
define double @geod_gendirect(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, double noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9, ptr nofree noundef writeonly captures(address_is_null) %10, ptr nofree noundef writeonly captures(address_is_null) %11, ptr nofree noundef writeonly captures(address_is_null) %12, ptr nofree noundef writeonly captures(address_is_null) %13) local_unnamed_addr #3 {
bb.a:
  %14 = alloca %struct.geod_geodesicline, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %.not = icmp eq ptr %6, null
  %i.a = select i1 %.not, i32 0, i32 128
  %15 = insertelement <4 x ptr> poison, ptr %7, i64 0
  %16 = insertelement <4 x ptr> %15, ptr %8, i64 1
  %17 = insertelement <4 x ptr> %16, ptr %9, i64 2
  %18 = insertelement <4 x ptr> %17, ptr %10, i64 3
  %19 = icmp eq <4 x ptr> %18, splat (ptr null)
  %20 = select <4 x i1> %19, <4 x i32> zeroinitializer, <4 x i32> <i32 264, i32 512, i32 1025, i32 4101>
  %i.b = icmp ne ptr %11, null
  %i.c = icmp ne ptr %12, null
  %i.d = or i1 %i.b, %i.c
  %i.e = select i1 %i.d, i32 8197, i32 0
  %.not27 = icmp eq ptr %13, null
  %i.f = select i1 %.not27, i32 0, i32 16400
  %i.g = and i32 %4, 1
  %.not28 = icmp eq i32 %i.g, 0
  %i.h = select i1 %.not28, i32 2051, i32 0
  %21 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %20)
  %i.i = or disjoint i32 %21, %i.a
  %i.j = or i32 %i.h, %i.e
  %i.k = or i32 %i.i, %i.j
  %i.l = or disjoint i32 %i.k, %i.f
  call void @geod_lineinit(ptr noundef nonnull %14, ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %i.l)
  %i.m = call double @geod_genposition(ptr noundef nonnull %14, i32 noundef %4, double noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  ret double %i.m
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define void @geod_direct(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7) local_unnamed_addr #5 {
bb.a:
  %8 = alloca %struct.geod_geodesicline, align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %.not.i = icmp eq ptr %5, null
  %.not23.i = icmp eq ptr %6, null
  %i.a = select i1 %.not23.i, i32 0, i32 264
  %.not24.i = icmp eq ptr %7, null
  %i.b = select i1 %.not24.i, i32 0, i32 512
  %i.c = select i1 %.not.i, i32 2051, i32 2179
  %i.d = or disjoint i32 %i.a, %i.c
  %i.e = or disjoint i32 %i.d, %i.b
  call void @geod_lineinit(ptr noundef nonnull %8, ptr noundef readonly %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %i.e)
  %i.f = call double @geod_genposition(ptr noundef nonnull %8, i32 noundef 0, double noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define double @geod_geninverse(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9, ptr nofree noundef writeonly captures(address_is_null) %10, ptr nofree noundef writeonly captures(address_is_null) %11) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.e = call fastcc double @geod_geninverse_int(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr noundef %5, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11)
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load double, ptr %i.a, align 8, !tbaa !8 ; 3 uses
  %i.g = load double, ptr %i.b, align 8, !tbaa !8 ; 3 uses
  %i.h = call double @llvm.fabs.f64(double %i.f)
  %i.i = call double @llvm.fabs.f64(double %i.g)
  %i.j = fcmp ogt double %i.h, %i.i               ; 3 uses
  %.013.i = select i1 %i.j, double %i.g, double %i.f ; 2 uses
  %.011.i = select i1 %i.j, double %i.f, double %i.g ; 2 uses
  %.05.i = select i1 %i.j, i32 2, i32 0
  %i.k = bitcast double %.011.i to i64
  %.112.i = call double @llvm.fabs.f64(double %.011.i)
  %.lobit.i = lshr i64 %i.k, 63
  %i.l = trunc nuw nsw i64 %.lobit.i to i32
  %.1.i = or disjoint i32 %.05.i, %i.l
  %i.m = call double @atan2(double noundef %.013.i, double noundef %.112.i) #15
  %i.n = load double, ptr @degree, align 8, !tbaa !8
  %i.o = fdiv double %i.m, %i.n                   ; 4 uses
  switch i32 %.1.i, label %default.unreachable [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 0, label %atan2dx.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.p = call double @llvm.copysign.f64(double 1.800000e+02, double %.013.i)
  %i.q = fsub double %i.p, %i.o
  br label %atan2dx.exit

bb.d:                                             ; preds = %bb.b
  %i.r = fsub double 9.000000e+01, %i.o
  br label %atan2dx.exit

bb.e:                                             ; preds = %bb.b
  %i.s = fadd double %i.o, -9.000000e+01
  br label %atan2dx.exit

default.unreachable:                              ; preds = %bb.g, %bb.b
  unreachable

atan2dx.exit:                                     ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi double [ %i.o, %bb.b ], [ %i.q, %bb.c ], [ %i.r, %bb.d ], [ %i.s, %bb.e ]
  store double %.0.i, ptr %6, align 8, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %atan2dx.exit, %bb.a
  %.not16 = icmp eq ptr %7, null
  br i1 %.not16, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load double, ptr %i.c, align 8, !tbaa !8 ; 3 uses
  %i.u = load double, ptr %i.d, align 8, !tbaa !8 ; 3 uses
  %i.v = call double @llvm.fabs.f64(double %i.t)
  %i.w = call double @llvm.fabs.f64(double %i.u)
  %i.x = fcmp ogt double %i.v, %i.w               ; 3 uses
  %.013.i17 = select i1 %i.x, double %i.u, double %i.t ; 2 uses
  %.011.i18 = select i1 %i.x, double %i.t, double %i.u ; 2 uses
  %.05.i19 = select i1 %i.x, i32 2, i32 0
  %i.y = bitcast double %.011.i18 to i64
  %.112.i20 = call double @llvm.fabs.f64(double %.011.i18)
  %.lobit.i21 = lshr i64 %i.y, 63
  %i.z = trunc nuw nsw i64 %.lobit.i21 to i32
  %.1.i22 = or disjoint i32 %.05.i19, %i.z
  %i.aa = call double @atan2(double noundef %.013.i17, double noundef %.112.i20) #15
  %i.ab = load double, ptr @degree, align 8, !tbaa !8
  %i.ac = fdiv double %i.aa, %i.ab                ; 4 uses
  switch i32 %.1.i22, label %default.unreachable [
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 0, label %atan2dx.exit25
  ]

bb.h:                                             ; preds = %bb.g
  %i.ad = call double @llvm.copysign.f64(double 1.800000e+02, double %.013.i17)
  %i.ae = fsub double %i.ad, %i.ac
  br label %atan2dx.exit25

bb.i:                                             ; preds = %bb.g
  %i.af = fsub double 9.000000e+01, %i.ac
  br label %atan2dx.exit25

bb.j:                                             ; preds = %bb.g
  %i.ag = fadd double %i.ac, -9.000000e+01
  br label %atan2dx.exit25

atan2dx.exit25:                                   ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i23 = phi double [ %i.ac, %bb.g ], [ %i.ae, %bb.h ], [ %i.af, %bb.i ], [ %i.ag, %bb.j ]
  store double %.0.i23, ptr %7, align 8, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %atan2dx.exit25, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret double %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc double @geod_geninverse_int(ptr nofree noundef readonly %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef nonnull writeonly captures(none) %6, ptr nofree noundef nonnull writeonly captures(none) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9, ptr nofree noundef writeonly captures(address_is_null) %10, ptr nofree noundef writeonly captures(address_is_null) %11, ptr nofree noundef writeonly captures(address_is_null) %12, ptr nofree noundef writeonly captures(address_is_null) %13) unnamed_addr #5 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca double, align 8                   ; 7 uses
  %i.g = alloca double, align 8                   ; 5 uses
  %i.h = alloca double, align 8                   ; 7 uses
  %i.i = alloca double, align 8                   ; 5 uses
  %i.j = alloca double, align 8                   ; 7 uses
  %i.k = alloca double, align 8                   ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca double, align 8                   ; 10 uses
  %i.n = alloca double, align 8                   ; 10 uses
  %i.o = alloca double, align 8                   ; 6 uses
  %i.p = alloca double, align 8                   ; 7 uses
  %i.q = alloca double, align 8                   ; 7 uses
  %i.r = alloca [7 x double], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #15
  store double 0.000000e+00, ptr %i.m, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #15
  store double 0.000000e+00, ptr %i.n, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #15
  store double 0.000000e+00, ptr %i.p, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #15
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #15
  %.not = icmp eq ptr %5, null                    ; 4 uses
  %.not273 = icmp eq ptr %10, null                ; 4 uses
  %i.s = icmp ne ptr %11, null                    ; 2 uses
  %i.t = icmp ne ptr %12, null                    ; 2 uses
  %i.u = or i1 %i.s, %i.t                         ; 8 uses
  %.not274 = icmp eq ptr %13, null                ; 3 uses
  %i.v = call fastcc double @AngDiff(double noundef %2, double noundef %4, ptr noundef nonnull %i.o) ; 2 uses
  %i.w = bitcast double %i.v to i64
  %i.x = icmp slt i64 %i.w, 0
  %i.y = select i1 %i.x, i32 -1, i32 1            ; 2 uses
  %i.z = sitofp i32 %i.y to double                ; 4 uses
  %i.aa = fmul double %i.v, %i.z                  ; 5 uses
  %i.ab = load double, ptr %i.o, align 8, !tbaa !8
  %i.ac = fmul double %i.ab, %i.z                 ; 3 uses
  store double %i.ac, ptr %i.o, align 8, !tbaa !8
  %i.ad = load double, ptr @degree, align 8, !tbaa !8 ; 6 uses
  %i.ae = fmul double %i.ad, %i.aa                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #15
  store i32 0, ptr %i.l, align 4, !tbaa !18
  %i.af = call double @remquo(double noundef %i.aa, double noundef 9.000000e+01, ptr noundef nonnull %i.l) #15
  %i.ag = fadd double %i.ac, %i.af                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ah = call double @llvm.fabs.f64(double %i.ag)
  store volatile double %i.ah, ptr %i.j, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.0..0..0..0..0..0..0..0.2.i.i = load volatile double, ptr %i.j, align 8, !tbaa !8
  %i.ai = fsub double 6.250000e-02, %.0..0..0..0..0..0..0..0.2.i.i
  store volatile double %i.ai, ptr %i.k, align 8, !tbaa !8
  %.0..0..0..0..0..0..0..0..i.i = load volatile double, ptr %i.k, align 8, !tbaa !8
  %i.aj = fcmp ogt double %.0..0..0..0..0..0..0..0..i.i, 0.000000e+00
end_hunk_0
begin_hunk_1_@Lengths:bb.a
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.y, <2 x double> %i.bs) ; 2 uses
  %i.bw = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bx = insertelement <2 x double> %i.bw, double %i.ba, i64 1
  %i.by = fneg <2 x double> %i.bx
  %i.bz = fmul <2 x double> %i.br, %i.by
  %i.ca = insertelement <2 x double> %i.ay, double %i.ar, i64 1
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.ca, <2 x double> %i.bz) ; 2 uses
  %i.cc = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cd = insertelement <2 x double> %i.cc, double %i.bj, i64 1
  %i.ce = fneg <2 x double> %i.cd
  %i.cf = fmul <2 x double> %i.br, %i.ce
  %i.cg = insertelement <2 x double> %i.bh, double %i.bc, i64 1
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.cg, <2 x double> %i.cf) ; 2 uses
  %i.ci = insertelement <2 x double> poison, double %7, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %4, i64 1 ; 3 uses
  %i.ck = insertelement <2 x double> poison, double %6, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %3, i64 1 ; 3 uses
  %i.cm = fsub <2 x double> %i.cj, %i.cl
  %i.cn = fadd <2 x double> %i.cl, %i.cj
  %i.co = fmul <2 x double> %i.cl, splat (double 2.000000e+00)
  %i.cp = fmul <2 x double> %i.cm, splat (double 2.000000e+00)
  %i.cq = fmul <2 x double> %i.cn, %i.cp          ; 6 uses
  %i.cr = fmul <2 x double> %i.cq, zeroinitializer
  %i.cs = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ct = fadd <2 x double> %i.cr, %i.cs          ; 2 uses
  %i.cu = fmul <2 x double> %i.cq, %i.ct
  %i.cv = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = fadd <2 x double> %i.cv, %i.cu          ; 2 uses
  %i.cx = fneg <2 x double> %i.ct
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.cw, <2 x double> %i.cx)
  %i.cz = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.da = fadd <2 x double> %i.cy, %i.cz          ; 2 uses
  %i.db = fneg <2 x double> %i.cw
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.da, <2 x double> %i.db)
  %i.dd = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = fadd <2 x double> %i.dd, %i.dc          ; 2 uses
  %i.df = fneg <2 x double> %i.da
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.de, <2 x double> %i.df)
  %i.dh = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.di = fadd <2 x double> %i.dg, %i.dh
  %i.dj = fneg <2 x double> %i.de
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.di, <2 x double> %i.dj)
  %i.dl = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = fadd <2 x double> %i.dl, %i.dk
  %i.dn = fmul <2 x double> %i.co, %i.cj
  %i.do = fmul <2 x double> %i.dn, %i.dm          ; 2 uses
  %shift = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.do, %shift
  %i.dp = extractelement <2 x double> %foldExtExtBinop, i64 0
  br label %bb.b

SinCosSeries.exit:                                ; preds = %bb.a
  %i.dq = insertelement <2 x double> poison, double %7, i64 0
  %i.dr = insertelement <2 x double> %i.dq, double %4, i64 1 ; 3 uses
  %i.ds = insertelement <2 x double> poison, double %6, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %3, i64 1 ; 3 uses
  %i.du = fsub <2 x double> %i.dr, %i.dt
  %i.dv = fadd <2 x double> %i.dt, %i.dr
  %i.dw = fmul <2 x double> %i.dt, splat (double 2.000000e+00)
  %i.dx = fmul <2 x double> %i.du, splat (double 2.000000e+00)
  %i.dy = fmul <2 x double> %i.dv, %i.dx          ; 11 uses
  %i.dz = fmul <2 x double> %i.dy, zeroinitializer ; 2 uses
  %i.ea = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ec = fadd <2 x double> %i.dz, %i.eb          ; 2 uses
  %i.ed = fmul <2 x double> %i.dy, %i.ec
  %i.ee = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ef = fadd <2 x double> %i.ee, %i.ed          ; 2 uses
  %i.eg = fneg <2 x double> %i.ec
  %i.eh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.ef, <2 x double> %i.eg)
  %i.ei = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = fadd <2 x double> %i.eh, %i.ej          ; 2 uses
  %i.el = fneg <2 x double> %i.ef
  %i.em = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.ek, <2 x double> %i.el)
  %i.en = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = fadd <2 x double> %i.en, %i.em          ; 2 uses
  %i.ep = fneg <2 x double> %i.ek
  %i.eq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.eo, <2 x double> %i.ep)
  %i.er = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.es = fadd <2 x double> %i.eq, %i.er
  %i.et = fneg <2 x double> %i.eo
  %i.eu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.es, <2 x double> %i.et)
  %i.ev = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ew = fadd <2 x double> %i.ev, %i.eu
  %i.ex = fmul <2 x double> %i.dw, %i.dr          ; 2 uses
  %i.ey = fmul <2 x double> %i.ex, %i.ew          ; 2 uses
  %shift186 = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop187 = fsub <2 x double> %i.ey, %shift186
  %i.ez = extractelement <2 x double> %foldExtExtBinop187, i64 0 ; 2 uses
  %i.fa = fadd double %2, %i.ez
  %i.fb = fmul double %i.bo, %i.fa
  store double %i.fb, ptr %11, align 8, !tbaa !8
  %i.fc = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.fd = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fe = fadd <2 x double> %i.dz, %i.fd          ; 2 uses
  %i.ff = fmul <2 x double> %i.dy, %i.fe
  %i.fg = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fh = fadd <2 x double> %i.fg, %i.ff          ; 2 uses
  %i.fi = fneg <2 x double> %i.fe
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.fh, <2 x double> %i.fi)
  %i.fk = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fm = fadd <2 x double> %i.fj, %i.fl          ; 2 uses
  %i.fn = fneg <2 x double> %i.fh
  %i.fo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.fm, <2 x double> %i.fn)
  %i.fp = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fq = fadd <2 x double> %i.fp, %i.fo          ; 2 uses
  %i.fr = fneg <2 x double> %i.fm
  %i.fs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.fq, <2 x double> %i.fr)
  %i.ft = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fu = fadd <2 x double> %i.fs, %i.ft
  %i.fv = fneg <2 x double> %i.fq
  %i.fw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.fu, <2 x double> %i.fv)
  %i.fx = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fy = fadd <2 x double> %i.fx, %i.fw
  %i.fz = fmul <2 x double> %i.ex, %i.fy          ; 2 uses
  %shift189 = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop190 = fsub <2 x double> %i.fz, %shift189
  %i.ga = extractelement <2 x double> %foldExtExtBinop190, i64 0
  %i.gb = fneg double %i.ga
  %i.gc = fmul double %i.bn, %i.gb
  %i.gd = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.ez, double %i.gc)
  br label %bb.b

bb.b:                                             ; preds = %.preheader.preheader, %SinCosSeries.exit
  %.sink = phi double [ %i.dp, %.preheader.preheader ], [ %i.gd, %SinCosSeries.exit ]
  %i.ge = tail call double @llvm.fmuladd.f64(double %i.bm, double %2, double %.sink) ; 3 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double %i.bm, ptr %13, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.gf = fmul double %4, %6
  %i.gg = fneg double %7                          ; 2 uses
  %i.gh = fmul double %3, %i.gg
  %i.gi = fmul double %5, %i.gh
  %i.gj = tail call double @llvm.fmuladd.f64(double %8, double %i.gf, double %i.gi)
  %i.gk = fmul double %4, %i.gg
  %i.gl = tail call double @llvm.fmuladd.f64(double %i.gk, double %i.ge, double %i.gj)
  store double %i.gl, ptr %12, align 8, !tbaa !8
  %i.gm = icmp ne ptr %15, null                   ; 2 uses
  %or.cond7 = or i1 %i.a, %i.gm
  br i1 %or.cond7, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.gn = fmul double %3, %6
  %i.go = tail call double @llvm.fmuladd.f64(double %4, double %7, double %i.gn) ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !27
  %i.gr = fsub double %9, %10
  %i.gs = fmul double %i.gr, %i.gq
  %i.gt = fadd double %9, %10
  %i.gu = fmul double %i.gt, %i.gs
  %i.gv = fadd double %5, %8
  %i.gw = fdiv double %i.gu, %i.gv                ; 2 uses
  br i1 %i.a, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.gx = fneg double %i.ge
  %i.gy = fmul double %7, %i.gx
  %i.gz = tail call double @llvm.fmuladd.f64(double %i.gw, double %6, double %i.gy)
  %i.ha = fmul double %3, %i.gz
  %i.hb = fdiv double %i.ha, %5
  %i.hc = fadd double %i.go, %i.hb
  store double %i.hc, ptr %14, align 8, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %i.gm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.hd = fneg double %i.ge
  %i.he = fmul double %4, %i.hd
  %i.hf = tail call double @llvm.fmuladd.f64(double %i.gw, double %3, double %i.he)
  %i.hg = fmul double %6, %i.hf
  %i.hh = fdiv double %i.hg, %8
  %i.hi = fsub double %i.go, %i.hh
  store double %i.hi, ptr %15, align 8, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare double @cbrt(double noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(none) }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !9, i64 0}
!11 = !{!"geod_geodesic", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !6, i64 120, !6, i64 240}
!12 = !{!11, !9, i64 8}
!13 = !{!11, !9, i64 16}
!14 = !{!11, !9, i64 24}
!15 = !{!11, !9, i64 48}
!16 = !{!11, !9, i64 56}
!17 = !{!11, !9, i64 64}
!18 = !{!5, !5, i64 0}
!19 = !{!20, !9, i64 88}
!20 = !{!"geod_geodesicline", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !6, i64 240, !6, i64 296, !6, i64 352, !6, i64 408, !6, i64 456, !5, i64 504}
!21 = !{!20, !5, i64 504}
!22 = !{!20, !9, i64 0}
!23 = !{!20, !9, i64 8}
!24 = !{!20, !9, i64 16}
!25 = !{!20, !9, i64 40}
!26 = !{!20, !9, i64 48}
!27 = !{!11, !9, i64 32}
!28 = !{!20, !9, i64 136}
!29 = !{!20, !9, i64 96}
!30 = !{!20, !9, i64 104}
!31 = !{!20, !9, i64 160}
!32 = !{!20, !9, i64 168}
!33 = !{!20, !9, i64 112}
!34 = !{!20, !9, i64 176}
!35 = !{!20, !9, i64 200}
!36 = !{!20, !9, i64 184}
!37 = !{!20, !9, i64 208}
!38 = !{!20, !9, i64 192}
!39 = !{!20, !9, i64 216}
!40 = !{!20, !9, i64 24}
!41 = !{!20, !9, i64 224}
!42 = !{!20, !9, i64 232}
!43 = !{!20, !9, i64 64}
!44 = !{!20, !9, i64 56}
!45 = !{!20, !9, i64 72}
!46 = !{!20, !9, i64 32}
!47 = !{!20, !9, i64 80}
!48 = !{!11, !9, i64 40}
!49 = !{!50, !5, i64 64}
!50 = !{!"geod_polygon", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !6, i64 48, !5, i64 64, !5, i64 68, !5, i64 72}
!51 = !{!50, !5, i64 68}
!52 = !{!50, !5, i64 72}
!53 = !{!50, !9, i64 0}
!54 = !{!50, !9, i64 16}
!55 = !{!50, !9, i64 8}
!56 = !{!50, !9, i64 24}
end_hunk_1
