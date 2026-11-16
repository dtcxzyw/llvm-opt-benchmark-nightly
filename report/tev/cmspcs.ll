Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmspcs?download=true
inline.NumInlined: 108
inline.NumDeleted: 23
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_cmsEndPointsBySpace.RGBblack = internal global [4 x i16] zeroinitializer, align 2
@_cmsEndPointsBySpace.RGBwhite = internal global [4 x i16] [i16 -1, i16 -1, i16 -1, i16 0], align 2
@_cmsEndPointsBySpace.CMYKblack = internal global [4 x i16] [i16 -1, i16 -1, i16 -1, i16 -1], align 2
@_cmsEndPointsBySpace.CMYKwhite = internal global [4 x i16] zeroinitializer, align 2
@_cmsEndPointsBySpace.LABblack = internal global [4 x i16] [i16 0, i16 -32640, i16 -32640, i16 0], align 2
@_cmsEndPointsBySpace.LABwhite = internal global [4 x i16] [i16 -1, i16 -32640, i16 -32640, i16 0], align 2
@_cmsEndPointsBySpace.CMYblack = internal global [4 x i16] [i16 -1, i16 -1, i16 -1, i16 0], align 2
@_cmsEndPointsBySpace.CMYwhite = internal global [4 x i16] zeroinitializer, align 2
@_cmsEndPointsBySpace.Grayblack = internal global [4 x i16] zeroinitializer, align 2
@_cmsEndPointsBySpace.GrayWhite = internal global [4 x i16] [i16 -1, i16 0, i16 0, i16 0], align 2
@switch.table._cmsICCcolorSpace = private unnamed_addr constant [30 x i32] [i32 1196573017, i32 1380401696, i32 1196573017, i32 1380401696, i32 1129142560, i32 1129142603, i32 1497588338, i32 1282766368, i32 1482250784, i32 1281450528, i32 1282766411, i32 1213421088, i32 1212961568, i32 1501067552, i32 1296255025, i32 1296255026, i32 1296255027, i32 1296255028, i32 1296255029, i32 1296255030, i32 1296255031, i32 1296255032, i32 1296255033, i32 1296255041, i32 1296255042, i32 1296255043, i32 1296255044, i32 1296255045, i32 1296255046, i32 1281450528], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @cmsXYZ2xyY(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !13  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %i.d = fadd double %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !15
  %i.g = fadd double %i.d, %i.f
  %i.h = fdiv double 1.000000e+00, %i.g           ; 2 uses
  %i.i = fmul double %i.a, %i.h
  store double %i.i, ptr %0, align 8, !tbaa !13
  %i.j = fmul double %i.c, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.j, ptr %i.k, align 8, !tbaa !14
  %i.l = load double, ptr %i.b, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.l, ptr %i.m, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @cmsxyY2XYZ(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !14
  %i.d = fdiv double %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !15 ; 3 uses
  %i.g = fmul double %i.d, %i.f
  store double %i.g, ptr %0, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.f, ptr %i.h, align 8, !tbaa !14
  %i.i = load double, ptr %1, align 8, !tbaa !13
  %i.j = fsub double 1.000000e+00, %i.i
  %i.k = load double, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %i.l = fsub double %i.j, %i.k
  %i.m = fdiv double %i.l, %i.k
  %i.n = fmul double %i.f, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.n, ptr %i.o, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define void @cmsXYZ2Lab(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @cmsD50_XYZ() #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.b, %bb.b ], [ %0, %bb.a ]    ; 3 uses
  %i.c = load double, ptr %2, align 8, !tbaa !13
  %i.d = load double, ptr %.0, align 8, !tbaa !13
  %i.e = fdiv double %i.c, %i.d                   ; 3 uses
  %i.f = fcmp ugt double %i.e, f0x3F822354D28F7CD6
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call nnan double @llvm.fmuladd.f64(double %i.e, double f0x401F25ED097B425F, double f0x3FC1A7B9611A7B96)
  br label %f.exit

bb.e:                                             ; preds = %bb.c
  %i.h = tail call double @pow(double noundef %i.e, double noundef f0x3FD5555555555555) #11
  br label %f.exit

f.exit:                                           ; preds = %bb.d, %bb.e
  %.0.i = phi double [ %i.g, %bb.d ], [ %i.h, %bb.e ]
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !14
  %i.m = fdiv double %i.j, %i.l                   ; 3 uses
  %i.n = fcmp ugt double %i.m, f0x3F822354D28F7CD6
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %f.exit
  %i.o = tail call double @llvm.fmuladd.f64(double %i.m, double f0x401F25ED097B425F, double f0x3FC1A7B9611A7B96)
  br label %f.exit17

bb.g:                                             ; preds = %f.exit
  %i.p = tail call double @pow(double noundef %i.m, double noundef f0x3FD5555555555555) #11
  br label %f.exit17

f.exit17:                                         ; preds = %bb.f, %bb.g
  %.0.i16 = phi double [ %i.o, %bb.f ], [ %i.p, %bb.g ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.t = load double, ptr %i.s, align 8, !tbaa !15
  %i.u = fdiv double %i.r, %i.t                   ; 3 uses
  %i.v = fcmp ugt double %i.u, f0x3F822354D28F7CD6
  br i1 %i.v, label %bb.i, label %bb.h

bb.h:                                             ; preds = %f.exit17
  %i.w = tail call nnan double @llvm.fmuladd.f64(double %i.u, double f0x401F25ED097B425F, double f0x3FC1A7B9611A7B96)
  br label %f.exit19

bb.i:                                             ; preds = %f.exit17
  %i.x = tail call double @pow(double noundef %i.u, double noundef f0x3FD5555555555555) #11
  br label %f.exit19

f.exit19:                                         ; preds = %bb.h, %bb.i
  %.0.i18 = phi double [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  %i.y = tail call double @llvm.fmuladd.f64(double %.0.i16, double 1.160000e+02, double -1.600000e+01)
  store double %i.y, ptr %1, align 8, !tbaa !13
  %i.z = fsub double %.0.i, %.0.i16
  %i.aa = fmul double %i.z, 5.000000e+02
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.aa, ptr %i.ab, align 8, !tbaa !14
  %i.ac = fsub double %.0.i16, %.0.i18
  %i.ad = fmul double %i.ac, 2.000000e+02
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.ad, ptr %i.ae, align 8, !tbaa !15
  ret void
}

declare ptr @cmsD50_XYZ() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind uwtable
define void @cmsLab2XYZ(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @cmsD50_XYZ() #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.b, %bb.b ], [ %0, %bb.a ]    ; 2 uses
  %i.c = load double, ptr %2, align 8, !tbaa !13
  %i.d = fadd double %i.c, 1.600000e+01
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !15
  %i.i = fdiv double %i.d, 1.160000e+02           ; 2 uses
  %i.j = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.f, i64 0
  %i.k = insertelement <2 x double> poison, double %i.i, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.j, <2 x double> <double 2.000000e-03, double 0.000000e+00>, <2 x double> %i.l) ; 5 uses
  %i.n = tail call double @llvm.fmuladd.f64(double %i.h, double -5.000000e-03, double %i.i) ; 5 uses
  %i.o = fcmp ugt <2 x double> %i.m, splat (double f0x3FCA7B9611A7B961)
  %i.p = fadd nnan <2 x double> %i.m, splat (double f0xBFC1A7B9611A7B96)
  %i.q = fmul nnan <2 x double> %i.p, splat (double f0x3FC07004DED20922)
  %i.r = fmul <2 x double> %i.m, %i.m
  %i.s = fmul <2 x double> %i.m, %i.r
  %i.t = select <2 x i1> %i.o, <2 x double> %i.s, <2 x double> %i.q
  %i.u = load <2 x double>, ptr %.0, align 8, !tbaa !16
  %i.v = fmul <2 x double> %i.u, %i.t
  store <2 x double> %i.v, ptr %1, align 8, !tbaa !16
  %i.w = fcmp ugt double %i.n, f0x3FCA7B9611A7B961
  %i.x = fadd nnan double %i.n, f0xBFC1A7B9611A7B96
  %i.y = fmul nnan double %i.x, f0x3FC07004DED20922
  %i.z = fmul double %i.n, %i.n
  %i.aa = fmul double %i.n, %i.z
  %.0.i17 = select i1 %i.w, double %i.aa, double %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !15
  %i.ad = fmul double %.0.i17, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.ad, ptr %i.ae, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @cmsLabEncoded2FloatV2(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %1, align 2, !tbaa !18
  %i.b = uitofp i16 %i.a to double
  %i.c = fdiv double %i.b, 6.528000e+02
  store double %i.c, ptr %0, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x i16>, ptr %i.d, align 2, !tbaa !18
  %i.g = uitofp <2 x i16> %i.f to <2 x double>
  %i.h = fmul nnan <2 x double> %i.g, splat (double 3.906250e-03)
  %i.i = fadd <2 x double> %i.h, splat (double -1.280000e+02)
  store <2 x double> %i.i, ptr %i.e, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @cmsLabEncoded2Float(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %1, align 2, !tbaa !18
  %i.b = uitofp i16 %i.a to double
  %i.c = fdiv double %i.b, 6.553500e+02
  store double %i.c, ptr %0, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x i16>, ptr %i.d, align 2, !tbaa !18
  %i.g = uitofp <2 x i16> %i.f to <2 x double>
  %i.h = fdiv <2 x double> %i.g, splat (double 2.570000e+02)
  %i.i = fadd <2 x double> %i.h, splat (double -1.280000e+02)
  store <2 x double> %i.i, ptr %i.e, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @cmsFloat2LabEncodedV2(ptr nofree noundef writeonly captures(none) initializes((0, 6)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !16 ; 2 uses
  %i.b = fcmp olt <2 x double> %i.a, <double 0.000000e+00, double -1.280000e+02>
  %i.c = select <2 x i1> %i.b, <2 x double> <double 0.000000e+00, double -1.280000e+02>, <2 x double> %i.a ; 2 uses
  %i.d = fcmp ogt <2 x double> %i.c, <double f0x4059190000000000, double f0x405FFFC000000000>
  %i.e = select <2 x i1> %i.d, <2 x double> <double f0x4059190000000000, double f0x405FFFC000000000>, <2 x double> %i.c ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !15 ; 2 uses
  %i.h = fcmp olt double %i.g, -1.280000e+02
  %spec.store.select.i8 = select i1 %i.h, double -1.280000e+02, double %i.g ; 2 uses
  %i.i = fcmp ogt double %spec.store.select.i8, f0x405FFFC000000000
  %spec.store.select1.i9 = select i1 %i.i, double f0x405FFFC000000000, double %spec.store.select.i8
  %i.j = extractelement <2 x double> %i.e, i64 0
  %i.k = fmul double %i.j, 6.528000e+02
  %i.l = fadd double %i.k, 5.000000e-01           ; 3 uses
  %i.m = fcmp ugt double %i.l, 0.000000e+00
  br i1 %i.m, label %bb.b, label %L2Fix2.exit

bb.b:                                             ; preds = %bb.a
  %i.n = fcmp ult double %i.l, 6.553500e+04
  br i1 %i.n, label %bb.c, label %L2Fix2.exit

bb.c:                                             ; preds = %bb.b
  %i.o = fadd double %i.l, -3.276700e+04
  %i.p = fadd double %i.o, f0x4238000000000000
  %i.q = bitcast double %i.p to i64
  %i.r = lshr i64 %i.q, 16
  %i.s = trunc i64 %i.r to i16
  %i.t = add i16 %i.s, 32767
  br label %L2Fix2.exit

L2Fix2.exit:                                      ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi i16 [ %i.t, %bb.c ], [ 0, %bb.a ], [ -1, %bb.b ]
  store i16 %.0.i.i, ptr %0, align 2, !tbaa !18
  %i.u = extractelement <2 x double> %i.e, i64 1
  %i.v = fadd double %i.u, 1.280000e+02
  %i.w = fmul double %i.v, 2.560000e+02
  %i.x = fadd double %i.w, 5.000000e-01           ; 3 uses
  %i.y = fcmp ugt double %i.x, 0.000000e+00
  br i1 %i.y, label %bb.d, label %ab2Fix2.exit

bb.d:                                             ; preds = %L2Fix2.exit
  %i.z = fcmp ult double %i.x, 6.553500e+04
  br i1 %i.z, label %bb.e, label %ab2Fix2.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = fadd double %i.x, -3.276700e+04
  %i.ab = fadd double %i.aa, f0x4238000000000000
  %i.ac = bitcast double %i.ab to i64
  %i.ad = lshr i64 %i.ac, 16
  %i.ae = trunc i64 %i.ad to i16
  %i.af = add i16 %i.ae, 32767
  br label %ab2Fix2.exit

ab2Fix2.exit:                                     ; preds = %L2Fix2.exit, %bb.d, %bb.e
  %.0.i.i10 = phi i16 [ %i.af, %bb.e ], [ 0, %L2Fix2.exit ], [ -1, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.0.i.i10, ptr %i.ag, align 2, !tbaa !18
  %i.ah = fadd double %spec.store.select1.i9, 1.280000e+02
  %i.ai = fmul double %i.ah, 2.560000e+02
  %i.aj = fadd double %i.ai, 5.000000e-01         ; 3 uses
  %i.ak = fcmp ugt double %i.aj, 0.000000e+00
  br i1 %i.ak, label %bb.f, label %ab2Fix2.exit12

bb.f:                                             ; preds = %ab2Fix2.exit
  %i.al = fcmp ult double %i.aj, 6.553500e+04
  br i1 %i.al, label %bb.g, label %ab2Fix2.exit12

bb.g:                                             ; preds = %bb.f
  %i.am = fadd double %i.aj, -3.276700e+04
  %i.an = fadd double %i.am, f0x4238000000000000
  %i.ao = bitcast double %i.an to i64
  %i.ap = lshr i64 %i.ao, 16
  %i.aq = trunc i64 %i.ap to i16
  %i.ar = add i16 %i.aq, 32767
  br label %ab2Fix2.exit12

ab2Fix2.exit12:                                   ; preds = %ab2Fix2.exit, %bb.f, %bb.g
  %.0.i.i11 = phi i16 [ %i.ar, %bb.g ], [ 0, %ab2Fix2.exit ], [ -1, %bb.f ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %.0.i.i11, ptr %i.as, align 2, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @cmsFloat2LabEncoded(ptr nofree noundef writeonly captures(none) initializes((0, 6)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !16 ; 2 uses
  %i.b = fcmp olt <2 x double> %i.a, <double 0.000000e+00, double -1.280000e+02>
  %i.c = select <2 x i1> %i.b, <2 x double> <double 0.000000e+00, double -1.280000e+02>, <2 x double> %i.a ; 2 uses
  %i.d = fcmp ogt <2 x double> %i.c, <double 1.000000e+02, double 1.270000e+02>
  %i.e = select <2 x i1> %i.d, <2 x double> <double 1.000000e+02, double 1.270000e+02>, <2 x double> %i.c ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !15 ; 2 uses
  %i.h = fcmp olt double %i.g, -1.280000e+02
  %spec.store.select.i8 = select i1 %i.h, double -1.280000e+02, double %i.g ; 2 uses
  %i.i = fcmp ogt double %spec.store.select.i8, 1.270000e+02
  %spec.store.select1.i9 = select i1 %i.i, double 1.270000e+02, double %spec.store.select.i8
  %i.j = extractelement <2 x double> %i.e, i64 0
  %i.k = fmul double %i.j, 6.553500e+02
  %i.l = fadd double %i.k, 5.000000e-01           ; 3 uses
  %i.m = fcmp ugt double %i.l, 0.000000e+00
  br i1 %i.m, label %bb.b, label %L2Fix4.exit

bb.b:                                             ; preds = %bb.a
  %i.n = fcmp ult double %i.l, 6.553500e+04
  br i1 %i.n, label %bb.c, label %L2Fix4.exit

bb.c:                                             ; preds = %bb.b
  %i.o = fadd double %i.l, -3.276700e+04
  %i.p = fadd double %i.o, f0x4238000000000000
  %i.q = bitcast double %i.p to i64
  %i.r = lshr i64 %i.q, 16
  %i.s = trunc i64 %i.r to i16
  %i.t = add i16 %i.s, 32767
  br label %L2Fix4.exit

L2Fix4.exit:                                      ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi i16 [ %i.t, %bb.c ], [ 0, %bb.a ], [ -1, %bb.b ]
  store i16 %.0.i.i, ptr %0, align 2, !tbaa !18
  %i.u = extractelement <2 x double> %i.e, i64 1
  %i.v = fadd double %i.u, 1.280000e+02
  %i.w = fmul double %i.v, 2.570000e+02
  %i.x = fadd double %i.w, 5.000000e-01           ; 3 uses
  %i.y = fcmp ugt double %i.x, 0.000000e+00
  br i1 %i.y, label %bb.d, label %ab2Fix4.exit

bb.d:                                             ; preds = %L2Fix4.exit
  %i.z = fcmp ult double %i.x, 6.553500e+04
  br i1 %i.z, label %bb.e, label %ab2Fix4.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = fadd double %i.x, -3.276700e+04
  %i.ab = fadd double %i.aa, f0x4238000000000000
  %i.ac = bitcast double %i.ab to i64
  %i.ad = lshr i64 %i.ac, 16
  %i.ae = trunc i64 %i.ad to i16
  %i.af = add i16 %i.ae, 32767
  br label %ab2Fix4.exit

ab2Fix4.exit:                                     ; preds = %L2Fix4.exit, %bb.d, %bb.e
  %.0.i.i10 = phi i16 [ %i.af, %bb.e ], [ 0, %L2Fix4.exit ], [ -1, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.0.i.i10, ptr %i.ag, align 2, !tbaa !18
  %i.ah = fadd double %spec.store.select1.i9, 1.280000e+02
  %i.ai = fmul double %i.ah, 2.570000e+02
end_hunk_0
begin_hunk_1_@cmsCMCdeltaE:bb.a
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %cmsLab2LCh.exit44
  %i.ay = fsub double %i.at, %i.au
  %i.az = fsub double %i.ay, %i.av
  %i.ba = tail call double @sqrt(double noundef %i.az) #11
  br label %bb.g

bb.g:                                             ; preds = %cmsLab2LCh.exit44, %bb.f
  %.033 = phi double [ %i.ba, %bb.f ], [ 0.000000e+00, %cmsLab2LCh.exit44 ]
  %i.bb = fcmp ogt double %.2.lcssa.i.i, 1.640000e+02
  %i.bc = fcmp olt double %.2.lcssa.i.i, 3.450000e+02
  %or.cond = and i1 %i.bb, %i.bc                  ; 3 uses
  %. = select i1 %or.cond, double 1.680000e+02, double 3.500000e+01
  %.65 = select i1 %or.cond, double 2.000000e-01, double 4.000000e-01
  %.66 = select i1 %or.cond, double 5.600000e-01, double 3.600000e-01
  %i.bd = insertelement <2 x double> poison, double %i.l, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.a, i64 1 ; 2 uses
  %i.bf = fmul <2 x double> %i.be, <double 6.380000e-02, double 4.097500e-02>
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> <double 1.310000e-02, double 1.765000e-02>, <2 x double> splat (double 1.000000e+00))
  %i.bh = fdiv <2 x double> %i.bf, %i.bg          ; 2 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0
  %i.bj = fadd double %i.bi, 6.380000e-01
  %i.bk = fcmp olt double %i.a, 1.600000e+01
  %i.bl = extractelement <2 x double> %i.bh, i64 1
  %spec.store.select = select i1 %i.bk, double 5.110000e-01, double %i.bl
  %i.bm = fmul double %i.l, %i.l
  %i.bn = fmul double %i.l, %i.bm                 ; 2 uses
  %i.bo = fadd double %.2.lcssa.i.i, %.
  %i.bp = fmul double %i.l, %i.bn
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.l, double 1.900000e+03)
  %i.br = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bp, i64 1
  %i.bt = insertelement <2 x double> <double f0x404CA5DC1A63C1F8, double poison>, double %i.bq, i64 1
  %i.bu = fdiv <2 x double> %i.bs, %i.bt          ; 2 uses
  %i.bv = extractelement <2 x double> %i.bu, i64 0
  %i.bw = tail call double @cos(double noundef %i.bv) #11
  %i.bx = fmul double %i.bw, %.65
  %i.by = tail call double @llvm.fabs.f64(double %i.bx)
  %i.bz = fadd double %i.by, %.66
  %i.ca = extractelement <2 x double> %i.bu, i64 1
  %i.cb = tail call double @sqrt(double noundef %i.ca) #11 ; 2 uses
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.cb, double 1.000000e+00)
  %i.cd = fsub double %i.cc, %i.cb
  %i.ce = fmul double %2, %spec.store.select
  %i.cf = fdiv double %i.ai, %i.ce                ; 2 uses
  %i.cg = fmul double %i.cf, %i.cf
  %i.ch = insertelement <2 x double> poison, double %3, i64 0
  %i.ci = insertelement <2 x double> %i.ch, double %i.cd, i64 1
  %i.cj = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x double> %i.ci, %i.ck
  %i.cm = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %.033, i64 1
  %i.co = fdiv <2 x double> %i.cn, %i.cl          ; 2 uses
  %i.cp = fmul <2 x double> %i.co, %i.co          ; 2 uses
  %i.cq = extractelement <2 x double> %i.cp, i64 0
  %i.cr = fadd double %i.cq, %i.cg
  %i.cs = extractelement <2 x double> %i.cp, i64 1
  %i.ct = fadd double %i.cr, %i.cs
  %sqrt = tail call double @llvm.sqrt.f64(double %i.ct)
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.g
  %.034 = phi double [ %sqrt, %bb.g ], [ 0.000000e+00, %bb.b ]
  ret double %.034
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define double @cmsCIE2000DeltaE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #8 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !13  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !15 ; 3 uses
  %i.f = load double, ptr %1, align 8, !tbaa !13  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !15 ; 3 uses
  %i.k = insertelement <2 x double> poison, double %i.j, i64 0
  %i.l = insertelement <2 x double> %i.k, double %i.e, i64 1 ; 2 uses
  %i.m = fmul <2 x double> %i.l, %i.l             ; 2 uses
  %i.n = insertelement <2 x double> poison, double %i.h, i64 0
  %i.o = insertelement <2 x double> %i.n, double %i.c, i64 1 ; 2 uses
  %i.p = fmul <2 x double> %i.o, %i.o
  %i.q = fadd <2 x double> %i.p, %i.m
  %i.r = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.q)
  %i.s = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.r)
  %i.t = fmul double %i.s, 5.000000e-01
  %i.u = tail call double @pow(double noundef %i.t, double noundef 7.000000e+00) #11 ; 2 uses
  %i.v = fadd double %i.u, f0x41F6BCC41E900000
  %i.w = fdiv double %i.u, %i.v
  %i.x = tail call double @sqrt(double noundef %i.w) #11
  %i.y = fsub double 1.000000e+00, %i.x
  %i.z = fmul double %i.y, 5.000000e-01
  %i.aa = fadd double %i.z, 1.000000e+00          ; 2 uses
  %i.ab = fmul double %i.c, %i.aa                 ; 3 uses
  %i.ac = fcmp oeq double %i.e, 0.000000e+00
  %i.ad = fcmp oeq double %i.ab, 0.000000e+00
  %or.cond.i = and i1 %i.ac, %i.ad
  br i1 %or.cond.i, label %atan2deg.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = tail call double @atan2(double noundef %i.e, double noundef %i.ab) #11
  %i.af = fmul double %i.ae, f0x404CA5DC1A63C1F8  ; 3 uses
  %i.ag = fcmp ogt double %i.af, 3.600000e+02
  br i1 %i.ag, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.b
  %.1.lcssa.i = phi double [ %i.af, %bb.b ], [ %i.ai, %.lr.ph.i ] ; 3 uses
  %i.ah = fcmp olt double %.1.lcssa.i, 0.000000e+00
  br i1 %i.ah, label %.lr.ph13.i, label %atan2deg.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.111.i = phi double [ %i.ai, %.lr.ph.i ], [ %i.af, %bb.b ]
  %i.ai = fadd double %.111.i, -3.600000e+02      ; 3 uses
  %i.aj = fcmp ogt double %i.ai, 3.600000e+02
  br i1 %i.aj, label %.lr.ph.i, label %.preheader.i, !llvm.loop !0

.lr.ph13.i:                                       ; preds = %.preheader.i, %.lr.ph13.i
  %.212.i = phi double [ %i.ak, %.lr.ph13.i ], [ %.1.lcssa.i, %.preheader.i ]
  %i.ak = fadd double %.212.i, 3.600000e+02       ; 3 uses
  %i.al = fcmp olt double %i.ak, 0.000000e+00
  br i1 %i.al, label %.lr.ph13.i, label %atan2deg.exit, !llvm.loop !1

atan2deg.exit:                                    ; preds = %.lr.ph13.i, %bb.a, %.preheader.i
  %.2.lcssa.i = phi double [ %.1.lcssa.i, %.preheader.i ], [ 0.000000e+00, %bb.a ], [ %i.ak, %.lr.ph13.i ] ; 2 uses
  %i.am = fmul double %i.h, %i.aa                 ; 3 uses
  %i.an = fcmp oeq double %i.j, 0.000000e+00
  %i.ao = fcmp oeq double %i.am, 0.000000e+00
  %or.cond.i88 = and i1 %i.an, %i.ao
  br i1 %or.cond.i88, label %atan2deg.exit96, label %bb.c

bb.c:                                             ; preds = %atan2deg.exit
  %i.ap = tail call double @atan2(double noundef %i.j, double noundef %i.am) #11
  %i.aq = fmul double %i.ap, f0x404CA5DC1A63C1F8  ; 3 uses
  %i.ar = fcmp ogt double %i.aq, 3.600000e+02
  br i1 %i.ar, label %.lr.ph.i94, label %.preheader.i89

.preheader.i89:                                   ; preds = %.lr.ph.i94, %bb.c
  %.1.lcssa.i90 = phi double [ %i.aq, %bb.c ], [ %i.at, %.lr.ph.i94 ] ; 3 uses
  %i.as = fcmp olt double %.1.lcssa.i90, 0.000000e+00
  br i1 %i.as, label %.lr.ph13.i92, label %atan2deg.exit96

.lr.ph.i94:                                       ; preds = %bb.c, %.lr.ph.i94
  %.111.i95 = phi double [ %i.at, %.lr.ph.i94 ], [ %i.aq, %bb.c ]
  %i.at = fadd double %.111.i95, -3.600000e+02    ; 3 uses
  %i.au = fcmp ogt double %i.at, 3.600000e+02
  br i1 %i.au, label %.lr.ph.i94, label %.preheader.i89, !llvm.loop !0

.lr.ph13.i92:                                     ; preds = %.preheader.i89, %.lr.ph13.i92
  %.212.i93 = phi double [ %i.av, %.lr.ph13.i92 ], [ %.1.lcssa.i90, %.preheader.i89 ]
  %i.av = fadd double %.212.i93, 3.600000e+02     ; 3 uses
  %i.aw = fcmp olt double %i.av, 0.000000e+00
  br i1 %i.aw, label %.lr.ph13.i92, label %atan2deg.exit96, !llvm.loop !1

atan2deg.exit96:                                  ; preds = %.lr.ph13.i92, %atan2deg.exit, %.preheader.i89
  %.2.lcssa.i91 = phi double [ %.1.lcssa.i90, %.preheader.i89 ], [ 0.000000e+00, %atan2deg.exit ], [ %i.av, %.lr.ph13.i92 ] ; 2 uses
  %i.ax = fadd double %.2.lcssa.i, %.2.lcssa.i91  ; 4 uses
  %i.ay = fsub double %.2.lcssa.i91, %.2.lcssa.i  ; 6 uses
  %i.az = tail call double @llvm.fabs.f64(double %i.ay)
  %i.ba = fcmp ugt double %i.az, f0x406680000218DEF4
  br i1 %i.ba, label %bb.d, label %bb.g

bb.d:                                             ; preds = %atan2deg.exit96
  %i.bb = fcmp olt double %i.ax, 3.600000e+02
  br i1 %i.bb, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bc = fadd nnan double %i.ax, 3.600000e+02
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bd = fadd double %i.ax, -3.600000e+02
  br label %bb.g

bb.g:                                             ; preds = %atan2deg.exit96, %bb.e, %bb.f
  %.in = phi double [ %i.bd, %bb.f ], [ %i.bc, %bb.e ], [ %i.ax, %atan2deg.exit96 ]
  %i.be = fcmp ugt double %i.ay, f0xC06680000218DEF4
  br i1 %i.be, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = fadd nnan double %i.ay, 3.600000e+02
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bg = fcmp ogt double %i.ay, 1.800000e+02
  %i.bh = fadd double %i.ay, -3.600000e+02
  %i.bi = select i1 %i.bg, double %i.bh, double %i.ay
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bj = phi double [ %i.bf, %bb.h ], [ %i.bi, %bb.i ]
  %i.bk = insertelement <2 x double> poison, double %i.am, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.ab, i64 1 ; 2 uses
  %i.bm = fmul <2 x double> %i.bl, %i.bl
  %i.bn = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %.in, i64 1
  %i.bp = fmul <2 x double> %i.bo, <double f0x400921FB54442D18, double 5.000000e-01> ; 4 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 1
  %i.br = fmul double %i.bq, 2.000000e+00
  %5 = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %6 = insertelement <2 x double> %5, double %i.br, i64 1
  %7 = fadd <2 x double> %6, <double -3.000000e+01, double -0.000000e+00>
  %8 = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> <double 3.000000e+00, double 4.000000e+00>, <2 x double> <double 6.000000e+00, double -6.300000e+01>)
  %10 = shufflevector <2 x double> %7, <2 x double> %9, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bs = fmul <4 x double> %10, splat (double f0x400921FB54442D18)
  %i.bt = fdiv <4 x double> %i.bs, splat (double 1.800000e+02) ; 4 uses
  %i.bu = extractelement <4 x double> %i.bt, i64 0
  %i.bv = extractelement <4 x double> %i.bt, i64 1
  %i.bw = extractelement <4 x double> %i.bt, i64 2
  %i.bx = extractelement <4 x double> %i.bt, i64 3
  %i.by = fadd double %i.a, %i.f
  %i.bz = fmul double %i.by, 5.000000e-01
  %i.ca = fadd double %i.bz, -5.000000e+01
  %i.cb = fadd <2 x double> %i.bp, <double -0.000000e+00, double -2.750000e+02>
  %i.cc = fdiv <2 x double> %i.cb, <double 1.800000e+02, double 2.500000e+01> ; 2 uses
  %i.cd = extractelement <2 x double> %i.cc, i64 0
  %i.ce = fmul double %i.cd, 5.000000e-01
  %i.cf = tail call double @sin(double noundef %i.ce) #11
  %i.cg = tail call double @cos(double noundef %i.bu) #11
  %i.ch = tail call double @cos(double noundef %i.bv) #11
  %i.ci = tail call double @cos(double noundef %i.bw) #11
  %i.cj = tail call double @cos(double noundef %i.bx) #11
  %i.ck = extractelement <2 x double> %i.cc, i64 1 ; 2 uses
  %i.cl = fneg double %i.ck
  %i.cm = fmul double %i.ck, %i.cl
  %i.cn = tail call double @exp(double noundef %i.cm) #11
  %i.co = fsub double %i.f, %i.a
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.cg, double -1.700000e-01, double 1.000000e+00)
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.ch, double 2.400000e-01, double %i.cp)
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.ci, double 3.200000e-01, double %i.cq)
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cj, double -2.000000e-01, double %i.cr)
  %i.ct = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.ca, i64 1 ; 2 uses
  %i.cv = insertelement <2 x double> %i.cu, double 3.000000e+01, i64 0
  %i.cw = fmul <2 x double> %i.cu, %i.cv          ; 2 uses
  %i.cx = fmul <2 x double> %i.cw, <double f0x400921FB54442D18, double 1.500000e-02>
  %i.cy = fadd <2 x double> %i.m, %i.bm
  %i.cz = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.cy) ; 5 uses
  %i.da = shufflevector <2 x double> %i.cw, <2 x double> %i.cz, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.db = insertelement <2 x double> %i.cz, double 2.000000e+01, i64 0 ; 2 uses
  %i.dc = fadd <2 x double> %i.da, %i.db
  %i.dd = fmul <2 x double> %i.da, %i.db
  %i.de = shufflevector <2 x double> %i.dc, <2 x double> %i.dd, <2 x i32> <i32 0, i32 3>
  %i.df = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.de) ; 2 uses
  %i.dg = shufflevector <2 x double> <double 1.800000e+02, double poison>, <2 x double> %i.df, <2 x i32> <i32 0, i32 2>
  %i.dh = fdiv <2 x double> %i.cx, %i.dg          ; 2 uses
  %i.di = extractelement <2 x double> %i.dh, i64 0
  %i.dj = fmul double %i.di, 2.000000e+00
  %i.dk = extractelement <2 x double> %i.dh, i64 1
  %i.dl = fadd double %i.dk, 1.000000e+00
  %i.dm = extractelement <2 x double> %i.df, i64 1
  %i.dn = fmul double %i.dm, 2.000000e+00
  %i.do = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.dp = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dq = fadd <2 x double> %i.do, %i.dp          ; 2 uses
  %i.dr = extractelement <2 x double> %i.dq, i64 1
  %i.ds = fmul double %i.dr, 5.000000e-01         ; 2 uses
  %i.dt = fmul double %i.dn, %i.cf
  %i.du = fmul double %i.ds, 1.500000e-02
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.du, double %i.cs, double 1.000000e+00)
  %i.dw = tail call double @pow(double noundef %i.ds, double noundef 7.000000e+00) #11 ; 2 uses
  %i.dx = extractelement <2 x double> %i.dq, i64 1
  %i.dy = fmul double %i.dx, 4.500000e-02
  %i.dz = fmul double %i.dy, 5.000000e-01
  %i.ea = fadd double %i.dz, 1.000000e+00
  %i.eb = fadd double %i.dw, f0x41F6BCC41E900000
  %i.ec = fmul double %3, %i.ea
  %i.ed = fsub <2 x double> %i.cz, %i.dp
  %i.ee = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ef = insertelement <2 x double> %i.ee, double %i.dw, i64 0
  %i.eg = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.eh = insertelement <2 x double> %i.eg, double %i.ec, i64 1
  %i.ei = fdiv <2 x double> %i.ef, %i.eh          ; 2 uses
  %i.ej = extractelement <2 x double> %i.ei, i64 0
  %i.ek = tail call double @sqrt(double noundef %i.ej) #11
  %i.el = fmul double %i.ek, 2.000000e+00
  %i.em = tail call double @sin(double noundef %i.dj) #11
  %i.en = fneg double %i.em
  %i.eo = fmul double %i.el, %i.en
  %i.ep = extractelement <2 x double> %i.ei, i64 1 ; 3 uses
  %i.eq = fmul double %i.ep, %i.ep
  %i.er = insertelement <2 x double> poison, double %2, i64 0
  %i.es = insertelement <2 x double> %i.er, double %4, i64 1
  %i.et = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.eu = insertelement <2 x double> %i.et, double %i.dv, i64 1
  %i.ev = fmul <2 x double> %i.es, %i.eu
  %i.ew = insertelement <2 x double> poison, double %i.co, i64 0
  %i.ex = insertelement <2 x double> %i.ew, double %i.dt, i64 1
  %i.ey = fdiv <2 x double> %i.ex, %i.ev          ; 3 uses
  %i.ez = fmul <2 x double> %i.ey, %i.ey          ; 2 uses
  %i.fa = extractelement <2 x double> %i.ez, i64 0
  %i.fb = fadd double %i.fa, %i.eq
  %i.fc = extractelement <2 x double> %i.ez, i64 1
  %i.fd = fadd double %i.fb, %i.fc
  %i.fe = fmul double %i.ep, %i.eo
  %i.ff = extractelement <2 x double> %i.ey, i64 1
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.fe, double %i.ff, double %i.fd)
  %i.fh = tail call double @sqrt(double noundef %i.fg) #11
  ret double %i.fh
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 256) i32 @_cmsReasonableGridpointsByColorspace(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = and i32 %1, 16711680
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 16
  %i.c = and i32 %i.b, 255
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @cmsChannelsOfColorSpace(i32 noundef %0) ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  %..i = select i1 %i.e, i32 3, i32 %i.d          ; 5 uses
  %i.f = and i32 %1, 1024
  %.not13 = icmp eq i32 %i.f, 0
  br i1 %.not13, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp samesign ugt i32 %..i, 4
  br i1 %i.g, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp eq i32 %..i, 4
  %. = select i1 %i.h, i32 23, i32 49
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.i = and i32 %1, 2048
  %.not14 = icmp eq i32 %i.i, 0
  %i.j = icmp samesign ugt i32 %..i, 4            ; 2 uses
  br i1 %.not14, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.j, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = icmp eq i32 %..i, 1
  %.15 = select i1 %i.k, i32 33, i32 17
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  br i1 %i.j, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = icmp eq i32 %..i, 4
  %.16 = select i1 %i.l, i32 17, i32 33
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 7, %bb.i ], [ %., %bb.e ], [ 7, %bb.d ], [ %.16, %bb.j ], [ %.15, %bb.h ], [ 6, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 16) i32 @cmsChannelsOf(i32 noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call i32 @cmsChannelsOfColorSpace(i32 noundef %0) ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  %. = select i1 %i.b, i32 3, i32 %i.a
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @_cmsEndPointsBySpace(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #10 {
bb.a:
  switch i32 %0, label %bb.aa [
    i32 1196573017, label %bb.b
    i32 1380401696, label %bb.g
    i32 1281450528, label %bb.l
    i32 1129142603, label %bb.q
    i32 1129142560, label %bb.v
  ]

bb.b:                                             ; preds = %bb.a
  %.not53 = icmp eq ptr %1, null
  br i1 %.not53, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @_cmsEndPointsBySpace.GrayWhite, ptr %1, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not54 = icmp eq ptr %2, null
  br i1 %.not54, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr @_cmsEndPointsBySpace.Grayblack, ptr %2, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not55 = icmp eq ptr %3, null
  br i1 %.not55, label %bb.aa, label %.sink.split

bb.g:                                             ; preds = %bb.a
  %.not50 = icmp eq ptr %1, null
  br i1 %.not50, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
end_hunk_1
