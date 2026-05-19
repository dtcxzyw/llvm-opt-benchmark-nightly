inline.NumInlined: 27
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @geohashGetCoordRange(ptr noundef writeonly captures(none) initializes((0, 16)) %0, ptr noundef writeonly captures(none) initializes((0, 16)) %1) local_unnamed_addr #0 {
bb.a:
  store <2 x double> <double -1.800000e+02, double 1.800000e+02>, ptr %0, align 8, !tbaa !13
  store <2 x double> <double f0xC0554345B1A57F00, double f0x40554345B1A57F00>, ptr %1, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @geohashEncode(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1, double noundef %2, double noundef %3, i8 noundef zeroext %4, ptr noundef writeonly captures(address_is_null) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %5, null
  %i.b = add i8 %4, -33
  %i.c = icmp ult i8 %i.b, -32
  %or.cond5 = or i1 %i.a, %i.c
  %i.d = icmp eq ptr %1, null
  %or.cond7 = or i1 %i.d, %or.cond5
  br i1 %or.cond7, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !15 ; 3 uses
  %i.g = fcmp une double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load double, ptr %1, align 8, !tbaa !17
  %i.i = fcmp oeq double %i.h, 0.000000e+00
  %i.j = icmp eq ptr %0, null
  %or.cond9 = or i1 %i.j, %i.i
  br i1 %or.cond9, label %bb.k, label %bb.e

bb.d:                                             ; preds = %bb.b
  %.old8 = icmp eq ptr %0, null
  br i1 %.old8, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !15 ; 3 uses
  %i.m = fcmp une double %i.l, 0.000000e+00
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load double, ptr %0, align 8, !tbaa !17
  %i.o = fcmp une double %i.n, 0.000000e+00
  br i1 %i.o, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = tail call double @llvm.fabs.f64(double %2)
  %or.cond12 = fcmp ogt double %i.p, 1.800000e+02
  %i.q = tail call double @llvm.fabs.f64(double %3)
  %i.r = fcmp ogt double %i.q, f0x40554345B1A57F00
  %or.cond18 = or i1 %or.cond12, %i.r
  br i1 %or.cond18, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %5, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 %4, ptr %i.s, align 8, !tbaa !21
  %i.t = load double, ptr %1, align 8, !tbaa !17  ; 3 uses
  %i.u = fcmp olt double %3, %i.t
  %i.v = fcmp ogt double %3, %i.f
  %or.cond = or i1 %i.v, %i.u
  br i1 %or.cond, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load double, ptr %0, align 8, !tbaa !17  ; 3 uses
  %i.x = fcmp olt double %2, %i.w
  %i.y = fcmp ogt double %2, %i.l
  %or.cond66 = or i1 %i.y, %i.x
  br i1 %or.cond66, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = fsub double %3, %i.t
  %i.aa = fsub double %i.f, %i.t
  %i.ab = fdiv double %i.z, %i.aa
  %i.ac = fsub double %2, %i.w
  %i.ad = fsub double %i.l, %i.w
  %i.ae = fdiv double %i.ac, %i.ad
  %i.af = zext nneg i8 %4 to i64
  %i.ag = shl nuw nsw i64 1, %i.af
  %i.ah = uitofp nneg i64 %i.ag to double         ; 2 uses
  %i.ai = fmul double %i.ab, %i.ah
  %i.aj = fmul double %i.ae, %i.ah
  %i.ak = fptoui double %i.ai to i32
  %i.al = fptoui double %i.aj to i32
  %i.am = tail call fastcc i64 @interleave64(i32 noundef %i.ak, i32 noundef %i.al)
  store i64 %i.am, ptr %5, align 8, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.g, %bb.a, %bb.c, %bb.d, %bb.f, %bb.j
  %.0 = phi i32 [ 1, %bb.j ], [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.h ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc i64 @interleave64(i32 noundef %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %2 = zext i32 %0 to i64                         ; 2 uses
  %3 = zext i32 %1 to i64                         ; 2 uses
  %4 = shl nuw nsw i64 %2, 16
  %5 = or i64 %4, %2
  %6 = and i64 %5, 281470681808895                ; 2 uses
  %7 = shl nuw nsw i64 %3, 16
  %8 = or i64 %7, %3
  %9 = and i64 %8, 281470681808895                ; 2 uses
  %10 = shl nuw nsw i64 %6, 8
  %11 = or i64 %10, %6
  %12 = and i64 %11, 71777214294589695            ; 2 uses
  %13 = shl nuw nsw i64 %9, 8
  %14 = or i64 %13, %9
  %15 = and i64 %14, 71777214294589695            ; 2 uses
  %16 = shl nuw nsw i64 %12, 4
  %17 = or i64 %16, %12
  %18 = and i64 %17, 1085102592571150095          ; 2 uses
  %19 = shl nuw nsw i64 %15, 4
  %20 = or i64 %19, %15
  %21 = and i64 %20, 1085102592571150095          ; 2 uses
  %22 = shl nuw nsw i64 %18, 2
  %23 = or i64 %22, %18
  %24 = and i64 %23, 3689348814741910323          ; 2 uses
  %25 = shl nuw nsw i64 %21, 2
  %26 = or i64 %25, %21
  %27 = and i64 %26, 3689348814741910323          ; 2 uses
  %i.a = shl nuw nsw i64 %24, 1
  %28 = or i64 %i.a, %24
  %29 = and i64 %28, 6148914691236517205
  %30 = shl nuw i64 %27, 2
  %31 = shl nuw nsw i64 %27, 1
  %32 = or i64 %30, %31
  %33 = and i64 %32, -6148914691236517206
  %34 = or disjoint i64 %33, %29
  ret i64 %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @geohashEncodeType(double noundef %0, double noundef %1, i8 noundef zeroext %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  %i.b = add i8 %2, -33
  %i.c = icmp ult i8 %i.b, -32
  %or.cond5.i = or i1 %i.a, %i.c
  br i1 %or.cond5.i, label %geohashEncode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call double @llvm.fabs.f64(double %0)
  %or.cond12.i = fcmp ogt double %i.d, 1.800000e+02
  %i.e = tail call double @llvm.fabs.f64(double %1)
  %i.f = fcmp ogt double %i.e, f0x40554345B1A57F00
  %or.cond18.i = or i1 %or.cond12.i, %i.f
  br i1 %or.cond18.i, label %geohashEncode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %2, ptr %i.g, align 8, !tbaa !21
  %i.h = fadd double %1, f0x40554345B1A57F00
  %i.i = fdiv double %i.h, f0x40654345B1A57F00
  %i.j = fadd double %0, 1.800000e+02
  %i.k = fdiv double %i.j, 3.600000e+02
  %i.l = zext nneg i8 %2 to i64
  %i.m = shl nuw nsw i64 1, %i.l
  %i.n = uitofp nneg i64 %i.m to double           ; 2 uses
  %i.o = fmul double %i.i, %i.n
  %i.p = fmul double %i.k, %i.n
  %i.q = fptoui double %i.o to i32
  %i.r = fptoui double %i.p to i32
  %i.s = zext i32 %i.q to i64                     ; 2 uses
  %i.t = zext i32 %i.r to i64                     ; 2 uses
  %i.u = shl nuw nsw i64 %i.s, 16
  %i.v = or i64 %i.u, %i.s
  %i.w = and i64 %i.v, 281470681808895            ; 2 uses
  %i.x = shl nuw nsw i64 %i.t, 16
  %i.y = or i64 %i.x, %i.t
  %i.z = and i64 %i.y, 281470681808895            ; 2 uses
  %i.aa = shl nuw nsw i64 %i.w, 8
  %i.ab = or i64 %i.aa, %i.w
  %i.ac = and i64 %i.ab, 71777214294589695        ; 2 uses
  %i.ad = shl nuw nsw i64 %i.z, 8
  %i.ae = or i64 %i.ad, %i.z
  %i.af = and i64 %i.ae, 71777214294589695        ; 2 uses
  %i.ag = shl nuw nsw i64 %i.ac, 4
  %i.ah = or i64 %i.ag, %i.ac
  %i.ai = and i64 %i.ah, 1085102592571150095      ; 2 uses
  %i.aj = shl nuw nsw i64 %i.af, 4
  %i.ak = or i64 %i.aj, %i.af
  %i.al = and i64 %i.ak, 1085102592571150095      ; 2 uses
  %i.am = shl nuw nsw i64 %i.ai, 2
  %i.an = or i64 %i.am, %i.ai
  %i.ao = and i64 %i.an, 3689348814741910323      ; 2 uses
  %i.ap = shl nuw nsw i64 %i.al, 2
  %i.aq = or i64 %i.ap, %i.al
  %i.ar = and i64 %i.aq, 3689348814741910323      ; 2 uses
  %i.as = shl nuw nsw i64 %i.ao, 1
  %i.at = or i64 %i.as, %i.ao
  %i.au = and i64 %i.at, 6148914691236517205
  %i.av = shl nuw i64 %i.ar, 2
  %i.aw = shl nuw nsw i64 %i.ar, 1
  %i.ax = or i64 %i.av, %i.aw
  %i.ay = and i64 %i.ax, -6148914691236517206
  %i.az = or disjoint i64 %i.ay, %i.au
  store i64 %i.az, ptr %3, align 8, !tbaa !18
  br label %geohashEncode.exit

geohashEncode.exit:                               ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @geohashEncodeWGS84(double noundef %0, double noundef %1, i8 noundef zeroext %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  %i.b = add i8 %2, -33
  %i.c = icmp ult i8 %i.b, -32
  %or.cond5.i.i = or i1 %i.a, %i.c
  br i1 %or.cond5.i.i, label %geohashEncodeType.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call double @llvm.fabs.f64(double %0)
  %or.cond12.i.i = fcmp ogt double %i.d, 1.800000e+02
  %i.e = tail call double @llvm.fabs.f64(double %1)
  %i.f = fcmp ogt double %i.e, f0x40554345B1A57F00
  %or.cond18.i.i = or i1 %or.cond12.i.i, %i.f
  br i1 %or.cond18.i.i, label %geohashEncodeType.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %2, ptr %i.g, align 8, !tbaa !21
  %i.h = fadd double %1, f0x40554345B1A57F00
  %i.i = fdiv double %i.h, f0x40654345B1A57F00
  %i.j = fadd double %0, 1.800000e+02
  %i.k = fdiv double %i.j, 3.600000e+02
  %i.l = zext nneg i8 %2 to i64
  %i.m = shl nuw nsw i64 1, %i.l
  %i.n = uitofp nneg i64 %i.m to double           ; 2 uses
  %i.o = fmul double %i.i, %i.n
  %i.p = fmul double %i.k, %i.n
  %i.q = fptoui double %i.o to i32
  %i.r = fptoui double %i.p to i32
  %i.s = zext i32 %i.q to i64                     ; 2 uses
  %i.t = zext i32 %i.r to i64                     ; 2 uses
  %i.u = shl nuw nsw i64 %i.s, 16
  %i.v = or i64 %i.u, %i.s
  %i.w = and i64 %i.v, 281470681808895            ; 2 uses
  %i.x = shl nuw nsw i64 %i.t, 16
  %i.y = or i64 %i.x, %i.t
  %i.z = and i64 %i.y, 281470681808895            ; 2 uses
  %i.aa = shl nuw nsw i64 %i.w, 8
  %i.ab = or i64 %i.aa, %i.w
  %i.ac = and i64 %i.ab, 71777214294589695        ; 2 uses
  %i.ad = shl nuw nsw i64 %i.z, 8
  %i.ae = or i64 %i.ad, %i.z
  %i.af = and i64 %i.ae, 71777214294589695        ; 2 uses
  %i.ag = shl nuw nsw i64 %i.ac, 4
  %i.ah = or i64 %i.ag, %i.ac
  %i.ai = and i64 %i.ah, 1085102592571150095      ; 2 uses
  %i.aj = shl nuw nsw i64 %i.af, 4
  %i.ak = or i64 %i.aj, %i.af
  %i.al = and i64 %i.ak, 1085102592571150095      ; 2 uses
  %i.am = shl nuw nsw i64 %i.ai, 2
  %i.an = or i64 %i.am, %i.ai
  %i.ao = and i64 %i.an, 3689348814741910323      ; 2 uses
  %i.ap = shl nuw nsw i64 %i.al, 2
  %i.aq = or i64 %i.ap, %i.al
  %i.ar = and i64 %i.aq, 3689348814741910323      ; 2 uses
  %i.as = shl nuw nsw i64 %i.ao, 1
  %i.at = or i64 %i.as, %i.ao
  %i.au = and i64 %i.at, 6148914691236517205
  %i.av = shl nuw i64 %i.ar, 2
  %i.aw = shl nuw nsw i64 %i.ar, 1
  %i.ax = or i64 %i.av, %i.aw
  %i.ay = and i64 %i.ax, -6148914691236517206
  %i.az = or disjoint i64 %i.ay, %i.au
  store i64 %i.az, ptr %3, align 8, !tbaa !18
  br label %geohashEncodeType.exit

geohashEncodeType.exit:                           ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi i32 [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @geohashDecode(double %0, double %1, double %2, double %3, i64 %4, i8 %5, ptr noundef writeonly captures(address_is_null) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp eq i8 %5, 0
  %or.cond.not45 = select i1 %i.a, i1 %i.b, i1 false
  %i.c = icmp eq ptr %6, null
  %or.cond4 = or i1 %or.cond.not45, %i.c
  br i1 %or.cond4, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp une double %3, 0.000000e+00
  %i.e = fcmp une double %2, 0.000000e+00
  %or.cond7 = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond7, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = fcmp une double %1, 0.000000e+00
  %i.g = fcmp une double %0, 0.000000e+00
  %or.cond10 = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond10, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %4, ptr %6, align 8, !tbaa !22
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !23
  %i.h = lshr i64 %4, 1
  %i.i = insertelement <2 x i64> poison, i64 %i.h, i64 0
  %i.j = insertelement <2 x i64> %i.i, i64 %4, i64 1
  %i.k = and <2 x i64> %i.j, splat (i64 6148914691236517205) ; 2 uses
  %i.l = lshr <2 x i64> %i.k, splat (i64 1)
  %i.m = or disjoint <2 x i64> %i.l, %i.k
  %i.n = and <2 x i64> %i.m, splat (i64 3689348814741910323) ; 2 uses
  %i.o = lshr <2 x i64> %i.n, splat (i64 2)
  %i.p = or disjoint <2 x i64> %i.o, %i.n
  %i.q = insertelement <2 x double> poison, double %1, i64 0
  %i.r = insertelement <2 x double> %i.q, double %3, i64 1
  %i.s = insertelement <2 x double> poison, double %0, i64 0
  %i.t = insertelement <2 x double> %i.s, double %2, i64 1 ; 2 uses
  %i.u = fsub <2 x double> %i.r, %i.t             ; 3 uses
  %i.v = zext nneg i8 %5 to i64
  %i.w = shl nuw i64 1, %i.v
  %i.x = uitofp i64 %i.w to double                ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ab = and <2 x i64> %i.p, splat (i64 1085102592571150095) ; 2 uses
  %i.ac = lshr <2 x i64> %i.ab, splat (i64 4)
  %i.ad = or disjoint <2 x i64> %i.ac, %i.ab
  %i.ae = and <2 x i64> %i.ad, splat (i64 71777214294589695) ; 2 uses
  %i.af = lshr <2 x i64> %i.ae, splat (i64 8)
  %i.ag = or disjoint <2 x i64> %i.af, %i.ae      ; 2 uses
end_hunk_0
