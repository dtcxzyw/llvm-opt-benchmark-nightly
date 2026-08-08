inline.NumInlined: 27
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @geohashGetCoordRange(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) local_unnamed_addr #0 {
bb.a:
  store <2 x double> <double -1.800000e+02, double 1.800000e+02>, ptr %0, align 8, !tbaa !13
  store <2 x double> <double f0xC0554345B1A57F00, double f0x40554345B1A57F00>, ptr %1, align 8, !tbaa !13
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
  %i.t = load double, ptr %1, align 8, !tbaa !17  ; 2 uses
  %i.u = fcmp olt double %3, %i.t
  %i.v = fcmp ogt double %3, %i.f
  %or.cond = or i1 %i.v, %i.u
  br i1 %or.cond, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load double, ptr %0, align 8, !tbaa !17  ; 2 uses
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
  store i64 %i.ar, ptr %5, align 8, !tbaa !18
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
  %i.u = and <2 x i64> %i.t, <i64 -6148914691236517206, i64 6148914691236517205> ; 2 uses
  %shift = shufflevector <2 x i64> %i.u, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or disjoint <2 x i64> %i.u, %shift
  %2 = extractelement <2 x i64> %foldExtExtBinop, i64 0
  ret i64 %2
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
  store i8 %2, ptr %i.g, align 8, !tbaa !21
  %i.h = insertelement <2 x double> poison, double %1, i64 0
  %i.i = insertelement <2 x double> %i.h, double %0, i64 1
  %i.j = fadd <2 x double> %i.i, <double f0x40554345B1A57F00, double 1.800000e+02>
  %i.k = fdiv <2 x double> %i.j, <double f0x40654345B1A57F00, double 3.600000e+02>
  %i.l = zext nneg i8 %2 to i64
  %i.m = shl nuw nsw i64 1, %i.l
  %i.n = uitofp nneg i64 %i.m to double
  %i.o = insertelement <2 x double> poison, double %i.n, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x double> %i.k, %i.p
  %i.r = fptoui <2 x double> %i.q to <2 x i32>
  %i.s = zext <2 x i32> %i.r to <2 x i64>         ; 2 uses
  %i.t = shl nuw nsw <2 x i64> %i.s, splat (i64 16)
  %i.u = or <2 x i64> %i.t, %i.s
  %i.v = and <2 x i64> %i.u, splat (i64 281470681808895) ; 2 uses
  %i.w = shl nuw nsw <2 x i64> %i.v, splat (i64 8)
  %i.x = or <2 x i64> %i.w, %i.v
  %i.y = and <2 x i64> %i.x, splat (i64 71777214294589695) ; 2 uses
  %i.z = shl nuw nsw <2 x i64> %i.y, splat (i64 4)
  %i.aa = or <2 x i64> %i.z, %i.y
  %i.ab = and <2 x i64> %i.aa, splat (i64 1085102592571150095) ; 2 uses
  %i.ac = shl nuw nsw <2 x i64> %i.ab, splat (i64 2)
  %i.ad = or <2 x i64> %i.ac, %i.ab               ; 2 uses
  %i.ae = extractelement <2 x i64> %i.ad, i64 0
  %i.af = and i64 %i.ae, 3689348814741910323      ; 2 uses
  %i.ag = extractelement <2 x i64> %i.ad, i64 1
  %i.ah = and i64 %i.ag, 3689348814741910323      ; 2 uses
  %i.ai = shl nuw nsw i64 %i.af, 1
  %i.aj = or i64 %i.ai, %i.af
  %i.ak = and i64 %i.aj, 6148914691236517205
  %i.al = shl nuw i64 %i.ah, 2
  %i.am = shl nuw nsw i64 %i.ah, 1
  %i.an = or i64 %i.al, %i.am
  %i.ao = and i64 %i.an, -6148914691236517206
  %i.ap = or disjoint i64 %i.ao, %i.ak
  store i64 %i.ap, ptr %3, align 8, !tbaa !18
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
  store i8 %2, ptr %i.g, align 8, !tbaa !21
  %i.h = insertelement <2 x double> poison, double %1, i64 0
  %i.i = insertelement <2 x double> %i.h, double %0, i64 1
  %i.j = fadd <2 x double> %i.i, <double f0x40554345B1A57F00, double 1.800000e+02>
  %i.k = fdiv <2 x double> %i.j, <double f0x40654345B1A57F00, double 3.600000e+02>
  %i.l = zext nneg i8 %2 to i64
  %i.m = shl nuw nsw i64 1, %i.l
  %i.n = uitofp nneg i64 %i.m to double
  %i.o = insertelement <2 x double> poison, double %i.n, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x double> %i.k, %i.p
  %i.r = fptoui <2 x double> %i.q to <2 x i32>
  %i.s = zext <2 x i32> %i.r to <2 x i64>         ; 2 uses
  %i.t = shl nuw nsw <2 x i64> %i.s, splat (i64 16)
  %i.u = or <2 x i64> %i.t, %i.s
  %i.v = and <2 x i64> %i.u, splat (i64 281470681808895) ; 2 uses
  %i.w = shl nuw nsw <2 x i64> %i.v, splat (i64 8)
  %i.x = or <2 x i64> %i.w, %i.v
  %i.y = and <2 x i64> %i.x, splat (i64 71777214294589695) ; 2 uses
  %i.z = shl nuw nsw <2 x i64> %i.y, splat (i64 4)
  %i.aa = or <2 x i64> %i.z, %i.y
  %i.ab = and <2 x i64> %i.aa, splat (i64 1085102592571150095) ; 2 uses
  %i.ac = shl nuw nsw <2 x i64> %i.ab, splat (i64 2)
  %i.ad = or <2 x i64> %i.ac, %i.ab               ; 2 uses
  %i.ae = extractelement <2 x i64> %i.ad, i64 0
  %i.af = and i64 %i.ae, 3689348814741910323      ; 2 uses
  %i.ag = extractelement <2 x i64> %i.ad, i64 1
  %i.ah = and i64 %i.ag, 3689348814741910323      ; 2 uses
  %i.ai = shl nuw nsw i64 %i.af, 1
  %i.aj = or i64 %i.ai, %i.af
  %i.ak = and i64 %i.aj, 6148914691236517205
  %i.al = shl nuw i64 %i.ah, 2
  %i.am = shl nuw nsw i64 %i.ah, 1
  %i.an = or i64 %i.al, %i.am
  %i.ao = and i64 %i.an, -6148914691236517206
  %i.ap = or disjoint i64 %i.ao, %i.ak
  store i64 %i.ap, ptr %3, align 8, !tbaa !18
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
  store i64 %4, ptr %6, align 8, !tbaa !22
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !23
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
  %i.ai = add i32 %i.ah, 1
  %i.aj = uitofp i32 %i.ai to double
  %i.ak = uitofp i32 %i.ah to double
  %i.al = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.aj, i64 1
  %i.an = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ap = fdiv <2 x double> %i.am, %i.ao
  %i.aq = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = insertelement <2 x double> poison, double %2, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.ar, <2 x double> %i.at)
  store <2 x double> %i.au, ptr %i.af, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aw = bitcast <2 x i64> %i.z to <4 x i32>
  %i.ax = extractelement <4 x i32> %i.aw, i64 2   ; 2 uses
  %i.ay = add i32 %i.ax, 1
