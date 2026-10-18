Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/geohash?download=true
inline.NumInlined: 27
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @geohashGetCoordRange(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) local_unnamed_addr #0 {
bb.a:
  store <2 x double> <double -1.800000e+02, double 1.800000e+02>, ptr %0, align 8, !tbaa !14
  store <2 x double> <double f0xC0554345B1A57F00, double f0x40554345B1A57F00>, ptr %1, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @geohashEncode(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, double noundef %2, double noundef %3, i8 noundef zeroext %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #1 {
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
  %i.f = load double, ptr %i.e, align 8, !tbaa !22 ; 3 uses
  %i.g = fcmp une double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load double, ptr %1, align 8, !tbaa !23
  %i.i = fcmp oeq double %i.h, 0.000000e+00
  %i.j = icmp eq ptr %0, null
  %or.cond9 = or i1 %i.j, %i.i
  br i1 %or.cond9, label %bb.k, label %bb.e

bb.d:                                             ; preds = %bb.b
  %.old8 = icmp eq ptr %0, null
  br i1 %.old8, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !22 ; 3 uses
  %i.m = fcmp une double %i.l, 0.000000e+00
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load double, ptr %0, align 8, !tbaa !23
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
  store i64 0, ptr %5, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 %4, ptr %i.s, align 8, !tbaa !18
  %i.t = load double, ptr %1, align 8, !tbaa !23  ; 2 uses
  %i.u = fcmp olt double %3, %i.t
  %i.v = fcmp ogt double %3, %i.f
  %or.cond = or i1 %i.v, %i.u
  br i1 %or.cond, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load double, ptr %0, align 8, !tbaa !23  ; 2 uses
  %i.x = fcmp olt double %2, %i.w
  %i.y = fcmp ogt double %2, %i.l
  %or.cond66 = or i1 %i.y, %i.x
  br i1 %or.cond66, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = insertelement <2 x double> poison, double %3, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %2, i64 1
  %i.ab = insertelement <2 x double> poison, double %i.t, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.w, i64 1 ; 2 uses
  %i.ad = fsub <2 x double> %i.aa, %i.ac
  %i.ae = insertelement <2 x double> poison, double %i.f, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.l, i64 1
  %i.ag = fsub <2 x double> %i.af, %i.ac
  %i.ah = fdiv <2 x double> %i.ad, %i.ag          ; 2 uses
  %i.ai = zext nneg i8 %4 to i64
  %i.aj = shl nuw nsw i64 1, %i.ai
  %i.ak = uitofp nneg i64 %i.aj to double         ; 2 uses
  %i.al = extractelement <2 x double> %i.ah, i64 0
  %i.am = fmul double %i.al, %i.ak
  %i.an = extractelement <2 x double> %i.ah, i64 1
  %i.ao = fmul double %i.an, %i.ak
  %i.ap = fptoui double %i.am to i32
  %i.aq = fptoui double %i.ao to i32
  %i.ar = tail call fastcc i64 @interleave64(i32 noundef %i.ap, i32 noundef %i.aq)
  store i64 %i.ar, ptr %5, align 8, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.g, %bb.a, %bb.c, %bb.d, %bb.f, %bb.j
  %.0 = phi i32 [ 1, %bb.j ], [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.h ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc i64 @interleave64(i32 noundef %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %0, i64 1
  %i.c = zext <2 x i32> %i.b to <2 x i64>         ; 2 uses
  %i.d = shl nuw nsw <2 x i64> %i.c, splat (i64 16)
  %i.e = or <2 x i64> %i.d, %i.c
  %i.f = and <2 x i64> %i.e, splat (i64 281470681808895) ; 2 uses
  %i.g = shl nuw nsw <2 x i64> %i.f, splat (i64 8)
  %i.h = or <2 x i64> %i.g, %i.f
  %i.i = and <2 x i64> %i.h, splat (i64 71777214294589695) ; 2 uses
  %i.j = shl nuw nsw <2 x i64> %i.i, splat (i64 4)
  %i.k = or <2 x i64> %i.j, %i.i
  %i.l = and <2 x i64> %i.k, splat (i64 1085102592571150095) ; 2 uses
  %i.m = shl nuw nsw <2 x i64> %i.l, splat (i64 2)
  %i.n = or <2 x i64> %i.m, %i.l
  %i.o = and <2 x i64> %i.n, splat (i64 3689348814741910323) ; 3 uses
  %i.p = shl nuw <2 x i64> %i.o, <i64 2, i64 1>
  %i.q = extractelement <2 x i64> %i.o, i64 0
  %i.r = shl nuw nsw i64 %i.q, 1
  %i.s = insertelement <2 x i64> %i.o, i64 %i.r, i64 0
  %i.t = or <2 x i64> %i.p, %i.s
  %i.u = and <2 x i64> %i.t, <i64 -6148914691236517206, i64 6148914691236517205>
  %i.v = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.u)
  ret i64 %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @geohashEncodeType(double noundef %0, double noundef %1, i8 noundef zeroext %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
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
  store i8 %2, ptr %i.g, align 8, !tbaa !18
  %i.h = insertelement <2 x double> poison, double %1, i64 0
  %i.i = insertelement <2 x double> %i.h, double %0, i64 1
  %i.j = fadd <2 x double> %i.i, <double f0x40554345B1A57F00, double 1.800000e+02>
  %4 = fdiv <2 x double> %i.j, <double f0x40654345B1A57F00, double 3.600000e+02>
  %i.k = zext nneg i8 %2 to i64
  %i.l = shl nuw nsw i64 1, %i.k
  %i.m = uitofp nneg i64 %i.l to double
  %i.n = insertelement <2 x double> poison, double %i.m, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x double> %4, %i.o
  %i.q = fptoui <2 x double> %i.p to <2 x i32>
  %i.r = zext <2 x i32> %i.q to <2 x i64>         ; 2 uses
  %i.s = shl nuw nsw <2 x i64> %i.r, splat (i64 16)
  %i.t = or <2 x i64> %i.s, %i.r
  %i.u = and <2 x i64> %i.t, splat (i64 281470681808895) ; 2 uses
  %i.v = shl nuw nsw <2 x i64> %i.u, splat (i64 8)
  %i.w = or <2 x i64> %i.v, %i.u
  %i.x = and <2 x i64> %i.w, splat (i64 71777214294589695) ; 2 uses
  %i.y = shl nuw nsw <2 x i64> %i.x, splat (i64 4)
  %i.z = or <2 x i64> %i.y, %i.x
  %i.aa = and <2 x i64> %i.z, splat (i64 1085102592571150095) ; 2 uses
  %i.ab = shl nuw nsw <2 x i64> %i.aa, splat (i64 2)
  %i.ac = or <2 x i64> %i.ab, %i.aa               ; 2 uses
  %5 = extractelement <2 x i64> %i.ac, i64 0
  %6 = and i64 %5, 3689348814741910323            ; 2 uses
  %i.ad = extractelement <2 x i64> %i.ac, i64 1
  %7 = and i64 %i.ad, 3689348814741910323         ; 2 uses
  %8 = shl nuw nsw i64 %6, 1
  %9 = or i64 %8, %6
  %10 = and i64 %9, 6148914691236517205
  %i.ae = shl nuw i64 %7, 2
  %11 = shl nuw nsw i64 %7, 1
  %12 = or i64 %i.ae, %11
  %13 = and i64 %12, -6148914691236517206
  %14 = or disjoint i64 %13, %10
  store i64 %14, ptr %3, align 8, !tbaa !17
  br label %geohashEncode.exit

geohashEncode.exit:                               ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @geohashEncodeWGS84(double noundef %0, double noundef %1, i8 noundef zeroext %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
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
  store i8 %2, ptr %i.g, align 8, !tbaa !18
  %i.h = insertelement <2 x double> poison, double %1, i64 0
  %i.i = insertelement <2 x double> %i.h, double %0, i64 1
  %i.j = fadd <2 x double> %i.i, <double f0x40554345B1A57F00, double 1.800000e+02>
  %4 = fdiv <2 x double> %i.j, <double f0x40654345B1A57F00, double 3.600000e+02>
  %i.k = zext nneg i8 %2 to i64
  %i.l = shl nuw nsw i64 1, %i.k
  %i.m = uitofp nneg i64 %i.l to double
  %i.n = insertelement <2 x double> poison, double %i.m, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x double> %4, %i.o
  %i.q = fptoui <2 x double> %i.p to <2 x i32>
  %i.r = zext <2 x i32> %i.q to <2 x i64>         ; 2 uses
  %i.s = shl nuw nsw <2 x i64> %i.r, splat (i64 16)
  %i.t = or <2 x i64> %i.s, %i.r
  %i.u = and <2 x i64> %i.t, splat (i64 281470681808895) ; 2 uses
  %i.v = shl nuw nsw <2 x i64> %i.u, splat (i64 8)
  %i.w = or <2 x i64> %i.v, %i.u
  %i.x = and <2 x i64> %i.w, splat (i64 71777214294589695) ; 2 uses
  %i.y = shl nuw nsw <2 x i64> %i.x, splat (i64 4)
  %i.z = or <2 x i64> %i.y, %i.x
  %i.aa = and <2 x i64> %i.z, splat (i64 1085102592571150095) ; 2 uses
  %i.ab = shl nuw nsw <2 x i64> %i.aa, splat (i64 2)
  %i.ac = or <2 x i64> %i.ab, %i.aa               ; 2 uses
  %5 = extractelement <2 x i64> %i.ac, i64 0
  %6 = and i64 %5, 3689348814741910323            ; 2 uses
  %i.ad = extractelement <2 x i64> %i.ac, i64 1
  %7 = and i64 %i.ad, 3689348814741910323         ; 2 uses
  %8 = shl nuw nsw i64 %6, 1
  %9 = or i64 %8, %6
  %10 = and i64 %9, 6148914691236517205
  %i.ae = shl nuw i64 %7, 2
  %11 = shl nuw nsw i64 %7, 1
  %12 = or i64 %i.ae, %11
  %13 = and i64 %12, -6148914691236517206
  %14 = or disjoint i64 %13, %10
  store i64 %14, ptr %3, align 8, !tbaa !17
  br label %geohashEncodeType.exit

geohashEncodeType.exit:                           ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi i32 [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @geohashDecode(double %0, double %1, double %2, double %3, i64 %4, i8 %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #0 {
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
  store i64 %4, ptr %6, align 8, !tbaa !19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !20
  %i.h = lshr i64 %4, 1
  %i.i = insertelement <2 x i64> poison, i64 %4, i64 0
  %i.j = insertelement <2 x i64> %i.i, i64 %i.h, i64 1
  %i.k = and <2 x i64> %i.j, splat (i64 6148914691236517205) ; 2 uses
  %i.l = lshr <2 x i64> %i.k, splat (i64 1)
  %i.m = or disjoint <2 x i64> %i.l, %i.k
  %i.n = and <2 x i64> %i.m, splat (i64 3689348814741910323) ; 2 uses
  %i.o = lshr <2 x i64> %i.n, splat (i64 2)
  %i.p = or disjoint <2 x i64> %i.o, %i.n
  %i.q = and <2 x i64> %i.p, splat (i64 1085102592571150095) ; 2 uses
  %i.r = lshr <2 x i64> %i.q, splat (i64 4)
  %i.s = or disjoint <2 x i64> %i.r, %i.q
  %i.t = and <2 x i64> %i.s, splat (i64 71777214294589695) ; 2 uses
  %i.u = lshr <2 x i64> %i.t, splat (i64 8)
  %i.v = or disjoint <2 x i64> %i.u, %i.t         ; 2 uses
  %i.w = lshr <2 x i64> %i.v, splat (i64 16)
  %i.x = and <2 x i64> %i.w, splat (i64 4294901760)
  %i.y = and <2 x i64> %i.v, splat (i64 65535)
  %i.z = or disjoint <2 x i64> %i.x, %i.y         ; 2 uses
  %i.aa = fsub double %3, %2
  %i.ab = fsub double %1, %0
  %i.ac = zext nneg i8 %5 to i64
  %i.ad = shl nuw i64 1, %i.ac
  %i.ae = uitofp i64 %i.ad to double
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ag = bitcast <2 x i64> %i.z to <4 x i32>
  %i.ah = extractelement <4 x i32> %i.ag, i64 0   ; 2 uses
  %i.ai = uitofp i32 %i.ah to double
  %i.aj = add i32 %i.ah, 1
  %i.ak = uitofp i32 %i.aj to double
  %i.al = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.ak, i64 1
  %i.an = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ap = fdiv <2 x double> %i.am, %i.ao
  %i.aq = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = insertelement <2 x double> poison, double %2, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.ar, <2 x double> %i.at)
  store <2 x double> %i.au, ptr %i.af, align 8, !tbaa !14
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aw = bitcast <2 x i64> %i.z to <4 x i32>
  %i.ax = extractelement <4 x i32> %i.aw, i64 2   ; 2 uses
  %i.ay = uitofp i32 %i.ax to double
  %i.az = add i32 %i.ax, 1
  %i.ba = uitofp i32 %i.az to double
  %i.bb = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.ba, i64 1
  %i.bd = fdiv <2 x double> %i.bc, %i.ao
  %i.be = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = insertelement <2 x double> poison, double %0, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.bf, <2 x double> %i.bh)
  store <2 x double> %i.bi, ptr %i.av, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @geohashDecodeType(i64 %0, i8 %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @geohashDecode(double -1.800000e+02, double 1.800000e+02, double f0xC0554345B1A57F00, double f0x40554345B1A57F00, i64 %0, i8 %1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @geohashDecodeWGS84(i64 %0, i8 %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = icmp eq i8 %1, 0
  %or.cond.not45.i = select i1 %i.a, i1 %i.b, i1 false
  %i.c = icmp eq ptr %2, null
  %or.cond4.i = or i1 %or.cond.not45.i, %i.c
  br i1 %or.cond4.i, label %geohashDecode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %0, ptr %2, align 8, !tbaa !19
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %1, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !20
  %i.d = lshr i64 %0, 1
  %i.e = insertelement <2 x i64> poison, i64 %0, i64 0
  %i.f = insertelement <2 x i64> %i.e, i64 %i.d, i64 1
  %i.g = and <2 x i64> %i.f, splat (i64 6148914691236517205) ; 2 uses
  %i.h = lshr <2 x i64> %i.g, splat (i64 1)
  %i.i = or disjoint <2 x i64> %i.h, %i.g
  %i.j = and <2 x i64> %i.i, splat (i64 3689348814741910323) ; 2 uses
  %i.k = lshr <2 x i64> %i.j, splat (i64 2)
  %i.l = or disjoint <2 x i64> %i.k, %i.j
  %i.m = and <2 x i64> %i.l, splat (i64 1085102592571150095) ; 2 uses
  %i.n = lshr <2 x i64> %i.m, splat (i64 4)
  %i.o = or disjoint <2 x i64> %i.n, %i.m
  %i.p = and <2 x i64> %i.o, splat (i64 71777214294589695) ; 2 uses
  %i.q = lshr <2 x i64> %i.p, splat (i64 8)
  %i.r = or disjoint <2 x i64> %i.q, %i.p         ; 2 uses
  %i.s = lshr <2 x i64> %i.r, splat (i64 16)
  %i.t = and <2 x i64> %i.s, splat (i64 4294901760)
  %i.u = and <2 x i64> %i.r, splat (i64 65535)
  %i.v = or disjoint <2 x i64> %i.t, %i.u         ; 2 uses
  %i.w = zext nneg i8 %1 to i64
  %i.x = shl nuw i64 1, %i.w
  %i.y = uitofp i64 %i.x to double
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = bitcast <2 x i64> %i.v to <4 x i32>
  %i.ab = extractelement <4 x i32> %i.aa, i64 0   ; 2 uses
  %i.ac = uitofp i32 %i.ab to double
  %i.ad = add i32 %i.ab, 1
  %i.ae = uitofp i32 %i.ad to double
  %i.af = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.ae, i64 1
  %i.ah = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aj = fdiv <2 x double> %i.ag, %i.ai
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> splat (double f0x40654345B1A57F00), <2 x double> splat (double f0xC0554345B1A57F00))
  store <2 x double> %i.ak, ptr %i.z, align 8, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = bitcast <2 x i64> %i.v to <4 x i32>
  %i.an = extractelement <4 x i32> %i.am, i64 2   ; 2 uses
  %i.ao = uitofp i32 %i.an to double
  %i.ap = add i32 %i.an, 1
  %i.aq = uitofp i32 %i.ap to double
  %i.ar = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.aq, i64 1
  %i.at = fdiv <2 x double> %i.as, %i.ai
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> splat (double 3.600000e+02), <2 x double> splat (double -1.800000e+02))
  store <2 x double> %i.au, ptr %i.al, align 8, !tbaa !14
  br label %geohashDecode.exit

geohashDecode.exit:                               ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @geohashDecodeAreaToLongLat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !14
  %i.c = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.b)
  %i.d = fmul double %i.c, 5.000000e-01           ; 2 uses
  %i.e = fcmp ogt double %i.d, 1.800000e+02
  %storemerge = select i1 %i.e, double 1.800000e+02, double %i.d ; 2 uses
  %i.f = fcmp olt double %storemerge, -1.800000e+02
  %storemerge16 = select i1 %i.f, double -1.800000e+02, double %storemerge
  store double %storemerge16, ptr %1, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !14
  %i.i = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.h)
  %i.j = fmul double %i.i, 5.000000e-01           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = fcmp ogt double %i.j, f0x40554345B1A57F00
  %storemerge17 = select i1 %i.l, double f0x40554345B1A57F00, double %i.j ; 2 uses
  %i.m = fcmp olt double %storemerge17, f0xC0554345B1A57F00
  %storemerge18 = select i1 %i.m, double f0xC0554345B1A57F00, double %storemerge17
  store double %storemerge18, ptr %i.k, align 8, !tbaa !14
  br label %bb.c
end_hunk_0