end_hunk_0
begin_hunk_1_@geohashDecodeToLongLatType:bb.a
  %i.t = or disjoint <2 x i64> %i.s, %i.r         ; 2 uses
  %i.u = lshr <2 x i64> %i.t, splat (i64 16)
  %i.v = and <2 x i64> %i.u, splat (i64 4294901760)
  %i.w = and <2 x i64> %i.t, splat (i64 65535)
  %i.x = or disjoint <2 x i64> %i.v, %i.w
  %i.y = trunc nuw <2 x i64> %i.x to <2 x i32>    ; 2 uses
  %i.z = uitofp <2 x i32> %i.y to <2 x double>
  %i.aa = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = fdiv <2 x double> %i.z, %i.ab
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> <double 3.600000e+02, double f0x40654345B1A57F00>, <2 x double> <double -1.800000e+02, double f0xC0554345B1A57F00>)
  %i.ae = add <2 x i32> %i.y, splat (i32 1)
  %i.af = uitofp <2 x i32> %i.ae to <2 x double>
  %i.ag = fdiv <2 x double> %i.af, %i.ab
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> <double 3.600000e+02, double f0x40654345B1A57F00>, <2 x double> <double -1.800000e+02, double f0xC0554345B1A57F00>)
  %i.ai = fadd <2 x double> %i.ad, %i.ah
  %i.aj = fmul <2 x double> %i.ai, splat (double 5.000000e-01) ; 2 uses
  %i.ak = fcmp ogt <2 x double> %i.aj, <double 1.800000e+02, double f0x40554345B1A57F00>
  %i.al = select <2 x i1> %i.ak, <2 x double> <double 1.800000e+02, double f0x40554345B1A57F00>, <2 x double> %i.aj ; 2 uses
  %i.am = fcmp olt <2 x double> %i.al, <double -1.800000e+02, double f0xC0554345B1A57F00>
  %i.an = select <2 x i1> %i.am, <2 x double> <double -1.800000e+02, double f0xC0554345B1A57F00>, <2 x double> %i.al
  store <2 x double> %i.an, ptr %2, align 8, !tbaa !13
  br label %geohashDecode.exit.thread

geohashDecode.exit.thread:                        ; preds = %bb.b, %bb.a, %geohashDecodeAreaToLongLat.exit
  %.0 = phi i32 [ 1, %geohashDecodeAreaToLongLat.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @geohashDecodeToLongLatWGS84(i64 %0, i8 %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @geohashDecodeToLongLatType(i64 %0, i8 %1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @geohashNeighbors(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 128)) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !29
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !29
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !29
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !29
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !29
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !29
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !29
  %i.h = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.i = and i64 %i.h, -6148914691236517206
  %i.j = and i64 %i.h, 6148914691236517205
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i8, ptr %i.k, align 8, !tbaa !21
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 1
  %i.o = sub nsw i64 64, %i.n
  %i.p = and i64 %i.o, 4294967294                 ; 2 uses
  %i.q = lshr i64 6148914691236517205, %i.p
  %i.r = or disjoint i64 %i.i, 1
  %i.s = add i64 %i.r, %i.q
  %i.t = lshr i64 -6148914691236517206, %i.p
  %i.u = and i64 %i.s, %i.t
  %i.v = or disjoint i64 %i.u, %i.j
  store i64 %i.v, ptr %i.a, align 8, !tbaa !18
  %i.w = load i64, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.x = and i64 %i.w, -6148914691236517206
  %i.y = and i64 %i.w, 6148914691236517205
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !21
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 1
  %i.ad = sub nsw i64 64, %i.ac
  %i.ae = and i64 %i.ad, 4294967294               ; 3 uses
  %i.af = lshr i64 6148914691236517205, %i.ae
  %i.ag = or disjoint i64 %i.af, %i.x
  %.neg.i = ashr i64 -6148914691236517206, %i.ae
  %i.ah = add i64 %i.ag, %.neg.i
  %i.ai = lshr i64 -6148914691236517206, %i.ae
  %i.aj = and i64 %i.ah, %i.ai
  %i.ak = or disjoint i64 %i.aj, %i.y
  store i64 %i.ak, ptr %i.b, align 8, !tbaa !18
  %i.al = load i64, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  %i.am = and i64 %i.al, -6148914691236517206
  %i.an = and i64 %i.al, 6148914691236517205
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !21
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 1
  %i.as = sub nsw i64 64, %i.ar
  %i.at = and i64 %i.as, 4294967294
  %i.au = add nuw i64 %i.an, 9223372036854775807
  %i.av = lshr i64 6148914691236517205, %i.at
  %i.aw = and i64 %i.av, %i.au
  %i.ax = or disjoint i64 %i.aw, %i.am
  store i64 %i.ax, ptr %i.c, align 8, !tbaa !18
  %i.ay = load i64, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.az = and i64 %i.ay, -6148914691236517206
  %i.ba = and i64 %i.ay, 6148914691236517205
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !21
  %i.bd = zext i8 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 1
  %i.bf = sub nsw i64 64, %i.be
  %i.bg = and i64 %i.bf, 4294967294               ; 2 uses
  %i.bh = lshr i64 -6148914691236517206, %i.bg
  %i.bi = add nuw nsw i64 %i.ba, 1
  %i.bj = add i64 %i.bi, %i.bh
  %i.bk = lshr i64 6148914691236517205, %i.bg
  %i.bl = and i64 %i.bj, %i.bk
  %i.bm = or disjoint i64 %i.bl, %i.az
  store i64 %i.bm, ptr %1, align 8, !tbaa !18
  %i.bn = load i64, ptr %i.g, align 8, !tbaa !18  ; 2 uses
  %i.bo = and i64 %i.bn, -6148914691236517206
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !21
  %i.br = zext i8 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 1
  %i.bt = sub nsw i64 64, %i.bs
  %i.bu = and i64 %i.bt, 4294967294               ; 3 uses
  %i.bv = lshr i64 6148914691236517205, %i.bu     ; 2 uses
  %i.bw = or disjoint i64 %i.bv, %i.bo
  %.neg.i32 = ashr i64 -6148914691236517206, %i.bu
  %i.bx = add i64 %i.bw, %.neg.i32
  %i.by = lshr i64 -6148914691236517206, %i.bu    ; 2 uses
  %i.bz = and i64 %i.bx, %i.by
  %i.ca = and i64 %i.bn, 6148914691236517205
  %i.cb = add nuw nsw i64 %i.ca, 1
  %i.cc = add i64 %i.cb, %i.by
  %i.cd = and i64 %i.cc, %i.bv
  %i.ce = or disjoint i64 %i.bz, %i.cd
  store i64 %i.ce, ptr %i.g, align 8, !tbaa !18
  %i.cf = load i64, ptr %i.f, align 8, !tbaa !18  ; 2 uses
  %i.cg = and i64 %i.cf, -6148914691236517206
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !21
  %i.cj = zext i8 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 1
  %i.cl = sub nsw i64 64, %i.ck
  %i.cm = and i64 %i.cl, 4294967294               ; 2 uses
  %i.cn = lshr i64 6148914691236517205, %i.cm     ; 2 uses
  %i.co = or disjoint i64 %i.cg, 1
  %i.cp = add i64 %i.co, %i.cn
  %i.cq = lshr i64 -6148914691236517206, %i.cm    ; 2 uses
  %i.cr = and i64 %i.cp, %i.cq
  %i.cs = and i64 %i.cf, 6148914691236517205
  %i.ct = add nuw nsw i64 %i.cs, 1
  %i.cu = add i64 %i.ct, %i.cq
  %i.cv = and i64 %i.cu, %i.cn
  %i.cw = or disjoint i64 %i.cv, %i.cr
  store i64 %i.cw, ptr %i.f, align 8, !tbaa !18
  %i.cx = load i64, ptr %i.d, align 8, !tbaa !18  ; 2 uses
  %i.cy = and i64 %i.cx, -6148914691236517206
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !21
  %i.db = zext i8 %i.da to i64
  %i.dc = shl nuw nsw i64 %i.db, 1
  %i.dd = sub nsw i64 64, %i.dc
  %i.de = and i64 %i.dd, 4294967294               ; 2 uses
  %i.df = lshr i64 6148914691236517205, %i.de     ; 2 uses
  %i.dg = or disjoint i64 %i.cy, 1
  %i.dh = add i64 %i.dg, %i.df
  %i.di = lshr i64 -6148914691236517206, %i.de
  %i.dj = and i64 %i.dh, %i.di
  %i.dk = and i64 %i.cx, 6148914691236517205
  %i.dl = add nuw i64 %i.dk, 9223372036854775807
  %i.dm = and i64 %i.df, %i.dl
  %i.dn = or disjoint i64 %i.dj, %i.dm
  store i64 %i.dn, ptr %i.d, align 8, !tbaa !18
  %i.do = load i64, ptr %i.e, align 8, !tbaa !18  ; 2 uses
  %i.dp = and i64 %i.do, -6148914691236517206
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !21
  %i.ds = zext i8 %i.dr to i64
  %i.dt = shl nuw nsw i64 %i.ds, 1
  %i.du = sub nsw i64 64, %i.dt
  %i.dv = and i64 %i.du, 4294967294               ; 3 uses
  %i.dw = lshr i64 6148914691236517205, %i.dv     ; 2 uses
  %i.dx = or disjoint i64 %i.dw, %i.dp
  %.neg.i33 = ashr i64 -6148914691236517206, %i.dv
  %i.dy = add i64 %i.dx, %.neg.i33
  %i.dz = lshr i64 -6148914691236517206, %i.dv
  %i.ea = and i64 %i.dy, %i.dz
  %i.eb = and i64 %i.do, 6148914691236517205
  %i.ec = add nuw i64 %i.eb, 9223372036854775807
  %i.ed = and i64 %i.dw, %i.ec
  %i.ee = or disjoint i64 %i.ea, %i.ed
  store i64 %i.ee, ptr %i.e, align 8, !tbaa !18
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !11, i64 0}
!15 = !{!16, !14, i64 8}
!16 = !{!"", !14, i64 0, !14, i64 8}
!17 = !{!16, !14, i64 0}
!18 = !{!19, !20, i64 0}
!19 = !{!"", !20, i64 0, !11, i64 8}
!20 = !{!"long", !11, i64 0}
!21 = !{!19, !11, i64 8}
!22 = !{!20, !20, i64 0}
!23 = !{!11, !11, i64 0}
!24 = !{!25, !14, i64 16}
!25 = !{!"", !19, i64 0, !16, i64 16, !16, i64 32}
!26 = !{!25, !14, i64 24}
!27 = !{!25, !14, i64 32}
!28 = !{!25, !14, i64 40}
!29 = !{i64 0, i64 8, !22, i64 8, i64 1, !23}
end_hunk_1
